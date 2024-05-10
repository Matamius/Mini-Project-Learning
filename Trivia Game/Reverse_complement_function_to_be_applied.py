""" Expanded code for a program that takes in a "sequence" argument and returns that sequence's
    reverse complement. This code should also check if we're dealing with RNA or DNA based on 
    the presence of "U".
"""

def reverse_complement(sequence):
    sequence_upper = sequence.upper() ## ensure argument input will always be upper to work with dictionary
    complement_DNA_bases = {'A': 'T', 'T': 'A', 'C': 'G', 'G': 'C'} ## simple dictionary to identify complementary bases in DNA
    complement_RNA_bases = {'A': 'U', 'U': 'A', 'C': 'G', 'G': 'C'} ## copied from above to account for RNA bases
    reverse_comp_seq = '' ## empty variable

## will need code here to read sequence and identify if it is DNA or RNA (look for U to be RNA)
## if it doesn't encounter a U, default to DNA
## return reverse_complement according to sequence nature
    
    for base in reversed(sequence_upper): ## reverse the sequence and look at each character in reversed sequence
        reverse_comp_seq += complement_DNA_bases[base] ## grow the rev_comp_seq
    return reverse_comp_seq ## return for the function



## for me to test the progress ... 
omg_an_sequence = input("Input 5 base long sequence (DNA or RNA): ")
print(reverse_complement(omg_an_sequence))