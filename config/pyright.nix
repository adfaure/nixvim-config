{pkgs, ...}: {
  pyright-wrapper = pkgs.stdenv.mkDerivation {
    name = "pyright-python-is-mypython";
    src = ./.;
    buildInputs = [pkgs.pyright];
    installPhase = ''
      mkdir -p $out/bin/pythondefault;
      echo -e '#!/usr/bin/env bash\nexec mypython "$@"' > $out/bin/pythondefault/python;
      chmod a+x $out/bin/pythondefault/python;
      echo -e "#!/usr/bin/env bash\nexport PATH=\$PATH:$out/bin/pythondefault\nexec ${pkgs.pyright}/bin/pyright-langserver \"\$@\"" > $out/bin/pyright-langserver;
      chmod a+x $out/bin/pyright-langserver;
    '';
  };
}
