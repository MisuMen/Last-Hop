///scr_string_time()
var l_s="";
var s_s="";
var m_s="";

if L_L<10 {l_s=string_insert("0"+string(L_L),l_s,0)} else {l_s=string(L_L)}
if S_S<10 {s_s=string_insert("0"+string(S_S),s_s,0)} else {s_s=string(S_S)}
if M_M<10 {m_s=string_insert("0"+string(M_M),m_s,0)} else {m_s=string(M_M)}

return (m_s+":"+s_s+":"+l_s);
