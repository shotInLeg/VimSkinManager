syntax match VsmCppFuncName /\.\@<=[a-z]\w\+(\@=/
syntax match VsmCppFuncName /\-\>\@<=[a-z]\w\+(\@=/
syntax match VsmCppFuncName /\W\@<=[A-Z][a-z]\w\+(\@=/
syntax match VsmCppFuncName /\W\@<=[A-SU-Z]\w\+(\@=/

syntax match VsmCppTypeName /\W\@<=T[A-Z]\w\+/
syntax match VsmCppTypeName /\W\@<=I[A-Z]\w\+/

syntax match VsmCppNamespace /\W\@<=N[A-Z]\w\+/


highlight def link VsmCppFuncName Function
highlight def link VsmCppTypeName Type
highlight def link VsmCppNamespace Constant
