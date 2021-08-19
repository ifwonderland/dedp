#existing prob

p_ij = c(0.6, 0.1, 0.3, 0.2, 0.7, 0.1, 0.3, 0.3, 0.4)
dim(p_ij) = c(3,3)

#recursion
r_ij <- function(i, j, n) {
  result = 0;
  if(n==0) {
    result = ifelse(i==j, 1, 0);
  }else if(n==1){
  result = p_ij[i, j];  
  }else{
    for (k in 1:3) {
      result = result + r_ij(i, k, n-1)*p_ij[k, j]
    }
  }
  
  result
}

r_ij(1,3,2)



