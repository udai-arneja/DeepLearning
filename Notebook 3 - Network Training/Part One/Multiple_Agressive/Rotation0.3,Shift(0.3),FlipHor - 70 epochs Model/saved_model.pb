Ѓћ
ё
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
: *
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
: *
dtype0

conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:@*
dtype0

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_10/kernel
~
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*'
_output_shapes
:@*
dtype0
u
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
n
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes	
:*
dtype0

conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_11/kernel

$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*(
_output_shapes
:*
dtype0
u
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_11/bias
n
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes	
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_8/kernel/m

*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_8/bias/m
y
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_9/kernel/m

*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_9/bias/m
y
(Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_10/kernel/m

+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_10/bias/m
|
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_11/kernel/m

+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_11/bias/m
|
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_8/kernel/v

*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_8/bias/v
y
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_9/kernel/v

*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_9/bias/v
y
(Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_10/kernel/v

+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_10/bias/v
|
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_11/kernel/v

+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_11/bias/v
|
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
НR
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*јQ
valueюQBыQ BфQ
Л
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
y
layer-0
layer-1
layer-2
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
R
#regularization_losses
$	variables
%trainable_variables
&	keras_api
R
'regularization_losses
(	variables
)trainable_variables
*	keras_api
h

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
R
1regularization_losses
2	variables
3trainable_variables
4	keras_api
R
5regularization_losses
6	variables
7trainable_variables
8	keras_api
h

9kernel
:bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
R
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
R
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
h

Gkernel
Hbias
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
R
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
R
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
h

Ukernel
Vbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
R
[regularization_losses
\	variables
]trainable_variables
^	keras_api

_iter

`beta_1

abeta_2
	bdecay
clearning_ratemШmЩ+mЪ,mЫ9mЬ:mЭGmЮHmЯUmаVmбvвvг+vд,vе9vж:vзGvиHvйUvкVvл
 
F
0
1
+2
,3
94
:5
G6
H7
U8
V9
F
0
1
+2
,3
94
:5
G6
H7
U8
V9
­
regularization_losses
dlayer_metrics
	variables
enon_trainable_variables

flayers
trainable_variables
gmetrics
hlayer_regularization_losses
 

i_rng
j	keras_api

k_rng
l	keras_api

m_rng
n	keras_api
 
 
 
­
regularization_losses
olayer_metrics
	variables
pnon_trainable_variables

qlayers
trainable_variables
rmetrics
slayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
tlayer_metrics
 	variables
unon_trainable_variables

vlayers
!trainable_variables
wmetrics
xlayer_regularization_losses
 
 
 
­
#regularization_losses
ylayer_metrics
$	variables
znon_trainable_variables

{layers
%trainable_variables
|metrics
}layer_regularization_losses
 
 
 
А
'regularization_losses
~layer_metrics
(	variables
non_trainable_variables
layers
)trainable_variables
metrics
 layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
В
-regularization_losses
layer_metrics
.	variables
non_trainable_variables
layers
/trainable_variables
metrics
 layer_regularization_losses
 
 
 
В
1regularization_losses
layer_metrics
2	variables
non_trainable_variables
layers
3trainable_variables
metrics
 layer_regularization_losses
 
 
 
В
5regularization_losses
layer_metrics
6	variables
non_trainable_variables
layers
7trainable_variables
metrics
 layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

90
:1

90
:1
В
;regularization_losses
layer_metrics
<	variables
non_trainable_variables
layers
=trainable_variables
metrics
 layer_regularization_losses
 
 
 
В
?regularization_losses
layer_metrics
@	variables
non_trainable_variables
layers
Atrainable_variables
metrics
 layer_regularization_losses
 
 
 
В
Cregularization_losses
layer_metrics
D	variables
non_trainable_variables
layers
Etrainable_variables
metrics
  layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

G0
H1
В
Iregularization_losses
Ёlayer_metrics
J	variables
Ђnon_trainable_variables
Ѓlayers
Ktrainable_variables
Єmetrics
 Ѕlayer_regularization_losses
 
 
 
В
Mregularization_losses
Іlayer_metrics
N	variables
Їnon_trainable_variables
Јlayers
Otrainable_variables
Љmetrics
 Њlayer_regularization_losses
 
 
 
В
Qregularization_losses
Ћlayer_metrics
R	variables
Ќnon_trainable_variables
­layers
Strainable_variables
Ўmetrics
 Џlayer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
В
Wregularization_losses
Аlayer_metrics
X	variables
Бnon_trainable_variables
Вlayers
Ytrainable_variables
Гmetrics
 Дlayer_regularization_losses
 
 
 
В
[regularization_losses
Еlayer_metrics
\	variables
Жnon_trainable_variables
Зlayers
]trainable_variables
Иmetrics
 Йlayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14

К0
Л1
 

М
_state_var
 

Н
_state_var
 

О
_state_var
 
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Пtotal

Рcount
С	variables
Т	keras_api
I

Уtotal

Фcount
Х
_fn_kwargs
Ц	variables
Ч	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_2:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

П0
Р1

С	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

У0
Ф1

Ц	variables
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_11/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_11/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_11/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

"serving_default_sequential_4_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ  *
dtype0*$
shape:џџџџџџџџџ  
і
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_4_inputconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_576350
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_577281
М
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/mAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/vAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/vAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_577417гл
ђ
d
H__inference_sequential_4_layer_call_and_return_conditional_losses_576958

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
А
L
0__inference_max_pooling2d_7_layer_call_fn_575891

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_5758852
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А
L
0__inference_max_pooling2d_6_layer_call_fn_575879

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_5758732
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

J
.__inference_activation_14_layer_call_fn_577117

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_5761302
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ
:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
з
e
I__inference_activation_10_layer_call_and_return_conditional_losses_575970

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ   :W S
/
_output_shapes
:џџџџџџџџџ   
 
_user_specified_nameinputs
И	

-__inference_sequential_5_layer_call_fn_576696

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_5762242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:џџџџџџџџџ  ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Е;

H__inference_sequential_5_layer_call_and_return_conditional_losses_576667

inputs+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource,
(conv2d_11_conv2d_readvariableop_resource-
)conv2d_11_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂconv2d_8/BiasAdd/ReadVariableOpЂconv2d_8/Conv2D/ReadVariableOpЂconv2d_9/BiasAdd/ReadVariableOpЂconv2d_9/Conv2D/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpА
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_8/Conv2D/ReadVariableOpО
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   *
paddingSAME*
strides
2
conv2d_8/Conv2DЇ
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_8/BiasAdd/ReadVariableOpЌ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   2
conv2d_8/BiasAdd
activation_10/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ   2
activation_10/ReluЫ
max_pooling2d_6/MaxPoolMaxPool activation_10/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_6/MaxPoolА
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_9/Conv2D/ReadVariableOpи
conv2d_9/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_9/Conv2DЇ
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_9/BiasAdd/ReadVariableOpЌ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
conv2d_9/BiasAdd
activation_11/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
activation_11/ReluЫ
max_pooling2d_7/MaxPoolMaxPool activation_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_7/MaxPoolД
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_10/Conv2D/ReadVariableOpм
conv2d_10/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_10/Conv2DЋ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpБ
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_10/BiasAdd
activation_12/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
activation_12/ReluЬ
max_pooling2d_8/MaxPoolMaxPool activation_12/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2
max_pooling2d_8/MaxPoolЕ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_11/Conv2D/ReadVariableOpм
conv2d_11/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_11/Conv2DЋ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpБ
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_11/BiasAdd
activation_13/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
activation_13/ReluЗ
1global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_2/Mean/reduction_indicesл
global_average_pooling2d_2/MeanMean activation_13/Relu:activations:0:global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
global_average_pooling2d_2/MeanІ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
dense_2/MatMul/ReadVariableOp­
dense_2/MatMulMatMul(global_average_pooling2d_2/Mean:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_2/BiasAdd
activation_14/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
activation_14/SoftmaxФ
IdentityIdentityactivation_14/Softmax:softmax:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ  ::::::::::2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
з
e
I__inference_activation_11_layer_call_and_return_conditional_losses_576010

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
№
Z
-__inference_sequential_4_layer_call_fn_575867
random_rotation_2_input
identityт
PartitionedCallPartitionedCallrandom_rotation_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758642
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :h d
/
_output_shapes
:џџџџџџџџџ  
1
_user_specified_namerandom_rotation_2_input

g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_575897

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ъ	
н
D__inference_conv2d_8_layer_call_and_return_conditional_losses_576982

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ЂА
Ж
"__inference__traced_restore_577417
file_prefix$
 assignvariableop_conv2d_8_kernel$
 assignvariableop_1_conv2d_8_bias&
"assignvariableop_2_conv2d_9_kernel$
 assignvariableop_3_conv2d_9_bias'
#assignvariableop_4_conv2d_10_kernel%
!assignvariableop_5_conv2d_10_bias'
#assignvariableop_6_conv2d_11_kernel%
!assignvariableop_7_conv2d_11_bias%
!assignvariableop_8_dense_2_kernel#
assignvariableop_9_dense_2_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate 
assignvariableop_15_variable"
assignvariableop_16_variable_1"
assignvariableop_17_variable_2
assignvariableop_18_total
assignvariableop_19_count
assignvariableop_20_total_1
assignvariableop_21_count_1.
*assignvariableop_22_adam_conv2d_8_kernel_m,
(assignvariableop_23_adam_conv2d_8_bias_m.
*assignvariableop_24_adam_conv2d_9_kernel_m,
(assignvariableop_25_adam_conv2d_9_bias_m/
+assignvariableop_26_adam_conv2d_10_kernel_m-
)assignvariableop_27_adam_conv2d_10_bias_m/
+assignvariableop_28_adam_conv2d_11_kernel_m-
)assignvariableop_29_adam_conv2d_11_bias_m-
)assignvariableop_30_adam_dense_2_kernel_m+
'assignvariableop_31_adam_dense_2_bias_m.
*assignvariableop_32_adam_conv2d_8_kernel_v,
(assignvariableop_33_adam_conv2d_8_bias_v.
*assignvariableop_34_adam_conv2d_9_kernel_v,
(assignvariableop_35_adam_conv2d_9_bias_v/
+assignvariableop_36_adam_conv2d_10_kernel_v-
)assignvariableop_37_adam_conv2d_10_bias_v/
+assignvariableop_38_adam_conv2d_11_kernel_v-
)assignvariableop_39_adam_conv2d_11_bias_v-
)assignvariableop_40_adam_dense_2_kernel_v+
'assignvariableop_41_adam_dense_2_bias_v
identity_43ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9К
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*Ц
valueМBЙ+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesф
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Т
_output_shapesЏ
Ќ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ї
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѕ
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ј
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ј
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_11_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7І
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_11_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8І
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Є
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10Ѕ
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ї
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ў
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15Є
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16І
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_17І
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ё
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ё
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ѓ
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ѓ
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22В
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_8_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23А
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv2d_8_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24В
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_9_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25А
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_9_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Г
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_10_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Б
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_10_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Г
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_11_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Б
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_11_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Б
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_2_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Џ
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_2_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32В
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_8_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33А
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_8_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34В
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_9_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35А
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_9_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Г
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_10_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Б
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_10_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Г
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_11_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Б
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_11_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Б
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_2_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Џ
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_2_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpњ
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42э
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*П
_input_shapes­
Њ: ::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
З

-__inference_sequential_4_layer_call_fn_575858
random_rotation_2_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallrandom_rotation_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::22
StatefulPartitionedCallStatefulPartitionedCall:h d
/
_output_shapes
:џџџџџџџџџ  
1
_user_specified_namerandom_rotation_2_input
Н
I
-__inference_sequential_4_layer_call_fn_576972

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758642
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
У
J
.__inference_activation_13_layer_call_fn_577088

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_5760902
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­Є

H__inference_sequential_4_layer_call_and_return_conditional_losses_575851

inputs?
;random_rotation_2_stateful_uniform_statefuluniform_resourceB
>random_translation_2_stateful_uniform_statefuluniform_resource
identityЂ2random_rotation_2/stateful_uniform/StatefulUniformЂ5random_translation_2/stateful_uniform/StatefulUniformЂ7random_translation_2/stateful_uniform_1/StatefulUniformh
random_rotation_2/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_2/Shape
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2Ю
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack 
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1 
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2и
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack 
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1 
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2и
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1Д
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:FёП2(
&random_rotation_2/stateful_uniform/min
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fё?2(
&random_rotation_2/stateful_uniform/maxО
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmъ
2random_rotation_2/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_2_stateful_uniform_statefuluniform_resourceErandom_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:џџџџџџџџџ*
shape_dtype024
2random_rotation_2/stateful_uniform/StatefulUniformк
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/subю
&random_rotation_2/stateful_uniform/mulMul;random_rotation_2/stateful_uniform/StatefulUniform:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2(
&random_rotation_2/stateful_uniform/mulк
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2$
"random_rotation_2/stateful_uniform
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_rotation_2/rotation_matrix/sub/yЦ
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/subЋ
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/Cos
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_1/yЬ
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1л
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/mulЋ
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/Sin
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_2/yЪ
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2п
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_1п
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_3п
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_4
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/yђ
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2+
)random_rotation_2/rotation_matrix/truediv
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_5/yЪ
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5Џ
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_1
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_6/yЬ
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6с
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_2Џ
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_1
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_7/yЪ
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7с
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_3п
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/addп
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_8Ѓ
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/yј
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2-
+random_rotation_2/rotation_matrix/truediv_1Ј
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/ShapeИ
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stackМ
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1М
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2Ў
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_sliceЏ
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_2У
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1Џ
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_2У
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2У
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/NegУ
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2х
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3Џ
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_3У
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4Џ
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_3У
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5У
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2ч
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6 
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/yє
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mulЃ
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш20
.random_rotation_2/rotation_matrix/zeros/Less/yя
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/LessІ
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packedЃ
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const§
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/zeros 
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axisм
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2*
(random_rotation_2/rotation_matrix/concat|
!random_rotation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:2#
!random_rotation_2/transform/ShapeЌ
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stackА
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1А
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2і
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_valueЁ
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs1random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3Г
random_translation_2/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_2/Shape
(random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_2/strided_slice/stackЂ
*random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_1Ђ
*random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_2р
"random_translation_2/strided_sliceStridedSlice#random_translation_2/Shape:output:01random_translation_2/strided_slice/stack:output:03random_translation_2/strided_slice/stack_1:output:03random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_2/strided_sliceЂ
*random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_1/stackІ
,random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_1І
,random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_2ъ
$random_translation_2/strided_slice_1StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_1/stack:output:05random_translation_2/strided_slice_1/stack_1:output:05random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_1
random_translation_2/CastCast-random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/CastЂ
*random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_2/stackІ
,random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_1І
,random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_2ъ
$random_translation_2/strided_slice_2StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_2/stack:output:05random_translation_2/strided_slice_2/stack_1:output:05random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_2Ё
random_translation_2/Cast_1Cast-random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast_1 
-random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_2/stateful_uniform/shape/1ѕ
+random_translation_2/stateful_uniform/shapePack+random_translation_2/strided_slice:output:06random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_2/stateful_uniform/shape
)random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *О2+
)random_translation_2/stateful_uniform/min
)random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)random_translation_2/stateful_uniform/maxФ
?random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_2/stateful_uniform/StatefulUniform/algorithm§
5random_translation_2/stateful_uniform/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceHrandom_translation_2/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:џџџџџџџџџ*
shape_dtype027
5random_translation_2/stateful_uniform/StatefulUniformц
)random_translation_2/stateful_uniform/subSub2random_translation_2/stateful_uniform/max:output:02random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_2/stateful_uniform/subў
)random_translation_2/stateful_uniform/mulMul>random_translation_2/stateful_uniform/StatefulUniform:output:0-random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)random_translation_2/stateful_uniform/mulъ
%random_translation_2/stateful_uniformAdd-random_translation_2/stateful_uniform/mul:z:02random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%random_translation_2/stateful_uniformЗ
random_translation_2/mulMul)random_translation_2/stateful_uniform:z:0random_translation_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/mulЄ
/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_2/stateful_uniform_1/shape/1ћ
-random_translation_2/stateful_uniform_1/shapePack+random_translation_2/strided_slice:output:08random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_2/stateful_uniform_1/shape
+random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *О2-
+random_translation_2/stateful_uniform_1/min
+random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+random_translation_2/stateful_uniform_1/maxШ
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmН
7random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceJrandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_2/stateful_uniform_1/shape:output:06^random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:џџџџџџџџџ*
shape_dtype029
7random_translation_2/stateful_uniform_1/StatefulUniformю
+random_translation_2/stateful_uniform_1/subSub4random_translation_2/stateful_uniform_1/max:output:04random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_2/stateful_uniform_1/sub
+random_translation_2/stateful_uniform_1/mulMul@random_translation_2/stateful_uniform_1/StatefulUniform:output:0/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+random_translation_2/stateful_uniform_1/mulђ
'random_translation_2/stateful_uniform_1Add/random_translation_2/stateful_uniform_1/mul:z:04random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'random_translation_2/stateful_uniform_1П
random_translation_2/mul_1Mul+random_translation_2/stateful_uniform_1:z:0random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/mul_1
 random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_2/concat/axisъ
random_translation_2/concatConcatV2random_translation_2/mul_1:z:0random_translation_2/mul:z:0)random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/concatВ
-random_translation_2/translation_matrix/ShapeShape$random_translation_2/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_2/translation_matrix/ShapeФ
;random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_2/translation_matrix/strided_slice/stackШ
=random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_1Ш
=random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_2в
5random_translation_2/translation_matrix/strided_sliceStridedSlice6random_translation_2/translation_matrix/Shape:output:0Drandom_translation_2/translation_matrix/strided_slice/stack:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_2/translation_matrix/strided_sliceЊ
2random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_2/translation_matrix/ones/mul/y
0random_translation_2/translation_matrix/ones/mulMul>random_translation_2/translation_matrix/strided_slice:output:0;random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_2/translation_matrix/ones/mul­
3random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш25
3random_translation_2/translation_matrix/ones/Less/y
1random_translation_2/translation_matrix/ones/LessLess4random_translation_2/translation_matrix/ones/mul:z:0<random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/ones/LessА
5random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/ones/packed/1 
3random_translation_2/translation_matrix/ones/packedPack>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_2/translation_matrix/ones/packed­
2random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2random_translation_2/translation_matrix/ones/Const
,random_translation_2/translation_matrix/onesFill<random_translation_2/translation_matrix/ones/packed:output:0;random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,random_translation_2/translation_matrix/onesЌ
3random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/zeros/mul/y
1random_translation_2/translation_matrix/zeros/mulMul>random_translation_2/translation_matrix/strided_slice:output:0<random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/zeros/mulЏ
4random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш26
4random_translation_2/translation_matrix/zeros/Less/y
2random_translation_2/translation_matrix/zeros/LessLess5random_translation_2/translation_matrix/zeros/mul:z:0=random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/zeros/LessВ
6random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_2/translation_matrix/zeros/packed/1Ѓ
4random_translation_2/translation_matrix/zeros/packedPack>random_translation_2/translation_matrix/strided_slice:output:0?random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_2/translation_matrix/zeros/packedЏ
3random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_2/translation_matrix/zeros/Const
-random_translation_2/translation_matrix/zerosFill=random_translation_2/translation_matrix/zeros/packed:output:0<random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-random_translation_2/translation_matrix/zerosг
=random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_2/translation_matrix/strided_slice_1/stackз
?random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_1/stack_1з
?random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_1/stack_2
7random_translation_2/translation_matrix/strided_slice_1StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_1е
+random_translation_2/translation_matrix/NegNeg@random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+random_translation_2/translation_matrix/NegА
5random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_1/mul/y
3random_translation_2/translation_matrix/zeros_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_1/mulГ
6random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш28
6random_translation_2/translation_matrix/zeros_1/Less/y
4random_translation_2/translation_matrix/zeros_1/LessLess7random_translation_2/translation_matrix/zeros_1/mul:z:0?random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_1/LessЖ
8random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_1/packed/1Љ
6random_translation_2/translation_matrix/zeros_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_1/packedГ
5random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_1/Const
/random_translation_2/translation_matrix/zeros_1Fill?random_translation_2/translation_matrix/zeros_1/packed:output:0>random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/random_translation_2/translation_matrix/zeros_1Ў
4random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_2/translation_matrix/ones_1/mul/y
2random_translation_2/translation_matrix/ones_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0=random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/ones_1/mulБ
5random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш27
5random_translation_2/translation_matrix/ones_1/Less/y
3random_translation_2/translation_matrix/ones_1/LessLess6random_translation_2/translation_matrix/ones_1/mul:z:0>random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/ones_1/LessД
7random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_2/translation_matrix/ones_1/packed/1І
5random_translation_2/translation_matrix/ones_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0@random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_2/translation_matrix/ones_1/packedБ
4random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4random_translation_2/translation_matrix/ones_1/Const
.random_translation_2/translation_matrix/ones_1Fill>random_translation_2/translation_matrix/ones_1/packed:output:0=random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ20
.random_translation_2/translation_matrix/ones_1г
=random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_2/translation_matrix/strided_slice_2/stackз
?random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_2/stack_1з
?random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_2/stack_2
7random_translation_2/translation_matrix/strided_slice_2StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_2й
-random_translation_2/translation_matrix/Neg_1Neg@random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-random_translation_2/translation_matrix/Neg_1А
5random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_2/mul/y
3random_translation_2/translation_matrix/zeros_2/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_2/mulГ
6random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш28
6random_translation_2/translation_matrix/zeros_2/Less/y
4random_translation_2/translation_matrix/zeros_2/LessLess7random_translation_2/translation_matrix/zeros_2/mul:z:0?random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_2/LessЖ
8random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_2/packed/1Љ
6random_translation_2/translation_matrix/zeros_2/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_2/packedГ
5random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_2/Const
/random_translation_2/translation_matrix/zeros_2Fill?random_translation_2/translation_matrix/zeros_2/packed:output:0>random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/random_translation_2/translation_matrix/zeros_2Ќ
3random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/concat/axisх
.random_translation_2/translation_matrix/concatConcatV25random_translation_2/translation_matrix/ones:output:06random_translation_2/translation_matrix/zeros:output:0/random_translation_2/translation_matrix/Neg:y:08random_translation_2/translation_matrix/zeros_1:output:07random_translation_2/translation_matrix/ones_1:output:01random_translation_2/translation_matrix/Neg_1:y:08random_translation_2/translation_matrix/zeros_2:output:0<random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ20
.random_translation_2/translation_matrix/concatЧ
$random_translation_2/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_2/transform/ShapeВ
2random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_2/transform/strided_slice/stackЖ
4random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_1Ж
4random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_2
,random_translation_2/transform/strided_sliceStridedSlice-random_translation_2/transform/Shape:output:0;random_translation_2/transform/strided_slice/stack:output:0=random_translation_2/transform/strided_slice/stack_1:output:0=random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_2/transform/strided_slice
)random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_2/transform/fill_valueј
9random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_2/translation_matrix/concat:output:05random_translation_2/transform/strided_slice:output:02random_translation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_2/transform/ImageProjectiveTransformV3ж
7random_flip_2/random_flip_left_right/control_dependencyIdentityNrandom_translation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*L
_classB
@>loc:@random_translation_2/transform/ImageProjectiveTransformV3*/
_output_shapes
:џџџџџџџџџ  29
7random_flip_2/random_flip_left_right/control_dependencyШ
*random_flip_2/random_flip_left_right/ShapeShape@random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_2/random_flip_left_right/ShapeО
8random_flip_2/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_2/random_flip_left_right/strided_slice/stackТ
:random_flip_2/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_2/random_flip_left_right/strided_slice/stack_1Т
:random_flip_2/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_2/random_flip_left_right/strided_slice/stack_2Р
2random_flip_2/random_flip_left_right/strided_sliceStridedSlice3random_flip_2/random_flip_left_right/Shape:output:0Arandom_flip_2/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_2/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_2/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_2/random_flip_left_right/strided_sliceщ
9random_flip_2/random_flip_left_right/random_uniform/shapePack;random_flip_2/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_2/random_flip_left_right/random_uniform/shapeЗ
7random_flip_2/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_2/random_flip_left_right/random_uniform/minЗ
7random_flip_2/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7random_flip_2/random_flip_left_right/random_uniform/max
Arandom_flip_2/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_2/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ*
dtype02C
Arandom_flip_2/random_flip_left_right/random_uniform/RandomUniformЕ
7random_flip_2/random_flip_left_right/random_uniform/MulMulJrandom_flip_2/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_2/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:џџџџџџџџџ29
7random_flip_2/random_flip_left_right/random_uniform/MulЎ
4random_flip_2/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/1Ў
4random_flip_2/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/2Ў
4random_flip_2/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/3
2random_flip_2/random_flip_left_right/Reshape/shapePack;random_flip_2/random_flip_left_right/strided_slice:output:0=random_flip_2/random_flip_left_right/Reshape/shape/1:output:0=random_flip_2/random_flip_left_right/Reshape/shape/2:output:0=random_flip_2/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_2/random_flip_left_right/Reshape/shape
,random_flip_2/random_flip_left_right/ReshapeReshape;random_flip_2/random_flip_left_right/random_uniform/Mul:z:0;random_flip_2/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2.
,random_flip_2/random_flip_left_right/Reshapeв
*random_flip_2/random_flip_left_right/RoundRound5random_flip_2/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2,
*random_flip_2/random_flip_left_right/RoundД
3random_flip_2/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_2/random_flip_left_right/ReverseV2/axisЇ
.random_flip_2/random_flip_left_right/ReverseV2	ReverseV2@random_flip_2/random_flip_left_right/control_dependency:output:0<random_flip_2/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  20
.random_flip_2/random_flip_left_right/ReverseV2ў
(random_flip_2/random_flip_left_right/mulMul.random_flip_2/random_flip_left_right/Round:y:07random_flip_2/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2*
(random_flip_2/random_flip_left_right/mul
*random_flip_2/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_flip_2/random_flip_left_right/sub/xњ
(random_flip_2/random_flip_left_right/subSub3random_flip_2/random_flip_left_right/sub/x:output:0.random_flip_2/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
(random_flip_2/random_flip_left_right/sub
*random_flip_2/random_flip_left_right/mul_1Mul,random_flip_2/random_flip_left_right/sub:z:0@random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2,
*random_flip_2/random_flip_left_right/mul_1ѕ
(random_flip_2/random_flip_left_right/addAddV2,random_flip_2/random_flip_left_right/mul:z:0.random_flip_2/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  2*
(random_flip_2/random_flip_left_right/addЏ
IdentityIdentity,random_flip_2/random_flip_left_right/add:z:03^random_rotation_2/stateful_uniform/StatefulUniform6^random_translation_2/stateful_uniform/StatefulUniform8^random_translation_2/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::2h
2random_rotation_2/stateful_uniform/StatefulUniform2random_rotation_2/stateful_uniform/StatefulUniform2n
5random_translation_2/stateful_uniform/StatefulUniform5random_translation_2/stateful_uniform/StatefulUniform2r
7random_translation_2/stateful_uniform_1/StatefulUniform7random_translation_2/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs


*__inference_conv2d_10_layer_call_fn_577049

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_5760292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ь
§
$__inference_signature_wrapper_576350
sequential_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_5753772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:џџџџџџџџџ  
,
_user_specified_namesequential_4_input
з
e
I__inference_activation_10_layer_call_and_return_conditional_losses_576996

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ   :W S
/
_output_shapes
:џџџџџџџџџ   
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_575873

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


-__inference_sequential_4_layer_call_fn_576967

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
П
e
I__inference_activation_14_layer_call_and_return_conditional_losses_577112

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ
:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
л
e
I__inference_activation_13_layer_call_and_return_conditional_losses_576090

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
П
J
.__inference_activation_10_layer_call_fn_577001

inputs
identityв
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5759702
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ   :W S
/
_output_shapes
:џџџџџџџџџ   
 
_user_specified_nameinputs
	

-__inference_sequential_5_layer_call_fn_576315
sequential_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_5762922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:џџџџџџџџџ  
,
_user_specified_namesequential_4_input
ѓ	
о
E__inference_conv2d_11_layer_call_and_return_conditional_losses_576069

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ
d
H__inference_sequential_4_layer_call_and_return_conditional_losses_575864

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
№	
о
E__inference_conv2d_10_layer_call_and_return_conditional_losses_577040

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ъ	
н
D__inference_conv2d_9_layer_call_and_return_conditional_losses_577011

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
л
e
I__inference_activation_12_layer_call_and_return_conditional_losses_576050

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ	
н
D__inference_conv2d_9_layer_call_and_return_conditional_losses_575989

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
М
r
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_575910

inputs
identity
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ
~
)__inference_conv2d_8_layer_call_fn_576991

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_5759492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ъ	
н
D__inference_conv2d_8_layer_call_and_return_conditional_losses_575949

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
>
Ф
H__inference_sequential_5_layer_call_and_return_conditional_losses_576224

inputs
sequential_4_576184
sequential_4_576186
conv2d_8_576189
conv2d_8_576191
conv2d_9_576196
conv2d_9_576198
conv2d_10_576203
conv2d_10_576205
conv2d_11_576210
conv2d_11_576212
dense_2_576217
dense_2_576219
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ$sequential_4/StatefulPartitionedCallЏ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputssequential_4_576184sequential_4_576186*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758512&
$sequential_4/StatefulPartitionedCallЦ
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0conv2d_8_576189conv2d_8_576191*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_5759492"
 conv2d_8/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5759702
activation_10/PartitionedCall
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_5758732!
max_pooling2d_6/PartitionedCallС
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_576196conv2d_9_576198*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_5759892"
 conv2d_9/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5760102
activation_11/PartitionedCall
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_5758852!
max_pooling2d_7/PartitionedCallЧ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_576203conv2d_10_576205*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_5760292#
!conv2d_10/StatefulPartitionedCall
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_5760502
activation_12/PartitionedCall
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_5758972!
max_pooling2d_8/PartitionedCallЧ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_576210conv2d_11_576212*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_5760692#
!conv2d_11/StatefulPartitionedCall
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_5760902
activation_13/PartitionedCallЎ
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_5759102,
*global_average_pooling2d_2/PartitionedCallП
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_576217dense_2_576219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5761092!
dense_2/StatefulPartitionedCall
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_5761302
activation_14/PartitionedCallб
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:џџџџџџџџџ  ::::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
П
J
.__inference_activation_11_layer_call_fn_577030

inputs
identityв
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5760102
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
<
ї
H__inference_sequential_5_layer_call_and_return_conditional_losses_576178
sequential_4_input
conv2d_8_576143
conv2d_8_576145
conv2d_9_576150
conv2d_9_576152
conv2d_10_576157
conv2d_10_576159
conv2d_11_576164
conv2d_11_576166
dense_2_576171
dense_2_576173
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallї
sequential_4/PartitionedCallPartitionedCallsequential_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758642
sequential_4/PartitionedCallО
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0conv2d_8_576143conv2d_8_576145*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_5759492"
 conv2d_8/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5759702
activation_10/PartitionedCall
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_5758732!
max_pooling2d_6/PartitionedCallС
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_576150conv2d_9_576152*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_5759892"
 conv2d_9/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5760102
activation_11/PartitionedCall
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_5758852!
max_pooling2d_7/PartitionedCallЧ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_576157conv2d_10_576159*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_5760292#
!conv2d_10/StatefulPartitionedCall
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_5760502
activation_12/PartitionedCall
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_5758972!
max_pooling2d_8/PartitionedCallЧ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_576164conv2d_11_576166*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_5760692#
!conv2d_11/StatefulPartitionedCall
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_5760902
activation_13/PartitionedCallЎ
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_5759102,
*global_average_pooling2d_2/PartitionedCallП
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_576171dense_2_576173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5761092!
dense_2/StatefulPartitionedCall
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_5761302
activation_14/PartitionedCallЊ
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ  ::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:c _
/
_output_shapes
:џџџџџџџџџ  
,
_user_specified_namesequential_4_input
А
L
0__inference_max_pooling2d_8_layer_call_fn_575903

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_5758972
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
м
C__inference_dense_2_layer_call_and_return_conditional_losses_576109

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
л
e
I__inference_activation_13_layer_call_and_return_conditional_losses_577083

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
з
e
I__inference_activation_11_layer_call_and_return_conditional_losses_577025

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
џ
~
)__inference_conv2d_9_layer_call_fn_577020

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_5759892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
­Є

H__inference_sequential_4_layer_call_and_return_conditional_losses_576954

inputs?
;random_rotation_2_stateful_uniform_statefuluniform_resourceB
>random_translation_2_stateful_uniform_statefuluniform_resource
identityЂ2random_rotation_2/stateful_uniform/StatefulUniformЂ5random_translation_2/stateful_uniform/StatefulUniformЂ7random_translation_2/stateful_uniform_1/StatefulUniformh
random_rotation_2/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_2/Shape
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2Ю
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack 
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1 
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2и
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack 
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1 
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2и
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1Д
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:FёП2(
&random_rotation_2/stateful_uniform/min
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fё?2(
&random_rotation_2/stateful_uniform/maxО
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmъ
2random_rotation_2/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_2_stateful_uniform_statefuluniform_resourceErandom_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:џџџџџџџџџ*
shape_dtype024
2random_rotation_2/stateful_uniform/StatefulUniformк
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/subю
&random_rotation_2/stateful_uniform/mulMul;random_rotation_2/stateful_uniform/StatefulUniform:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2(
&random_rotation_2/stateful_uniform/mulк
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2$
"random_rotation_2/stateful_uniform
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_rotation_2/rotation_matrix/sub/yЦ
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/subЋ
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/Cos
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_1/yЬ
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1л
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/mulЋ
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/Sin
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_2/yЪ
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2п
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_1п
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_3п
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_4
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/yђ
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2+
)random_rotation_2/rotation_matrix/truediv
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_5/yЪ
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5Џ
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_1
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_6/yЬ
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6с
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_2Џ
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_1
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_7/yЪ
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7с
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_3п
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/addп
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_8Ѓ
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/yј
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2-
+random_rotation_2/rotation_matrix/truediv_1Ј
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/ShapeИ
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stackМ
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1М
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2Ў
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_sliceЏ
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_2У
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1Џ
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_2У
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2У
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/NegУ
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2х
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3Џ
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_3У
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4Џ
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_3У
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5У
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2ч
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6 
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/yє
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mulЃ
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш20
.random_rotation_2/rotation_matrix/zeros/Less/yя
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/LessІ
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packedЃ
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const§
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/zeros 
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axisм
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2*
(random_rotation_2/rotation_matrix/concat|
!random_rotation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:2#
!random_rotation_2/transform/ShapeЌ
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stackА
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1А
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2і
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_valueЁ
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs1random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3Г
random_translation_2/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_2/Shape
(random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_2/strided_slice/stackЂ
*random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_1Ђ
*random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_2р
"random_translation_2/strided_sliceStridedSlice#random_translation_2/Shape:output:01random_translation_2/strided_slice/stack:output:03random_translation_2/strided_slice/stack_1:output:03random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_2/strided_sliceЂ
*random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_1/stackІ
,random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_1І
,random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_2ъ
$random_translation_2/strided_slice_1StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_1/stack:output:05random_translation_2/strided_slice_1/stack_1:output:05random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_1
random_translation_2/CastCast-random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/CastЂ
*random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_2/stackІ
,random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_1І
,random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_2ъ
$random_translation_2/strided_slice_2StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_2/stack:output:05random_translation_2/strided_slice_2/stack_1:output:05random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_2Ё
random_translation_2/Cast_1Cast-random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast_1 
-random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_2/stateful_uniform/shape/1ѕ
+random_translation_2/stateful_uniform/shapePack+random_translation_2/strided_slice:output:06random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_2/stateful_uniform/shape
)random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *О2+
)random_translation_2/stateful_uniform/min
)random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)random_translation_2/stateful_uniform/maxФ
?random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_2/stateful_uniform/StatefulUniform/algorithm§
5random_translation_2/stateful_uniform/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceHrandom_translation_2/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:џџџџџџџџџ*
shape_dtype027
5random_translation_2/stateful_uniform/StatefulUniformц
)random_translation_2/stateful_uniform/subSub2random_translation_2/stateful_uniform/max:output:02random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_2/stateful_uniform/subў
)random_translation_2/stateful_uniform/mulMul>random_translation_2/stateful_uniform/StatefulUniform:output:0-random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)random_translation_2/stateful_uniform/mulъ
%random_translation_2/stateful_uniformAdd-random_translation_2/stateful_uniform/mul:z:02random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%random_translation_2/stateful_uniformЗ
random_translation_2/mulMul)random_translation_2/stateful_uniform:z:0random_translation_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/mulЄ
/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_2/stateful_uniform_1/shape/1ћ
-random_translation_2/stateful_uniform_1/shapePack+random_translation_2/strided_slice:output:08random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_2/stateful_uniform_1/shape
+random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *О2-
+random_translation_2/stateful_uniform_1/min
+random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+random_translation_2/stateful_uniform_1/maxШ
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmН
7random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceJrandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_2/stateful_uniform_1/shape:output:06^random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:џџџџџџџџџ*
shape_dtype029
7random_translation_2/stateful_uniform_1/StatefulUniformю
+random_translation_2/stateful_uniform_1/subSub4random_translation_2/stateful_uniform_1/max:output:04random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_2/stateful_uniform_1/sub
+random_translation_2/stateful_uniform_1/mulMul@random_translation_2/stateful_uniform_1/StatefulUniform:output:0/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+random_translation_2/stateful_uniform_1/mulђ
'random_translation_2/stateful_uniform_1Add/random_translation_2/stateful_uniform_1/mul:z:04random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'random_translation_2/stateful_uniform_1П
random_translation_2/mul_1Mul+random_translation_2/stateful_uniform_1:z:0random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/mul_1
 random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_2/concat/axisъ
random_translation_2/concatConcatV2random_translation_2/mul_1:z:0random_translation_2/mul:z:0)random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/concatВ
-random_translation_2/translation_matrix/ShapeShape$random_translation_2/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_2/translation_matrix/ShapeФ
;random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_2/translation_matrix/strided_slice/stackШ
=random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_1Ш
=random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_2в
5random_translation_2/translation_matrix/strided_sliceStridedSlice6random_translation_2/translation_matrix/Shape:output:0Drandom_translation_2/translation_matrix/strided_slice/stack:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_2/translation_matrix/strided_sliceЊ
2random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_2/translation_matrix/ones/mul/y
0random_translation_2/translation_matrix/ones/mulMul>random_translation_2/translation_matrix/strided_slice:output:0;random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_2/translation_matrix/ones/mul­
3random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш25
3random_translation_2/translation_matrix/ones/Less/y
1random_translation_2/translation_matrix/ones/LessLess4random_translation_2/translation_matrix/ones/mul:z:0<random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/ones/LessА
5random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/ones/packed/1 
3random_translation_2/translation_matrix/ones/packedPack>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_2/translation_matrix/ones/packed­
2random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2random_translation_2/translation_matrix/ones/Const
,random_translation_2/translation_matrix/onesFill<random_translation_2/translation_matrix/ones/packed:output:0;random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,random_translation_2/translation_matrix/onesЌ
3random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/zeros/mul/y
1random_translation_2/translation_matrix/zeros/mulMul>random_translation_2/translation_matrix/strided_slice:output:0<random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/zeros/mulЏ
4random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш26
4random_translation_2/translation_matrix/zeros/Less/y
2random_translation_2/translation_matrix/zeros/LessLess5random_translation_2/translation_matrix/zeros/mul:z:0=random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/zeros/LessВ
6random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_2/translation_matrix/zeros/packed/1Ѓ
4random_translation_2/translation_matrix/zeros/packedPack>random_translation_2/translation_matrix/strided_slice:output:0?random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_2/translation_matrix/zeros/packedЏ
3random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_2/translation_matrix/zeros/Const
-random_translation_2/translation_matrix/zerosFill=random_translation_2/translation_matrix/zeros/packed:output:0<random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-random_translation_2/translation_matrix/zerosг
=random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_2/translation_matrix/strided_slice_1/stackз
?random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_1/stack_1з
?random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_1/stack_2
7random_translation_2/translation_matrix/strided_slice_1StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_1е
+random_translation_2/translation_matrix/NegNeg@random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+random_translation_2/translation_matrix/NegА
5random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_1/mul/y
3random_translation_2/translation_matrix/zeros_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_1/mulГ
6random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш28
6random_translation_2/translation_matrix/zeros_1/Less/y
4random_translation_2/translation_matrix/zeros_1/LessLess7random_translation_2/translation_matrix/zeros_1/mul:z:0?random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_1/LessЖ
8random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_1/packed/1Љ
6random_translation_2/translation_matrix/zeros_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_1/packedГ
5random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_1/Const
/random_translation_2/translation_matrix/zeros_1Fill?random_translation_2/translation_matrix/zeros_1/packed:output:0>random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/random_translation_2/translation_matrix/zeros_1Ў
4random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_2/translation_matrix/ones_1/mul/y
2random_translation_2/translation_matrix/ones_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0=random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/ones_1/mulБ
5random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш27
5random_translation_2/translation_matrix/ones_1/Less/y
3random_translation_2/translation_matrix/ones_1/LessLess6random_translation_2/translation_matrix/ones_1/mul:z:0>random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/ones_1/LessД
7random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_2/translation_matrix/ones_1/packed/1І
5random_translation_2/translation_matrix/ones_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0@random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_2/translation_matrix/ones_1/packedБ
4random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4random_translation_2/translation_matrix/ones_1/Const
.random_translation_2/translation_matrix/ones_1Fill>random_translation_2/translation_matrix/ones_1/packed:output:0=random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ20
.random_translation_2/translation_matrix/ones_1г
=random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_2/translation_matrix/strided_slice_2/stackз
?random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_2/stack_1з
?random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_2/stack_2
7random_translation_2/translation_matrix/strided_slice_2StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_2й
-random_translation_2/translation_matrix/Neg_1Neg@random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-random_translation_2/translation_matrix/Neg_1А
5random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_2/mul/y
3random_translation_2/translation_matrix/zeros_2/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_2/mulГ
6random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш28
6random_translation_2/translation_matrix/zeros_2/Less/y
4random_translation_2/translation_matrix/zeros_2/LessLess7random_translation_2/translation_matrix/zeros_2/mul:z:0?random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_2/LessЖ
8random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_2/packed/1Љ
6random_translation_2/translation_matrix/zeros_2/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_2/packedГ
5random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_2/Const
/random_translation_2/translation_matrix/zeros_2Fill?random_translation_2/translation_matrix/zeros_2/packed:output:0>random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/random_translation_2/translation_matrix/zeros_2Ќ
3random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/concat/axisх
.random_translation_2/translation_matrix/concatConcatV25random_translation_2/translation_matrix/ones:output:06random_translation_2/translation_matrix/zeros:output:0/random_translation_2/translation_matrix/Neg:y:08random_translation_2/translation_matrix/zeros_1:output:07random_translation_2/translation_matrix/ones_1:output:01random_translation_2/translation_matrix/Neg_1:y:08random_translation_2/translation_matrix/zeros_2:output:0<random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ20
.random_translation_2/translation_matrix/concatЧ
$random_translation_2/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_2/transform/ShapeВ
2random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_2/transform/strided_slice/stackЖ
4random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_1Ж
4random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_2
,random_translation_2/transform/strided_sliceStridedSlice-random_translation_2/transform/Shape:output:0;random_translation_2/transform/strided_slice/stack:output:0=random_translation_2/transform/strided_slice/stack_1:output:0=random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_2/transform/strided_slice
)random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_2/transform/fill_valueј
9random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_2/translation_matrix/concat:output:05random_translation_2/transform/strided_slice:output:02random_translation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_2/transform/ImageProjectiveTransformV3ж
7random_flip_2/random_flip_left_right/control_dependencyIdentityNrandom_translation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*L
_classB
@>loc:@random_translation_2/transform/ImageProjectiveTransformV3*/
_output_shapes
:џџџџџџџџџ  29
7random_flip_2/random_flip_left_right/control_dependencyШ
*random_flip_2/random_flip_left_right/ShapeShape@random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_2/random_flip_left_right/ShapeО
8random_flip_2/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_2/random_flip_left_right/strided_slice/stackТ
:random_flip_2/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_2/random_flip_left_right/strided_slice/stack_1Т
:random_flip_2/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_2/random_flip_left_right/strided_slice/stack_2Р
2random_flip_2/random_flip_left_right/strided_sliceStridedSlice3random_flip_2/random_flip_left_right/Shape:output:0Arandom_flip_2/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_2/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_2/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_2/random_flip_left_right/strided_sliceщ
9random_flip_2/random_flip_left_right/random_uniform/shapePack;random_flip_2/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_2/random_flip_left_right/random_uniform/shapeЗ
7random_flip_2/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_2/random_flip_left_right/random_uniform/minЗ
7random_flip_2/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7random_flip_2/random_flip_left_right/random_uniform/max
Arandom_flip_2/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_2/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ*
dtype02C
Arandom_flip_2/random_flip_left_right/random_uniform/RandomUniformЕ
7random_flip_2/random_flip_left_right/random_uniform/MulMulJrandom_flip_2/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_2/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:џџџџџџџџџ29
7random_flip_2/random_flip_left_right/random_uniform/MulЎ
4random_flip_2/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/1Ў
4random_flip_2/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/2Ў
4random_flip_2/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/3
2random_flip_2/random_flip_left_right/Reshape/shapePack;random_flip_2/random_flip_left_right/strided_slice:output:0=random_flip_2/random_flip_left_right/Reshape/shape/1:output:0=random_flip_2/random_flip_left_right/Reshape/shape/2:output:0=random_flip_2/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_2/random_flip_left_right/Reshape/shape
,random_flip_2/random_flip_left_right/ReshapeReshape;random_flip_2/random_flip_left_right/random_uniform/Mul:z:0;random_flip_2/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2.
,random_flip_2/random_flip_left_right/Reshapeв
*random_flip_2/random_flip_left_right/RoundRound5random_flip_2/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2,
*random_flip_2/random_flip_left_right/RoundД
3random_flip_2/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_2/random_flip_left_right/ReverseV2/axisЇ
.random_flip_2/random_flip_left_right/ReverseV2	ReverseV2@random_flip_2/random_flip_left_right/control_dependency:output:0<random_flip_2/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  20
.random_flip_2/random_flip_left_right/ReverseV2ў
(random_flip_2/random_flip_left_right/mulMul.random_flip_2/random_flip_left_right/Round:y:07random_flip_2/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2*
(random_flip_2/random_flip_left_right/mul
*random_flip_2/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_flip_2/random_flip_left_right/sub/xњ
(random_flip_2/random_flip_left_right/subSub3random_flip_2/random_flip_left_right/sub/x:output:0.random_flip_2/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
(random_flip_2/random_flip_left_right/sub
*random_flip_2/random_flip_left_right/mul_1Mul,random_flip_2/random_flip_left_right/sub:z:0@random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2,
*random_flip_2/random_flip_left_right/mul_1ѕ
(random_flip_2/random_flip_left_right/addAddV2,random_flip_2/random_flip_left_right/mul:z:0.random_flip_2/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  2*
(random_flip_2/random_flip_left_right/addЏ
IdentityIdentity,random_flip_2/random_flip_left_right/add:z:03^random_rotation_2/stateful_uniform/StatefulUniform6^random_translation_2/stateful_uniform/StatefulUniform8^random_translation_2/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::2h
2random_rotation_2/stateful_uniform/StatefulUniform2random_rotation_2/stateful_uniform/StatefulUniform2n
5random_translation_2/stateful_uniform/StatefulUniform5random_translation_2/stateful_uniform/StatefulUniform2r
7random_translation_2/stateful_uniform_1/StatefulUniform7random_translation_2/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
л
e
I__inference_activation_12_layer_call_and_return_conditional_losses_577054

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:џџџџџџџџџ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
м
C__inference_dense_2_layer_call_and_return_conditional_losses_577098

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
№	
о
E__inference_conv2d_10_layer_call_and_return_conditional_losses_576029

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


*__inference_conv2d_11_layer_call_fn_577078

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_5760692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
У
J
.__inference_activation_12_layer_call_fn_577059

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_5760502
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
X
ћ
__inference__traced_save_577281
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop3
/savev2_adam_conv2d_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop3
/savev2_adam_conv2d_9_bias_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameД
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*Ц
valueМBЙ+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesо
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЫ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+				2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : : @:@:@::::	
:
: : : : : :::: : : : : : : @:@:@::::	
:
: : : @:@:@::::	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::%	!

_output_shapes
:	
: 


_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::%!

_output_shapes
:	
:  

_output_shapes
:
:,!(
&
_output_shapes
: : "

_output_shapes
: :,#(
&
_output_shapes
: @: $

_output_shapes
:@:-%)
'
_output_shapes
:@:!&

_output_shapes	
::.'*
(
_output_shapes
::!(

_output_shapes	
::%)!

_output_shapes
:	
: *

_output_shapes
:
:+

_output_shapes
: 

g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_575885

inputs
identityЌ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А>
а
H__inference_sequential_5_layer_call_and_return_conditional_losses_576139
sequential_4_input
sequential_4_575934
sequential_4_575936
conv2d_8_575960
conv2d_8_575962
conv2d_9_576000
conv2d_9_576002
conv2d_10_576040
conv2d_10_576042
conv2d_11_576080
conv2d_11_576082
dense_2_576120
dense_2_576122
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ$sequential_4/StatefulPartitionedCallЛ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputsequential_4_575934sequential_4_575936*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758512&
$sequential_4/StatefulPartitionedCallЦ
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0conv2d_8_575960conv2d_8_575962*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_5759492"
 conv2d_8/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5759702
activation_10/PartitionedCall
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_5758732!
max_pooling2d_6/PartitionedCallС
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_576000conv2d_9_576002*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_5759892"
 conv2d_9/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5760102
activation_11/PartitionedCall
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_5758852!
max_pooling2d_7/PartitionedCallЧ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_576040conv2d_10_576042*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_5760292#
!conv2d_10/StatefulPartitionedCall
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_5760502
activation_12/PartitionedCall
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_5758972!
max_pooling2d_8/PartitionedCallЧ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_576080conv2d_11_576082*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_5760692#
!conv2d_11/StatefulPartitionedCall
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_5760902
activation_13/PartitionedCallЎ
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_5759102,
*global_average_pooling2d_2/PartitionedCallП
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_576120dense_2_576122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5761092!
dense_2/StatefulPartitionedCall
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_5761302
activation_14/PartitionedCallб
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:џџџџџџџџџ  ::::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:c _
/
_output_shapes
:џџџџџџџџџ  
,
_user_specified_namesequential_4_input
п
}
(__inference_dense_2_layer_call_fn_577107

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5761092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
П
e
I__inference_activation_14_layer_call_and_return_conditional_losses_576130

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ
:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
м	
Ѕ
-__inference_sequential_5_layer_call_fn_576251
sequential_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_5762242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:џџџџџџџџџ  ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:џџџџџџџџџ  
,
_user_specified_namesequential_4_input
Ѕ
u
H__inference_sequential_4_layer_call_and_return_conditional_losses_575615
random_rotation_2_input
identitys
IdentityIdentityrandom_rotation_2_input*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :h d
/
_output_shapes
:џџџџџџџџџ  
1
_user_specified_namerandom_rotation_2_input

W
;__inference_global_average_pooling2d_2_layer_call_fn_575916

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_5759102
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
аJ
ъ
!__inference__wrapped_model_575377
sequential_4_input8
4sequential_5_conv2d_8_conv2d_readvariableop_resource9
5sequential_5_conv2d_8_biasadd_readvariableop_resource8
4sequential_5_conv2d_9_conv2d_readvariableop_resource9
5sequential_5_conv2d_9_biasadd_readvariableop_resource9
5sequential_5_conv2d_10_conv2d_readvariableop_resource:
6sequential_5_conv2d_10_biasadd_readvariableop_resource9
5sequential_5_conv2d_11_conv2d_readvariableop_resource:
6sequential_5_conv2d_11_biasadd_readvariableop_resource7
3sequential_5_dense_2_matmul_readvariableop_resource8
4sequential_5_dense_2_biasadd_readvariableop_resource
identityЂ-sequential_5/conv2d_10/BiasAdd/ReadVariableOpЂ,sequential_5/conv2d_10/Conv2D/ReadVariableOpЂ-sequential_5/conv2d_11/BiasAdd/ReadVariableOpЂ,sequential_5/conv2d_11/Conv2D/ReadVariableOpЂ,sequential_5/conv2d_8/BiasAdd/ReadVariableOpЂ+sequential_5/conv2d_8/Conv2D/ReadVariableOpЂ,sequential_5/conv2d_9/BiasAdd/ReadVariableOpЂ+sequential_5/conv2d_9/Conv2D/ReadVariableOpЂ+sequential_5/dense_2/BiasAdd/ReadVariableOpЂ*sequential_5/dense_2/MatMul/ReadVariableOpз
+sequential_5/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_5/conv2d_8/Conv2D/ReadVariableOpё
sequential_5/conv2d_8/Conv2DConv2Dsequential_4_input3sequential_5/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   *
paddingSAME*
strides
2
sequential_5/conv2d_8/Conv2DЮ
,sequential_5/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_5/conv2d_8/BiasAdd/ReadVariableOpр
sequential_5/conv2d_8/BiasAddBiasAdd%sequential_5/conv2d_8/Conv2D:output:04sequential_5/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   2
sequential_5/conv2d_8/BiasAddЌ
sequential_5/activation_10/ReluRelu&sequential_5/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ   2!
sequential_5/activation_10/Reluђ
$sequential_5/max_pooling2d_6/MaxPoolMaxPool-sequential_5/activation_10/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_6/MaxPoolз
+sequential_5/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_5/conv2d_9/Conv2D/ReadVariableOp
sequential_5/conv2d_9/Conv2DConv2D-sequential_5/max_pooling2d_6/MaxPool:output:03sequential_5/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
sequential_5/conv2d_9/Conv2DЮ
,sequential_5/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_5/conv2d_9/BiasAdd/ReadVariableOpр
sequential_5/conv2d_9/BiasAddBiasAdd%sequential_5/conv2d_9/Conv2D:output:04sequential_5/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
sequential_5/conv2d_9/BiasAddЌ
sequential_5/activation_11/ReluRelu&sequential_5/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2!
sequential_5/activation_11/Reluђ
$sequential_5/max_pooling2d_7/MaxPoolMaxPool-sequential_5/activation_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_7/MaxPoolл
,sequential_5/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02.
,sequential_5/conv2d_10/Conv2D/ReadVariableOp
sequential_5/conv2d_10/Conv2DConv2D-sequential_5/max_pooling2d_7/MaxPool:output:04sequential_5/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
sequential_5/conv2d_10/Conv2Dв
-sequential_5/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_5/conv2d_10/BiasAdd/ReadVariableOpх
sequential_5/conv2d_10/BiasAddBiasAdd&sequential_5/conv2d_10/Conv2D:output:05sequential_5/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2 
sequential_5/conv2d_10/BiasAddЎ
sequential_5/activation_12/ReluRelu'sequential_5/conv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2!
sequential_5/activation_12/Reluѓ
$sequential_5/max_pooling2d_8/MaxPoolMaxPool-sequential_5/activation_12/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_8/MaxPoolм
,sequential_5/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02.
,sequential_5/conv2d_11/Conv2D/ReadVariableOp
sequential_5/conv2d_11/Conv2DConv2D-sequential_5/max_pooling2d_8/MaxPool:output:04sequential_5/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
sequential_5/conv2d_11/Conv2Dв
-sequential_5/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_5/conv2d_11/BiasAdd/ReadVariableOpх
sequential_5/conv2d_11/BiasAddBiasAdd&sequential_5/conv2d_11/Conv2D:output:05sequential_5/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2 
sequential_5/conv2d_11/BiasAddЎ
sequential_5/activation_13/ReluRelu'sequential_5/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2!
sequential_5/activation_13/Reluб
>sequential_5/global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_5/global_average_pooling2d_2/Mean/reduction_indices
,sequential_5/global_average_pooling2d_2/MeanMean-sequential_5/activation_13/Relu:activations:0Gsequential_5/global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2.
,sequential_5/global_average_pooling2d_2/MeanЭ
*sequential_5/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02,
*sequential_5/dense_2/MatMul/ReadVariableOpс
sequential_5/dense_2/MatMulMatMul5sequential_5/global_average_pooling2d_2/Mean:output:02sequential_5/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_5/dense_2/MatMulЫ
+sequential_5/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_5/dense_2/BiasAdd/ReadVariableOpе
sequential_5/dense_2/BiasAddBiasAdd%sequential_5/dense_2/MatMul:product:03sequential_5/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_5/dense_2/BiasAddЌ
"sequential_5/activation_14/SoftmaxSoftmax%sequential_5/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2$
"sequential_5/activation_14/Softmaxг
IdentityIdentity,sequential_5/activation_14/Softmax:softmax:0.^sequential_5/conv2d_10/BiasAdd/ReadVariableOp-^sequential_5/conv2d_10/Conv2D/ReadVariableOp.^sequential_5/conv2d_11/BiasAdd/ReadVariableOp-^sequential_5/conv2d_11/Conv2D/ReadVariableOp-^sequential_5/conv2d_8/BiasAdd/ReadVariableOp,^sequential_5/conv2d_8/Conv2D/ReadVariableOp-^sequential_5/conv2d_9/BiasAdd/ReadVariableOp,^sequential_5/conv2d_9/Conv2D/ReadVariableOp,^sequential_5/dense_2/BiasAdd/ReadVariableOp+^sequential_5/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ  ::::::::::2^
-sequential_5/conv2d_10/BiasAdd/ReadVariableOp-sequential_5/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_10/Conv2D/ReadVariableOp,sequential_5/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_11/BiasAdd/ReadVariableOp-sequential_5/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_11/Conv2D/ReadVariableOp,sequential_5/conv2d_11/Conv2D/ReadVariableOp2\
,sequential_5/conv2d_8/BiasAdd/ReadVariableOp,sequential_5/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_5/conv2d_8/Conv2D/ReadVariableOp+sequential_5/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_5/conv2d_9/BiasAdd/ReadVariableOp,sequential_5/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_5/conv2d_9/Conv2D/ReadVariableOp+sequential_5/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_5/dense_2/BiasAdd/ReadVariableOp+sequential_5/dense_2/BiasAdd/ReadVariableOp2X
*sequential_5/dense_2/MatMul/ReadVariableOp*sequential_5/dense_2/MatMul/ReadVariableOp:c _
/
_output_shapes
:џџџџџџџџџ  
,
_user_specified_namesequential_4_input
Ї
ю	
H__inference_sequential_5_layer_call_and_return_conditional_losses_576623

inputsL
Hsequential_4_random_rotation_2_stateful_uniform_statefuluniform_resourceO
Ksequential_4_random_translation_2_stateful_uniform_statefuluniform_resource+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource,
(conv2d_11_conv2d_readvariableop_resource-
)conv2d_11_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityЂ conv2d_10/BiasAdd/ReadVariableOpЂconv2d_10/Conv2D/ReadVariableOpЂ conv2d_11/BiasAdd/ReadVariableOpЂconv2d_11/Conv2D/ReadVariableOpЂconv2d_8/BiasAdd/ReadVariableOpЂconv2d_8/Conv2D/ReadVariableOpЂconv2d_9/BiasAdd/ReadVariableOpЂconv2d_9/Conv2D/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ?sequential_4/random_rotation_2/stateful_uniform/StatefulUniformЂBsequential_4/random_translation_2/stateful_uniform/StatefulUniformЂDsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform
$sequential_4/random_rotation_2/ShapeShapeinputs*
T0*
_output_shapes
:2&
$sequential_4/random_rotation_2/ShapeВ
2sequential_4/random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_4/random_rotation_2/strided_slice/stackЖ
4sequential_4/random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice/stack_1Ж
4sequential_4/random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice/stack_2
,sequential_4/random_rotation_2/strided_sliceStridedSlice-sequential_4/random_rotation_2/Shape:output:0;sequential_4/random_rotation_2/strided_slice/stack:output:0=sequential_4/random_rotation_2/strided_slice/stack_1:output:0=sequential_4/random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_4/random_rotation_2/strided_sliceЖ
4sequential_4/random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice_1/stackК
6sequential_4/random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_1/stack_1К
6sequential_4/random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_1/stack_2І
.sequential_4/random_rotation_2/strided_slice_1StridedSlice-sequential_4/random_rotation_2/Shape:output:0=sequential_4/random_rotation_2/strided_slice_1/stack:output:0?sequential_4/random_rotation_2/strided_slice_1/stack_1:output:0?sequential_4/random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_4/random_rotation_2/strided_slice_1Л
#sequential_4/random_rotation_2/CastCast7sequential_4/random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_4/random_rotation_2/CastЖ
4sequential_4/random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice_2/stackК
6sequential_4/random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_2/stack_1К
6sequential_4/random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_2/stack_2І
.sequential_4/random_rotation_2/strided_slice_2StridedSlice-sequential_4/random_rotation_2/Shape:output:0=sequential_4/random_rotation_2/strided_slice_2/stack:output:0?sequential_4/random_rotation_2/strided_slice_2/stack_1:output:0?sequential_4/random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_4/random_rotation_2/strided_slice_2П
%sequential_4/random_rotation_2/Cast_1Cast7sequential_4/random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_4/random_rotation_2/Cast_1л
5sequential_4/random_rotation_2/stateful_uniform/shapePack5sequential_4/random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:27
5sequential_4/random_rotation_2/stateful_uniform/shapeЏ
3sequential_4/random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:FёП25
3sequential_4/random_rotation_2/stateful_uniform/minЏ
3sequential_4/random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fё?25
3sequential_4/random_rotation_2/stateful_uniform/maxи
Isequential_4/random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2K
Isequential_4/random_rotation_2/stateful_uniform/StatefulUniform/algorithmЋ
?sequential_4/random_rotation_2/stateful_uniform/StatefulUniformStatefulUniformHsequential_4_random_rotation_2_stateful_uniform_statefuluniform_resourceRsequential_4/random_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:0>sequential_4/random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:џџџџџџџџџ*
shape_dtype02A
?sequential_4/random_rotation_2/stateful_uniform/StatefulUniform
3sequential_4/random_rotation_2/stateful_uniform/subSub<sequential_4/random_rotation_2/stateful_uniform/max:output:0<sequential_4/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 25
3sequential_4/random_rotation_2/stateful_uniform/subЂ
3sequential_4/random_rotation_2/stateful_uniform/mulMulHsequential_4/random_rotation_2/stateful_uniform/StatefulUniform:output:07sequential_4/random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџ25
3sequential_4/random_rotation_2/stateful_uniform/mul
/sequential_4/random_rotation_2/stateful_uniformAdd7sequential_4/random_rotation_2/stateful_uniform/mul:z:0<sequential_4/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:џџџџџџџџџ21
/sequential_4/random_rotation_2/stateful_uniformБ
4sequential_4/random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4sequential_4/random_rotation_2/rotation_matrix/sub/yњ
2sequential_4/random_rotation_2/rotation_matrix/subSub)sequential_4/random_rotation_2/Cast_1:y:0=sequential_4/random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 24
2sequential_4/random_rotation_2/rotation_matrix/subв
2sequential_4/random_rotation_2/rotation_matrix/CosCos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ24
2sequential_4/random_rotation_2/rotation_matrix/CosЕ
6sequential_4/random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_4/random_rotation_2/rotation_matrix/sub_1/y
4sequential_4/random_rotation_2/rotation_matrix/sub_1Sub)sequential_4/random_rotation_2/Cast_1:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_1
2sequential_4/random_rotation_2/rotation_matrix/mulMul6sequential_4/random_rotation_2/rotation_matrix/Cos:y:08sequential_4/random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ24
2sequential_4/random_rotation_2/rotation_matrix/mulв
2sequential_4/random_rotation_2/rotation_matrix/SinSin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ24
2sequential_4/random_rotation_2/rotation_matrix/SinЕ
6sequential_4/random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_4/random_rotation_2/rotation_matrix/sub_2/yў
4sequential_4/random_rotation_2/rotation_matrix/sub_2Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_2
4sequential_4/random_rotation_2/rotation_matrix/mul_1Mul6sequential_4/random_rotation_2/rotation_matrix/Sin:y:08sequential_4/random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/mul_1
4sequential_4/random_rotation_2/rotation_matrix/sub_3Sub6sequential_4/random_rotation_2/rotation_matrix/mul:z:08sequential_4/random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/sub_3
4sequential_4/random_rotation_2/rotation_matrix/sub_4Sub6sequential_4/random_rotation_2/rotation_matrix/sub:z:08sequential_4/random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/sub_4Й
8sequential_4/random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2:
8sequential_4/random_rotation_2/rotation_matrix/truediv/yІ
6sequential_4/random_rotation_2/rotation_matrix/truedivRealDiv8sequential_4/random_rotation_2/rotation_matrix/sub_4:z:0Asequential_4/random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ28
6sequential_4/random_rotation_2/rotation_matrix/truedivЕ
6sequential_4/random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_4/random_rotation_2/rotation_matrix/sub_5/yў
4sequential_4/random_rotation_2/rotation_matrix/sub_5Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_5ж
4sequential_4/random_rotation_2/rotation_matrix/Sin_1Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/Sin_1Е
6sequential_4/random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_4/random_rotation_2/rotation_matrix/sub_6/y
4sequential_4/random_rotation_2/rotation_matrix/sub_6Sub)sequential_4/random_rotation_2/Cast_1:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_6
4sequential_4/random_rotation_2/rotation_matrix/mul_2Mul8sequential_4/random_rotation_2/rotation_matrix/Sin_1:y:08sequential_4/random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/mul_2ж
4sequential_4/random_rotation_2/rotation_matrix/Cos_1Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/Cos_1Е
6sequential_4/random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_4/random_rotation_2/rotation_matrix/sub_7/yў
4sequential_4/random_rotation_2/rotation_matrix/sub_7Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_7
4sequential_4/random_rotation_2/rotation_matrix/mul_3Mul8sequential_4/random_rotation_2/rotation_matrix/Cos_1:y:08sequential_4/random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/mul_3
2sequential_4/random_rotation_2/rotation_matrix/addAddV28sequential_4/random_rotation_2/rotation_matrix/mul_2:z:08sequential_4/random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ24
2sequential_4/random_rotation_2/rotation_matrix/add
4sequential_4/random_rotation_2/rotation_matrix/sub_8Sub8sequential_4/random_rotation_2/rotation_matrix/sub_5:z:06sequential_4/random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/sub_8Н
:sequential_4/random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_4/random_rotation_2/rotation_matrix/truediv_1/yЌ
8sequential_4/random_rotation_2/rotation_matrix/truediv_1RealDiv8sequential_4/random_rotation_2/rotation_matrix/sub_8:z:0Csequential_4/random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2:
8sequential_4/random_rotation_2/rotation_matrix/truediv_1Я
4sequential_4/random_rotation_2/rotation_matrix/ShapeShape3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:26
4sequential_4/random_rotation_2/rotation_matrix/Shapeв
Bsequential_4/random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_4/random_rotation_2/rotation_matrix/strided_slice/stackж
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1ж
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2ќ
<sequential_4/random_rotation_2/rotation_matrix/strided_sliceStridedSlice=sequential_4/random_rotation_2/rotation_matrix/Shape:output:0Ksequential_4/random_rotation_2/rotation_matrix/strided_slice/stack:output:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<sequential_4/random_rotation_2/rotation_matrix/strided_sliceж
4sequential_4/random_rotation_2/rotation_matrix/Cos_2Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/Cos_2н
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stackс
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1с
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2Б
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_1StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Cos_2:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_1ж
4sequential_4/random_rotation_2/rotation_matrix/Sin_2Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/Sin_2н
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stackс
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1с
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2Б
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_2StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Sin_2:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_2ъ
2sequential_4/random_rotation_2/rotation_matrix/NegNegGsequential_4/random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ24
2sequential_4/random_rotation_2/rotation_matrix/Negн
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stackс
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1с
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2Г
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_3StridedSlice:sequential_4/random_rotation_2/rotation_matrix/truediv:z:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_3ж
4sequential_4/random_rotation_2/rotation_matrix/Sin_3Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/Sin_3н
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stackс
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1с
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2Б
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_4StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Sin_3:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_4ж
4sequential_4/random_rotation_2/rotation_matrix/Cos_3Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/Cos_3н
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stackс
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1с
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2Б
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_5StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Cos_3:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_5н
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stackс
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1с
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2Е
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_6StridedSlice<sequential_4/random_rotation_2/rotation_matrix/truediv_1:z:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_6К
:sequential_4/random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_4/random_rotation_2/rotation_matrix/zeros/mul/yЈ
8sequential_4/random_rotation_2/rotation_matrix/zeros/mulMulEsequential_4/random_rotation_2/rotation_matrix/strided_slice:output:0Csequential_4/random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2:
8sequential_4/random_rotation_2/rotation_matrix/zeros/mulН
;sequential_4/random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2=
;sequential_4/random_rotation_2/rotation_matrix/zeros/Less/yЃ
9sequential_4/random_rotation_2/rotation_matrix/zeros/LessLess<sequential_4/random_rotation_2/rotation_matrix/zeros/mul:z:0Dsequential_4/random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2;
9sequential_4/random_rotation_2/rotation_matrix/zeros/LessР
=sequential_4/random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential_4/random_rotation_2/rotation_matrix/zeros/packed/1П
;sequential_4/random_rotation_2/rotation_matrix/zeros/packedPackEsequential_4/random_rotation_2/rotation_matrix/strided_slice:output:0Fsequential_4/random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2=
;sequential_4/random_rotation_2/rotation_matrix/zeros/packedН
:sequential_4/random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2<
:sequential_4/random_rotation_2/rotation_matrix/zeros/ConstБ
4sequential_4/random_rotation_2/rotation_matrix/zerosFillDsequential_4/random_rotation_2/rotation_matrix/zeros/packed:output:0Csequential_4/random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_rotation_2/rotation_matrix/zerosК
:sequential_4/random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_4/random_rotation_2/rotation_matrix/concat/axisо
5sequential_4/random_rotation_2/rotation_matrix/concatConcatV2Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_1:output:06sequential_4/random_rotation_2/rotation_matrix/Neg:y:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_3:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_4:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_5:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_6:output:0=sequential_4/random_rotation_2/rotation_matrix/zeros:output:0Csequential_4/random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ27
5sequential_4/random_rotation_2/rotation_matrix/concat
.sequential_4/random_rotation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:20
.sequential_4/random_rotation_2/transform/ShapeЦ
<sequential_4/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_4/random_rotation_2/transform/strided_slice/stackЪ
>sequential_4/random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/random_rotation_2/transform/strided_slice/stack_1Ъ
>sequential_4/random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/random_rotation_2/transform/strided_slice/stack_2Ф
6sequential_4/random_rotation_2/transform/strided_sliceStridedSlice7sequential_4/random_rotation_2/transform/Shape:output:0Esequential_4/random_rotation_2/transform/strided_slice/stack:output:0Gsequential_4/random_rotation_2/transform/strided_slice/stack_1:output:0Gsequential_4/random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:28
6sequential_4/random_rotation_2/transform/strided_sliceЏ
3sequential_4/random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_4/random_rotation_2/transform/fill_valueт
Csequential_4/random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs>sequential_4/random_rotation_2/rotation_matrix/concat:output:0?sequential_4/random_rotation_2/transform/strided_slice:output:0<sequential_4/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2E
Csequential_4/random_rotation_2/transform/ImageProjectiveTransformV3к
'sequential_4/random_translation_2/ShapeShapeXsequential_4/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2)
'sequential_4/random_translation_2/ShapeИ
5sequential_4/random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_4/random_translation_2/strided_slice/stackМ
7sequential_4/random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice/stack_1М
7sequential_4/random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice/stack_2Ў
/sequential_4/random_translation_2/strided_sliceStridedSlice0sequential_4/random_translation_2/Shape:output:0>sequential_4/random_translation_2/strided_slice/stack:output:0@sequential_4/random_translation_2/strided_slice/stack_1:output:0@sequential_4/random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_4/random_translation_2/strided_sliceМ
7sequential_4/random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice_1/stackР
9sequential_4/random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_1/stack_1Р
9sequential_4/random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_1/stack_2И
1sequential_4/random_translation_2/strided_slice_1StridedSlice0sequential_4/random_translation_2/Shape:output:0@sequential_4/random_translation_2/strided_slice_1/stack:output:0Bsequential_4/random_translation_2/strided_slice_1/stack_1:output:0Bsequential_4/random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_4/random_translation_2/strided_slice_1Ф
&sequential_4/random_translation_2/CastCast:sequential_4/random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_4/random_translation_2/CastМ
7sequential_4/random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice_2/stackР
9sequential_4/random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_2/stack_1Р
9sequential_4/random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_2/stack_2И
1sequential_4/random_translation_2/strided_slice_2StridedSlice0sequential_4/random_translation_2/Shape:output:0@sequential_4/random_translation_2/strided_slice_2/stack:output:0Bsequential_4/random_translation_2/strided_slice_2/stack_1:output:0Bsequential_4/random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_4/random_translation_2/strided_slice_2Ш
(sequential_4/random_translation_2/Cast_1Cast:sequential_4/random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(sequential_4/random_translation_2/Cast_1К
:sequential_4/random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_4/random_translation_2/stateful_uniform/shape/1Љ
8sequential_4/random_translation_2/stateful_uniform/shapePack8sequential_4/random_translation_2/strided_slice:output:0Csequential_4/random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2:
8sequential_4/random_translation_2/stateful_uniform/shapeЕ
6sequential_4/random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *О28
6sequential_4/random_translation_2/stateful_uniform/minЕ
6sequential_4/random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>28
6sequential_4/random_translation_2/stateful_uniform/maxо
Lsequential_4/random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2N
Lsequential_4/random_translation_2/stateful_uniform/StatefulUniform/algorithmО
Bsequential_4/random_translation_2/stateful_uniform/StatefulUniformStatefulUniformKsequential_4_random_translation_2_stateful_uniform_statefuluniform_resourceUsequential_4/random_translation_2/stateful_uniform/StatefulUniform/algorithm:output:0Asequential_4/random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:џџџџџџџџџ*
shape_dtype02D
Bsequential_4/random_translation_2/stateful_uniform/StatefulUniform
6sequential_4/random_translation_2/stateful_uniform/subSub?sequential_4/random_translation_2/stateful_uniform/max:output:0?sequential_4/random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 28
6sequential_4/random_translation_2/stateful_uniform/subВ
6sequential_4/random_translation_2/stateful_uniform/mulMulKsequential_4/random_translation_2/stateful_uniform/StatefulUniform:output:0:sequential_4/random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ28
6sequential_4/random_translation_2/stateful_uniform/mul
2sequential_4/random_translation_2/stateful_uniformAdd:sequential_4/random_translation_2/stateful_uniform/mul:z:0?sequential_4/random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ24
2sequential_4/random_translation_2/stateful_uniformы
%sequential_4/random_translation_2/mulMul6sequential_4/random_translation_2/stateful_uniform:z:0*sequential_4/random_translation_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%sequential_4/random_translation_2/mulО
<sequential_4/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_4/random_translation_2/stateful_uniform_1/shape/1Џ
:sequential_4/random_translation_2/stateful_uniform_1/shapePack8sequential_4/random_translation_2/strided_slice:output:0Esequential_4/random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2<
:sequential_4/random_translation_2/stateful_uniform_1/shapeЙ
8sequential_4/random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *О2:
8sequential_4/random_translation_2/stateful_uniform_1/minЙ
8sequential_4/random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>2:
8sequential_4/random_translation_2/stateful_uniform_1/maxт
Nsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2P
Nsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform/algorithm
Dsequential_4/random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniformKsequential_4_random_translation_2_stateful_uniform_statefuluniform_resourceWsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:0Csequential_4/random_translation_2/stateful_uniform_1/shape:output:0C^sequential_4/random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:џџџџџџџџџ*
shape_dtype02F
Dsequential_4/random_translation_2/stateful_uniform_1/StatefulUniformЂ
8sequential_4/random_translation_2/stateful_uniform_1/subSubAsequential_4/random_translation_2/stateful_uniform_1/max:output:0Asequential_4/random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2:
8sequential_4/random_translation_2/stateful_uniform_1/subК
8sequential_4/random_translation_2/stateful_uniform_1/mulMulMsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform:output:0<sequential_4/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2:
8sequential_4/random_translation_2/stateful_uniform_1/mulІ
4sequential_4/random_translation_2/stateful_uniform_1Add<sequential_4/random_translation_2/stateful_uniform_1/mul:z:0Asequential_4/random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ26
4sequential_4/random_translation_2/stateful_uniform_1ѓ
'sequential_4/random_translation_2/mul_1Mul8sequential_4/random_translation_2/stateful_uniform_1:z:0,sequential_4/random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'sequential_4/random_translation_2/mul_1 
-sequential_4/random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_4/random_translation_2/concat/axisЋ
(sequential_4/random_translation_2/concatConcatV2+sequential_4/random_translation_2/mul_1:z:0)sequential_4/random_translation_2/mul:z:06sequential_4/random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2*
(sequential_4/random_translation_2/concatй
:sequential_4/random_translation_2/translation_matrix/ShapeShape1sequential_4/random_translation_2/concat:output:0*
T0*
_output_shapes
:2<
:sequential_4/random_translation_2/translation_matrix/Shapeо
Hsequential_4/random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hsequential_4/random_translation_2/translation_matrix/strided_slice/stackт
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_1т
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_2 
Bsequential_4/random_translation_2/translation_matrix/strided_sliceStridedSliceCsequential_4/random_translation_2/translation_matrix/Shape:output:0Qsequential_4/random_translation_2/translation_matrix/strided_slice/stack:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice/stack_1:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2D
Bsequential_4/random_translation_2/translation_matrix/strided_sliceФ
?sequential_4/random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_4/random_translation_2/translation_matrix/ones/mul/yН
=sequential_4/random_translation_2/translation_matrix/ones/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Hsequential_4/random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 2?
=sequential_4/random_translation_2/translation_matrix/ones/mulЧ
@sequential_4/random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2B
@sequential_4/random_translation_2/translation_matrix/ones/Less/yЗ
>sequential_4/random_translation_2/translation_matrix/ones/LessLessAsequential_4/random_translation_2/translation_matrix/ones/mul:z:0Isequential_4/random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 2@
>sequential_4/random_translation_2/translation_matrix/ones/LessЪ
Bsequential_4/random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_4/random_translation_2/translation_matrix/ones/packed/1д
@sequential_4/random_translation_2/translation_matrix/ones/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Ksequential_4/random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:2B
@sequential_4/random_translation_2/translation_matrix/ones/packedЧ
?sequential_4/random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2A
?sequential_4/random_translation_2/translation_matrix/ones/ConstХ
9sequential_4/random_translation_2/translation_matrix/onesFillIsequential_4/random_translation_2/translation_matrix/ones/packed:output:0Hsequential_4/random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2;
9sequential_4/random_translation_2/translation_matrix/onesЦ
@sequential_4/random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@sequential_4/random_translation_2/translation_matrix/zeros/mul/yР
>sequential_4/random_translation_2/translation_matrix/zeros/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Isequential_4/random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2@
>sequential_4/random_translation_2/translation_matrix/zeros/mulЩ
Asequential_4/random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2C
Asequential_4/random_translation_2/translation_matrix/zeros/Less/yЛ
?sequential_4/random_translation_2/translation_matrix/zeros/LessLessBsequential_4/random_translation_2/translation_matrix/zeros/mul:z:0Jsequential_4/random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2A
?sequential_4/random_translation_2/translation_matrix/zeros/LessЬ
Csequential_4/random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_4/random_translation_2/translation_matrix/zeros/packed/1з
Asequential_4/random_translation_2/translation_matrix/zeros/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Lsequential_4/random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2C
Asequential_4/random_translation_2/translation_matrix/zeros/packedЩ
@sequential_4/random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2B
@sequential_4/random_translation_2/translation_matrix/zeros/ConstЩ
:sequential_4/random_translation_2/translation_matrix/zerosFillJsequential_4/random_translation_2/translation_matrix/zeros/packed:output:0Isequential_4/random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2<
:sequential_4/random_translation_2/translation_matrix/zerosэ
Jsequential_4/random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice_1/stackё
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_1ё
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_2р
Dsequential_4/random_translation_2/translation_matrix/strided_slice_1StridedSlice1sequential_4/random_translation_2/concat:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice_1/stack:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2F
Dsequential_4/random_translation_2/translation_matrix/strided_slice_1ќ
8sequential_4/random_translation_2/translation_matrix/NegNegMsequential_4/random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2:
8sequential_4/random_translation_2/translation_matrix/NegЪ
Bsequential_4/random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_4/random_translation_2/translation_matrix/zeros_1/mul/yЦ
@sequential_4/random_translation_2/translation_matrix/zeros_1/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2B
@sequential_4/random_translation_2/translation_matrix/zeros_1/mulЭ
Csequential_4/random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2E
Csequential_4/random_translation_2/translation_matrix/zeros_1/Less/yУ
Asequential_4/random_translation_2/translation_matrix/zeros_1/LessLessDsequential_4/random_translation_2/translation_matrix/zeros_1/mul:z:0Lsequential_4/random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2C
Asequential_4/random_translation_2/translation_matrix/zeros_1/Lessа
Esequential_4/random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Esequential_4/random_translation_2/translation_matrix/zeros_1/packed/1н
Csequential_4/random_translation_2/translation_matrix/zeros_1/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Nsequential_4/random_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2E
Csequential_4/random_translation_2/translation_matrix/zeros_1/packedЭ
Bsequential_4/random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_4/random_translation_2/translation_matrix/zeros_1/Constб
<sequential_4/random_translation_2/translation_matrix/zeros_1FillLsequential_4/random_translation_2/translation_matrix/zeros_1/packed:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2>
<sequential_4/random_translation_2/translation_matrix/zeros_1Ш
Asequential_4/random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_4/random_translation_2/translation_matrix/ones_1/mul/yУ
?sequential_4/random_translation_2/translation_matrix/ones_1/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Jsequential_4/random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 2A
?sequential_4/random_translation_2/translation_matrix/ones_1/mulЫ
Bsequential_4/random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2D
Bsequential_4/random_translation_2/translation_matrix/ones_1/Less/yП
@sequential_4/random_translation_2/translation_matrix/ones_1/LessLessCsequential_4/random_translation_2/translation_matrix/ones_1/mul:z:0Ksequential_4/random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 2B
@sequential_4/random_translation_2/translation_matrix/ones_1/LessЮ
Dsequential_4/random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2F
Dsequential_4/random_translation_2/translation_matrix/ones_1/packed/1к
Bsequential_4/random_translation_2/translation_matrix/ones_1/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Msequential_4/random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:2D
Bsequential_4/random_translation_2/translation_matrix/ones_1/packedЫ
Asequential_4/random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2C
Asequential_4/random_translation_2/translation_matrix/ones_1/ConstЭ
;sequential_4/random_translation_2/translation_matrix/ones_1FillKsequential_4/random_translation_2/translation_matrix/ones_1/packed:output:0Jsequential_4/random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2=
;sequential_4/random_translation_2/translation_matrix/ones_1э
Jsequential_4/random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice_2/stackё
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_1ё
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_2р
Dsequential_4/random_translation_2/translation_matrix/strided_slice_2StridedSlice1sequential_4/random_translation_2/concat:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice_2/stack:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2F
Dsequential_4/random_translation_2/translation_matrix/strided_slice_2
:sequential_4/random_translation_2/translation_matrix/Neg_1NegMsequential_4/random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2<
:sequential_4/random_translation_2/translation_matrix/Neg_1Ъ
Bsequential_4/random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_4/random_translation_2/translation_matrix/zeros_2/mul/yЦ
@sequential_4/random_translation_2/translation_matrix/zeros_2/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2B
@sequential_4/random_translation_2/translation_matrix/zeros_2/mulЭ
Csequential_4/random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2E
Csequential_4/random_translation_2/translation_matrix/zeros_2/Less/yУ
Asequential_4/random_translation_2/translation_matrix/zeros_2/LessLessDsequential_4/random_translation_2/translation_matrix/zeros_2/mul:z:0Lsequential_4/random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2C
Asequential_4/random_translation_2/translation_matrix/zeros_2/Lessа
Esequential_4/random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Esequential_4/random_translation_2/translation_matrix/zeros_2/packed/1н
Csequential_4/random_translation_2/translation_matrix/zeros_2/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Nsequential_4/random_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2E
Csequential_4/random_translation_2/translation_matrix/zeros_2/packedЭ
Bsequential_4/random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_4/random_translation_2/translation_matrix/zeros_2/Constб
<sequential_4/random_translation_2/translation_matrix/zeros_2FillLsequential_4/random_translation_2/translation_matrix/zeros_2/packed:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2>
<sequential_4/random_translation_2/translation_matrix/zeros_2Ц
@sequential_4/random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2B
@sequential_4/random_translation_2/translation_matrix/concat/axisч
;sequential_4/random_translation_2/translation_matrix/concatConcatV2Bsequential_4/random_translation_2/translation_matrix/ones:output:0Csequential_4/random_translation_2/translation_matrix/zeros:output:0<sequential_4/random_translation_2/translation_matrix/Neg:y:0Esequential_4/random_translation_2/translation_matrix/zeros_1:output:0Dsequential_4/random_translation_2/translation_matrix/ones_1:output:0>sequential_4/random_translation_2/translation_matrix/Neg_1:y:0Esequential_4/random_translation_2/translation_matrix/zeros_2:output:0Isequential_4/random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2=
;sequential_4/random_translation_2/translation_matrix/concatю
1sequential_4/random_translation_2/transform/ShapeShapeXsequential_4/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:23
1sequential_4/random_translation_2/transform/ShapeЬ
?sequential_4/random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/random_translation_2/transform/strided_slice/stackа
Asequential_4/random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_4/random_translation_2/transform/strided_slice/stack_1а
Asequential_4/random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_4/random_translation_2/transform/strided_slice/stack_2ж
9sequential_4/random_translation_2/transform/strided_sliceStridedSlice:sequential_4/random_translation_2/transform/Shape:output:0Hsequential_4/random_translation_2/transform/strided_slice/stack:output:0Jsequential_4/random_translation_2/transform/strided_slice/stack_1:output:0Jsequential_4/random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2;
9sequential_4/random_translation_2/transform/strided_sliceЕ
6sequential_4/random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    28
6sequential_4/random_translation_2/transform/fill_valueЦ
Fsequential_4/random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Xsequential_4/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0Dsequential_4/random_translation_2/translation_matrix/concat:output:0Bsequential_4/random_translation_2/transform/strided_slice:output:0?sequential_4/random_translation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2H
Fsequential_4/random_translation_2/transform/ImageProjectiveTransformV3
Dsequential_4/random_flip_2/random_flip_left_right/control_dependencyIdentity[sequential_4/random_translation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*Y
_classO
MKloc:@sequential_4/random_translation_2/transform/ImageProjectiveTransformV3*/
_output_shapes
:џџџџџџџџџ  2F
Dsequential_4/random_flip_2/random_flip_left_right/control_dependencyя
7sequential_4/random_flip_2/random_flip_left_right/ShapeShapeMsequential_4/random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:29
7sequential_4/random_flip_2/random_flip_left_right/Shapeи
Esequential_4/random_flip_2/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_4/random_flip_2/random_flip_left_right/strided_slice/stackм
Gsequential_4/random_flip_2/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_4/random_flip_2/random_flip_left_right/strided_slice/stack_1м
Gsequential_4/random_flip_2/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_4/random_flip_2/random_flip_left_right/strided_slice/stack_2
?sequential_4/random_flip_2/random_flip_left_right/strided_sliceStridedSlice@sequential_4/random_flip_2/random_flip_left_right/Shape:output:0Nsequential_4/random_flip_2/random_flip_left_right/strided_slice/stack:output:0Psequential_4/random_flip_2/random_flip_left_right/strided_slice/stack_1:output:0Psequential_4/random_flip_2/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2A
?sequential_4/random_flip_2/random_flip_left_right/strided_slice
Fsequential_4/random_flip_2/random_flip_left_right/random_uniform/shapePackHsequential_4/random_flip_2/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2H
Fsequential_4/random_flip_2/random_flip_left_right/random_uniform/shapeб
Dsequential_4/random_flip_2/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2F
Dsequential_4/random_flip_2/random_flip_left_right/random_uniform/minб
Dsequential_4/random_flip_2/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2F
Dsequential_4/random_flip_2/random_flip_left_right/random_uniform/maxН
Nsequential_4/random_flip_2/random_flip_left_right/random_uniform/RandomUniformRandomUniformOsequential_4/random_flip_2/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ*
dtype02P
Nsequential_4/random_flip_2/random_flip_left_right/random_uniform/RandomUniformщ
Dsequential_4/random_flip_2/random_flip_left_right/random_uniform/MulMulWsequential_4/random_flip_2/random_flip_left_right/random_uniform/RandomUniform:output:0Msequential_4/random_flip_2/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2F
Dsequential_4/random_flip_2/random_flip_left_right/random_uniform/MulШ
Asequential_4/random_flip_2/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_4/random_flip_2/random_flip_left_right/Reshape/shape/1Ш
Asequential_4/random_flip_2/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_4/random_flip_2/random_flip_left_right/Reshape/shape/2Ш
Asequential_4/random_flip_2/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_4/random_flip_2/random_flip_left_right/Reshape/shape/3ц
?sequential_4/random_flip_2/random_flip_left_right/Reshape/shapePackHsequential_4/random_flip_2/random_flip_left_right/strided_slice:output:0Jsequential_4/random_flip_2/random_flip_left_right/Reshape/shape/1:output:0Jsequential_4/random_flip_2/random_flip_left_right/Reshape/shape/2:output:0Jsequential_4/random_flip_2/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2A
?sequential_4/random_flip_2/random_flip_left_right/Reshape/shapeЯ
9sequential_4/random_flip_2/random_flip_left_right/ReshapeReshapeHsequential_4/random_flip_2/random_flip_left_right/random_uniform/Mul:z:0Hsequential_4/random_flip_2/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2;
9sequential_4/random_flip_2/random_flip_left_right/Reshapeљ
7sequential_4/random_flip_2/random_flip_left_right/RoundRoundBsequential_4/random_flip_2/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ29
7sequential_4/random_flip_2/random_flip_left_right/RoundЮ
@sequential_4/random_flip_2/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_4/random_flip_2/random_flip_left_right/ReverseV2/axisл
;sequential_4/random_flip_2/random_flip_left_right/ReverseV2	ReverseV2Msequential_4/random_flip_2/random_flip_left_right/control_dependency:output:0Isequential_4/random_flip_2/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2=
;sequential_4/random_flip_2/random_flip_left_right/ReverseV2В
5sequential_4/random_flip_2/random_flip_left_right/mulMul;sequential_4/random_flip_2/random_flip_left_right/Round:y:0Dsequential_4/random_flip_2/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  27
5sequential_4/random_flip_2/random_flip_left_right/mulЗ
7sequential_4/random_flip_2/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_4/random_flip_2/random_flip_left_right/sub/xЎ
5sequential_4/random_flip_2/random_flip_left_right/subSub@sequential_4/random_flip_2/random_flip_left_right/sub/x:output:0;sequential_4/random_flip_2/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:џџџџџџџџџ27
5sequential_4/random_flip_2/random_flip_left_right/subН
7sequential_4/random_flip_2/random_flip_left_right/mul_1Mul9sequential_4/random_flip_2/random_flip_left_right/sub:z:0Msequential_4/random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  29
7sequential_4/random_flip_2/random_flip_left_right/mul_1Љ
5sequential_4/random_flip_2/random_flip_left_right/addAddV29sequential_4/random_flip_2/random_flip_left_right/mul:z:0;sequential_4/random_flip_2/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  27
5sequential_4/random_flip_2/random_flip_left_right/addА
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_8/Conv2D/ReadVariableOpё
conv2d_8/Conv2DConv2D9sequential_4/random_flip_2/random_flip_left_right/add:z:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   *
paddingSAME*
strides
2
conv2d_8/Conv2DЇ
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_8/BiasAdd/ReadVariableOpЌ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ   2
conv2d_8/BiasAdd
activation_10/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ   2
activation_10/ReluЫ
max_pooling2d_6/MaxPoolMaxPool activation_10/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_6/MaxPoolА
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_9/Conv2D/ReadVariableOpи
conv2d_9/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_9/Conv2DЇ
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_9/BiasAdd/ReadVariableOpЌ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
conv2d_9/BiasAdd
activation_11/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
activation_11/ReluЫ
max_pooling2d_7/MaxPoolMaxPool activation_11/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_7/MaxPoolД
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_10/Conv2D/ReadVariableOpм
conv2d_10/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_10/Conv2DЋ
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOpБ
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_10/BiasAdd
activation_12/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
activation_12/ReluЬ
max_pooling2d_8/MaxPoolMaxPool activation_12/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
2
max_pooling2d_8/MaxPoolЕ
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_11/Conv2D/ReadVariableOpм
conv2d_11/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
conv2d_11/Conv2DЋ
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOpБ
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2
conv2d_11/BiasAdd
activation_13/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ2
activation_13/ReluЗ
1global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_2/Mean/reduction_indicesл
global_average_pooling2d_2/MeanMean activation_13/Relu:activations:0:global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
global_average_pooling2d_2/MeanІ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
dense_2/MatMul/ReadVariableOp­
dense_2/MatMulMatMul(global_average_pooling2d_2/Mean:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_2/BiasAdd
activation_14/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
activation_14/Softmax
IdentityIdentityactivation_14/Softmax:softmax:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp@^sequential_4/random_rotation_2/stateful_uniform/StatefulUniformC^sequential_4/random_translation_2/stateful_uniform/StatefulUniformE^sequential_4/random_translation_2/stateful_uniform_1/StatefulUniform*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:џџџџџџџџџ  ::::::::::::2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2
?sequential_4/random_rotation_2/stateful_uniform/StatefulUniform?sequential_4/random_rotation_2/stateful_uniform/StatefulUniform2
Bsequential_4/random_translation_2/stateful_uniform/StatefulUniformBsequential_4/random_translation_2/stateful_uniform/StatefulUniform2
Dsequential_4/random_translation_2/stateful_uniform_1/StatefulUniformDsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ѕ
Є
H__inference_sequential_4_layer_call_and_return_conditional_losses_575611
random_rotation_2_input?
;random_rotation_2_stateful_uniform_statefuluniform_resourceB
>random_translation_2_stateful_uniform_statefuluniform_resource
identityЂ2random_rotation_2/stateful_uniform/StatefulUniformЂ5random_translation_2/stateful_uniform/StatefulUniformЂ7random_translation_2/stateful_uniform_1/StatefulUniformy
random_rotation_2/ShapeShaperandom_rotation_2_input*
T0*
_output_shapes
:2
random_rotation_2/Shape
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2Ю
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack 
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1 
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2и
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack 
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1 
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2и
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1Д
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:FёП2(
&random_rotation_2/stateful_uniform/min
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fё?2(
&random_rotation_2/stateful_uniform/maxО
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmъ
2random_rotation_2/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_2_stateful_uniform_statefuluniform_resourceErandom_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:џџџџџџџџџ*
shape_dtype024
2random_rotation_2/stateful_uniform/StatefulUniformк
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/subю
&random_rotation_2/stateful_uniform/mulMul;random_rotation_2/stateful_uniform/StatefulUniform:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2(
&random_rotation_2/stateful_uniform/mulк
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2$
"random_rotation_2/stateful_uniform
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_rotation_2/rotation_matrix/sub/yЦ
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/subЋ
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/Cos
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_1/yЬ
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1л
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/mulЋ
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/Sin
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_2/yЪ
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2п
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_1п
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_3п
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_4
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/yђ
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2+
)random_rotation_2/rotation_matrix/truediv
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_5/yЪ
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5Џ
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_1
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_6/yЬ
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6с
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_2Џ
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_1
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_2/rotation_matrix/sub_7/yЪ
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7с
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/mul_3п
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/addп
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/sub_8Ѓ
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/yј
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2-
+random_rotation_2/rotation_matrix/truediv_1Ј
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/ShapeИ
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stackМ
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1М
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2Ў
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_sliceЏ
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_2У
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1Џ
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_2У
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2У
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%random_rotation_2/rotation_matrix/NegУ
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2х
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3Џ
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Sin_3У
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4Џ
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/Cos_3У
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2у
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5У
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stackЧ
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Ч
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2ч
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6 
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/yє
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mulЃ
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш20
.random_rotation_2/rotation_matrix/zeros/Less/yя
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/LessІ
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packedЃ
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const§
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'random_rotation_2/rotation_matrix/zeros 
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axisм
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2*
(random_rotation_2/rotation_matrix/concat
!random_rotation_2/transform/ShapeShaperandom_rotation_2_input*
T0*
_output_shapes
:2#
!random_rotation_2/transform/ShapeЌ
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stackА
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1А
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2і
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_valueВ
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_rotation_2_input1random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3Г
random_translation_2/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_2/Shape
(random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_2/strided_slice/stackЂ
*random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_1Ђ
*random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_2р
"random_translation_2/strided_sliceStridedSlice#random_translation_2/Shape:output:01random_translation_2/strided_slice/stack:output:03random_translation_2/strided_slice/stack_1:output:03random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_2/strided_sliceЂ
*random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_1/stackІ
,random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_1І
,random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_2ъ
$random_translation_2/strided_slice_1StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_1/stack:output:05random_translation_2/strided_slice_1/stack_1:output:05random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_1
random_translation_2/CastCast-random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/CastЂ
*random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_2/stackІ
,random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_1І
,random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_2ъ
$random_translation_2/strided_slice_2StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_2/stack:output:05random_translation_2/strided_slice_2/stack_1:output:05random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_2Ё
random_translation_2/Cast_1Cast-random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast_1 
-random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_2/stateful_uniform/shape/1ѕ
+random_translation_2/stateful_uniform/shapePack+random_translation_2/strided_slice:output:06random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_2/stateful_uniform/shape
)random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *О2+
)random_translation_2/stateful_uniform/min
)random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)random_translation_2/stateful_uniform/maxФ
?random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_2/stateful_uniform/StatefulUniform/algorithm§
5random_translation_2/stateful_uniform/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceHrandom_translation_2/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:џџџџџџџџџ*
shape_dtype027
5random_translation_2/stateful_uniform/StatefulUniformц
)random_translation_2/stateful_uniform/subSub2random_translation_2/stateful_uniform/max:output:02random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_2/stateful_uniform/subў
)random_translation_2/stateful_uniform/mulMul>random_translation_2/stateful_uniform/StatefulUniform:output:0-random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2+
)random_translation_2/stateful_uniform/mulъ
%random_translation_2/stateful_uniformAdd-random_translation_2/stateful_uniform/mul:z:02random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2'
%random_translation_2/stateful_uniformЗ
random_translation_2/mulMul)random_translation_2/stateful_uniform:z:0random_translation_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/mulЄ
/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_2/stateful_uniform_1/shape/1ћ
-random_translation_2/stateful_uniform_1/shapePack+random_translation_2/strided_slice:output:08random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_2/stateful_uniform_1/shape
+random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *О2-
+random_translation_2/stateful_uniform_1/min
+random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+random_translation_2/stateful_uniform_1/maxШ
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmН
7random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceJrandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_2/stateful_uniform_1/shape:output:06^random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:џџџџџџџџџ*
shape_dtype029
7random_translation_2/stateful_uniform_1/StatefulUniformю
+random_translation_2/stateful_uniform_1/subSub4random_translation_2/stateful_uniform_1/max:output:04random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_2/stateful_uniform_1/sub
+random_translation_2/stateful_uniform_1/mulMul@random_translation_2/stateful_uniform_1/StatefulUniform:output:0/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+random_translation_2/stateful_uniform_1/mulђ
'random_translation_2/stateful_uniform_1Add/random_translation_2/stateful_uniform_1/mul:z:04random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'random_translation_2/stateful_uniform_1П
random_translation_2/mul_1Mul+random_translation_2/stateful_uniform_1:z:0random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/mul_1
 random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_2/concat/axisъ
random_translation_2/concatConcatV2random_translation_2/mul_1:z:0random_translation_2/mul:z:0)random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ2
random_translation_2/concatВ
-random_translation_2/translation_matrix/ShapeShape$random_translation_2/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_2/translation_matrix/ShapeФ
;random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_2/translation_matrix/strided_slice/stackШ
=random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_1Ш
=random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_2в
5random_translation_2/translation_matrix/strided_sliceStridedSlice6random_translation_2/translation_matrix/Shape:output:0Drandom_translation_2/translation_matrix/strided_slice/stack:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_2/translation_matrix/strided_sliceЊ
2random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_2/translation_matrix/ones/mul/y
0random_translation_2/translation_matrix/ones/mulMul>random_translation_2/translation_matrix/strided_slice:output:0;random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_2/translation_matrix/ones/mul­
3random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш25
3random_translation_2/translation_matrix/ones/Less/y
1random_translation_2/translation_matrix/ones/LessLess4random_translation_2/translation_matrix/ones/mul:z:0<random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/ones/LessА
5random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/ones/packed/1 
3random_translation_2/translation_matrix/ones/packedPack>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_2/translation_matrix/ones/packed­
2random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2random_translation_2/translation_matrix/ones/Const
,random_translation_2/translation_matrix/onesFill<random_translation_2/translation_matrix/ones/packed:output:0;random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,random_translation_2/translation_matrix/onesЌ
3random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/zeros/mul/y
1random_translation_2/translation_matrix/zeros/mulMul>random_translation_2/translation_matrix/strided_slice:output:0<random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/zeros/mulЏ
4random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш26
4random_translation_2/translation_matrix/zeros/Less/y
2random_translation_2/translation_matrix/zeros/LessLess5random_translation_2/translation_matrix/zeros/mul:z:0=random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/zeros/LessВ
6random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_2/translation_matrix/zeros/packed/1Ѓ
4random_translation_2/translation_matrix/zeros/packedPack>random_translation_2/translation_matrix/strided_slice:output:0?random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_2/translation_matrix/zeros/packedЏ
3random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_2/translation_matrix/zeros/Const
-random_translation_2/translation_matrix/zerosFill=random_translation_2/translation_matrix/zeros/packed:output:0<random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-random_translation_2/translation_matrix/zerosг
=random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_2/translation_matrix/strided_slice_1/stackз
?random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_1/stack_1з
?random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_1/stack_2
7random_translation_2/translation_matrix/strided_slice_1StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_1е
+random_translation_2/translation_matrix/NegNeg@random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+random_translation_2/translation_matrix/NegА
5random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_1/mul/y
3random_translation_2/translation_matrix/zeros_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_1/mulГ
6random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш28
6random_translation_2/translation_matrix/zeros_1/Less/y
4random_translation_2/translation_matrix/zeros_1/LessLess7random_translation_2/translation_matrix/zeros_1/mul:z:0?random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_1/LessЖ
8random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_1/packed/1Љ
6random_translation_2/translation_matrix/zeros_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_1/packedГ
5random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_1/Const
/random_translation_2/translation_matrix/zeros_1Fill?random_translation_2/translation_matrix/zeros_1/packed:output:0>random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/random_translation_2/translation_matrix/zeros_1Ў
4random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_2/translation_matrix/ones_1/mul/y
2random_translation_2/translation_matrix/ones_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0=random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/ones_1/mulБ
5random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш27
5random_translation_2/translation_matrix/ones_1/Less/y
3random_translation_2/translation_matrix/ones_1/LessLess6random_translation_2/translation_matrix/ones_1/mul:z:0>random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/ones_1/LessД
7random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_2/translation_matrix/ones_1/packed/1І
5random_translation_2/translation_matrix/ones_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0@random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_2/translation_matrix/ones_1/packedБ
4random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4random_translation_2/translation_matrix/ones_1/Const
.random_translation_2/translation_matrix/ones_1Fill>random_translation_2/translation_matrix/ones_1/packed:output:0=random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ20
.random_translation_2/translation_matrix/ones_1г
=random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_2/translation_matrix/strided_slice_2/stackз
?random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_2/stack_1з
?random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_2/stack_2
7random_translation_2/translation_matrix/strided_slice_2StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_2й
-random_translation_2/translation_matrix/Neg_1Neg@random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-random_translation_2/translation_matrix/Neg_1А
5random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_2/mul/y
3random_translation_2/translation_matrix/zeros_2/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_2/mulГ
6random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш28
6random_translation_2/translation_matrix/zeros_2/Less/y
4random_translation_2/translation_matrix/zeros_2/LessLess7random_translation_2/translation_matrix/zeros_2/mul:z:0?random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_2/LessЖ
8random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_2/packed/1Љ
6random_translation_2/translation_matrix/zeros_2/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_2/packedГ
5random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_2/Const
/random_translation_2/translation_matrix/zeros_2Fill?random_translation_2/translation_matrix/zeros_2/packed:output:0>random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ21
/random_translation_2/translation_matrix/zeros_2Ќ
3random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/concat/axisх
.random_translation_2/translation_matrix/concatConcatV25random_translation_2/translation_matrix/ones:output:06random_translation_2/translation_matrix/zeros:output:0/random_translation_2/translation_matrix/Neg:y:08random_translation_2/translation_matrix/zeros_1:output:07random_translation_2/translation_matrix/ones_1:output:01random_translation_2/translation_matrix/Neg_1:y:08random_translation_2/translation_matrix/zeros_2:output:0<random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ20
.random_translation_2/translation_matrix/concatЧ
$random_translation_2/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_2/transform/ShapeВ
2random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_2/transform/strided_slice/stackЖ
4random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_1Ж
4random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_2
,random_translation_2/transform/strided_sliceStridedSlice-random_translation_2/transform/Shape:output:0;random_translation_2/transform/strided_slice/stack:output:0=random_translation_2/transform/strided_slice/stack_1:output:0=random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_2/transform/strided_slice
)random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_2/transform/fill_valueј
9random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_2/translation_matrix/concat:output:05random_translation_2/transform/strided_slice:output:02random_translation_2/transform/fill_value:output:0*/
_output_shapes
:џџџџџџџџџ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_2/transform/ImageProjectiveTransformV3ж
7random_flip_2/random_flip_left_right/control_dependencyIdentityNrandom_translation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*L
_classB
@>loc:@random_translation_2/transform/ImageProjectiveTransformV3*/
_output_shapes
:џџџџџџџџџ  29
7random_flip_2/random_flip_left_right/control_dependencyШ
*random_flip_2/random_flip_left_right/ShapeShape@random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_2/random_flip_left_right/ShapeО
8random_flip_2/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_2/random_flip_left_right/strided_slice/stackТ
:random_flip_2/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_2/random_flip_left_right/strided_slice/stack_1Т
:random_flip_2/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_2/random_flip_left_right/strided_slice/stack_2Р
2random_flip_2/random_flip_left_right/strided_sliceStridedSlice3random_flip_2/random_flip_left_right/Shape:output:0Arandom_flip_2/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_2/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_2/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_2/random_flip_left_right/strided_sliceщ
9random_flip_2/random_flip_left_right/random_uniform/shapePack;random_flip_2/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_2/random_flip_left_right/random_uniform/shapeЗ
7random_flip_2/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_2/random_flip_left_right/random_uniform/minЗ
7random_flip_2/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7random_flip_2/random_flip_left_right/random_uniform/max
Arandom_flip_2/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_2/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ*
dtype02C
Arandom_flip_2/random_flip_left_right/random_uniform/RandomUniformЕ
7random_flip_2/random_flip_left_right/random_uniform/MulMulJrandom_flip_2/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_2/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:џџџџџџџџџ29
7random_flip_2/random_flip_left_right/random_uniform/MulЎ
4random_flip_2/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/1Ў
4random_flip_2/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/2Ў
4random_flip_2/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_2/random_flip_left_right/Reshape/shape/3
2random_flip_2/random_flip_left_right/Reshape/shapePack;random_flip_2/random_flip_left_right/strided_slice:output:0=random_flip_2/random_flip_left_right/Reshape/shape/1:output:0=random_flip_2/random_flip_left_right/Reshape/shape/2:output:0=random_flip_2/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_2/random_flip_left_right/Reshape/shape
,random_flip_2/random_flip_left_right/ReshapeReshape;random_flip_2/random_flip_left_right/random_uniform/Mul:z:0;random_flip_2/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2.
,random_flip_2/random_flip_left_right/Reshapeв
*random_flip_2/random_flip_left_right/RoundRound5random_flip_2/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ2,
*random_flip_2/random_flip_left_right/RoundД
3random_flip_2/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_2/random_flip_left_right/ReverseV2/axisЇ
.random_flip_2/random_flip_left_right/ReverseV2	ReverseV2@random_flip_2/random_flip_left_right/control_dependency:output:0<random_flip_2/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  20
.random_flip_2/random_flip_left_right/ReverseV2ў
(random_flip_2/random_flip_left_right/mulMul.random_flip_2/random_flip_left_right/Round:y:07random_flip_2/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2*
(random_flip_2/random_flip_left_right/mul
*random_flip_2/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_flip_2/random_flip_left_right/sub/xњ
(random_flip_2/random_flip_left_right/subSub3random_flip_2/random_flip_left_right/sub/x:output:0.random_flip_2/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
(random_flip_2/random_flip_left_right/sub
*random_flip_2/random_flip_left_right/mul_1Mul,random_flip_2/random_flip_left_right/sub:z:0@random_flip_2/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2,
*random_flip_2/random_flip_left_right/mul_1ѕ
(random_flip_2/random_flip_left_right/addAddV2,random_flip_2/random_flip_left_right/mul:z:0.random_flip_2/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ  2*
(random_flip_2/random_flip_left_right/addЏ
IdentityIdentity,random_flip_2/random_flip_left_right/add:z:03^random_rotation_2/stateful_uniform/StatefulUniform6^random_translation_2/stateful_uniform/StatefulUniform8^random_translation_2/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ  ::2h
2random_rotation_2/stateful_uniform/StatefulUniform2random_rotation_2/stateful_uniform/StatefulUniform2n
5random_translation_2/stateful_uniform/StatefulUniform5random_translation_2/stateful_uniform/StatefulUniform2r
7random_translation_2/stateful_uniform_1/StatefulUniform7random_translation_2/stateful_uniform_1/StatefulUniform:h d
/
_output_shapes
:џџџџџџџџџ  
1
_user_specified_namerandom_rotation_2_input
ј
њ
-__inference_sequential_5_layer_call_fn_576721

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_5762922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ъ;
ы
H__inference_sequential_5_layer_call_and_return_conditional_losses_576292

inputs
conv2d_8_576257
conv2d_8_576259
conv2d_9_576264
conv2d_9_576266
conv2d_10_576271
conv2d_10_576273
conv2d_11_576278
conv2d_11_576280
dense_2_576285
dense_2_576287
identityЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallы
sequential_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5758642
sequential_4/PartitionedCallО
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0conv2d_8_576257conv2d_8_576259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_5759492"
 conv2d_8/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_5759702
activation_10/PartitionedCall
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_5758732!
max_pooling2d_6/PartitionedCallС
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_576264conv2d_9_576266*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_5759892"
 conv2d_9/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_5760102
activation_11/PartitionedCall
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_5758852!
max_pooling2d_7/PartitionedCallЧ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_576271conv2d_10_576273*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_5760292#
!conv2d_10/StatefulPartitionedCall
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_5760502
activation_12/PartitionedCall
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_5758972!
max_pooling2d_8/PartitionedCallЧ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_576278conv2d_11_576280*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_5760692#
!conv2d_11/StatefulPartitionedCall
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_5760902
activation_13/PartitionedCallЎ
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_5759102,
*global_average_pooling2d_2/PartitionedCallП
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_576285dense_2_576287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5761092!
dense_2/StatefulPartitionedCall
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_5761302
activation_14/PartitionedCallЊ
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ  ::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ѓ	
о
E__inference_conv2d_11_layer_call_and_return_conditional_losses_577069

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ю
serving_defaultК
Y
sequential_4_inputC
$serving_default_sequential_4_input:0џџџџџџџџџ  A
activation_140
StatefulPartitionedCall:0џџџџџџџџџ
tensorflow/serving/predict:њШ
Жg
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
м_default_save_signature
+н&call_and_return_all_conditional_losses
о__call__"c
_tf_keras_sequentialџb{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_4_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_2_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_4_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_2_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}

layer-0
layer-1
layer-2
regularization_losses
	variables
trainable_variables
	keras_api
+п&call_and_return_all_conditional_losses
р__call__"п
_tf_keras_sequentialР{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_2_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_2_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}}}
є	

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
+с&call_and_return_all_conditional_losses
т__call__"Э
_tf_keras_layerГ{"class_name": "Conv2D", "name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
й
#regularization_losses
$	variables
%trainable_variables
&	keras_api
+у&call_and_return_all_conditional_losses
ф__call__"Ш
_tf_keras_layerЎ{"class_name": "Activation", "name": "activation_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}

'regularization_losses
(	variables
)trainable_variables
*	keras_api
+х&call_and_return_all_conditional_losses
ц__call__"я
_tf_keras_layerе{"class_name": "MaxPooling2D", "name": "max_pooling2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
і	

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
+ч&call_and_return_all_conditional_losses
ш__call__"Я
_tf_keras_layerЕ{"class_name": "Conv2D", "name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
й
1regularization_losses
2	variables
3trainable_variables
4	keras_api
+щ&call_and_return_all_conditional_losses
ъ__call__"Ш
_tf_keras_layerЎ{"class_name": "Activation", "name": "activation_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}

5regularization_losses
6	variables
7trainable_variables
8	keras_api
+ы&call_and_return_all_conditional_losses
ь__call__"я
_tf_keras_layerе{"class_name": "MaxPooling2D", "name": "max_pooling2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ї	

9kernel
:bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
+э&call_and_return_all_conditional_losses
ю__call__"а
_tf_keras_layerЖ{"class_name": "Conv2D", "name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
й
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
+я&call_and_return_all_conditional_losses
№__call__"Ш
_tf_keras_layerЎ{"class_name": "Activation", "name": "activation_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}

Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
+ё&call_and_return_all_conditional_losses
ђ__call__"я
_tf_keras_layerе{"class_name": "MaxPooling2D", "name": "max_pooling2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
љ	

Gkernel
Hbias
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
+ѓ&call_and_return_all_conditional_losses
є__call__"в
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
й
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
+ѕ&call_and_return_all_conditional_losses
і__call__"Ш
_tf_keras_layerЎ{"class_name": "Activation", "name": "activation_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}

Qregularization_losses
R	variables
Strainable_variables
T	keras_api
+ї&call_and_return_all_conditional_losses
ј__call__"
_tf_keras_layerю{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
і

Ukernel
Vbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
+љ&call_and_return_all_conditional_losses
њ__call__"Я
_tf_keras_layerЕ{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
м
[regularization_losses
\	variables
]trainable_variables
^	keras_api
+ћ&call_and_return_all_conditional_losses
ќ__call__"Ы
_tf_keras_layerБ{"class_name": "Activation", "name": "activation_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "softmax"}}

_iter

`beta_1

abeta_2
	bdecay
clearning_ratemШmЩ+mЪ,mЫ9mЬ:mЭGmЮHmЯUmаVmбvвvг+vд,vе9vж:vзGvиHvйUvкVvл"
	optimizer
 "
trackable_list_wrapper
f
0
1
+2
,3
94
:5
G6
H7
U8
V9"
trackable_list_wrapper
f
0
1
+2
,3
94
:5
G6
H7
U8
V9"
trackable_list_wrapper
Ю
regularization_losses
dlayer_metrics
	variables
enon_trainable_variables

flayers
trainable_variables
gmetrics
hlayer_regularization_losses
о__call__
м_default_save_signature
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
-
§serving_default"
signature_map
Н
i_rng
j	keras_api"Ё
_tf_keras_layer{"class_name": "RandomRotation", "name": "random_rotation_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
т
k_rng
l	keras_api"Ц
_tf_keras_layerЌ{"class_name": "RandomTranslation", "name": "random_translation_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}

m_rng
n	keras_api"ф
_tf_keras_layerЪ{"class_name": "RandomFlip", "name": "random_flip_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_flip_2", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
regularization_losses
olayer_metrics
	variables
pnon_trainable_variables

qlayers
trainable_variables
rmetrics
slayer_regularization_losses
р__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_8/kernel
: 2conv2d_8/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
А
regularization_losses
tlayer_metrics
 	variables
unon_trainable_variables

vlayers
!trainable_variables
wmetrics
xlayer_regularization_losses
т__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
#regularization_losses
ylayer_metrics
$	variables
znon_trainable_variables

{layers
%trainable_variables
|metrics
}layer_regularization_losses
ф__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
'regularization_losses
~layer_metrics
(	variables
non_trainable_variables
layers
)trainable_variables
metrics
 layer_regularization_losses
ц__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_9/kernel
:@2conv2d_9/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
Е
-regularization_losses
layer_metrics
.	variables
non_trainable_variables
layers
/trainable_variables
metrics
 layer_regularization_losses
ш__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
1regularization_losses
layer_metrics
2	variables
non_trainable_variables
layers
3trainable_variables
metrics
 layer_regularization_losses
ъ__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
5regularization_losses
layer_metrics
6	variables
non_trainable_variables
layers
7trainable_variables
metrics
 layer_regularization_losses
ь__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_10/kernel
:2conv2d_10/bias
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
Е
;regularization_losses
layer_metrics
<	variables
non_trainable_variables
layers
=trainable_variables
metrics
 layer_regularization_losses
ю__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
?regularization_losses
layer_metrics
@	variables
non_trainable_variables
layers
Atrainable_variables
metrics
 layer_regularization_losses
№__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Cregularization_losses
layer_metrics
D	variables
non_trainable_variables
layers
Etrainable_variables
metrics
  layer_regularization_losses
ђ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_11/kernel
:2conv2d_11/bias
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
Е
Iregularization_losses
Ёlayer_metrics
J	variables
Ђnon_trainable_variables
Ѓlayers
Ktrainable_variables
Єmetrics
 Ѕlayer_regularization_losses
є__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Mregularization_losses
Іlayer_metrics
N	variables
Їnon_trainable_variables
Јlayers
Otrainable_variables
Љmetrics
 Њlayer_regularization_losses
і__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Qregularization_losses
Ћlayer_metrics
R	variables
Ќnon_trainable_variables
­layers
Strainable_variables
Ўmetrics
 Џlayer_regularization_losses
ј__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
!:	
2dense_2/kernel
:
2dense_2/bias
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
Е
Wregularization_losses
Аlayer_metrics
X	variables
Бnon_trainable_variables
Вlayers
Ytrainable_variables
Гmetrics
 Дlayer_regularization_losses
њ__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
[regularization_losses
Еlayer_metrics
\	variables
Жnon_trainable_variables
Зlayers
]trainable_variables
Иmetrics
 Йlayer_regularization_losses
ќ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
 "
trackable_list_wrapper
/
М
_state_var"
_generic_user_object
"
_generic_user_object
/
Н
_state_var"
_generic_user_object
"
_generic_user_object
/
О
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
П

Пtotal

Рcount
С	variables
Т	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


Уtotal

Фcount
Х
_fn_kwargs
Ц	variables
Ч	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:	2Variable
:	2Variable
:	2Variable
:  (2total
:  (2count
0
П0
Р1"
trackable_list_wrapper
.
С	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
У0
Ф1"
trackable_list_wrapper
.
Ц	variables"
_generic_user_object
.:, 2Adam/conv2d_8/kernel/m
 : 2Adam/conv2d_8/bias/m
.:, @2Adam/conv2d_9/kernel/m
 :@2Adam/conv2d_9/bias/m
0:.@2Adam/conv2d_10/kernel/m
": 2Adam/conv2d_10/bias/m
1:/2Adam/conv2d_11/kernel/m
": 2Adam/conv2d_11/bias/m
&:$	
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
.:, 2Adam/conv2d_8/kernel/v
 : 2Adam/conv2d_8/bias/v
.:, @2Adam/conv2d_9/kernel/v
 :@2Adam/conv2d_9/bias/v
0:.@2Adam/conv2d_10/kernel/v
": 2Adam/conv2d_10/bias/v
1:/2Adam/conv2d_11/kernel/v
": 2Adam/conv2d_11/bias/v
&:$	
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
ђ2я
!__inference__wrapped_model_575377Щ
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *9Ђ6
41
sequential_4_inputџџџџџџџџџ  
ю2ы
H__inference_sequential_5_layer_call_and_return_conditional_losses_576623
H__inference_sequential_5_layer_call_and_return_conditional_losses_576139
H__inference_sequential_5_layer_call_and_return_conditional_losses_576667
H__inference_sequential_5_layer_call_and_return_conditional_losses_576178Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
-__inference_sequential_5_layer_call_fn_576696
-__inference_sequential_5_layer_call_fn_576315
-__inference_sequential_5_layer_call_fn_576251
-__inference_sequential_5_layer_call_fn_576721Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_4_layer_call_and_return_conditional_losses_576954
H__inference_sequential_4_layer_call_and_return_conditional_losses_576958
H__inference_sequential_4_layer_call_and_return_conditional_losses_575611
H__inference_sequential_4_layer_call_and_return_conditional_losses_575615Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
-__inference_sequential_4_layer_call_fn_576967
-__inference_sequential_4_layer_call_fn_575858
-__inference_sequential_4_layer_call_fn_576972
-__inference_sequential_4_layer_call_fn_575867Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
D__inference_conv2d_8_layer_call_and_return_conditional_losses_576982Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_8_layer_call_fn_576991Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_10_layer_call_and_return_conditional_losses_576996Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
и2е
.__inference_activation_10_layer_call_fn_577001Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Г2А
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_575873р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_max_pooling2d_6_layer_call_fn_575879р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ю2ы
D__inference_conv2d_9_layer_call_and_return_conditional_losses_577011Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_9_layer_call_fn_577020Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_11_layer_call_and_return_conditional_losses_577025Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
и2е
.__inference_activation_11_layer_call_fn_577030Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Г2А
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_575885р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_max_pooling2d_7_layer_call_fn_575891р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
я2ь
E__inference_conv2d_10_layer_call_and_return_conditional_losses_577040Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_conv2d_10_layer_call_fn_577049Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_12_layer_call_and_return_conditional_losses_577054Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
и2е
.__inference_activation_12_layer_call_fn_577059Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Г2А
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_575897р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
0__inference_max_pooling2d_8_layer_call_fn_575903р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
я2ь
E__inference_conv2d_11_layer_call_and_return_conditional_losses_577069Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_conv2d_11_layer_call_fn_577078Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_13_layer_call_and_return_conditional_losses_577083Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
и2е
.__inference_activation_13_layer_call_fn_577088Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
О2Л
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_575910р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ѓ2 
;__inference_global_average_pooling2d_2_layer_call_fn_575916р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
э2ъ
C__inference_dense_2_layer_call_and_return_conditional_losses_577098Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_2_layer_call_fn_577107Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_14_layer_call_and_return_conditional_losses_577112Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
и2е
.__inference_activation_14_layer_call_fn_577117Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
жBг
$__inference_signature_wrapper_576350sequential_4_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Ж
!__inference__wrapped_model_575377
+,9:GHUVCЂ@
9Ђ6
41
sequential_4_inputџџџџџџџџџ  
Њ "=Њ:
8
activation_14'$
activation_14џџџџџџџџџ
Е
I__inference_activation_10_layer_call_and_return_conditional_losses_576996h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ   
Њ "-Ђ*
# 
0џџџџџџџџџ   
 
.__inference_activation_10_layer_call_fn_577001[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ   
Њ " џџџџџџџџџ   Е
I__inference_activation_11_layer_call_and_return_conditional_losses_577025h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
.__inference_activation_11_layer_call_fn_577030[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@З
I__inference_activation_12_layer_call_and_return_conditional_losses_577054j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
.__inference_activation_12_layer_call_fn_577059]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџЗ
I__inference_activation_13_layer_call_and_return_conditional_losses_577083j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
.__inference_activation_13_layer_call_fn_577088]8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџЅ
I__inference_activation_14_layer_call_and_return_conditional_losses_577112X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ

 }
.__inference_activation_14_layer_call_fn_577117K/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџ
Ж
E__inference_conv2d_10_layer_call_and_return_conditional_losses_577040m9:7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ ".Ђ+
$!
0џџџџџџџџџ
 
*__inference_conv2d_10_layer_call_fn_577049`9:7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "!џџџџџџџџџЗ
E__inference_conv2d_11_layer_call_and_return_conditional_losses_577069nGH8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
*__inference_conv2d_11_layer_call_fn_577078aGH8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџД
D__inference_conv2d_8_layer_call_and_return_conditional_losses_576982l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ "-Ђ*
# 
0џџџџџџџџџ   
 
)__inference_conv2d_8_layer_call_fn_576991_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ " џџџџџџџџџ   Д
D__inference_conv2d_9_layer_call_and_return_conditional_losses_577011l+,7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_conv2d_9_layer_call_fn_577020_+,7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ " џџџџџџџџџ@Є
C__inference_dense_2_layer_call_and_return_conditional_losses_577098]UV0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ

 |
(__inference_dense_2_layer_call_fn_577107PUV0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
п
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_575910RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџџџџџџџџџџ
 Ж
;__inference_global_average_pooling2d_2_layer_call_fn_575916wRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "!џџџџџџџџџџџџџџџџџџю
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_575873RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_6_layer_call_fn_575879RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_575885RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_7_layer_call_fn_575891RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_575897RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_8_layer_call_fn_575903RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџд
H__inference_sequential_4_layer_call_and_return_conditional_losses_575611МНPЂM
FЂC
96
random_rotation_2_inputџџџџџџџџџ  
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 Ю
H__inference_sequential_4_layer_call_and_return_conditional_losses_575615PЂM
FЂC
96
random_rotation_2_inputџџџџџџџџџ  
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 Т
H__inference_sequential_4_layer_call_and_return_conditional_losses_576954vМН?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 М
H__inference_sequential_4_layer_call_and_return_conditional_losses_576958p?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 Ћ
-__inference_sequential_4_layer_call_fn_575858zМНPЂM
FЂC
96
random_rotation_2_inputџџџџџџџџџ  
p

 
Њ " џџџџџџџџџ  Ѕ
-__inference_sequential_4_layer_call_fn_575867tPЂM
FЂC
96
random_rotation_2_inputџџџџџџџџџ  
p 

 
Њ " џџџџџџџџџ  
-__inference_sequential_4_layer_call_fn_576967iМН?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p

 
Њ " џџџџџџџџџ  
-__inference_sequential_4_layer_call_fn_576972c?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p 

 
Њ " џџџџџџџџџ  б
H__inference_sequential_5_layer_call_and_return_conditional_losses_576139МН+,9:GHUVKЂH
AЂ>
41
sequential_4_inputџџџџџџџџџ  
p

 
Њ "%Ђ"

0џџџџџџџџџ

 Э
H__inference_sequential_5_layer_call_and_return_conditional_losses_576178
+,9:GHUVKЂH
AЂ>
41
sequential_4_inputџџџџџџџџџ  
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Ф
H__inference_sequential_5_layer_call_and_return_conditional_losses_576623xМН+,9:GHUV?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p

 
Њ "%Ђ"

0џџџџџџџџџ

 Р
H__inference_sequential_5_layer_call_and_return_conditional_losses_576667t
+,9:GHUV?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Ј
-__inference_sequential_5_layer_call_fn_576251wМН+,9:GHUVKЂH
AЂ>
41
sequential_4_inputџџџџџџџџџ  
p

 
Њ "џџџџџџџџџ
Є
-__inference_sequential_5_layer_call_fn_576315s
+,9:GHUVKЂH
AЂ>
41
sequential_4_inputџџџџџџџџџ  
p 

 
Њ "џџџџџџџџџ

-__inference_sequential_5_layer_call_fn_576696kМН+,9:GHUV?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p

 
Њ "џџџџџџџџџ

-__inference_sequential_5_layer_call_fn_576721g
+,9:GHUV?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p 

 
Њ "џџџџџџџџџ
Я
$__inference_signature_wrapper_576350І
+,9:GHUVYЂV
Ђ 
OЊL
J
sequential_4_input41
sequential_4_inputџџџџџџџџџ  "=Њ:
8
activation_14'$
activation_14џџџџџџџџџ
