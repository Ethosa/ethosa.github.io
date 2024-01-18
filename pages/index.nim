import happyx


mount MainPage:
  "":
    tDiv(class = "flex justify-center items-center w-full h-full min-h-screen bg-neutral-950"):
      tDiv(class = "flex flex-col items-center rounded-md bg-neutral-900 px-12 xl:px-8 py-8 xl:py-4 gap-8 xl:gap-2"):
        tImg(
          src = "https://avatars.githubusercontent.com/u/49402667?v=4",
          class = "rounded-full w-96 xl:w-72 h-96 xl:h-72 border-[16px] border-neutral-900"
        )
        tDiv(class = "flex flex-col items-center gap-4 xl:gap-2"):
          tP(class = "text-7xl xl:text-5xl"):
            "@ethosa"
          tP(class = "text-4xl xl:text-lg opacity-70"):
            {translate"Welcome to my CV"}
        
        tDiv(class = "w-full flex justify-around gap-8"):
          tDiv(class = "flex flex-col gap-2"):
            tP(class = "text-4xl xl:text-xl"):
              {translate"My projects:"}
            tDiv(class = "flex flex-col gap-4 xl:grid xl:grid-cols-2 xl:gap-2"):
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
            tP(class = "text-4xl xl:text-xl"):
              {translate"My skills:"}
            tP(class = "text-3xl xl:text-lg opacity-80"):
              {translate"Programming languages"}
            tDiv(class = "grid grid-cols-4 xl:grid-cols-7 gap-4 xl:gap-2"):
              Skill(
                "Nim language",
                "/public/skills/nim.svg",
              )
              Skill(
                "Lua language",
                "/public/skills/lua.svg",
              )
              Skill(
                "Python language",
                "/public/skills/python.svg"
              )
              Skill(
                "JavaScript language",
                "/public/skills/javascript.svg"
              )
              Skill(
                "TypeScript language",
                "/public/skills/typescript.svg"
              )
              Skill(
                "Kotlin language",
                "/public/skills/kotlin.svg"
              )
              Skill(
                "C# language",
                "/public/skills/csharp.svg"
              )
            tP(class = "text-3xl xl:text-lg opacity-80"):
              {translate"Web frameworks"}
            tDiv(class = "grid grid-cols-4 xl:grid-cols-7 gap-4 xl:gap-2"):
              Skill(
                "HappyX web framework + HappyX Native",
                "https://raw.githubusercontent.com/HapticX/happyx/master/examples/website/src/happyx/public/icon.png"
              )
              Skill(
                "Vue.js",
                "/public/skills/vuedotjs.svg"
              )
              Skill(
                "Fast API",
                "/public/skills/fastapi.svg"
              )
              Skill(
                "Tailwind CSS",
                "/public/skills/tailwindcss.svg"
              )
            tP(class = "text-3xl xl:text-lg opacity-80"):
              {translate"Databases"}
            tDiv(class = "grid grid-cols-4 xl:grid-cols-7 gap-4 xl:gap-2"):
              Skill(
                "Mongo DB",
                "/public/skills/mongodb.svg"
              )
              Skill(
                "MSSQL Server",
                "/public/skills/microsoftsqlserver.svg"
              )
              Skill(
                "MySQL Server",
                "/public/skills/mysql.svg"
              )
              Skill(
                "SQLite",
                "/public/skills/sqlite.svg"
              )
            tP(class = "text-3xl xl:text-lg opacity-80"):
              {translate"Other"}
            tDiv(class = "grid grid-cols-3 xl:grid-cols-7 gap-4 xl:gap-2"):
              Skill(
                "Git",
                "/public/skills/git.svg"
              )
              Skill(
                "Docker",
                "/public/skills/docker.svg"
              )
              Skill(
                "Jetpack Compose",
                "/public/skills/jetpackcompose.svg"
              )
              Skill(
                "Android Stuido + Android SDK",
                "/public/skills/androidstudio.svg"
              )
              Skill(
                "Godot Engine",
                "/public/skills/godot.svg"
              )

        # Social links
        tDiv(class = "flex w-full items-center flex-col gap-8 xl:gap-2"):
          tP(class = "text-4xl xl:text-xl"):
            {translate"Contact me:"}
          tDiv(class = "w-full flex justify-evenly"):
            Social("/public/github.svg", "GitHub", "https://github.com/Ethosa")
            Social("/public/habr.svg", "Habr", "https://habr.com/ru/users/akihayase/")
            Social("/public/telegram.svg", "Telegram", "https://t.me/ethosa")
            Social("/public/vk.svg", "VK", "https://vk.com/akihayase")
            Social("/public/stackoverflow.svg", "Stack Overflow", "https://stackoverflow.com/users/22256491/ethosa")
