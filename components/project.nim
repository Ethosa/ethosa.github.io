import happyx


component Project:
  text: string
  image: string
  url: string

  `template`:
    tA(
      href = self.url,
      class = "w-full flex items-center text-3xl xl:text-base gap-4 xl:gap-2 bg-neutral-800 hover:bg-neutral-700 rounded-md transition-all pr-2"
    ):
      tImg(src = self.image, class = "w-16 xl:w-10 h-16 xl:h-10 rounded-md")
      tP: {self.text}
