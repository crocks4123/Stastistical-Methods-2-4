# chirag devgade c223 SM-Kurtosis     
# manually
# initial steps
dataset <- c(26, 12, 16, 56, 112, 24)
mean = sum(dataset)/length(dataset)
mean
deviation <-c()
for (i in dataset) {
  t = i - mean
  deviation <- c(deviation, t)
}
deviation

# second moment = sumation(deviation^2/ccount)
deviation_2 = deviation^2
sec_mo = deviation_2/length(dataset)
sec_mo
print(paste("Second Moment: ", sum(sec_mo)))

# third moment = sumation(deviation^3/ccount)
deviation_3 = deviation^3
thr_mo = deviation_3/length(dataset)
thr_mo
print(paste("Third Moment: ", sum(thr_mo)))

# fourth moment = sumation(deviation^4/ccount)
deviation_4 = deviation^4
for_mo = deviation_4/length(dataset)
for_mo
print(paste("Fourth Moment: ", sum(for_mo)))

# kurtosis calculation
kurtosis <- sum(for_mo)/(sum(sec_mo))^2
print(paste("Manual Kurtosis: ", kurtosis))


# type of kurtosis
if (kurtosis > 3){
  print('kurtosis > 3: Leptokurtic Distribution')
} else if (kurtosis == 3) {
  print('kurtosis = 3: Mesokurtic Distribution')
} else if (kurtosis < 3) {
  print('kurtosis < 3: Platykurtic Distribution')
}

# using inbuilt function
# Load the 'moments' package
library(moments)
# Find the kurtosis of the dataset
cal_kur <- kurtosis(dataset)
print(paste("Calculated Kurtosis: ", cal_kur))
if (cal_kur > 3){
  print('kurtosis > 3: Leptokurtic Distribution')
} else if (cal_kur == 3) {
  print('kurtosis = 3: Mesokurtic Distribution')
} else if (cal_kur < 3) {
  print('kurtosis < 3: Platykurtic Distribution')
}
