import gleam/list

pub fn square_of_sum(n: Int) -> Int {
  let sum =
    list.range(1, n)
    |> list.fold(0, fn(acc, x) { acc + x })
  sum * sum
}

pub fn sum_of_squares(n: Int) -> Int {
  list.range(1, n)
  |> list.map(fn(x) { x * x })
  |> list.fold(0, fn(acc, x) { acc + x })
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
