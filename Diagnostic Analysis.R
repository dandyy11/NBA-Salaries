# Correlation between Salary and Win Shares (WS)
correlation_salary_ws <- cor(nba_players$Salary, nba_players$WS, use="complete.obs")

# Correlation between Salary and VORP
correlation_salary_vorp <- cor(nba_players$Salary, nba_players$VORP, use="complete.obs")

# Plot Salary vs. Win Shares by Position
ggplot(nba_players, aes(x = WS, y = Salary, color = Position)) +
  geom_point() +
  theme_minimal() +
  ggtitle("Salary vs. Win Shares by Position")
