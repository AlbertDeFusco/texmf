<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.0 Final//EN">
<HTML>
<HEAD>
<LINK REL="STYLESHEET" TYPE="text/css" HREF="/global_css/style.css"
TITLE="Style">
<META NAME="ROBOTS" CONTENT="ALL">
<META NAME="description" CONTENT="jpc.bst. Computational Chemistry List.
Resource for Computational Chemists.
Discussions on chemistry software, data, conferences, jobs, quantum chemistry,
molecular mechanics, molecular dynamics, QSAR, molecular graphics,
molecular modeling, and associated archives">
<META NAME="keywords" CONTENT=
"CCL,
OSC,
NSF,
ab initio,
archives,
chemical bonding,
chemical physics,
chemistry software,
combinatorial chemistry,
computational chemistry,
conformational analysis,
density functional theory,
discussions,
drug design,
electronic structure,
force field,
ftp,
kinetics,
macromolecules,
mail server,
materials design,
molecular dynamics,
molecular geometry,
molecular graphics,
molecular interactions,
molecular mechanics,
molecular modeling,
molecular recognition,
molecular spectroscopy,
Monte Carlo,
physical chemistry,
pharmacophore optimization,
polymer chemistry,
QSAR,
quantum chemistry,
semiempirical methods
solvation,
surface chemistry,
theoretical chemistry,
transition state,
vibrational frequences,
visualization,
web site">
<TITLE>jpc.bst</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" CLASS="white">
<A HREF="/chemistry/index.shtml"><IMG SRC="/global_images/triccl.gif" ALIGN=BOTTOM
WIDTH="326" BORDER=0 HEIGHT="80" ALT="CCL Home Page"></A>
<TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="4">
  <TR>
   <TD CLASS="botlink" WIDTH="100%">
     http://www.ccl.net/cca/text-processing/tex/bibtex/jpc.shtml
   </TD>
  </TR>
</TABLE>
<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="4">
 <TR>
  <TD CLASS="up" WIDTH="143"><A HREF="../index.shtml" CLASS="navbig"><IMG SRC="/global_images/upbut.gif" ALT="Up Directory" BORDER="0"></A>
  </TD>
  <TD CLASS="title"><EM CLASS="title">CCL</EM> jpc.bst
  </TD>
 </TR>
 <TR>
  <TD CLASS="nav" VALIGN="top">
    <TABLE WIDTH="143" CELLSPACING="0" CELLPADDING="0">
 <TR>
  <TD CLASS="subtab" WIDTH="143">
   <TABLE WIDTH="140" BORDER="3" CELLSPACING="0" CELLPADDING="2">
    <TR>
     <TD CLASS="head" WIDTH="143">
      <A HREF="index.shtml" CLASS="navbig">bibtex</A>
     </TD>
    </TR>
    <TR>
     <TD CLASS="list">
<A HREF="README.shtml" CLASS="navsmall">README</A>, 
<A HREF="aip.bst" CLASS="navsmall">aip.bst</A>, 
<A HREF="american-chem-soc-journals/index.shtml" CLASS="navsmall">american-chem-soc-journals</A>, 
<A HREF="bbrc.bst.shtml" CLASS="navsmall">bbrc.bst</A>, 
<A HREF="bbrc.bst.old.shtml" CLASS="navsmall">bbrc.bst.old</A>, 
<A HREF="biochem.bst" CLASS="navsmall">biochem.bst</A>, 
<A HREF="cabios.bst" CLASS="navsmall">cabios.bst</A>, 
<A HREF="cell.bst" CLASS="navsmall">cell.bst</A>, 
<A HREF="jacs-new.shtml" CLASS="navsmall">jacs-new.bst</A>, 
<A HREF="jacs.bst.shtml" CLASS="navsmall">jacs.bst</A>, 
<A HREF="jbc.bst" CLASS="navsmall">jbc.bst</A>, 
<A HREF="jmb.bst" CLASS="navsmall">jmb.bst</A>, 
<A HREF="jpc.shtml" CLASS="navsmall">jpc.bst</A>, 
<A HREF="nature.bst" CLASS="navsmall">nature.bst</A>, 
<A HREF="pnas.shtml" CLASS="navsmall">pnas.bst</A>, 
<A HREF="prot_eng.bst" CLASS="navsmall">prot_eng.bst</A>, 
<A HREF="proteins.bst" CLASS="navsmall">proteins.bst</A>, 
<A HREF="science.bst" CLASS="navsmall">science.bst</A>, 
<A HREF="science1.shtml" CLASS="navsmall">science1.bst</A>
     </TD>
    </TR>
   </TABLE>
  </TD>
 </TR>
