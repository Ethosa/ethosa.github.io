import happyx


component Skill:
  text: string
  image: string

  `template`:
    tDiv(class = "flex gap-1 cursor-pointer dropdown"):
      tImg(src = self.image, class = "w-12 h-12 rounded-md")
      tDiv(
        class = "absolute hint opacity-0 -translate-y-10 scale-0 duration-150 bg-neutral-800 drop-shadow-2xl rounded-md px-4 py-2"
      ):
        tP: {self.text}
        tP(class = "top-full absolute -mt-2 text-neutral-800"): "▼"
  
  `style`: """
    .dropdown:hover {
      z-index: 1;
    }
    .dropdown:hover .hint {
      opacity: 1;
      z-index: 1;
      transform: scale(100%);
      transform: translateY(-48px);
    }
  """
