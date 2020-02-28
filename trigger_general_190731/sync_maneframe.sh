studies='btag_c10_score_comparison
        ipxd_performance
        track_aux_study
        track_study'

opts='-r --include="*/" --include="*.pdf" --exclude="*"'
analysis="$HOME/Downloads/maneframe_local/analysis/"

for study in $studies; do
    rsync $opts $analysis/$study ./images
done
