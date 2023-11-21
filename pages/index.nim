import happyx


mount MainPage:
  "":
    tDiv(class = "flex justify-center items-center w-full h-full min-h-screen bg-neutral-950"):
      tDiv(class = "flex flex-col items-center rounded-md bg-neutral-900 px-8 py-4 gap-8"):
        tImg(
          src = "https://avatars.githubusercontent.com/u/49402667?v=4",
          class = "rounded-full -mt-48 w-96 h-96 border-[16px] border-neutral-900"
        )
        tDiv(class = "flex flex-col items-center gap-2"):
          tP(class = "text-5xl"):
            "@ethosa"
          tP(class = "text-lg"):
            {translate"Welcome to my CV"}

        # Social links
        tDiv(class = "w-full flex justify-evenly"):
          tA(
            class = "flex flex-col gap-1 items-center hover:scale-110 transition-all duration-300 cursor-pointer",
            href = "https://github.com/Ethosa"
          ):
            tImg(src = "/public/github-mark-white.png", class = "w-12 h-12")
            tP: "GitHub"
          tA(
            class = "flex flex-col gap-1 items-center hover:scale-110 transition-all duration-300 cursor-pointer",
            href = "https://habr.com/ru/users/akihayase/"
          ):
            tImg(src = "/public/habr.png", class = "w-12 h-12")
            tP: "Habr"
          tA(
            class = "flex flex-col gap-1 items-center hover:scale-110 transition-all duration-300 cursor-pointer",
            href = "https://t.me/ethosa"
          ):
            tImg(src = "/public/TG Logo.png", class = "w-12 h-12")
            tP: "Telegram"
          tA(
            class = "flex flex-col gap-1 items-center hover:scale-110 transition-all duration-300 cursor-pointer",
            href = "https://vk.com/akihayase"
          ):
            tImg(src = "/public/VK Logo.png", class = "w-12 h-12")
            tP: "VK"
