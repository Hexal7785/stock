#if [ $# -lt 0 ]; then
#	echo "usage: $0 data"	
#	exit
#fi

# Apple (NASDAQ:APPL), Google (NASDAQ:GOOG), Microsoft (NASDAQ:MSFT),
#Facebook (NASDAQ:FB), Twitter (NYSE:TWTR), LinkedIn
#(NYSE:LNKD), Amazon (NASDAQ:AMZ), Oracle, IBM, Intel
#symbol=$1
symbol <- "AAPL"
#symbol=GOOG
#symbol=FB # 2012-05-18

name <- symbol
#out=$symbol
out <- paste(symbol, "-gaus", sep = "") # Gaussian mixture

# training period
assign(startdate, "2012-01-01")
#startdate= "2012-01-01"
#startdate <- "2000-01-01"
assign(enddate, "2013-03-01")
#enddate <- "2013-03-01"

# test period
teststart <- "2013-03-01"
testend <- "2014-03-01"

#data=${name}.dat
#data=$1
#prefix=${data%\.*}
#name=$prefix
script <- paste(out ,".R", sep = "")
png <- paste(out, ".png", sep = "")
emf <- paste(out, ".emf", sep = "")
eps <- paste(out, ".eps", sep = "")

#xlabel="DATE"
xlabel <- "DAY"
ylabel <- "STOCK VALUE ($)"
#ylabel="CLOSE VALUE"

