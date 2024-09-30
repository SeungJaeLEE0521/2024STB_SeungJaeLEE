#Gender 1개의 인자로 도수분포표 작성
table(X2024STB_survey $Gender)

#Gender 1개의 인자로 상대도수분포표 작성
ECN <- table(X2024STB_survey $Gender)
prop.table(ECN)

#Gender와 Grade 2개의 인자로 교차표 작성
table(X2024STB_survey $Gender, X2024STB_survey $`Grade`)

#Nationality 1개의 인자로 막대그래프 작성
bp <- barplot(table(X2024STB_survey $Nationality), xlab = "국적", ylab = "학생 수", ylim=c(0,55))
table(X2024STB_survey $Nationality)#도수분포표 확인
entry <-c(2,1,52,34)#entry에 값 대입
text(x=bp, y=entry, labels=entry, pos=3)#막대그래프에 값 표시

#Residential area 1개의 인자로 (가로)막대그래프 작성
bp <- barplot(table(X2024STB_survey $`residential area`), xlab = "학생 수", ylab = "residential area", xlim=c(0,70), horiz=TRUE)
table(X2024STB_survey $`residential area`)#도수분포표 확인
entry <-c(65,1,13,8,1,1)#entry에 값 대입
text(x=entry, y=bp, labels=entry, pos=4)#막대그래프에 값 표시

#Gender와 Grade 2개의 인자로 막대그래프 작성
entry <- table(X2024STB_survey $Gender, X2024STB_survey $`Grade`)
barplot(entry, legend = TRUE)
table(X2024STB_survey $Gender, X2024STB_survey $`Grade`) #Gender와 Grade 교차표

#Grade 1개의 인자로 파이차트 작성
colors <- c("red", "orange", "yellow", "green")
pie(table(X2024STB_survey $`Grade`), col=colors, main="Grade")
table(X2024STB_survey $`Grade`)#도수분포표 확인

#Age 인자로 히스토그램 작성
hist(X2024STB_survey$Age, main="Age", col=terrain.colors(12))
table(X2024STB_survey $`Age`)#도수분포표 확인

#Grade 별 Age를 비교하는 박스 플롯
boxplot(X2024STB_survey$second, X2024STB_survey$third, X2024STB_survey$fourth, X2024STB_survey$fifth, main="Grade 별 Age", col="yellow", names = c("2학년","3학년","4학년","5학년"))
summary(X2024STB_survey, na.rm=T)

#산점도 작성
plot(x=X2024STB_survey$Grade, y=X2024STB_survey$Age, xlab="Grade", ylab="Age", main="Grade 별 Age")
plot(x=X2024STB_survey$Grade, y=X2024STB_survey$Age, xlab="Grade", ylab="Age", main="Grade 별 Age", pch=24, col="red", bg="yellow", cex=1.5)

