boson="Z"
action="combine -o ."
#action="resubmit"
for piece in "" "_nnlo_sing"; do
	python3 /home/k/kelong/work/Generators/scetlib-cms/prod/scetlib_run/scetlib-manage-condor.py -r inclusive_${boson}_MSHT20nnlo_nplambda_pdfvars${piece}.ini -b 800 -j 4 -f /afs/cern.ch/work/k/kelong/ScetlibCondor/${boson}_MSHT20nnlo_pdfvars${piece} --pdf 65 -q workday $action
	python3 /home/k/kelong/work/Generators/scetlib-cms/prod/scetlib_run/scetlib-manage-condor.py -r inclusive_${boson}_MSHT20nnlo_nplambda_pdfas${piece}.ini -b 800 -j 4 -f /afs/cern.ch/work/k/kelong/ScetlibCondor/${boson}_MSHT20nnlo_pdfas${piece} --pdf 0 1 2 3 4 5 6 --alphas 0.118 0.115 0.116 0.117 0.119 0.120 0.121 -q espresso $action
done
