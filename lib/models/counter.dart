class Counter {
  int value = 0;

  void increment() => value++;

  void decrement() => value--;

  int findSumOfDuplicateNum(List<List<int>> case1) {
    List<int> uniqueNum = [];
    Set<int> duplicateNum = {};
    int result = 0;
    for (var i = 0; i < case1.length; i++) {
      for (var j = 0; j < case1[i].length; j++) {
        if (uniqueNum.contains(case1[i][j])) {
          duplicateNum.add(case1[i][j]);
        } else {
          uniqueNum.add(case1[i][j]);
        }
      }
    }

    for (var i = 0; i < duplicateNum.length; i++) {
      result += duplicateNum.elementAt(i);
    }

    return result;
  }
}
