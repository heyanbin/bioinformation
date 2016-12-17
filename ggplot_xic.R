/ifs1/ST_PRO/USER/xushx/software/R_3.1.1/bin/R --slave <<'EOF'
library(ggplot2)
library(splines)
a<-read.table("scan_info_minute.txt",header = T)
b<-subset(a,a$retentionTime > (25.324-5) & a$retentionTime < (25.324+5) & a$basePeakMz > (559.62096-0.05) & a$basePeakMz < (559.62096+0.05))
png("XIC1.png",width=500,height=400)
ggplot(b, aes(x=retentionTime,y=basePeakIntensity)) +geom_smooth(se=F,method="lm",formula=y~ns(x,8),family=gaussian(link="log"),show_guide = FALSE,lwd=1.2)
dev.off()
EOF

