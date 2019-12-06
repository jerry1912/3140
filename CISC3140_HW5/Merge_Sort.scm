Part 2 - Merge two sorted lists into one sorted list. You can assume both input lists are sorted in ascending order.

//To compare Left_element and Right_element and Pick one of each element in Left_element and Right_element
to find small element to big element.

(define (merge-sort Left_element Right_element)
  (if (null? Left_element)
      Right_element
  (if(null? Right_element)
      Left_element
          (if(> (car Right_element) (car Left_element))
              (cons (car Left_element) (merge-sort (cdr Left_element)Right_element))
              (cons (car Right_element) (merge-sort (cdr Left_element)Right_element))))))

// Use those element to compare small to big element
(merge-sort '(3 2 5) '(7 8 6))
