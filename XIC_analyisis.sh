python extract_XIC.py  TTE-75-1-01-3.mzXML  >scan_info.txt
cat scan_info.txt |sed -e 's/PT//' -e 's/S//'|awk -F'\t' '{if(NR==1){print $0}else{OFS="\t";$2=$2/60;print $1,$2,$3,$4}}' >scan_info_minute.txt
Rscript ggplot_xic.R
