#!/usr/bin/env bash
links=""
for i in `ls dark.txt/*.txt`
do
  links+="<a href="$i">$i</a> <br/>\n"
done
printf """
<!DOCTYPE html>
<html>
  <head>
    <title>DarkPapers -- Artigos | CLI</title>
    <link rel='stylesheet' href='style/main.css'/>
    <meta name='viewport' content='width=device-width, user-scalable=no'/>
    <meta name='theme-color' content='#787A84'/>
    <meta name='description' content='Repositório de artigos, guias e palestras, voltado para ser consultado usando navegação CLI'/>
    <meta property='og:image' content='/images/logoSVG.svg'>
    <meta name='author' content='Darkwaves'>
    <meta charset='utf-8'>
  </head>
  <body title='Acesse essa página sando algum browser CLI'>
    <h1 style='text-align:center'>DarkPapers | dark.txt</h1>
    <section>
      $links
    </section>

    <!--footer>
      <a href='/'>
        <img style='height:100%' src='http://www.darkwaves.zone/images/logoSVG.svg'>
      </a>
    </footer-->
  </body>
</html>

""" > index.html && echo -e "[ \e[92m✔\e[0m ] Sucess" || echo -e "[ \e[31m✘\e[0m ] Error"
