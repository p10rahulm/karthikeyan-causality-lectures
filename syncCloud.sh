# Type the command "cmd < syncCloud.sh" on windows or "./syncCloud.sh" on linux
# Preliminary Checks:
# 1. Ensure that you are on the IISc CISCO VPN


# Now Git changes
git add -A
git commit -m "content changes"
git push


# Now attempt to directly update website through SSH
# Ensure local computer's ssh credentials are added to remote machine's ~/.ssh/authorized_keys
ssh -t events@csacloud.iisc.ac.in -p 3232 "./synckarthikeyanLectures.sh"
echo "Please check that the website https://events.csa.iisc.ac.in/karthikeyanvs-causality/ is updated."
# exit