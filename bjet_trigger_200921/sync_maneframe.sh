images_to_sync='
    btag_IP2D_llr
    btag_IP3D_llr
    btag_DL1r_llr
    btag_rnnip_llr
    btag_IP2D_pu
    btag_IP3D_pu
    btag_DL1r_pu
    btag_rnnip_pu
    btag_rnnip_pb
    btag_rnnip_pu
    btag_rnnip_pc
    JetFitter_mass
    SV1_masssvx
    SV1_NGTinSvx
'

for image in $images_to_sync; do
    cp ~/Documents/mane_local/plots/${image}.png images
done
