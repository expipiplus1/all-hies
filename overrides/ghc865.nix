self: super: {
  ghc-exactprint = super.ghc-exactprint.overrideAttrs (old: {
    patches = (old.patches or []) ++ [../exactprint-extensions.patch];
  });
  haskell-ide-engine = super.haskell-ide-engine.overrideAttrs (old: {
    patches = (old.patches or []) ++ [../no-bad-diag.patch];
  });
}