import happyx


component Skill:
  text: string
  image: string

  `template`:
    tDiv(class = "flex group justify-center gap-1 cursor-pointer dropdown"):
      tImg(src = self.image, class = "w-16 xl:w-12 h-16 xl:h-12 rounded-md")
      tDiv(
        class = "flex pointer-events-none justify-center absolute hint -z-10 opacity-0 mb-2 scale-0 duration-150 bg-neutral-800 drop-shadow-2xl rounded-md px-4 py-2 group-hover:opacity-100 group-hover:scale-100 group-hover:z-10 group-hover:-translate-y-12"
      ):
        tP(class = "text-4xl xl:text-base"):
          {self.text}
        tDiv(class = "flex justify-center bottom-0 inset-x-0 absolute translate-y-2/3 text-neutral-800"):
          "▼"
