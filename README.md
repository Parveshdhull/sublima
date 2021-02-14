# sublima - Sublime like scratches for emacs

## Features
- Multiple Scratches
- Auto Save and Restore Scratches
- Sets Emacs startup page as sublime scratch
- Deletes stored scratches on buffer kill
- Auto Delete empty saved scratches

## Installation
(load "~/.emacs.d/custom/sublima.el")

## Usage
Create New Scratch

`M-x sublima-scratch`

Save as - Current Scratch

`M-x sublima-save-as-buffer`

Save all scratch buffers (All buffers also auto saved on focus lost)

`M-x sublima-save-all-buffers`

#### TIP
```
(global-set-key (kbd "<f7>") 'sublima-scratch)
(global-set-key (kbd "<f8>") 'previous-buffer)
(global-set-key (kbd "<f9>") 'next-buffer)
```

## YouTube Tutorial
https://www.youtube.com/watch?v=Yta9cUUnnyA

## Credits
This package is based on [snippins1987's](https://www.reddit.com/user/snippins1987/) snippet on Reddit [Post](https://www.reddit.com/r/emacs/comments/fdcyo3/create_close_and_reopen_text_files_without_saving/fjhgqrp?utm_source=share&utm_medium=web2x&context=3)

## Websites
https://github.com/Parveshdhull
<br />https://twitter.com/ParveshMonu
<br />https://youtube.com/right2trick
