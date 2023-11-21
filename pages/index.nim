import happyx


mount MainPage:
  "":
    tDiv(class = "flex justify-center items-center w-full h-full min-h-screen bg-neutral-950"):
      tDiv(class = "flex flex-col items-center rounded-md bg-neutral-900 px-8 py-4 gap-8"):
        tImg(
          src = "https://avatars.githubusercontent.com/u/49402667?v=4",
          class = "rounded-full w-72 h-72 border-[16px] border-neutral-900"
        )
        tDiv(class = "flex flex-col items-center gap-2"):
          tP(class = "text-5xl"):
            "@ethosa"
          tP(class = "text-lg opacity-70"):
            {translate"Welcome to my CV"}
        
        tDiv(class = "w-full flex justify-around gap-8"):
          tDiv(class = "flex flex-col gap-2"):
            tP(class = "text-xl"):
              {translate"My projects:"}
            tDiv(class = "grid grid-cols-2 gap-2"):
              Project(
                "HappyX",
                "https://raw.githubusercontent.com/HapticX/happyx/master/examples/website/src/happyx/public/icon.png",
                "https://github.com/HapticX/happyx"
              )
              Project(
                "nodesnim",
                "https://github.com/Ethosa/nodesnim/raw/nightly/icon.svg",
                "https://github.com/Ethosa/nodesnim"
              )
              Project(
                "KTC",
                "https://github.com/Ethosa/KTC/blob/master/app/src/main/res/mipmap-xxhdpi/ic_launcher.png?raw=true",
                "https://github.com/Ethosa/KTC"
              )
          tDiv(class = "flex flex-col gap-2"):
            tP(class = "text-xl"):
              {translate"My skills:"}
            tP(class = "text-lg"):
              {translate"Programming languages"}
            tDiv(class = "grid grid-cols-4 gap-2"):
              Skill(
                "Nim language",
                "/public/skills/nim.png"
              )
              Skill(
                "Python language",
                "/public/skills/py.png"
              )
              Skill(
                "JavaScript language",
                "/public/skills/js.png"
              )
              Skill(
                "TypeScript language",
                "/public/skills/ts.png"
              )
            tP(class = "text-lg"):
              {translate"Web frameworks"}
            tDiv(class = "grid grid-cols-4 gap-2"):
              Skill(
                "HappyX web framework",
                "https://raw.githubusercontent.com/HapticX/happyx/master/examples/website/src/happyx/public/icon.png"
              )
              Skill(
                "Vue.js",
                "/public/skills/vue.png"
              )
              Skill(
                "Fast API",
                "/public/skills/fastapi.png"
              )
              Skill(
                "Tailwind CSS",
                "/public/skills/tailwind.png"
              )
            tP(class = "text-lg"):
              {translate"Databases"}
            tDiv(class = "grid grid-cols-4 gap-2"):
              Skill(
                "Mongo DB",
                "/public/skills/mongodb.png"
              )
              Skill(
                "MSSQL Server",
                "/public/skills/mssql.png"
              )

        # Social links
        tDiv(class = "flex w-full items-center flex-col gap-2"):
          tP(class = "text-xl"):
            {translate"Contact me:"}
          tDiv(class = "w-full flex justify-evenly"):
            Social("/public/github-mark-white.png", "GitHub", "https://github.com/Ethosa")
            Social("/public/habr.png", "Habr", "https://habr.com/ru/users/akihayase/")
            Social("/public/TG Logo.png", "Telegram", "https://t.me/ethosa")
            Social("/public/VK Logo.png", "VK", "https://vk.com/akihayase")
