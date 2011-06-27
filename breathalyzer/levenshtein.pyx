cdef extern from "levenshtein_distance.h":
     int levenshtein_distance(char *s,char *t)   

def levenshtein(char* s1, char* s2):
    return levenshtein_distance(s1, s2)