runhmm <- function (command) {

	library(quantmod)

	require(devEMF)

	print(name)
	print(startdate)
	print(as.Date(startdate))
	print(enddate)
	print(as.Date(enddate))
	#getSymbols(AAPL)
	#getSymbols(name)
	#chartSeries(AAPL, theme="white")
#	chartSeries(name, theme="white")
	#startdate <- "2000-01-01"
	#assign(enddate, "2013-03-01")
#	trainset <- window("AAPL", start = as.Date("2000-01-01"), end = as.Date("2013-03-01"))
	#trainset <- window(name, start = as.Date("2000-01-01"), end = as.Date("2013-03-01"))
	#trainset <- window(name, start = as.Date(startdate), end = as.Date(enddate))
	#print(trainset)
	#${name}_Train <- cbind(${name}_Subset\$${name}.Close - ${name}_Subset\$${name}.Open, ${name}_Subset\$${name}.Volume)
#	train <- cbind(paste("trainset$", name, ".Close", sep = "") - paste("trainset$", name, ".Open", sep = ""))
	#print(train)

#	testset <- window(name, start = as.Date(teststart), end = as.Date(testend))
	#test <- cbind(paste("testset$", name, ".Close", sep = "") - paste("testset$", name, ".Open", sep = ""))
	#print(testset)

	#library(RHmm)
	# Baum-Welch Algorithm to find the model for the given observations
	#hm_model <- HMMFit(obs = ${name}_Train, nStates = 5)
	#hm_model <- HMMFit(obs = train, nStates = 5, nMixt = 4, dis = "MIXTURE")

	# Viterbi Algorithm to find the most probable state sequence
	#VitPath <- viterbi (hm_model, train)

	# scatter plot
	#print(command)
	#command
	#paste(name, "_Predict", setp = "") <- cbind(paste("trainset$", name, ".Close", sep = ""), VitPath$states)
	#${name}_Predict <- cbind(${name}_Subset\$${name}.Close, VitPath\$states)
	#print(${name}_Subset[,4] - ${name}_Predict [,1])

	# predict next stock value m = nMixt, n = nStates
	#sum(a$HMM$transMat[last(v$states),] * .colSums((matrix(unlist(a$HMM$distribution$mean), nrow=4,ncol=5)) * (matrix(unlist(a$HMM$distribution$proportion), nrow=4,ncol=5)), m=4,n=5))
	# gaussian mixture HMM: nrow = nMixture, ncol = nStates
	#print(hm_model\$HMM\$transMat[last(VitPath\$states),])
	#print(hm_model\$HMM\$distribution)
	#print(hm_model\$HMM\$distribution\$mean)
	#print(hm_model\$HMM\$distribution\$mean[, seq(1, ncol(hm_model\$HMM\$distribution\$mean), by = 2)])
	#print(unlist(hm_model\$HMM\$distribution\$mean))
	#print(matrix(unlist(hm_model\$HMM\$distribution\$proportion[1,])))

	# add a new colum "Pred"
	#testset <- cbind(testset, Pred = 0)
	#testset <- cbind(testset\$${name}.Close, Pred = 0)
	#print(testset)

	#for (i in 1: length(testset)) {
	#for (i in 1: length(testset) - 1) {
	#for (i in 1: 3) {
#	for (i in 1: 250) {
#		testrow <- testset[i, ]
#		print(testrow)
#		testopen <- paste("testset$", name, ".Open[i, ]", sep = "")
#		testclose <- paste("testset$", name, ".Close[i, ]", sep = "")
	#	actual <- testset\$${name}.Open[i + 1, ]
		#print(testset\$${name}.Open[i, ])

		# predict 
#		change <- sum(hm_model$HMM$transMat[last(VitPath$states),] * .colSums((matrix(unlist(hm_model$HMM$distribution$mean), nrow=4,ncol=5)) * (matrix(unlist(hm_model$HMM$distribution$proportion), nrow=4,ncol=5)), m=4,n=5))
		#sum(hm_model\$HMM\$transMat[last(VitPath\$states),] * .colSums((matrix(unlist(hm_model\$HMM\$distribution\$mean[1,]), nrow=4,ncol=5)) * (matrix(unlist(hm_model\$HMM\$distribution\$proportion[1,]), nrow=4,ncol=5)), m=4,n=5))
#		print(change)

#		pred <- testclose + change
		#pred <- (tail(${name}_Subset\$${name}.Close) + change)
		#testrow\$Pred <- pred
		#print(pred)
		# update tomorrow's predicted value
#		testset[i + 1, ]$Pred <- pred
		#print(testset[i + 1, ]\$Pred)

		#actual <- head(testset\$${name}.Close)
		#actual <- head(testset\$${name}.Open)
		#print(actual)

		# MAPE = sum(|pred - actual|/|actual|)*100/n
		#MAPE <- pred\$${name}.Close - actual\$${name}.Close
		#MAPE <- abs((pred\$${name}.Close - actual\$${name}.Close)/actual\$${name}.Close)
		#MAPE <- abs((pred\$${name}.Close - 420.05)/420.05) * 100
		#print(MAPE)

		# [Optional] Returns: sell or buy
		# if stock increased sell, otherwise buy
	
		# single HMM
		#sum(hm_model\$HMM\$transMat[last(VitPath\$states),] * .colSums((matrix(unlist(hm_model\$HMM\$distribution\$mean), nrow=1,ncol=5)) * (matrix(unlist(hm_model\$HMM\$distribution\$proportion), nrow=1,ncol=5)), m=1,n=5))

		#chartSeries(testset, theme="white")
		#chartSeries(test, theme="white")

		# Forward-backward 
		#fb <- forwardBackward(hm_model, test, FALSE)
		#print(fb)
		#print(${name}_Subset[,4] - ${name}_Predict [,1])

		#layout(matrix(1:2, nrow=2))
		#layout(matrix(2:1, ncol=2))
		#layout(1:2)
		#print(matrix(2:1, ncol=2))

		# show the states with predicted closing value
		#chartSeries(pred)
		#chartSeries(actual)
		#chartSeries(pred, TA = "addTA(actual, on = 1)")
		#chartSeries(pred, TA = "addTA(pred - change, on = 1)")

#	}

	#chartSeries(testset[, 1], TA = "addTA(testset[, 7], on = 1, col=10)") # red
	#chartSeries(testset[, 1], TA = "addTA(testset[, 7], on = 1, col=8)") # grey?
	#chartSeries(testset[, 1], TA = "addTA(testset[, 7], on = 1, col=6)") # pink
	#chartSeries(testset[, 1], TA = "addTA(testset[, 7], on = 1, col=9)") # black

	#chartSeries(testset[, 1], TA = "addTA(testset[, 7], legend = \"Predicted\", on = 1, col=10)") # 
	#chartSeries(testset[, 1], TA = "addTA(testset[, 7], on = 1, legend = \"Predicted\", col=8)") #
	#chartSeries(testset[, 1], TA = "addTA(testset[, 7], on = 1, legend = \"Predicted\", col=7)") # grey?
	#chartSeries(testset)

	#chartSeries(${name}_Predict[,1], #theme="white.mono", 
	#chartSeries(${name}_Predict[,1], layout = layout(matrix(2:1)), # 1, 2, byrow = TRUE), #respect = TRUE), #theme="white.mono", 
	#TA="addTA(${name}_Predict[${name}_Predict[,2]==1,1], legend = \"one day?\", on=1, col=5,pch=25);
	#addTA(${name}_Predict[${name}_Predict[,2]==2,1],on=1,type='p',col=6,pch=24);
	#addTA(${name}_Predict[${name}_Predict[,2]==3,1],on=1,type='p',col=7,pch=23);
	#addTA(${name}_Predict[${name}_Predict[,2]==4,1],on=1,type='p',col=8,pch=22);
	#addTA(${name}_Predict[${name}_Predict[,2]==5,1],on=1,type='p',col=10,pch=21)
	#")

}

genplot <- function (filetype) {
	cmd = "emf(emf)"
	filecmd = filetype

	if ( filetype == "eps" ) {
		filecmd = "postscript"
	}

	cmd <- paste(filecmd, "(", filetype, ")", sep = "")
	runhmm(cmd)
}

genplot ("png")
genplot ("eps")
#genplot emf

#git add .
#git commit -a -m $script
#git push

