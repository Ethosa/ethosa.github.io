var elem = document.getElementById("centerbox"),
    discord = document.getElementById("discord"),
    toast = document.getElementById("toast");

var half_width = window.innerWidth/2;
var half_height = window.innerHeight/2;
var delimeter = 50;

window.addEventListener("mousemove", e =>
    {
        var x = (e.pageY - half_height)/delimeter,
            y = (e.pageX - half_width)/delimeter;
        elem.style.transform = 'rotateX(' + x + 'deg) rotateY(' + y + 'deg)';
    }
);

// Copy to clipboard "Ethosa#5301"
discord.addEventListener("click", e =>
    {
        if (!(handler === null)) {return}
        toast.style.opacity = "0%";
        navigator.clipboard.writeText("Ethosa#5301");
        handler = setInterval(toast_show, 1000 / 60);
    }
);

function easeInOutQuad(x, t, b, c, d) {
    if ((t /= d / 2) < 1) {
        return c / 2 * t * t + b;
    } else {
        return -c / 2 * ((--t) * (t - 2) - 1) + b;
    }
}

var duration = 1.5
    start = 0
    finish = 100
    position = start
    time = 0
    handler = null
    // hide toast
    hstart = 150
    hfinish = 0
function toast_show() {
    time += 1 / 60;
    position = easeInOutQuad(time * 100 / duration, time, start, finish, duration);

    if (position >= finish) {
        position = start
        time = 0
        clearInterval(handler);
        handler = setInterval(toast_hide, 1000/60);
        toast.style.opacity = finish + "%";
        return;
    }
    toast.style.opacity = position + "%";
}
function toast_hide() {
    time += 1 / 60;
    position = easeInOutQuad(time * 100 / duration, time, hstart-hstart, hfinish+hstart, duration)-hstart;

    if (position >= hfinish) {
        position = start
        time = 0
        clearInterval(handler);
        handler = null
        toast.style.opacity = hfinish + "%";
        return;
    }
    toast.style.opacity = -position + "%";
}


function title_animation() {
    // ethosa -> thosae -> hosaet -> osaeth -> saetho -> aethosa -> ethosa
    // lol 👀
    document.title = document.title.substring(1, 6) + document.title.substring(0, 1);
}

var title_handler = setInterval(title_animation, 1000 / 1);
