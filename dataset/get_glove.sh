preprocess_exec="sed -f tokenizer.sed"

glovepath='http://nlp.stanford.edu/data/glove.840B.300d.zip'

ZIPTOOL="unzip"

# GloVe
echo $glovepath
if [ ! -d "/GloVe/"];then
    mkdir GloVe
fi
curl -LO $glovepath
$ZIPTOOL glove.840B.300d.zip -d GloVe/
rm glove.840B.300d.zip