</TABLE>
<P></P>

  </TD>
  <TD CLASS="body" VALIGN="top">
<PRE>% BibTeX bibliography style `jpc' for J. Phys. Chem.
%   8/9/93 Joerg-R. Hill
%   no output of 'title' for 'article', 'book', 'inbook', 'incollection'
%   no output of 'note' except in 'unpublished'
%
% version 0.99a for BibTeX versions 0.99a or later, LaTeX version 2.09.
% Copyright (C) 1985, all rights reserved.
% Copying of this file is authorized only if either
% (1) you make absolutely no changes to your copy, including name, or
% (2) if you do make changes, you name it something other than
% btxbst.doc, plain.bst, unsrt.bst, alpha.bst, and abbrv.bst.
% This restriction helps ensure that all standard styles are identical.
% The file btxbst.doc has the documentation for this style.
%
%	Fixed article, book references	11/10/92---CLF

ENTRY
  { address
    author
    booktitle
    chapter
    edition
    editor
    howpublished
    institution
    journal
    key
    month
    note
    number
    organization
    pages
    publisher
    school
    series
    title
    type
    volume
    year
  }
  {}
  { label }

INTEGERS { output.state before.all mid.sentence after.sentence after.block after.item author.or.editor }

FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
  #4 'after.item :=
}

FUNCTION {add.semicolon}
{ duplicate$
  #-1 #1 substring$ "}" =
      { #-2 #1024 substring$ ";} " * }
      { "; " * }
  if$
}

STRINGS { s t }

FUNCTION {output.nonnull}
{ 's :=
  output.state mid.sentence =
    { ", " * write$ }
    { output.state after.block =
	{ add.semicolon write$
	  newline$
	  "\newblock " write$
	}
	{ output.state before.all =
	    'write$
	    { output.state after.item =
		{ " " * write$ }
	      { add.period$ " " * write$ }
	    if$
	    }
        if$
      }
	if$
      mid.sentence 'output.state :=
    }
  if$
  s
}

FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}

FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}

FUNCTION {output.bibitem}
{ newline$
  "\bibitem{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

FUNCTION {fin.entry}
{ add.period$
  write$
  newline$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}

FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
	'skip$
	{ after.sentence 'output.state := }
      if$
    }
  if$
}

FUNCTION {new.item}
{ duplicate$ empty$
    { skip$ }
    { output.state mid.sentence =
        { after.item 'output.state := }
        { skip$ }
      if$
    }
  if$
}

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}

FUNCTION {new.block.checka}
{ empty$
    'skip$
    'new.block
  if$
}

FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}

FUNCTION {new.sentence.checka}
{ empty$
    'skip$
    'new.sentence
  if$
}

FUNCTION {new.sentence.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.sentence
  if$
}

FUNCTION {new.item.checka}
{ empty$
    'skip$
    'new.item
  if$
}

FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}

FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "{\em " swap$ * "}" * }
  if$
}

FUNCTION {boldface}
{ duplicate$ empty$
    { pop$ "" }
    { "{\bf " swap$ * "}" * }
  if$
}

INTEGERS { nameptr namesleft numnames }

FUNCTION {format.names}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr "{vv~}{ll}{, jj}{, f}." format.name$ 't :=
      nameptr #1 >
	{ namesleft #1 >
	  { author.or.editor #1 =
	    { "; " * t * }
	    { ", " * t * }
        if$
	  }
	  { t "others" =
	    { " et~al." * }
	    { author.or.editor #1 =
	      { "; " * t * }
	      { ", " * t * }
          if$
	    }
	  if$
        }
      if$
	}
	't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {format.authors}
{ author empty$
    { "" }
    { #1 'author.or.editor :=
      author format.names }
  if$
}

FUNCTION {format.editors}
{ editor empty$
    { "" }
    { #2 'author.or.editor :=
	editor format.names
      editor num.names$ #1 >
	{ ", Eds." * }
	{ ", Ed." * }
      if$
    }
  if$
}

FUNCTION {format.title}
{ title empty$
    { "" }
    { title "t" change.case$ }
  if$
}

FUNCTION {n.dashify}
{ 't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
	{ t #1 #2 substring$ "--" = not
	    { "--" *
	      t #2 global.max$ substring$ 't :=
	    }
	    {   { t #1 #1 substring$ "-" = }
		{ "-" *
		  t #2 global.max$ substring$ 't :=
		}
	      while$
	    }
	  if$
	}
	{ t #1 #1 substring$ *
	  t #2 global.max$ substring$ 't :=
	}
      if$
    }
  while$
}

FUNCTION {format.date}
{ year empty$
    { month empty$
	{ "" }
	{ "there's a month but no year in " cite$ * warning$
	  month
	}
      if$
    }
    { month empty$
	{ year boldface }
	{ month " " * year boldface }
      if$
    }
  if$
}

FUNCTION {format.bdate}
{ year empty$
	{ "there's no year in " cite$ * warning$ }
	'year
  if$
}

FUNCTION {format.btitle}
{ title emphasize
}

FUNCTION {tie.or.space.connect}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$ * *
}

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { "Vol. " volume tie.or.space.connect
      series empty$
	'skip$
	{ " of " * series emphasize * }
      if$
      "volume and number" number either.or.check
    }
  if$
}

FUNCTION {format.number.series}
{ volume empty$
    { number empty$
	{ series field.or.null }
	{ output.state mid.sentence =
	    { "number" }
	    { "Number" }
	  if$
	  number tie.or.space.connect
	  series empty$
	    { "there's a number but no series in " cite$ * warning$ }
	    { " in " * series * }
	  if$
	}
      if$
    }
    { "" }
  if$
}

FUNCTION {format.edition}
{ edition empty$
    { "" }
    { output.state mid.sentence =
	{ edition "l" change.case$ " ed." * }
	{ edition "t" change.case$ " ed." * }
      if$
    }
  if$
}

INTEGERS { multiresult }

FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
	{ #1 'multiresult := }
	{ t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
	{ "pages" pages n.dashify tie.or.space.connect }
	{ "page" pages tie.or.space.connect }
      if$
    }
  if$
}

FUNCTION {format.vol.num.pages}
{ volume emphasize field.or.null
  number empty$
    'skip$
    { "(" number * ")" * *
      volume empty$
	{ "there's a number but no volume in " cite$ * warning$ }
	'skip$
      if$
    }
  if$
  pages empty$
    'skip$
    { duplicate$ empty$
	{ pop$ format.pages }
	{ ", " * pages n.dashify * }
      if$
    }
  if$
}

FUNCTION {format.chapter.pages}
{ chapter empty$
    'format.pages
    { type empty$
	{ "chapter" }
	{ type "l" change.case$ }
      if$
      chapter tie.or.space.connect
      pages empty$
	'skip$
	{ ", " * format.pages * }
      if$
    }
  if$
}

FUNCTION {format.in.ed.booktitle}
{ booktitle empty$
    { "" }
    { editor empty$
	{ "In " booktitle emphasize * }
	{ "In " format.editors * ", " * booktitle emphasize * }
      if$
    }
  if$
}

FUNCTION {format.in.booktitle.ed}
{ booktitle empty$
    { "" }
    { editor empty$
        { "In " booktitle emphasize * }
        { "In " booktitle emphasize * "; " * format.editors * }
      if$
    }    
  if$
}

FUNCTION {format.pub.address}
{ publisher empty$
    { "" }
    { address empty$
        { publisher }
        { publisher ": " * address *}
      if$
    }    
  if$
}

FUNCTION {empty.misc.check}
{ author empty$ title empty$ howpublished empty$
  month empty$ year empty$ note empty$
  and and and and and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}

FUNCTION {format.thesis.type}
{ type empty$
    'skip$
    { pop$
      type "t" change.case$
    }
  if$
}

FUNCTION {format.tr.number}
{ type empty$
    { "Technical Report" }
    'type
  if$
  number empty$
    { "t" change.case$ }
    { number tie.or.space.connect }
  if$
}

FUNCTION {format.article.crossref}
{ key empty$
    { journal empty$
	{ "need key or journal for " cite$ * " to crossref " * crossref *
	  warning$
	  ""
	}
	{ "In {\em " journal * "\/}" * }
      if$
    }
    { "In " key * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.crossref.editor}
{ editor #1 "{vv~}{ll}" format.name$
  editor num.names$ duplicate$
  #2 >
    { pop$ " et~al." * }
    { #2 <
	'skip$
	{ editor #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
	    { " et~al." * }
	    { " and " * editor #2 "{vv~}{ll}" format.name$ * }
	  if$
	}
      if$
    }
  if$
}

FUNCTION {format.book.crossref}
{ volume empty$
    { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      "In "
    }
    { "Volume" volume tie.or.space.connect
      " of " *
    }
  if$
  editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
	{ series empty$
	    { "need editor, key, or series for " cite$ * " to crossref " *
	      crossref * warning$
	      "" *
	    }
	    { "{\em " * series * "\/}" * }
	  if$
	}
	{ key * }
      if$
    }
    { format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.incoll.inproc.crossref}
{ editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
	{ booktitle empty$
	    { "need editor, key, or booktitle for " cite$ * " to crossref " *
	      crossref * warning$
	      ""
	    }
	    { "In {\em " booktitle * "\/}" * }
	  if$
	}
	{ "In " key * }
      if$
    }
    { "In " format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {article}
{ output.bibitem
  format.authors "author" output.check new.item
  crossref missing$
    { journal emphasize "journal" output.check new.item
      format.date "year" output.check
      format.vol.num.pages output
    }
    { format.article.crossref output.nonnull
      format.pages output
    }
  if$
  fin.entry
}

FUNCTION {book}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check new.item }
    { format.authors output.nonnull new.item
      crossref missing$
	{ "author and editor" editor either.or.check }
	'skip$
      if$
    }
  if$
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      format.number.series output
      new.block
      format.pub.address "publisher" output.check
    }
    { format.book.crossref output.nonnull }
  if$
  format.edition output
  format.bdate "year" output.check
  new.block
  fin.entry
}

FUNCTION {booklet}
{ output.bibitem
  format.authors output new.item
  format.title "title" output.check
  howpublished address new.block.checkb
  howpublished output
  address output
  format.date output
  new.block
  fin.entry
}

FUNCTION {inbook}
{ output.bibitem
  author empty$
    { format.editors "author and editor" output.check new.item }
    { format.authors output.nonnull new.item }
  if$
  format.in.booktitle.ed "title" output.check
  new.block
  crossref missing$
    { format.pub.address "publisher" output.check
      format.bdate "year" output.check
      new.block
      format.bvolume output
      new.block
      format.chapter.pages "chapter and pages" output.check
      new.block
      format.number.series output
    }
    { format.chapter.pages "chapter and pages" output.check
      new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  new.block
  fin.entry
}

FUNCTION {incollection}
{ output.bibitem
  format.authors "author" output.check new.item
  crossref missing$
    { format.in.booktitle.ed "booktitle" output.check
      format.bvolume output
      format.number.series output
      new.block
      format.pub.address "publisher" output.check
      format.edition output
      format.bdate "year" output.check
	new.block
      format.chapter.pages output
    }
    { format.incoll.inproc.crossref output.nonnull
      format.chapter.pages output
    }
  if$
  new.block
  fin.entry
}

FUNCTION {inproceedings}
{ output.bibitem
  format.authors "author" output.check new.item
  crossref missing$
    { format.in.ed.booktitle "booktitle" output.check
      format.bvolume output
      format.number.series output
      format.pages output
      address empty$
	{ organization publisher new.sentence.checkb
	  organization output
	  publisher output
	  format.bdate "year" output.check
	}
	{ address output.nonnull
	  format.bdate "year" output.check
	  new.sentence
	  organization output
	  publisher output
	}
      if$
    }
    { format.incoll.inproc.crossref output.nonnull
      format.pages output
    }
  if$
  new.block
  fin.entry
}

FUNCTION {conference} { inproceedings }

FUNCTION {manual}
{ output.bibitem
  format.title "title" output.check new.sentence
  author empty$
    { organization empty$
	'skip$
	{ organization output.nonnull
	  address output
	}
      if$
    }
    { format.authors output.nonnull new.item }
  if$
  author empty$
    { organization empty$
	{ address new.block.checka
	  address output
	}
	'skip$
      if$
    }
    { organization address new.block.checkb
      organization output
      address output
    }
  if$
  format.edition output
  format.date output
  new.block
  fin.entry
}

FUNCTION {mastersthesis}
{ output.bibitem
  format.authors "author" output.check new.item
  format.title "title" output.check new.item
  "Master's thesis" format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  fin.entry
}

FUNCTION {misc}
{ output.bibitem
  format.title output
  new.sentence
  format.authors output new.item
  howpublished new.item.checka
  howpublished output
  format.date output
  new.block
  fin.entry
  empty.misc.check
}

FUNCTION {phdthesis}
{ output.bibitem
  format.authors "author" output.check new.item
  format.btitle "title" output.check new.item
  "PhD thesis" format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  fin.entry
}

FUNCTION {proceedings}
{ output.bibitem
  editor empty$
    { organization output }
    { format.editors output.nonnull new.item }
  if$
  new.block
  format.btitle "title" output.check
  format.bvolume output
  format.number.series output
  address empty$
    { editor empty$
	{ publisher new.sentence.checka }
	{ organization publisher new.sentence.checkb
	  organization output
	}
      if$
      publisher output
      format.date "year" output.check
    }
    { address output.nonnull
      format.date "year" output.check
      new.sentence
      editor empty$
	'skip$
	{ organization output }
      if$
      publisher output
    }
  if$
  new.block
  fin.entry
}

FUNCTION {techreport}
{ output.bibitem
  format.authors "author" output.check new.item
  format.title "title" output.check new.item
  format.tr.number output.nonnull
  institution "institution" output.check
  address output
  format.date "year" output.check
  new.block
  fin.entry
}

FUNCTION {unpublished}
{ output.bibitem
  format.authors "author" output.check new.item
% format.title "title" output.check new.item
  note "note" output.check
  format.date output
  fin.entry
}

FUNCTION {default.type} { misc }

MACRO {jan} {"January"}

MACRO {feb} {"February"}

MACRO {mar} {"March"}

MACRO {apr} {"April"}

MACRO {may} {"May"}

MACRO {jun} {"June"}

MACRO {jul} {"July"}

MACRO {aug} {"August"}

MACRO {sep} {"September"}

MACRO {oct} {"October"}

MACRO {nov} {"November"}

MACRO {dec} {"December"}

MACRO {bbrc} {"Biochem. Biophys. Res. Commun."}

MACRO {jacs} {"J. Amer. Chem. Soc."}

MACRO {jbc} {"J. Biol. Chem."}

MACRO {pnas} {"Proc. Natl. Acad. Sci."}

MACRO {jmb} {"J. Mol. Biol."}

MACRO {embo} {"EMBO J."}

MACRO {tibs} {"Trends Biochem. Sci."}

MACRO {protsfg} {"Proteins: Struct. Func. Gen."}

MACRO {ieeetcad}
 {"IEEE Transactions on Computer-Aided Design of Integrated Circuits"}

MACRO {ipl} {"Information Processing Letters"}

MACRO {jacm} {"Journal of the ACM"}

MACRO {jcss} {"Journal of Computer and System Sciences"}

MACRO {scp} {"Science of Computer Programming"}

MACRO {sicomp} {"SIAM Journal on Computing"}

MACRO {tocs} {"ACM Transactions on Computer Systems"}

MACRO {tods} {"ACM Transactions on Database Systems"}

MACRO {tog} {"ACM Transactions on Graphics"}

MACRO {toms} {"ACM Transactions on Mathematical Software"}

MACRO {toois} {"ACM Transactions on Office Information Systems"}

MACRO {toplas} {"ACM Transactions on Programming Languages and Systems"}

MACRO {tcs} {"Theoretical Computer Science"}

READ

STRINGS { longest.label }

INTEGERS { number.label longest.label.width }

FUNCTION {initialize.longest.label}
{ "" 'longest.label :=
  #1 'number.label :=
  #0 'longest.label.width :=
}

FUNCTION {longest.label.pass}
{ number.label int.to.str$ 'label :=
  number.label #1 + 'number.label :=
  label width$ longest.label.width >
    { label 'longest.label :=
      label width$ 'longest.label.width :=
    }
    'skip$
  if$
}

EXECUTE {initialize.longest.label}

ITERATE {longest.label.pass}

FUNCTION {begin.bib}
{ preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{"  longest.label  * "}" * write$ newline$
}

EXECUTE {begin.bib}

EXECUTE {init.state.consts}

ITERATE {call.type$}

FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}

EXECUTE {end.bib}
</PRE>
  </TD>
 </TR>
</TABLE>
<P CLASS="links">
[ <A HREF="/chemistry/index.shtml" CLASS="navsmall">CCL Home Page</A> ] <BR>
[ <A HREF="index.shtml" CLASS="navsmall">bibtex</A> ]
<BR>
[ <A HREF="jpc.bst" CLASS="navsmall">Raw Version of this page</A> ]
</P>
<TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="4">
  <TR>
    <TD CLASS="modtime" align="middle">
  Modified:
      
      Tue Sep  6 16:00:00 1994 GMT
    </TD>
  </TR>
  <TR>
    <TD CLASS="counter" align="middle">
     Page accessed 6099 times since Sun Apr 16 11:32:30 2000 GMT<!-- 
<BR>CCL Pages are mirrored at
<a href="http://www.chemistry.net" target="_blank">http://www.chemistry.net</a><BR> -->

    </TD>
  </TR>
</TABLE>
</BODY>
</HTML>
