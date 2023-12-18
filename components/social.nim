import happyx


component Social:
  logo: string
  text: string
  url: string

  `template`:
    tA(
      class = "flex flex-col gap-4 xl:gap-1 text-2xl xl:text-base items-center hover:scale-110 transition-all duration-300 cursor-pointer",
      href = self.url
    ):
      tImg(src = self.logo, class = "w-16 xl:w-12 h-16 xl:h-12")
      tP:
        {self.text}
