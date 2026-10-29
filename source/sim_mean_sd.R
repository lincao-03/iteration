#'sim_mean_sd
#'@param n_obs 
sim_mean_sd = function(n_obs, mu, sigma) {
  sim_df = 
    tibble(
      x = rnorm(n=40, mean=mu, sd=sigma)
    )
  return_df = 
    sim_df |>
    summarize(
      mean = mean(x),
      sd = sd(x)
    )
  return(return_df)
}