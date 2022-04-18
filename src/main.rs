fn main() {
    println!("Hello, world!");
}

// comment out this next line (the attribute) to see the difference
#[tracing::instrument]
fn do_the_thing(suffix: char) -> String {
    let answer = 40 + 2;
    format!("{}{}", answer, suffix)
}

#[test]
fn the_thing() {
    assert_eq!(do_the_thing('!'), "42!");
}
