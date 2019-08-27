def proteins(strand):
    codons = {'AUG': 'Methionine',    'UUU': 'Phenylalanine',
              'UUC': 'Phenylalanine', 'UUA': 'Leucine',
              'UUG': 'Leucine',       'UCU': 'Serine',
              'UCC': 'Serine',        'UCA': 'Serine',
              'UCG': 'Serine',        'UAU': 'Tyrosine',
              'UAC': 'Tyrosine',      'UGU': 'Cysteine',
              'UGC': 'Cysteine',      'UGG': 'Tryptophan',
              'UAA': 'STOP',          'UAG': 'STOP',
              'UGA': 'STOP'}
    prot = []
    for i in range(0, len(strand), 3):
        if strand[i:i+3] in codons:
            val = codons[strand[i:i+3]]
            if val == 'STOP':
                break
            else:
                prot.append(val)

    return prot
