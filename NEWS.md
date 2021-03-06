# GermaParl v1.3.0

- The GermaParl corpus is downloaded now from a storage location at zenodo. The 
  `germapar_download_corpus()` function has been reworked accordingly. It now
  takes the argument `doi`.
- The `GermaParl` R6 class has been dropped from the package. The main method of
  the function (`$summary()`) is superfluous as the `size()`-method of the polmineR
  package produces the same output (`data.table` with report of sizes of subcorpora
  on according to an `s_attribute`).
- The function `germaparl_add_p_attribute_stem()` has been removed from the package.
  The functionality (adding a new p-attribute with word stems) makes sense, but the
  implementation should be generic and included in the cwbtools package.
- The file 'zzz.R' has been removed from the package. It moved the registry files 
  from the GermaParl package to a central registry. This is not necessary any more
  as polmineR works with a temporary registry directory.
- The file 'configure' in the main directory of the package has been removed, as the 
  polmineR approach to work with a temporary registry does not require the paths 
  in the registry files to be set. The file 'tools/setpaths.R' has been removed
  for the same reason.
- The `germaparl_regdir()` function has been removed. Not necessary any more.
- The `germaparl_search_speeches()` function has been removed from the package. The
  functionality is nice, but there should either be a generic implementation in the
  polmineR package, or it might be offered as a recipe.
- Documentation for function to work with topicmodels have been integrated into one 
  documentation object.
- Bug removed from `germaparl_download_lda` examples.
- `germaparl_load_lda` will now return NULL object (instead of throwing an error) if
  lda model is not present.
- `germaparl_encode_lda_topics` will now issue a warning (instead of crashing) if the
  s-attribute 'speeches' has not yet been generated.
- The tarball is downloaded from Zenodo.

# GermaParl 1.2.1

- configure.win script is removed so that installation works on Windows without Rtools installation

# GermaParl 1.2.0

- Package includes sample data, but not full corpus upon installation, use `germaparl_download_corpus()` for downloading full corpus.
- installation script setpaths.R in ./tools used for adapting paths

# GermaParl 1.1.0

- Stanford CoreNLP (updated ctk package as interface) used for tokenization and annotation
- vignette "The Making of GermaParl" included that documents annotation procedure
- simplification of names of s-attributes (e.g. date instead of text_date)
- data in the GermaParl package synced with data available at github.com/PolMine/GermaParlTEI
- data includes 18th legislative period (until December 2016)


# GermaParl 1.0.5

- extended README added
- English version of the package vignette prepared
- documentation generated with pkgdown


# GermaParl 1.0.4

- template.json added to make use of new template mechanism (as offered by polmineR 0.7.4)


# GermaParl 1.0.3

- package/corpus renamed to GermaParl
- no substantial changes


# GermaParl 1.0.2

- adding a (German) vignette to the package

