# Presentation workflow

## Making presentation
1. Edit files in butlin/presentation as per normal.
2. To view:
   1. Open the relevent html file in browser and refresh on each change, or
   2. In VisualCode Studio, Ctl-Shft-P -> Live server: Open with liver server, will update view automatically.

## Uploading to github
To upload to butlin github, use Github desktop (seems simpler than VisualCode process)
 
<a href="https://github.com/butlin/presentations/">Github repository</a>

<a href="https://butlin.github.io/presentations/">Webpage linking to presentations</a>

To change the root webpage, edit index.md.

## Create Powerpoint backup

1. Install <a href="https://github.com/astefanutti/decktape">decktape</a> if not already installed.
2. In the install location, create a folder in that location called "screenshots".
3. In the install location, type:
  
    decktape --screenshots [link to presentation] [save name].pdf

e.g.,

    decktape --screenshots https://butlin.github.io/presentations/index_bpvf_overview.html bpvfpresentation.pdf

4. Open a blank Powerpoint
5. Insert -> Photo album ( https://www.isunshare.com/office/6-ways-to-insert-multiple-pictures-to-powerpoint-slides.html )
6. Select all the images exported by decktape.
7. Delete first slide.
8. Save.