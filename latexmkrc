# Detect OS for path separator
my $sep = ($^O eq 'MSWin32') ? ';' : ':';

$ENV{'BIBINPUTS'}='bib//' . $sep . ($ENV{'BIBINPUTS'} || '');
$ENV{'BSTINPUTS'}='bib//' . $sep . ($ENV{'BSTINPUTS'} || '');
$ENV{'TEXINPUTS'}='texmf//' . $sep . ($ENV{'TEXINPUTS'} || '');
$ENV{'T1FONTS'}='texmf/fonts/type1//' . $sep . ($ENV{'T1FONTS'} || '');
$ENV{'TTFONTS'}='texmf/fonts/truetype//' . $sep . ($ENV{'TTFONTS'} || '');
$ENV{'AFMFONTS'}='texmf/fonts/afm//' . $sep . ($ENV{'AFMFONTS'} || '');
$ENV{'TEXFONTMAPS'}='texmf/fonts/map//' . $sep . ($ENV{'TEXFONTMAPS'} || '');
$ENV{'TFMFONTS'}='texmf/fonts/tfm//' . $sep . ($ENV{'TFMFONTS'} || '');
$ENV{'VFFONTS'}='texmf/fonts/vf//' . $sep . ($ENV{'VFFONTS'} || '');
$ENV{'ENCFONTS'}='texmf/fonts/enc//' . $sep . ($ENV{'ENCFONTS'} || '');