Part 1 - Implement a function to check if a list is a palindrome.

//Use Scheme result-list function take the element-list and find the element-list to the same element, when element 
not equal the same element will be return false.


(define (PalindromeReverse element-list result-list)
  (if (null? element-list) 
      result-list
      (PalindromeReverse (cdr element-list) (append (list (car element-list)) result-list)))
)

(define (palindrome element-list)
  (equal? element-list (PalindromeReverse element-list '()))    
)

//You can use those palindrome words to check the words is True or False
(palindrome '(a b c a c b a)) // True
(palindrome '(m a l a y a l a m)) //True
(palindrome '(p e e p)) //True
(palindrome '((m)-(o)-(m))) //True
(palindrome '(w – a – a – w)) //True
(palindrome '((l e) (v) (e l))) //False


