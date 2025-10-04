# NFL Championship Prediction Model

> What makes a championship team? Machine learning analysis of NFL Super Bowl winners (2010-2024).

## About
This project uses logistic regression and random forest models to identify team characteristics that predict Super Bowl success. By analyzing offensive efficiency, defensive performance, and roster construction metrics across 15 NFL seasons, the model quantifies which factors differentiate champions from contenders.

## Research Question
What team characteristics predict Super Bowl victories?

## Data Sources
- Pro Football Reference (team stats)
- [Other sources as identified]

## Variables to Consider

### Outcome Variable
- Super Bowl win (binary: 1 = won, 0 = didn't win)

### Potential Predictors
**Offensive Metrics:**
- Points per game
- Third down conversion %
- Turnover differential (offensive contribution)

**Defensive Metrics:**
- Points allowed per game
- Yards allowed per game
- Turnover differential (defensive contribution)

**Team Construction:**
- [Draft capital allocation]
- [Salary cap efficiency]
- [Veteran leadership metrics]

[Expand as research progresses]

## Methodology
- **Baseline model:** Logistic regression
- **Advanced model:** Random forest
- **Time period:** 2010-2024 NFL seasons (15 championships)
- **Validation:** Train-test split, cross-validation

## Timeline
- **Week 1:** Data collection and cleaning
- **Weeks 2-3:** Exploratory data analysis and visualization
- **Week 4:** Initial logistic regression modeling
- **Week 5+:** Random forest implementation and comparison
[Adjust as project evolves]

## Notes/Questions
- How to handle strike-shortened seasons (2011)?
- Should playoff statistics be weighted differently than regular season?
- Define "roster construction" metrics—what's actually measurable?
- Consider interaction effects (e.g., elite defense + strong running game)?
- For clarification's sake: championship team = Super Bowl winner, not just conference champ (binary outcome variable). Dataframe will be ~480 rows (32 teams x 15 seasons). 15 rows will have outcome = 1, rest = 0. This model is to predict which teams win championships, not just analyzing past winners.
