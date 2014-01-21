# Setting a work directory
# 作業ディレクトリの設定
setwd("~/Documents/github/repository/Lessons-for-learning-R-language/Lesson04-Define_original_functions")

# A function for the creating frequency tables of "sample.csv"
# "sample.csv"の度数テーブルを作成する関数
create_freq_tbl <- function(i_file_name, o_directory){
	# Read a file
	itable <- read.table(i_file_name, header=T, sep=",")
	# Get amount of cols
	n <- ncol(itable)
	# Get file list
	flist <- list.files()
	# Create a directory when it is not exist
	if( !( match(o_directory, flist, nomatch=0) ) ){
		dir.create(o_directory)
	}
	# Create each table of col
	for(idx in 1:n){
		# Calculate frequency
		f <- table(itable[,idx])
		# Get col names
		h <- colnames(itable)
		# Edit output path
		path <- paste(o_directory, "/", h[idx], ".csv", sep="")
		# Output table data to csv file
		write.table(f, file=path, sep=",", row.names=FALSE)
	}
}

# A sample of above function
# 上記の関数の使用例
x <- create_freq_tbl("sample.csv", "res")
