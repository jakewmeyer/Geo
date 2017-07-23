#!/usr/bin/env bats

setup() {
  export PATH=test/fixtures/darwin:test/fixtures:$PATH
}


@test "Darwin WAN IP" {
  run ./geo -w
  [ "$status" -eq 0 ]
  [ "$output" = "1.2.3.6" ]
}

@test "Darwin LAN IP" {
  run ./geo -l
  [ "$status" -eq 0 ]
  [ "$output" = "2.2.3.4" ]
}

@test "Darwin Route IP" {
  run ./geo -r
  [ "$status" -eq 0 ]
  [ "$output" = "2.2.3.1" ]
}

@test "Darwin DNS IP" {
  run ./geo -d
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "8.8.8.8" ]
}

@test "Darwin IP Geodata" {
  run ./geo -g
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "United States" ]
  [ "${lines[1]}" = "NY" ]
  [ "${lines[2]}" = "New York" ]
  [ "${lines[3]}" = "10011" ]
  [ "${lines[4]}" = "Digital Ocean" ]
  [ "${lines[5]}" = "1.2.3.4" ]
}

@test "Darwin IP Selective Geodata" {
  run ./geo -a 8.8.8.8 -o city
  [ "$status" -eq 0 ]
  [ "$output" = "Mountain View" ]
}
