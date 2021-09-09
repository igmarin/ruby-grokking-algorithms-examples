'use strict';

function BinarySearch(list, item) {
  const low = 0;
  let high = list.length - 1;

  while (low <= high) {
    const mid = (low + high);
    const guess = list[mid];
    if (guess === item) {
      return mid;
    } else if (guess > item) {
      high = mid - 1;
    } else {
      high = mid + 1;
    }
  }
  return "None";
}

const my_list = [1, 3, 5, 7, 9]
console.log(BinarySearch(my_list, 7))
console.log(BinarySearch(my_list, -1))