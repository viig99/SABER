import string

class Vocab(object):

    def __init__(self, blank_id=0, vocab=string.ascii_lowercase + string.whitespace[0]):
        super().__init__()
        self.vocab = vocab
        self.blank_id = blank_id

    def encode(self, text):
        idxs = [self.vocab.index(c) + 1 for c in text.lower() if c in self.vocab]
        for idx in reversed(idxs):
            if idx == len(self) - 1:
                idxs.pop()
            else:
                break
        return idxs

    def decode(self, tokens):
        return ''.join([self.vocab[token-1] for token in tokens if token != self.blank_id])

    def __len__(self):
        return len(self.vocab) + 1

if __name__ == "__main__":
    vc = Vocab()
    tensor = vc.encode("WTF, \'where did HE GO TO! $$ %\'")
    print(tensor)
    print(vc.decode(tensor))
    print(len(vc))