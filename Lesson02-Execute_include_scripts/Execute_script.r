# Setting a work directory
# 作業ディレクトリの設定
setwd("~/Documents/github/repository/Lessons-for-learning-R-language/Lesson02-Execute_include_scripts")

# Print initial value
# 初期値出力
print(x)

# Include external script
# 外部スクリプトをインクルード
source(file="included_script.r")

# Calculate for observing the change
# 変化を観るために計算
x <- x * 1.3

# Check result
print(x)
