### Při problémech se syntaxi markdown je potřeba:
* PlugVim:
`Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}`

* Nainstalovat:
`:TSInstall markdown`

### AutoSave
* Nainstalovat plugin auto-save.nvim přes plug.vim pomocí následujícího příkazu: 

```
Plug 'Pocco81/auto-save.nvim' 
```

* Poté nastavit proměnné g:auto_save_enabled a g:auto_save_delay v init.vim takto: 

```
let g:auto_save_enabled = 1 

let g:auto_save_delay = 3000 
```

[https://github.com/Pocco81/auto-save.nvim?tab=readme-ov-file](https://github.com/Pocco81/auto-save.nvim?tab=readme-ov-file) 

* Autosave nefunguje v PowerShell

### Colorscheme automatické spouštění
* Takto nastavím vybrané colorscheme že se automaticky spustí při startu: 

* Nastavení do init.vim :


```
colorscheme dracula 

autocmd VimEnter * colorscheme dracula
```

### Kde najdu init vim a data Neovim?

* Linux a MacOS

```
/home/user/.config/nvim/init.vim
```
* Windows
```
/home/kankys/.local/share/nvim/  (data)
/home/kankys/.local/state/nvim/   (data)
```

### Vkládání z externích zdrojů

V Neovim (a také v klasickém Vim) můžete kopírovat text z externích zdrojů, například z webové stránky, pomocí několika různých metod. Zde jsou dvě možnosti:

### **Přímé kopírování z externí aplikace:**

1. **Zkopírujte text:**
    
    - Otevřete webový prohlížeč a vyberte text, který chcete zkopírovat.
    - Stiskněte `Ctrl+C` (nebo `Cmd+C` na macOS) pro kopírování.
2. **Přepnutí do režimu vkládání v Neovimu (režim insert ):**
    
    - Otevřete neovim a načtěte soubor.
    - Přepněte se do režimu vkládání stisknutím klávesy `i`.
3. **Vložte text:**
    
    - Stiskněte `Ctrl+Shift+V` (nebo `Cmd+Shift+V` na macOS) pro vložení textu do Neovimu.


# Default klávesové zkratky

Neovim je moderní verze Vim, textového editoru používaného v unixových systémech. Zde jsou některé klávesové zkratky pro práci s Neovim:



### Základní pohyb:

- `h` - Pohyb vlevo
- `j` - Pohyb dolů
- `k` - Pohyb nahoru
- `l` - Pohyb vpravo
- `w` - Přesun na začátek dalšího slova
- `b` - Přesun na začátek předchozího slova
- `gg` - Přesun na začátek dokumentu
- `G` - Přesun na konec dokumentu



### Visuální mód:
Do něj se přepnu v Normal módu pomocí `v` pohybem kde byl kurzor mohu označovat text.


### Normální mód - NORMAL:
Do normál módu se z jiných přesunu pomocí `ESC`
- `i` - Přepnutí do režimu vkládání před kurzor
- `I` - Přepnutí do režimu vkládání na začátek řádku
- `a` - Přepnutí do režimu vkládání za kurzor
- `A` - Přepnutí do režimu vkládání na konec řádku
- `o` - Vložení nového řádku pod aktuálním řádkem
- `O` - Vložení nového řádku nad aktuálním řádkem
- `dd` - Smazání řádku
- `dw` - Smazání slova
- `yy` - Kopírování řádku
- `p` - Vložení obsahu schránky pod kurzor
- `P` - Vložení obsahu schránky před kurzor
- `u` - Vrácení poslední provedené akce
- `Ctrl + r` - Krok do předu opak `u`
- `q` - Zavře okno
- `.` - Poslední příkaz
-  `Ctrl + w` - Přepínání oken


### Command mód:
Command mód vyvoláme pomocí `Shift + :` 
- `:e + jméno souboru` - Vytvoří nový soubor - `:e index.html`
- `:w` - Uložení změn
- `:q` - Opuštění editoru
- `:wq` - Uložení změn a opuštění
- `:q!` - Opuštění editoru bez ukládání změn
-  `:vs` - Vertikální rozložení oken
-  `:sp` - Horizontální rozložení oken
- `:colorscheme` - Změní theme
- `:term` - Otevře terminál




### Vyhledávání a nahrazování:

- `/hledany_text` - Vyhledání textu
- `n` - Přeskočení na další výskyt hledaného textu
- `N` - Přeskočení na předchozí výskyt hledaného textu
- `:s/hledany_text/nahrazeny_text/g` - Nahrazení hledaného textu za zadaný text v celém dokumentu


### Různé:


- `Ctrl + r` - Opětovné provedení zrušené akce
- `:help` - Zobrazení nápovědy