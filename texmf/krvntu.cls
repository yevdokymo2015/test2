\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{krvntu}[2025/12/24 v1.0 class for KR VNTU]

% Базовий клас для формату А5
\LoadClass[a5paper,11pt]{extreport}

% іноді потрібна (для draft режиму)
%\LoadClass[a5paper,11pt,draft]{extreport}

% --- ШРИФТИ І КОДУВАННЯ ---
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc}

% PSCyr завантажується в kr.tex, не тут
% Не завантажуємо mathptmx, бо він конфліктує з PSCyr 

\RequirePackage[english,ukrainian]{babel}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
% \RequirePackage{enumitem} % Цей пакет викликав конфлікт "Missing number", вимикаємо тут

% --- НАЛАШТУВАННЯ ПОЛІВ ДЛЯ А5 ---
% Для А5 важливі збалансовані поля: внутрішнє більше для палітурки
\geometry{
    left=20mm,          % внутрішнє поле (для палітурки)
    right=15mm,         % зовнішнє поле
    top=20mm,           % верхнє поле (збільшено для заголовків)
    bottom=20mm,        % нижнє поле (збільшено для номерів сторінок)
    bindingoffset=5mm,  % додатковий відступ для палітурки
    footskip=12mm       % відступ для номера сторінки
}

% --- МІЖРЯДКОВИЙ ІНТЕРВАЛ ДЛЯ А5 ---
% Для малого формату використовуємо менший інтервал для комфорту
\setstretch{1.15}  % компактніше за \onehalfspacing (1.5)

% --- ПРОФЕСІЙНЕ ОФОРМЛЕННЯ ЗАГОЛОВКІВ ДЛЯ А5 ---
% Chapter: великий жирний заголовок з відступами
\titleformat{\chapter}[display]
  {\centering\bfseries\Large}           % \Large жирний для А5
  {\MakeUppercase{\chaptertitlename} \thechapter}
  {10pt}                                % відступ між номером і назвою
  {\MakeUppercase}
\titlespacing*{\chapter}{0pt}{0pt}{24pt}  % відступи: 0 зверху, 24pt знизу

% Section: жирний з нумерацією БЕЗ крапки
\titleformat{\section}
  {\bfseries\large}                     % \large жирний для Section
  {\thesection}                         % БЕЗ крапки після номера
  {0.5em}
  {}
\titlespacing*{\section}{0pt}{14pt}{8pt}

% Subsection: жирний менший
\titleformat{\subsection}
  {\bfseries\normalsize}                % normalsize жирний для subsection
  {\thesubsection}                      % БЕЗ крапки
  {0.5em}
  {}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}

% Subsubsection: жирний курсив для додаткових підрозділів
\titleformat{\subsubsection}
  {\bfseries\itshape\normalsize}        % жирний курсив
  {\thesubsubsection}
  {0.5em}
  {}
\titlespacing*{\subsubsection}{0pt}{10pt}{4pt}

% Paragraph: для міні-заголовків у тексті
\titleformat{\paragraph}[runin]
  {\bfseries\normalsize}
  {}
  {0pt}
  {}[.]
\titlespacing*{\paragraph}{0pt}{8pt}{1em}

% --- ЗМІННІ ДЛЯ ТИТУЛКИ ---
\def\faculty#1{\def\@faculty{#1}}
\def\discipline#1{\def\@discipline{#1}}
\def\course#1{\def\@course{#1}}
\def\group#1{\def\@group{#1}}
\def\speciality#1{\def\@speciality{#1}}
\def\leader#1{\def\@leader{#1}}
\def\degree#1{\def\@degree{#1}}
\def\position#1{\def\@position{#1}}
\def\reviewer#1{\def\@reviewer{#1}}
\def\controller#1{\def\@controller{#1}}
\def\approver#1{\def\@approver{#1}}

% --- ОФОРМЛЕННЯ ТИТУЛЬНОЇ СТОРІНКИ ---
\renewcommand{\maketitle}{
    \begin{titlepage}
        \centering
        \textbf{МІНІСТЕРСТВО ОСВІТИ І НАУКИ УКРАЇНИ}\\
        \textbf{ВІННИЦЬКИЙ НАЦІОНАЛЬНИЙ ТЕХНІЧНИЙ УНІВЕРСИТЕТ}\\
        \vspace{1cm}
        Факультет \@faculty\\
        \vspace{2cm}
        
        \textbf{КУРСОВА РОБОТА}\\
        з дисципліни <<\@discipline>>\\
        на тему: \textbf{\@title}\\
        \vspace{3cm}
        
        \begin{flushright}
            \begin{minipage}{0.5\textwidth}
                \textbf{Виконав:}\\
                студент гр. \@group\\
                спеціальності \@speciality\\
                \@author\\
                
                \textbf{Керівник:}\\
                \@position, \@degree\\
                \@leader
            \end{minipage}
        \end{flushright}
        
        \vfill
        \textbf{Вінниця -- \the\year}
    \end{titlepage}
}