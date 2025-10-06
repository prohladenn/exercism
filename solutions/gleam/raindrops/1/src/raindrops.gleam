import gleam/int
import gleam/string

pub fn convert(number: Int) -> String {
  let add_sound = fn(acc, divisor, sound) {
    case number % divisor == 0 {
      True -> acc <> sound
      False -> acc
    }
  }

  let sounds =
    ""
    |> add_sound(3, "Pling")
    |> add_sound(5, "Plang")
    |> add_sound(7, "Plong")

  case sounds {
    "" -> int.to_string(number)
    _ -> sounds
  }
}
