# The purpose of this file is to read in the raw data files and perform initial cleaning.
library(tidyverse)
library(readr)

# Team offense from 2010
offense_2010 <- read_csv("data/raw/team_offense_2010.csv", skip = 1) %>%
  rename(
    rank = Rk,
    team = Tm,
    games = G,
    points_scored = PF,
    total_yds = `Yds...5`,
    plays = Ply,
    yds_per_play = `Y/P`,
    turnovers = TO,
    fumbles_lost = FL,
    first_downs_total = `1stD...10`,
    pass_cmp = Cmp,
    pass_att = `Att...12`,
    pass_yds = `Yds...13`,
    pass_td = `TD...14`,
    pass_int = Int,
    pass_net_yds_per_att = `NY/A`,
    first_downs_pass = `1stD...17`,
    rush_att = `Att...18`,
    rush_yds = `Yds...19`,
    rush_td = `TD...20`,
    rush_yds_per_att = `Y/A`,
    first_downs_rush = `1stD...22`,
    penalties = Pen,
    penalty_yds = `Yds...24`,
    first_downs_penalty = `1stPy`,
    score_pct = `Sc%`,
    turnover_pct = `TO%`,
    expected_points = EXP
  )

# Team defense from 2010
defense_2010 <- read_csv("data/raw/team_defense_2010.csv", skip = 1) %>%
  rename(
    rank = Rk,
    team = Tm,
    games = G,
    points_allowed = PA,
    total_yds_allowed = `Yds...5`,
    plays_allowed = Ply,
    yds_per_play_allowed = `Y/P`,
    turnovers_forced = TO,
    fumbles_forced = FL,
    first_downs_allowed = `1stD...10`,
    pass_cmp_allowed = Cmp,
    pass_att_allowed = `Att...12`,
    pass_yds_allowed = `Yds...13`,
    pass_td_allowed = `TD...14`,
    interceptions = Int,
    pass_net_yds_per_att_allowed = `NY/A`,
    first_downs_pass_allowed = `1stD...17`,
    rush_att_allowed = `Att...18`,
    rush_yds_allowed = `Yds...19`,
    rush_td_allowed = `TD...20`,
    rush_yds_per_att_allowed = `Y/A`,
    first_downs_rush_allowed = `1stD...22`,
    penalties_opp = Pen,
    penalty_yds_opp = `Yds...24`,
    first_downs_penalty_opp = `1stPy`,
    score_pct_allowed = `Sc%`,
    turnover_pct_forced = `TO%`,
    expected_points_allowed = EXP
  )

# Merge data for all of 2010
nfl_2010 <- offense_2010 %>%
  left_join(defense_2010, by = "team", suffix = c("_off", "_def")) # The suffix adds _off and _def to any duplicate column names (like games, rank, etc.)
