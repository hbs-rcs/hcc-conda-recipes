export OCTAVE_HOME=$OCTAVE_HOME_CONDA_BACKUP
unset OCTAVE_HOME_CONDA_BACKUP
if [ -z $OCTAVE_HOME ]; then
    unset OCTAVE_HOME
fi