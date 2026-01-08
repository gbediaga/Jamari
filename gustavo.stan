data {
  int<lower=0> N;
  vector[N] h;
  vector[N] d;
}
parameters {
  real<lower=1, upper=100> hmax;
  real<lower=0> a;
  real<lower=0> sigma;
}
model {
  log(h) ~ normal(log(hmax*d ./ (a+d)), sigma);
}
