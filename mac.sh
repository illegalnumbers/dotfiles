for gnuutil in /usr/local/opt/**/libexec/gnubin/*; do
    ln -s $gnuutil /usr/local/gnubin/
done
echo "Add /usr/local/gnubin to /etc/paths"

if type brew &>/dev/null; then
  HOMEBREW_PREFIX=$(brew --prefix)
  # gnubin; gnuman
  for d in ${HOMEBREW_PREFIX}/opt/*/libexec/gnubin; do export PATH=$d:$PATH; done
  # I actually like that man grep gives the BSD grep man page
  #for d in ${HOMEBREW_PREFIX}/opt/*/libexec/gnuman; do export MANPATH=$d:$MANPATH; done
fi
