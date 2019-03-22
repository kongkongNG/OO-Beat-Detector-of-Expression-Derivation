## build.sh

​	将.java文件编译成.class文件，目前仅能实现自动搜索子类，但对于包结构只能手动修改路径， build.sh只需执行一次，生成.jar包后会自动删除.class文件。

## judge.sh

​	.jar的路径同样需要修改，且对于.py执行的功能仅限于对非Wrong Format的表达式进行求导并判断正确性

## input.txt

​	在该文件中输入**一行**数据，后执行judge.sh即可对所有人的.jar包执行结果与model.py的执行结果比对

## PS

​	**Wrong Anser**不一定就真的是**Wrong Anser**！，还要具体问题具体分析