#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

isEnabled := True

^M::isEnabled := !isEnabled

!M::CallTheSnake()

CallTheSnake()
{
    test := """" . clipboard . """"

    RunWait, pythonw Morse.pyw %test%

    MsgBox, %clipboard%
}

#If isEnabled
    ; Letters
    A::send, .-{space}
    B::send, -...{space}
    C::send, -.-.{space}
    D::send, -..{space}
    E::send, .{space}
    F::send, ..-.{space}
    G::send, --.{space}
    H::send, ....{space}
    I::send, ..{space}
    J::send, .---{space}
    K::send, -.-{space}
    L::send, .-..{space}
    M::send, --{space}
    N::send, -.{space}
    O::send, ---{space}
    P::send, .--.{space}
    Q::send, --.-{space}
    R::send, .-.{space}
    S::send, ...{space}
    T::send, -{space}
    U::send, ..-{space}
    V::send, ...-{space}
    W::send, .--{space}
    X::send, -..-{space}
    Y::send, -.--{space}
    Z::send, --..{space}

    ; Numbers
    0::send, -----{space}
    1::send, .----{space}
    2::send, ..---{space}
    3::send, ...--{space}
    4::send, ....-{space}
    5::send, .....{space}
    6::send, -....{space}
    7::send, --...{space}
    8::send, ---..{space}
    9::send, ----.{space}

    $Space::send, /{space}

/*Punctuation
.::send, .-.-.-    
,::send, --..--    
?::send, ..--..    
'::send, .----.    
!::send, -.-.--    
/::send, -..-.
(::send, -.--.    
)::send, -.--.-    
&::send, .-...    
:::send, ---...    
;::send, -.-.-.    
=::send, -...-
+::send, .-.-.    
-::send, -....-    
_::send, ..--.-    
"::send, .-..-.    
$::send, ...-..-    
@::send, .--.-.
¿::send, ..-.-    
¡::send, --...-*/