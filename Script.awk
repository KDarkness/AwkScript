# (a) Prints first name of the all the Tooks followed by their total campaign contributions
BEGIN {
  printf "%-10s %s\n", "First Name", "Total Campaign Contributions"
}
{
  if ($2 == "Took") {
    printf "%-10s %s\n", $1, $10
  }
}

# (b) Print the full names and contributions of anyone who contributed between $10 and $200 in the last contribution
BEGIN {
  printf "%-20s %s\n", "Full Name", "Last Contribution"
}
{
  if ($10 >= 10 && $10 <= 200) {
    printf "%-20s %s\n", $1 " " $2, $10
  }
}

# (c) Prints the full names and average contribution of those who contributed less than $300 on average
BEGIN {
  printf "%-20s %s\n", "Full Name", "Average Contribution"
}
{
  average_contribution = $10 / 3
  if (average_contribution < 300) {
    printf "%-20s %s\n", $1 " " $2, average_contribution
  }
}