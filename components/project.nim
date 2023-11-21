import happyx


component Project:
  text: string
  image: string
  url: string

  `template`:
    tA(
      href = self.url,
      class = "w-full flex items-center gap-2 bg-neutral-800 hover:bg-neutral-700 rounded-md transition-all pr-2"
    ):
      tImg(src = self.image, class = "w-10 h-10 rounded-md")
      tP: {self.text}
