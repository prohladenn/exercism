import gleam/string

pub fn message(log_line: String) -> String {
  let result = case log_line {
    "[INFO]:" <> message -> message
    "[ERROR]:" <> message -> message
    "[WARNING]:" <> message -> message
    _ -> "invalid log line"
  }
  string.trim(result)
}

pub fn log_level(log_line: String) -> String {
  let result = case log_line {
    "[INFO]" <> _ -> "info"
    "[ERROR]" <> _ -> "error"
    "[WARNING]" <> _ -> "warning"
    _ -> "invalid log line"
  }
  string.trim(result)
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
