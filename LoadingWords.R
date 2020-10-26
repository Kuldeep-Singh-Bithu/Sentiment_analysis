posText = read.delim("positive-words.txt", header=FALSE, stringsAsFactors=FALSE)
posText = posText$V1
posText = unlist(lapply(posText, function(x) { str_split(x, "\n") }))
negText = read.delim("negative-words.txt", header=FALSE, stringsAsFactors=FALSE)
negText = negText$V1
negText = unlist(lapply(negText, function(x) { str_split(x, "\n") }))
pos.words = c(posText, 'upgrade')
neg.words = c(negText, 'wtf', 'wait', 'waiting','epicfail', 'mechanical')
