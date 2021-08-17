var elem = document.getElementById("centerbox");
var discord = document.getElementById("discord");
var toast = document.getElementById("toast");

var half_width = window.innerWidth/2;
var half_height = window.innerHeight/2;
var delimeter = 50;

window.addEventListener("mousemove", e =>
    {
        var x = (e.pageY - half_height)/delimeter;
        var y = (e.pageX - half_width)/delimeter;
        elem.style.transform = 'rotateX(' + x + 'deg) rotateY(' + y + 'deg)';
    }
);

discord.addEventListener("click", e =>
    {
        if (!(handler === null)) {
            return
        }
        toast.style.opacity = "0%";
        handler = setInterval(toast_show, 1000 / 60);
        navigator.clipboard.writeText("Ethosa#5301").then(function() {
          console.log('Async: Copying to clipboard was successful!');
        }, function(err) {
          console.error('Async: Could not copy text: ', err);
        });
    }
);

// formula     http://easings.net/
// description https://stackoverflow.com/questions/8316882/what-is-an-easing-function
// x: percent
// t: current time,
// b: beginning value,
// c: change in value,
// d: duration
function easeInOutQuad(x, t, b, c, d) {
    if ((t /= d / 2) < 1) {
        return c / 2 * t * t + b;
    } else {
        return -c / 2 * ((--t) * (t - 2) - 1) + b;
    }
}

var duration = 1.5,
    start = 0,
    finish = 100
    position = start
    time = 0
    handler = null
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


var hstart = 150,
    hfinish = 0
    position = hstart
function toast_hide() {
    time += 1 / 60;
    hposition = easeInOutQuad(time * 100 / duration, time, hstart-hstart, hfinish+hstart, duration)-hstart;

    if (hposition >= hfinish) {
        position = start
        time = 0
        clearInterval(handler);
        handler = null
        toast.style.opacity = hfinish + "%";
        return;
    }
    toast.style.opacity = -hposition + "%";
}
