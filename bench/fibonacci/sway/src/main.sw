library fibonacci;

fn fibonacci(n: u64) -> u64 {
  if n == 0 { 
    return 0;
  }

  let mut a = 1;
  let mut b = 1;
  let mut i = 2;

  while i < n {
    let c = a + b;
    a = b;
    b = c;
    i = i + 1;
  }

  return b;
}

#[test]
fn fibonacci_test() {
  let result = fibonacci(2);
  assert(result == 2);
}
