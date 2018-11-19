#include TagIE.ahk

tnav("https://www.kijiji.it/pubblica-annuncio?cat=436338688", "")
tselect("436273152","category-12")
tenter("Milano",".post-ad-city.required.defaultvisible .text-input")
tenter("Cerchiamo badante a Milano","title")

tscroll("jobs-seeking-type")

tselect("14","jobs-seeking-type")

annuncio=
(  Join`r`n
Cerchiamo badante a ore a Garbagnate Milanese per assistere una donna di 78 anni che vive col marito (autosufficiente). La signora persa circa 45kg. Ha un'autonomia fisica discreta, bisogna aiutarla ad alzarsi, sedersi, aiutarla a camminare. Lucidità scarsa per decadimento cognitivo. Tremore alle mani e depressione. Estremamente sensibile fragile. Necessità di essere coinvolta. Aiuto per l'igiene intima. Assistenza e ausilio alle attività quotidiane. Orario di lavoro: da lunedi al sabato dalle 10.00 alle 13.00 e il pomeriggio dalle 16.00 alle 18.00. CCNL stipendio netto 840€+13+tfr+inps+ferie Rispondi al messaggio, non chiamare. Ti contatteremo noi. Per candidarsi: Utilizzare il link che troverà sotto all'annuncio oppure vai sul sito badante-noproblem Grazie. Siamo un'agenzia per il lavoro: Ragione sociale: ASE Società Cooperativa, P.IVA 03256270129, sede legale: via volta 37 -SARONNO (VA) Il presente annuncio è rivolto ad entrambi i sessi, ai sensi delle leggi 903/77 e 125/91, e a persone di tutte le età e tutte le nazionalità, ai sensi dei decreti legislativi 215/03 e 216/03.

)

tenter(annuncio,"textarea")

;tipo azienda
tclick("//*[@id='syi-form']/div[3]/div/fieldset/label[2]/span")

tenter("email@gmail.com","email")
tenter("paolo","nickname")

;PUBLISH
;tclick("post-ad-publish")

Sleep, 3000

;tsnap()

;pwb.Quit()

ExitApp

Esc::ExitApp