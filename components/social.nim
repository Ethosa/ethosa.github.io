import happyx


component Social:
  logo: string
  text: string
  url: string

  `template`:
    tA(
      class = "flex flex-col gap-1 items-center hover:scale-110 transition-all duration-300 cursor-pointer",
      href = self.url
    ):
      tImg(src = self.logo, class = "w-12 h-12")
      tP:
        {self.text}
