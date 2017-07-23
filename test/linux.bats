#!/usr/bin/env bats

setup() {
  export PATH=test/fixtures/linux:test/fixtures:$PATH
}


@test "Linux WAN IP" {
  run ./geo -w
  [ "$status" -eq 0 ]
  [ "$output" = "4.2.3.4" ]
}

@test "Linux LAN IP" {
  run ./geo -l
  [ "$status" -eq 0 ]
  [ "$output" = "1.2.3.5" ]
}

@test "Linux Route IP" {
  run ./geo -r
  [ "$status" -eq 0 ]
  [ "$output" = "1.2.3.1" ]
}

@test "Linux DNS IP" {
  run ./geo -d
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "8.8.8.8" ]
  [ "${lines[1]}" = "8.8.4.4" ]
}

@test "Linux IP Geodata" {
  run ./geo -g
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "United States" ]
  [ "${lines[1]}" = "NY" ]
  [ "${lines[2]}" = "New York" ]
  [ "${lines[3]}" = "10011" ]
  [ "${lines[4]}" = "Digital Ocean" ]
  [ "${lines[5]}" = "1.2.3.4" ]
}

@test "Linux IP Selective Geodata" {
  run ./geo -a 8.8.8.8 -o city
  [ "$status" -eq 0 ]
  [ "$output" = "Mountain View" ]
}
