??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
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
?
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
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
?
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
?
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_10/kernel
~
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_10/bias
n
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes	
:?*
dtype0
?
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_11/kernel

$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_11/bias
n
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes	
:?*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?
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
?
Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_8/kernel/m
?
*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
: *
dtype0
?
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
?
Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_9/kernel/m
?
*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
: @*
dtype0
?
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
?
Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_10/kernel/m
?
+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_10/bias/m
|
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_11/kernel/m
?
+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_11/bias/m
|
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	?
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
?
Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_8/kernel/v
?
*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
: *
dtype0
?
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
?
Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_9/kernel/v
?
*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
: @*
dtype0
?
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
?
Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_10/kernel/v
?
+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_10/bias/v
|
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_11/kernel/v
?
+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_11/bias/v
|
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	?
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
?O
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?O
value?OB?O B?O
?
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
_
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
 	keras_api
R
!trainable_variables
"	variables
#regularization_losses
$	keras_api
R
%trainable_variables
&	variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
R
/trainable_variables
0	variables
1regularization_losses
2	keras_api
R
3trainable_variables
4	variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9trainable_variables
:	variables
;regularization_losses
<	keras_api
R
=trainable_variables
>	variables
?regularization_losses
@	keras_api
R
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
h

Ekernel
Fbias
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
R
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
R
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
h

Skernel
Tbias
Utrainable_variables
V	variables
Wregularization_losses
X	keras_api
R
Ytrainable_variables
Z	variables
[regularization_losses
\	keras_api
?
]iter

^beta_1

_beta_2
	`decay
alearning_ratem?m?)m?*m?7m?8m?Em?Fm?Sm?Tm?v?v?)v?*v?7v?8v?Ev?Fv?Sv?Tv?
F
0
1
)2
*3
74
85
E6
F7
S8
T9
F
0
1
)2
*3
74
85
E6
F7
S8
T9
 
?
bnon_trainable_variables
clayer_metrics
dmetrics
	variables
trainable_variables

elayers
flayer_regularization_losses
regularization_losses
 

g_rng
h	keras_api
 
 
 
?
inon_trainable_variables
jlayer_metrics
kmetrics
	variables
trainable_variables

llayers
mlayer_regularization_losses
regularization_losses
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
nnon_trainable_variables
olayer_metrics
pmetrics
trainable_variables
	variables

qlayers
rlayer_regularization_losses
regularization_losses
 
 
 
?
snon_trainable_variables
tlayer_metrics
umetrics
!trainable_variables
"	variables

vlayers
wlayer_regularization_losses
#regularization_losses
 
 
 
?
xnon_trainable_variables
ylayer_metrics
zmetrics
%trainable_variables
&	variables

{layers
|layer_regularization_losses
'regularization_losses
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
}non_trainable_variables
~layer_metrics
metrics
+trainable_variables
,	variables
?layers
 ?layer_regularization_losses
-regularization_losses
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
/trainable_variables
0	variables
?layers
 ?layer_regularization_losses
1regularization_losses
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
3trainable_variables
4	variables
?layers
 ?layer_regularization_losses
5regularization_losses
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
?non_trainable_variables
?layer_metrics
?metrics
9trainable_variables
:	variables
?layers
 ?layer_regularization_losses
;regularization_losses
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
=trainable_variables
>	variables
?layers
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
Atrainable_variables
B	variables
?layers
 ?layer_regularization_losses
Cregularization_losses
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

E0
F1
 
?
?non_trainable_variables
?layer_metrics
?metrics
Gtrainable_variables
H	variables
?layers
 ?layer_regularization_losses
Iregularization_losses
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
Ktrainable_variables
L	variables
?layers
 ?layer_regularization_losses
Mregularization_losses
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
Otrainable_variables
P	variables
?layers
 ?layer_regularization_losses
Qregularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

S0
T1
 
?
?non_trainable_variables
?layer_metrics
?metrics
Utrainable_variables
V	variables
?layers
 ?layer_regularization_losses
Wregularization_losses
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
Ytrainable_variables
Z	variables
?layers
 ?layer_regularization_losses
[regularization_losses
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

?0
?1
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
 

?
_state_var
 
 
 
 

0
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

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
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
?
"serving_default_sequential_4_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_4_inputconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_460502
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*		*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_461159
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/mAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/vAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/vAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*4
Tin-
+2)*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_461289??
??
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460648

inputsO
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
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?Bsequential_4/random_translation_2/stateful_uniform/StatefulUniform?Dsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform?
'sequential_4/random_translation_2/ShapeShapeinputs*
T0*
_output_shapes
:2)
'sequential_4/random_translation_2/Shape?
5sequential_4/random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_4/random_translation_2/strided_slice/stack?
7sequential_4/random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice/stack_1?
7sequential_4/random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice/stack_2?
/sequential_4/random_translation_2/strided_sliceStridedSlice0sequential_4/random_translation_2/Shape:output:0>sequential_4/random_translation_2/strided_slice/stack:output:0@sequential_4/random_translation_2/strided_slice/stack_1:output:0@sequential_4/random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_4/random_translation_2/strided_slice?
7sequential_4/random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice_1/stack?
9sequential_4/random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_1/stack_1?
9sequential_4/random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_1/stack_2?
1sequential_4/random_translation_2/strided_slice_1StridedSlice0sequential_4/random_translation_2/Shape:output:0@sequential_4/random_translation_2/strided_slice_1/stack:output:0Bsequential_4/random_translation_2/strided_slice_1/stack_1:output:0Bsequential_4/random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_4/random_translation_2/strided_slice_1?
&sequential_4/random_translation_2/CastCast:sequential_4/random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_4/random_translation_2/Cast?
7sequential_4/random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7sequential_4/random_translation_2/strided_slice_2/stack?
9sequential_4/random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_2/stack_1?
9sequential_4/random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_4/random_translation_2/strided_slice_2/stack_2?
1sequential_4/random_translation_2/strided_slice_2StridedSlice0sequential_4/random_translation_2/Shape:output:0@sequential_4/random_translation_2/strided_slice_2/stack:output:0Bsequential_4/random_translation_2/strided_slice_2/stack_1:output:0Bsequential_4/random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_4/random_translation_2/strided_slice_2?
(sequential_4/random_translation_2/Cast_1Cast:sequential_4/random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(sequential_4/random_translation_2/Cast_1?
:sequential_4/random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_4/random_translation_2/stateful_uniform/shape/1?
8sequential_4/random_translation_2/stateful_uniform/shapePack8sequential_4/random_translation_2/strided_slice:output:0Csequential_4/random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2:
8sequential_4/random_translation_2/stateful_uniform/shape?
6sequential_4/random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???28
6sequential_4/random_translation_2/stateful_uniform/min?
6sequential_4/random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???28
6sequential_4/random_translation_2/stateful_uniform/max?
Lsequential_4/random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2N
Lsequential_4/random_translation_2/stateful_uniform/StatefulUniform/algorithm?
Bsequential_4/random_translation_2/stateful_uniform/StatefulUniformStatefulUniformKsequential_4_random_translation_2_stateful_uniform_statefuluniform_resourceUsequential_4/random_translation_2/stateful_uniform/StatefulUniform/algorithm:output:0Asequential_4/random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02D
Bsequential_4/random_translation_2/stateful_uniform/StatefulUniform?
6sequential_4/random_translation_2/stateful_uniform/subSub?sequential_4/random_translation_2/stateful_uniform/max:output:0?sequential_4/random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 28
6sequential_4/random_translation_2/stateful_uniform/sub?
6sequential_4/random_translation_2/stateful_uniform/mulMulKsequential_4/random_translation_2/stateful_uniform/StatefulUniform:output:0:sequential_4/random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????28
6sequential_4/random_translation_2/stateful_uniform/mul?
2sequential_4/random_translation_2/stateful_uniformAdd:sequential_4/random_translation_2/stateful_uniform/mul:z:0?sequential_4/random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????24
2sequential_4/random_translation_2/stateful_uniform?
%sequential_4/random_translation_2/mulMul6sequential_4/random_translation_2/stateful_uniform:z:0*sequential_4/random_translation_2/Cast:y:0*
T0*'
_output_shapes
:?????????2'
%sequential_4/random_translation_2/mul?
<sequential_4/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_4/random_translation_2/stateful_uniform_1/shape/1?
:sequential_4/random_translation_2/stateful_uniform_1/shapePack8sequential_4/random_translation_2/strided_slice:output:0Esequential_4/random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2<
:sequential_4/random_translation_2/stateful_uniform_1/shape?
8sequential_4/random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2:
8sequential_4/random_translation_2/stateful_uniform_1/min?
8sequential_4/random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2:
8sequential_4/random_translation_2/stateful_uniform_1/max?
Nsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2P
Nsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform/algorithm?
Dsequential_4/random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniformKsequential_4_random_translation_2_stateful_uniform_statefuluniform_resourceWsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:0Csequential_4/random_translation_2/stateful_uniform_1/shape:output:0C^sequential_4/random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype02F
Dsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform?
8sequential_4/random_translation_2/stateful_uniform_1/subSubAsequential_4/random_translation_2/stateful_uniform_1/max:output:0Asequential_4/random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2:
8sequential_4/random_translation_2/stateful_uniform_1/sub?
8sequential_4/random_translation_2/stateful_uniform_1/mulMulMsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform:output:0<sequential_4/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2:
8sequential_4/random_translation_2/stateful_uniform_1/mul?
4sequential_4/random_translation_2/stateful_uniform_1Add<sequential_4/random_translation_2/stateful_uniform_1/mul:z:0Asequential_4/random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????26
4sequential_4/random_translation_2/stateful_uniform_1?
'sequential_4/random_translation_2/mul_1Mul8sequential_4/random_translation_2/stateful_uniform_1:z:0,sequential_4/random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:?????????2)
'sequential_4/random_translation_2/mul_1?
-sequential_4/random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_4/random_translation_2/concat/axis?
(sequential_4/random_translation_2/concatConcatV2+sequential_4/random_translation_2/mul_1:z:0)sequential_4/random_translation_2/mul:z:06sequential_4/random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(sequential_4/random_translation_2/concat?
:sequential_4/random_translation_2/translation_matrix/ShapeShape1sequential_4/random_translation_2/concat:output:0*
T0*
_output_shapes
:2<
:sequential_4/random_translation_2/translation_matrix/Shape?
Hsequential_4/random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hsequential_4/random_translation_2/translation_matrix/strided_slice/stack?
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_1?
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice/stack_2?
Bsequential_4/random_translation_2/translation_matrix/strided_sliceStridedSliceCsequential_4/random_translation_2/translation_matrix/Shape:output:0Qsequential_4/random_translation_2/translation_matrix/strided_slice/stack:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice/stack_1:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2D
Bsequential_4/random_translation_2/translation_matrix/strided_slice?
?sequential_4/random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_4/random_translation_2/translation_matrix/ones/mul/y?
=sequential_4/random_translation_2/translation_matrix/ones/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Hsequential_4/random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 2?
=sequential_4/random_translation_2/translation_matrix/ones/mul?
@sequential_4/random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2B
@sequential_4/random_translation_2/translation_matrix/ones/Less/y?
>sequential_4/random_translation_2/translation_matrix/ones/LessLessAsequential_4/random_translation_2/translation_matrix/ones/mul:z:0Isequential_4/random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 2@
>sequential_4/random_translation_2/translation_matrix/ones/Less?
Bsequential_4/random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_4/random_translation_2/translation_matrix/ones/packed/1?
@sequential_4/random_translation_2/translation_matrix/ones/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Ksequential_4/random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:2B
@sequential_4/random_translation_2/translation_matrix/ones/packed?
?sequential_4/random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2A
?sequential_4/random_translation_2/translation_matrix/ones/Const?
9sequential_4/random_translation_2/translation_matrix/onesFillIsequential_4/random_translation_2/translation_matrix/ones/packed:output:0Hsequential_4/random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2;
9sequential_4/random_translation_2/translation_matrix/ones?
@sequential_4/random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@sequential_4/random_translation_2/translation_matrix/zeros/mul/y?
>sequential_4/random_translation_2/translation_matrix/zeros/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Isequential_4/random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2@
>sequential_4/random_translation_2/translation_matrix/zeros/mul?
Asequential_4/random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2C
Asequential_4/random_translation_2/translation_matrix/zeros/Less/y?
?sequential_4/random_translation_2/translation_matrix/zeros/LessLessBsequential_4/random_translation_2/translation_matrix/zeros/mul:z:0Jsequential_4/random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2A
?sequential_4/random_translation_2/translation_matrix/zeros/Less?
Csequential_4/random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_4/random_translation_2/translation_matrix/zeros/packed/1?
Asequential_4/random_translation_2/translation_matrix/zeros/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Lsequential_4/random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2C
Asequential_4/random_translation_2/translation_matrix/zeros/packed?
@sequential_4/random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2B
@sequential_4/random_translation_2/translation_matrix/zeros/Const?
:sequential_4/random_translation_2/translation_matrix/zerosFillJsequential_4/random_translation_2/translation_matrix/zeros/packed:output:0Isequential_4/random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2<
:sequential_4/random_translation_2/translation_matrix/zeros?
Jsequential_4/random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack?
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_1?
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_2?
Dsequential_4/random_translation_2/translation_matrix/strided_slice_1StridedSlice1sequential_4/random_translation_2/concat:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice_1/stack:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2F
Dsequential_4/random_translation_2/translation_matrix/strided_slice_1?
8sequential_4/random_translation_2/translation_matrix/NegNegMsequential_4/random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2:
8sequential_4/random_translation_2/translation_matrix/Neg?
Bsequential_4/random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_4/random_translation_2/translation_matrix/zeros_1/mul/y?
@sequential_4/random_translation_2/translation_matrix/zeros_1/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2B
@sequential_4/random_translation_2/translation_matrix/zeros_1/mul?
Csequential_4/random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2E
Csequential_4/random_translation_2/translation_matrix/zeros_1/Less/y?
Asequential_4/random_translation_2/translation_matrix/zeros_1/LessLessDsequential_4/random_translation_2/translation_matrix/zeros_1/mul:z:0Lsequential_4/random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2C
Asequential_4/random_translation_2/translation_matrix/zeros_1/Less?
Esequential_4/random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Esequential_4/random_translation_2/translation_matrix/zeros_1/packed/1?
Csequential_4/random_translation_2/translation_matrix/zeros_1/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Nsequential_4/random_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2E
Csequential_4/random_translation_2/translation_matrix/zeros_1/packed?
Bsequential_4/random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_4/random_translation_2/translation_matrix/zeros_1/Const?
<sequential_4/random_translation_2/translation_matrix/zeros_1FillLsequential_4/random_translation_2/translation_matrix/zeros_1/packed:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2>
<sequential_4/random_translation_2/translation_matrix/zeros_1?
Asequential_4/random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_4/random_translation_2/translation_matrix/ones_1/mul/y?
?sequential_4/random_translation_2/translation_matrix/ones_1/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Jsequential_4/random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 2A
?sequential_4/random_translation_2/translation_matrix/ones_1/mul?
Bsequential_4/random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2D
Bsequential_4/random_translation_2/translation_matrix/ones_1/Less/y?
@sequential_4/random_translation_2/translation_matrix/ones_1/LessLessCsequential_4/random_translation_2/translation_matrix/ones_1/mul:z:0Ksequential_4/random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 2B
@sequential_4/random_translation_2/translation_matrix/ones_1/Less?
Dsequential_4/random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2F
Dsequential_4/random_translation_2/translation_matrix/ones_1/packed/1?
Bsequential_4/random_translation_2/translation_matrix/ones_1/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Msequential_4/random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:2D
Bsequential_4/random_translation_2/translation_matrix/ones_1/packed?
Asequential_4/random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2C
Asequential_4/random_translation_2/translation_matrix/ones_1/Const?
;sequential_4/random_translation_2/translation_matrix/ones_1FillKsequential_4/random_translation_2/translation_matrix/ones_1/packed:output:0Jsequential_4/random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????2=
;sequential_4/random_translation_2/translation_matrix/ones_1?
Jsequential_4/random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2L
Jsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack?
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_1?
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2N
Lsequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_2?
Dsequential_4/random_translation_2/translation_matrix/strided_slice_2StridedSlice1sequential_4/random_translation_2/concat:output:0Ssequential_4/random_translation_2/translation_matrix/strided_slice_2/stack:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Usequential_4/random_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2F
Dsequential_4/random_translation_2/translation_matrix/strided_slice_2?
:sequential_4/random_translation_2/translation_matrix/Neg_1NegMsequential_4/random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2<
:sequential_4/random_translation_2/translation_matrix/Neg_1?
Bsequential_4/random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_4/random_translation_2/translation_matrix/zeros_2/mul/y?
@sequential_4/random_translation_2/translation_matrix/zeros_2/mulMulKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2B
@sequential_4/random_translation_2/translation_matrix/zeros_2/mul?
Csequential_4/random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2E
Csequential_4/random_translation_2/translation_matrix/zeros_2/Less/y?
Asequential_4/random_translation_2/translation_matrix/zeros_2/LessLessDsequential_4/random_translation_2/translation_matrix/zeros_2/mul:z:0Lsequential_4/random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2C
Asequential_4/random_translation_2/translation_matrix/zeros_2/Less?
Esequential_4/random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Esequential_4/random_translation_2/translation_matrix/zeros_2/packed/1?
Csequential_4/random_translation_2/translation_matrix/zeros_2/packedPackKsequential_4/random_translation_2/translation_matrix/strided_slice:output:0Nsequential_4/random_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2E
Csequential_4/random_translation_2/translation_matrix/zeros_2/packed?
Bsequential_4/random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_4/random_translation_2/translation_matrix/zeros_2/Const?
<sequential_4/random_translation_2/translation_matrix/zeros_2FillLsequential_4/random_translation_2/translation_matrix/zeros_2/packed:output:0Ksequential_4/random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2>
<sequential_4/random_translation_2/translation_matrix/zeros_2?
@sequential_4/random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2B
@sequential_4/random_translation_2/translation_matrix/concat/axis?
;sequential_4/random_translation_2/translation_matrix/concatConcatV2Bsequential_4/random_translation_2/translation_matrix/ones:output:0Csequential_4/random_translation_2/translation_matrix/zeros:output:0<sequential_4/random_translation_2/translation_matrix/Neg:y:0Esequential_4/random_translation_2/translation_matrix/zeros_1:output:0Dsequential_4/random_translation_2/translation_matrix/ones_1:output:0>sequential_4/random_translation_2/translation_matrix/Neg_1:y:0Esequential_4/random_translation_2/translation_matrix/zeros_2:output:0Isequential_4/random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2=
;sequential_4/random_translation_2/translation_matrix/concat?
1sequential_4/random_translation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:23
1sequential_4/random_translation_2/transform/Shape?
?sequential_4/random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/random_translation_2/transform/strided_slice/stack?
Asequential_4/random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_4/random_translation_2/transform/strided_slice/stack_1?
Asequential_4/random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_4/random_translation_2/transform/strided_slice/stack_2?
9sequential_4/random_translation_2/transform/strided_sliceStridedSlice:sequential_4/random_translation_2/transform/Shape:output:0Hsequential_4/random_translation_2/transform/strided_slice/stack:output:0Jsequential_4/random_translation_2/transform/strided_slice/stack_1:output:0Jsequential_4/random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2;
9sequential_4/random_translation_2/transform/strided_slice?
6sequential_4/random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    28
6sequential_4/random_translation_2/transform/fill_value?
Fsequential_4/random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsDsequential_4/random_translation_2/translation_matrix/concat:output:0Bsequential_4/random_translation_2/transform/strided_slice:output:0?sequential_4/random_translation_2/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2H
Fsequential_4/random_translation_2/transform/ImageProjectiveTransformV3?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2D[sequential_4/random_translation_2/transform/ImageProjectiveTransformV3:transformed_images:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_8/BiasAdd?
activation_10/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_10/Relu?
max_pooling2d_6/MaxPoolMaxPool activation_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_6/MaxPool?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_9/BiasAdd?
activation_11/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_11/Relu?
max_pooling2d_7/MaxPoolMaxPool activation_11/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_7/MaxPool?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_10/BiasAdd?
activation_12/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_12/Relu?
max_pooling2d_8/MaxPoolMaxPool activation_12/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_8/MaxPool?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_11/BiasAdd?
activation_13/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_13/Relu?
1global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_2/Mean/reduction_indices?
global_average_pooling2d_2/MeanMean activation_13/Relu:activations:0:global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_2/Mean?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMul(global_average_pooling2d_2/Mean:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAdd?
activation_14/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_14/Softmax?
IdentityIdentityactivation_14/Softmax:softmax:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOpC^sequential_4/random_translation_2/stateful_uniform/StatefulUniformE^sequential_4/random_translation_2/stateful_uniform_1/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2?
Bsequential_4/random_translation_2/stateful_uniform/StatefulUniformBsequential_4/random_translation_2/stateful_uniform/StatefulUniform2?
Dsequential_4/random_translation_2/stateful_uniform_1/StatefulUniformDsequential_4/random_translation_2/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?U
?
__inference__traced_save_461159
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
#savev2_variable_read_readvariableop	$
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

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:??:?:	?
:
: : : : : :: : : : : : : @:@:@?:?:??:?:	?
:
: : : @:@:@?:?:??:?:	?
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
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:%	!

_output_shapes
:	?
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:,(
&
_output_shapes
: :  

_output_shapes
: :,!(
&
_output_shapes
: @: "

_output_shapes
:@:-#)
'
_output_shapes
:@?:!$

_output_shapes	
:?:.%*
(
_output_shapes
:??:!&

_output_shapes	
:?:%'!

_output_shapes
:	?
: (

_output_shapes
:
:)

_output_shapes
: 
?
W
;__inference_global_average_pooling2d_2_layer_call_fn_460076

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_4600702
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_2_layer_call_and_return_conditional_losses_460992

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_460105

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
e
I__inference_activation_12_layer_call_and_return_conditional_losses_460206

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_460013

inputsB
>random_translation_2_stateful_uniform_statefuluniform_resource
identity??5random_translation_2/stateful_uniform/StatefulUniform?7random_translation_2/stateful_uniform_1/StatefulUniformn
random_translation_2/ShapeShapeinputs*
T0*
_output_shapes
:2
random_translation_2/Shape?
(random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_2/strided_slice/stack?
*random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_1?
*random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_2?
"random_translation_2/strided_sliceStridedSlice#random_translation_2/Shape:output:01random_translation_2/strided_slice/stack:output:03random_translation_2/strided_slice/stack_1:output:03random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_2/strided_slice?
*random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_1/stack?
,random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_1?
,random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_2?
$random_translation_2/strided_slice_1StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_1/stack:output:05random_translation_2/strided_slice_1/stack_1:output:05random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_1?
random_translation_2/CastCast-random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast?
*random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_2/stack?
,random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_1?
,random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_2?
$random_translation_2/strided_slice_2StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_2/stack:output:05random_translation_2/strided_slice_2/stack_1:output:05random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_2?
random_translation_2/Cast_1Cast-random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast_1?
-random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_2/stateful_uniform/shape/1?
+random_translation_2/stateful_uniform/shapePack+random_translation_2/strided_slice:output:06random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_2/stateful_uniform/shape?
)random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2+
)random_translation_2/stateful_uniform/min?
)random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2+
)random_translation_2/stateful_uniform/max?
?random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_2/stateful_uniform/StatefulUniform/algorithm?
5random_translation_2/stateful_uniform/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceHrandom_translation_2/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_2/stateful_uniform/StatefulUniform?
)random_translation_2/stateful_uniform/subSub2random_translation_2/stateful_uniform/max:output:02random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_2/stateful_uniform/sub?
)random_translation_2/stateful_uniform/mulMul>random_translation_2/stateful_uniform/StatefulUniform:output:0-random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_2/stateful_uniform/mul?
%random_translation_2/stateful_uniformAdd-random_translation_2/stateful_uniform/mul:z:02random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_2/stateful_uniform?
random_translation_2/mulMul)random_translation_2/stateful_uniform:z:0random_translation_2/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_2/mul?
/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_2/stateful_uniform_1/shape/1?
-random_translation_2/stateful_uniform_1/shapePack+random_translation_2/strided_slice:output:08random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_2/stateful_uniform_1/shape?
+random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2-
+random_translation_2/stateful_uniform_1/min?
+random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2-
+random_translation_2/stateful_uniform_1/max?
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceJrandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_2/stateful_uniform_1/shape:output:06^random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_2/stateful_uniform_1/StatefulUniform?
+random_translation_2/stateful_uniform_1/subSub4random_translation_2/stateful_uniform_1/max:output:04random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_2/stateful_uniform_1/sub?
+random_translation_2/stateful_uniform_1/mulMul@random_translation_2/stateful_uniform_1/StatefulUniform:output:0/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_2/stateful_uniform_1/mul?
'random_translation_2/stateful_uniform_1Add/random_translation_2/stateful_uniform_1/mul:z:04random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_2/stateful_uniform_1?
random_translation_2/mul_1Mul+random_translation_2/stateful_uniform_1:z:0random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_2/mul_1?
 random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_2/concat/axis?
random_translation_2/concatConcatV2random_translation_2/mul_1:z:0random_translation_2/mul:z:0)random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_2/concat?
-random_translation_2/translation_matrix/ShapeShape$random_translation_2/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_2/translation_matrix/Shape?
;random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_2/translation_matrix/strided_slice/stack?
=random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_1?
=random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_2?
5random_translation_2/translation_matrix/strided_sliceStridedSlice6random_translation_2/translation_matrix/Shape:output:0Drandom_translation_2/translation_matrix/strided_slice/stack:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_2/translation_matrix/strided_slice?
2random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_2/translation_matrix/ones/mul/y?
0random_translation_2/translation_matrix/ones/mulMul>random_translation_2/translation_matrix/strided_slice:output:0;random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_2/translation_matrix/ones/mul?
3random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_2/translation_matrix/ones/Less/y?
1random_translation_2/translation_matrix/ones/LessLess4random_translation_2/translation_matrix/ones/mul:z:0<random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/ones/Less?
5random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/ones/packed/1?
3random_translation_2/translation_matrix/ones/packedPack>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_2/translation_matrix/ones/packed?
2random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_2/translation_matrix/ones/Const?
,random_translation_2/translation_matrix/onesFill<random_translation_2/translation_matrix/ones/packed:output:0;random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_2/translation_matrix/ones?
3random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/zeros/mul/y?
1random_translation_2/translation_matrix/zeros/mulMul>random_translation_2/translation_matrix/strided_slice:output:0<random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/zeros/mul?
4random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_2/translation_matrix/zeros/Less/y?
2random_translation_2/translation_matrix/zeros/LessLess5random_translation_2/translation_matrix/zeros/mul:z:0=random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/zeros/Less?
6random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_2/translation_matrix/zeros/packed/1?
4random_translation_2/translation_matrix/zeros/packedPack>random_translation_2/translation_matrix/strided_slice:output:0?random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_2/translation_matrix/zeros/packed?
3random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_2/translation_matrix/zeros/Const?
-random_translation_2/translation_matrix/zerosFill=random_translation_2/translation_matrix/zeros/packed:output:0<random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_2/translation_matrix/zeros?
=random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_2/translation_matrix/strided_slice_1/stack?
?random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_1/stack_1?
?random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_1/stack_2?
7random_translation_2/translation_matrix/strided_slice_1StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_1?
+random_translation_2/translation_matrix/NegNeg@random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_2/translation_matrix/Neg?
5random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_1/mul/y?
3random_translation_2/translation_matrix/zeros_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_1/mul?
6random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_2/translation_matrix/zeros_1/Less/y?
4random_translation_2/translation_matrix/zeros_1/LessLess7random_translation_2/translation_matrix/zeros_1/mul:z:0?random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_1/Less?
8random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_1/packed/1?
6random_translation_2/translation_matrix/zeros_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_1/packed?
5random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_1/Const?
/random_translation_2/translation_matrix/zeros_1Fill?random_translation_2/translation_matrix/zeros_1/packed:output:0>random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_2/translation_matrix/zeros_1?
4random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_2/translation_matrix/ones_1/mul/y?
2random_translation_2/translation_matrix/ones_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0=random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/ones_1/mul?
5random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_2/translation_matrix/ones_1/Less/y?
3random_translation_2/translation_matrix/ones_1/LessLess6random_translation_2/translation_matrix/ones_1/mul:z:0>random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/ones_1/Less?
7random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_2/translation_matrix/ones_1/packed/1?
5random_translation_2/translation_matrix/ones_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0@random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_2/translation_matrix/ones_1/packed?
4random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_2/translation_matrix/ones_1/Const?
.random_translation_2/translation_matrix/ones_1Fill>random_translation_2/translation_matrix/ones_1/packed:output:0=random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_2/translation_matrix/ones_1?
=random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_2/translation_matrix/strided_slice_2/stack?
?random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_2/stack_1?
?random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_2/stack_2?
7random_translation_2/translation_matrix/strided_slice_2StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_2?
-random_translation_2/translation_matrix/Neg_1Neg@random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_2/translation_matrix/Neg_1?
5random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_2/mul/y?
3random_translation_2/translation_matrix/zeros_2/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_2/mul?
6random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_2/translation_matrix/zeros_2/Less/y?
4random_translation_2/translation_matrix/zeros_2/LessLess7random_translation_2/translation_matrix/zeros_2/mul:z:0?random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_2/Less?
8random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_2/packed/1?
6random_translation_2/translation_matrix/zeros_2/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_2/packed?
5random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_2/Const?
/random_translation_2/translation_matrix/zeros_2Fill?random_translation_2/translation_matrix/zeros_2/packed:output:0>random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_2/translation_matrix/zeros_2?
3random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/concat/axis?
.random_translation_2/translation_matrix/concatConcatV25random_translation_2/translation_matrix/ones:output:06random_translation_2/translation_matrix/zeros:output:0/random_translation_2/translation_matrix/Neg:y:08random_translation_2/translation_matrix/zeros_1:output:07random_translation_2/translation_matrix/ones_1:output:01random_translation_2/translation_matrix/Neg_1:y:08random_translation_2/translation_matrix/zeros_2:output:0<random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_2/translation_matrix/concat?
$random_translation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:2&
$random_translation_2/transform/Shape?
2random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_2/transform/strided_slice/stack?
4random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_1?
4random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_2?
,random_translation_2/transform/strided_sliceStridedSlice-random_translation_2/transform/Shape:output:0;random_translation_2/transform/strided_slice/stack:output:0=random_translation_2/transform/strided_slice/stack_1:output:0=random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_2/transform/strided_slice?
)random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_2/transform/fill_value?
9random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs7random_translation_2/translation_matrix/concat:output:05random_translation_2/transform/strided_slice:output:02random_translation_2/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_2/transform/ImageProjectiveTransformV3?
IdentityIdentityNrandom_translation_2/transform/ImageProjectiveTransformV3:transformed_images:06^random_translation_2/stateful_uniform/StatefulUniform8^random_translation_2/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2n
5random_translation_2/stateful_uniform/StatefulUniform5random_translation_2/stateful_uniform/StatefulUniform2r
7random_translation_2/stateful_uniform_1/StatefulUniform7random_translation_2/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
x
H__inference_sequential_4_layer_call_and_return_conditional_losses_459904
random_translation_2_input
identityv
IdentityIdentityrandom_translation_2_input*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :k g
/
_output_shapes
:?????????  
4
_user_specified_namerandom_translation_2_input
?
e
I__inference_activation_10_layer_call_and_return_conditional_losses_460126

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?=
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460295
sequential_4_input
sequential_4_460092
conv2d_8_460116
conv2d_8_460118
conv2d_9_460156
conv2d_9_460158
conv2d_10_460196
conv2d_10_460198
conv2d_11_460236
conv2d_11_460238
dense_2_460276
dense_2_460278
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputsequential_4_460092*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600132&
$sequential_4/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0conv2d_8_460116conv2d_8_460118*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_4601052"
 conv2d_8/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_4601262
activation_10/PartitionedCall?
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4600332!
max_pooling2d_6/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_460156conv2d_9_460158*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4601452"
 conv2d_9/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_4601662
activation_11/PartitionedCall?
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4600452!
max_pooling2d_7/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_460196conv2d_10_460198*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4601852#
!conv2d_10/StatefulPartitionedCall?
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_4602062
activation_12/PartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4600572!
max_pooling2d_8/PartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_460236conv2d_11_460238*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4602252#
!conv2d_11/StatefulPartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_4602462
activation_13/PartitionedCall?
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_4600702,
*global_average_pooling2d_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_460276dense_2_460278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_4602652!
dense_2/StatefulPartitionedCall?
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_4602862
activation_14/PartitionedCall?
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_4_input
?
L
0__inference_max_pooling2d_8_layer_call_fn_460063

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4600572
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?<
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460334
sequential_4_input
conv2d_8_460299
conv2d_8_460301
conv2d_9_460306
conv2d_9_460308
conv2d_10_460313
conv2d_10_460315
conv2d_11_460320
conv2d_11_460322
dense_2_460327
dense_2_460329
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
sequential_4/PartitionedCallPartitionedCallsequential_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600242
sequential_4/PartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0conv2d_8_460299conv2d_8_460301*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_4601052"
 conv2d_8/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_4601262
activation_10/PartitionedCall?
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4600332!
max_pooling2d_6/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_460306conv2d_9_460308*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4601452"
 conv2d_9/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_4601662
activation_11/PartitionedCall?
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4600452!
max_pooling2d_7/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_460313conv2d_10_460315*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4601852#
!conv2d_10/StatefulPartitionedCall?
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_4602062
activation_12/PartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4600572!
max_pooling2d_8/PartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_460320conv2d_11_460322*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4602252#
!conv2d_11/StatefulPartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_4602462
activation_13/PartitionedCall?
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_4600702,
*global_average_pooling2d_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_460327dense_2_460329*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_4602652!
dense_2/StatefulPartitionedCall?
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_4602862
activation_14/PartitionedCall?
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_4_input
?
e
I__inference_activation_14_layer_call_and_return_conditional_losses_460286

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????
:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
I
-__inference_sequential_4_layer_call_fn_460866

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600242
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
H__inference_sequential_4_layer_call_and_return_conditional_losses_460024

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

*__inference_conv2d_11_layer_call_fn_460972

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4602252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
}
(__inference_dense_2_layer_call_fn_461001

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_4602652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_460045

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_459900
random_translation_2_inputB
>random_translation_2_stateful_uniform_statefuluniform_resource
identity??5random_translation_2/stateful_uniform/StatefulUniform?7random_translation_2/stateful_uniform_1/StatefulUniform?
random_translation_2/ShapeShaperandom_translation_2_input*
T0*
_output_shapes
:2
random_translation_2/Shape?
(random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_2/strided_slice/stack?
*random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_1?
*random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_2?
"random_translation_2/strided_sliceStridedSlice#random_translation_2/Shape:output:01random_translation_2/strided_slice/stack:output:03random_translation_2/strided_slice/stack_1:output:03random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_2/strided_slice?
*random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_1/stack?
,random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_1?
,random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_2?
$random_translation_2/strided_slice_1StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_1/stack:output:05random_translation_2/strided_slice_1/stack_1:output:05random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_1?
random_translation_2/CastCast-random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast?
*random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_2/stack?
,random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_1?
,random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_2?
$random_translation_2/strided_slice_2StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_2/stack:output:05random_translation_2/strided_slice_2/stack_1:output:05random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_2?
random_translation_2/Cast_1Cast-random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast_1?
-random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_2/stateful_uniform/shape/1?
+random_translation_2/stateful_uniform/shapePack+random_translation_2/strided_slice:output:06random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_2/stateful_uniform/shape?
)random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2+
)random_translation_2/stateful_uniform/min?
)random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2+
)random_translation_2/stateful_uniform/max?
?random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_2/stateful_uniform/StatefulUniform/algorithm?
5random_translation_2/stateful_uniform/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceHrandom_translation_2/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_2/stateful_uniform/StatefulUniform?
)random_translation_2/stateful_uniform/subSub2random_translation_2/stateful_uniform/max:output:02random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_2/stateful_uniform/sub?
)random_translation_2/stateful_uniform/mulMul>random_translation_2/stateful_uniform/StatefulUniform:output:0-random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_2/stateful_uniform/mul?
%random_translation_2/stateful_uniformAdd-random_translation_2/stateful_uniform/mul:z:02random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_2/stateful_uniform?
random_translation_2/mulMul)random_translation_2/stateful_uniform:z:0random_translation_2/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_2/mul?
/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_2/stateful_uniform_1/shape/1?
-random_translation_2/stateful_uniform_1/shapePack+random_translation_2/strided_slice:output:08random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_2/stateful_uniform_1/shape?
+random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2-
+random_translation_2/stateful_uniform_1/min?
+random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2-
+random_translation_2/stateful_uniform_1/max?
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceJrandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_2/stateful_uniform_1/shape:output:06^random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_2/stateful_uniform_1/StatefulUniform?
+random_translation_2/stateful_uniform_1/subSub4random_translation_2/stateful_uniform_1/max:output:04random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_2/stateful_uniform_1/sub?
+random_translation_2/stateful_uniform_1/mulMul@random_translation_2/stateful_uniform_1/StatefulUniform:output:0/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_2/stateful_uniform_1/mul?
'random_translation_2/stateful_uniform_1Add/random_translation_2/stateful_uniform_1/mul:z:04random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_2/stateful_uniform_1?
random_translation_2/mul_1Mul+random_translation_2/stateful_uniform_1:z:0random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_2/mul_1?
 random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_2/concat/axis?
random_translation_2/concatConcatV2random_translation_2/mul_1:z:0random_translation_2/mul:z:0)random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_2/concat?
-random_translation_2/translation_matrix/ShapeShape$random_translation_2/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_2/translation_matrix/Shape?
;random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_2/translation_matrix/strided_slice/stack?
=random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_1?
=random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_2?
5random_translation_2/translation_matrix/strided_sliceStridedSlice6random_translation_2/translation_matrix/Shape:output:0Drandom_translation_2/translation_matrix/strided_slice/stack:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_2/translation_matrix/strided_slice?
2random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_2/translation_matrix/ones/mul/y?
0random_translation_2/translation_matrix/ones/mulMul>random_translation_2/translation_matrix/strided_slice:output:0;random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_2/translation_matrix/ones/mul?
3random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_2/translation_matrix/ones/Less/y?
1random_translation_2/translation_matrix/ones/LessLess4random_translation_2/translation_matrix/ones/mul:z:0<random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/ones/Less?
5random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/ones/packed/1?
3random_translation_2/translation_matrix/ones/packedPack>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_2/translation_matrix/ones/packed?
2random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_2/translation_matrix/ones/Const?
,random_translation_2/translation_matrix/onesFill<random_translation_2/translation_matrix/ones/packed:output:0;random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_2/translation_matrix/ones?
3random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/zeros/mul/y?
1random_translation_2/translation_matrix/zeros/mulMul>random_translation_2/translation_matrix/strided_slice:output:0<random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/zeros/mul?
4random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_2/translation_matrix/zeros/Less/y?
2random_translation_2/translation_matrix/zeros/LessLess5random_translation_2/translation_matrix/zeros/mul:z:0=random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/zeros/Less?
6random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_2/translation_matrix/zeros/packed/1?
4random_translation_2/translation_matrix/zeros/packedPack>random_translation_2/translation_matrix/strided_slice:output:0?random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_2/translation_matrix/zeros/packed?
3random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_2/translation_matrix/zeros/Const?
-random_translation_2/translation_matrix/zerosFill=random_translation_2/translation_matrix/zeros/packed:output:0<random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_2/translation_matrix/zeros?
=random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_2/translation_matrix/strided_slice_1/stack?
?random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_1/stack_1?
?random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_1/stack_2?
7random_translation_2/translation_matrix/strided_slice_1StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_1?
+random_translation_2/translation_matrix/NegNeg@random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_2/translation_matrix/Neg?
5random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_1/mul/y?
3random_translation_2/translation_matrix/zeros_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_1/mul?
6random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_2/translation_matrix/zeros_1/Less/y?
4random_translation_2/translation_matrix/zeros_1/LessLess7random_translation_2/translation_matrix/zeros_1/mul:z:0?random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_1/Less?
8random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_1/packed/1?
6random_translation_2/translation_matrix/zeros_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_1/packed?
5random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_1/Const?
/random_translation_2/translation_matrix/zeros_1Fill?random_translation_2/translation_matrix/zeros_1/packed:output:0>random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_2/translation_matrix/zeros_1?
4random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_2/translation_matrix/ones_1/mul/y?
2random_translation_2/translation_matrix/ones_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0=random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/ones_1/mul?
5random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_2/translation_matrix/ones_1/Less/y?
3random_translation_2/translation_matrix/ones_1/LessLess6random_translation_2/translation_matrix/ones_1/mul:z:0>random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/ones_1/Less?
7random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_2/translation_matrix/ones_1/packed/1?
5random_translation_2/translation_matrix/ones_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0@random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_2/translation_matrix/ones_1/packed?
4random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_2/translation_matrix/ones_1/Const?
.random_translation_2/translation_matrix/ones_1Fill>random_translation_2/translation_matrix/ones_1/packed:output:0=random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_2/translation_matrix/ones_1?
=random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_2/translation_matrix/strided_slice_2/stack?
?random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_2/stack_1?
?random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_2/stack_2?
7random_translation_2/translation_matrix/strided_slice_2StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_2?
-random_translation_2/translation_matrix/Neg_1Neg@random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_2/translation_matrix/Neg_1?
5random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_2/mul/y?
3random_translation_2/translation_matrix/zeros_2/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_2/mul?
6random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_2/translation_matrix/zeros_2/Less/y?
4random_translation_2/translation_matrix/zeros_2/LessLess7random_translation_2/translation_matrix/zeros_2/mul:z:0?random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_2/Less?
8random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_2/packed/1?
6random_translation_2/translation_matrix/zeros_2/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_2/packed?
5random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_2/Const?
/random_translation_2/translation_matrix/zeros_2Fill?random_translation_2/translation_matrix/zeros_2/packed:output:0>random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_2/translation_matrix/zeros_2?
3random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/concat/axis?
.random_translation_2/translation_matrix/concatConcatV25random_translation_2/translation_matrix/ones:output:06random_translation_2/translation_matrix/zeros:output:0/random_translation_2/translation_matrix/Neg:y:08random_translation_2/translation_matrix/zeros_1:output:07random_translation_2/translation_matrix/ones_1:output:01random_translation_2/translation_matrix/Neg_1:y:08random_translation_2/translation_matrix/zeros_2:output:0<random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_2/translation_matrix/concat?
$random_translation_2/transform/ShapeShaperandom_translation_2_input*
T0*
_output_shapes
:2&
$random_translation_2/transform/Shape?
2random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_2/transform/strided_slice/stack?
4random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_1?
4random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_2?
,random_translation_2/transform/strided_sliceStridedSlice-random_translation_2/transform/Shape:output:0;random_translation_2/transform/strided_slice/stack:output:0=random_translation_2/transform/strided_slice/stack_1:output:0=random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_2/transform/strided_slice?
)random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_2/transform/fill_value?
9random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_translation_2_input7random_translation_2/translation_matrix/concat:output:05random_translation_2/transform/strided_slice:output:02random_translation_2/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_2/transform/ImageProjectiveTransformV3?
IdentityIdentityNrandom_translation_2/transform/ImageProjectiveTransformV3:transformed_images:06^random_translation_2/stateful_uniform/StatefulUniform8^random_translation_2/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2n
5random_translation_2/stateful_uniform/StatefulUniform5random_translation_2/stateful_uniform/StatefulUniform2r
7random_translation_2/stateful_uniform_1/StatefulUniform7random_translation_2/stateful_uniform_1/StatefulUniform:k g
/
_output_shapes
:?????????  
4
_user_specified_namerandom_translation_2_input
?
e
I__inference_activation_11_layer_call_and_return_conditional_losses_460166

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_11_layer_call_and_return_conditional_losses_460225

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_2_layer_call_and_return_conditional_losses_460265

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_460905

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_11_layer_call_and_return_conditional_losses_460919

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_11_layer_call_and_return_conditional_losses_460963

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_461289
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
assignvariableop_15_variable
assignvariableop_16_total
assignvariableop_17_count
assignvariableop_18_total_1
assignvariableop_19_count_1.
*assignvariableop_20_adam_conv2d_8_kernel_m,
(assignvariableop_21_adam_conv2d_8_bias_m.
*assignvariableop_22_adam_conv2d_9_kernel_m,
(assignvariableop_23_adam_conv2d_9_bias_m/
+assignvariableop_24_adam_conv2d_10_kernel_m-
)assignvariableop_25_adam_conv2d_10_bias_m/
+assignvariableop_26_adam_conv2d_11_kernel_m-
)assignvariableop_27_adam_conv2d_11_bias_m-
)assignvariableop_28_adam_dense_2_kernel_m+
'assignvariableop_29_adam_dense_2_bias_m.
*assignvariableop_30_adam_conv2d_8_kernel_v,
(assignvariableop_31_adam_conv2d_8_bias_v.
*assignvariableop_32_adam_conv2d_9_kernel_v,
(assignvariableop_33_adam_conv2d_9_bias_v/
+assignvariableop_34_adam_conv2d_10_kernel_v-
)assignvariableop_35_adam_conv2d_10_bias_v/
+assignvariableop_36_adam_conv2d_11_kernel_v-
)assignvariableop_37_adam_conv2d_11_bias_v-
)assignvariableop_38_adam_dense_2_kernel_v+
'assignvariableop_39_adam_dense_2_bias_v
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_11_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_11_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_8_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv2d_8_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_9_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv2d_9_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_10_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_10_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_11_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_11_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_2_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_2_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_8_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv2d_8_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_9_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_9_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_10_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_10_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_11_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_11_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_2_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_2_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_399
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_40?
Identity_41IdentityIdentity_40:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_41"#
identity_41Identity_41:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_4AssignVariableOp_42(
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
?
J
.__inference_activation_10_layer_call_fn_460895

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_4601262
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?	
?
-__inference_sequential_5_layer_call_fn_460467
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4604442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_4_input
?
L
0__inference_max_pooling2d_7_layer_call_fn_460051

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4600452
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_460876

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?J
?
!__inference__wrapped_model_459793
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
identity??-sequential_5/conv2d_10/BiasAdd/ReadVariableOp?,sequential_5/conv2d_10/Conv2D/ReadVariableOp?-sequential_5/conv2d_11/BiasAdd/ReadVariableOp?,sequential_5/conv2d_11/Conv2D/ReadVariableOp?,sequential_5/conv2d_8/BiasAdd/ReadVariableOp?+sequential_5/conv2d_8/Conv2D/ReadVariableOp?,sequential_5/conv2d_9/BiasAdd/ReadVariableOp?+sequential_5/conv2d_9/Conv2D/ReadVariableOp?+sequential_5/dense_2/BiasAdd/ReadVariableOp?*sequential_5/dense_2/MatMul/ReadVariableOp?
+sequential_5/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_5/conv2d_8/Conv2D/ReadVariableOp?
sequential_5/conv2d_8/Conv2DConv2Dsequential_4_input3sequential_5/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
sequential_5/conv2d_8/Conv2D?
,sequential_5/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_5/conv2d_8/BiasAdd/ReadVariableOp?
sequential_5/conv2d_8/BiasAddBiasAdd%sequential_5/conv2d_8/Conv2D:output:04sequential_5/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
sequential_5/conv2d_8/BiasAdd?
sequential_5/activation_10/ReluRelu&sequential_5/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2!
sequential_5/activation_10/Relu?
$sequential_5/max_pooling2d_6/MaxPoolMaxPool-sequential_5/activation_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_6/MaxPool?
+sequential_5/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_5/conv2d_9/Conv2D/ReadVariableOp?
sequential_5/conv2d_9/Conv2DConv2D-sequential_5/max_pooling2d_6/MaxPool:output:03sequential_5/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_5/conv2d_9/Conv2D?
,sequential_5/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_5/conv2d_9/BiasAdd/ReadVariableOp?
sequential_5/conv2d_9/BiasAddBiasAdd%sequential_5/conv2d_9/Conv2D:output:04sequential_5/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
sequential_5/conv2d_9/BiasAdd?
sequential_5/activation_11/ReluRelu&sequential_5/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
sequential_5/activation_11/Relu?
$sequential_5/max_pooling2d_7/MaxPoolMaxPool-sequential_5/activation_11/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_7/MaxPool?
,sequential_5/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02.
,sequential_5/conv2d_10/Conv2D/ReadVariableOp?
sequential_5/conv2d_10/Conv2DConv2D-sequential_5/max_pooling2d_7/MaxPool:output:04sequential_5/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_10/Conv2D?
-sequential_5/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_5/conv2d_10/BiasAdd/ReadVariableOp?
sequential_5/conv2d_10/BiasAddBiasAdd&sequential_5/conv2d_10/Conv2D:output:05sequential_5/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_5/conv2d_10/BiasAdd?
sequential_5/activation_12/ReluRelu'sequential_5/conv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
sequential_5/activation_12/Relu?
$sequential_5/max_pooling2d_8/MaxPoolMaxPool-sequential_5/activation_12/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2&
$sequential_5/max_pooling2d_8/MaxPool?
,sequential_5/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_5/conv2d_11/Conv2D/ReadVariableOp?
sequential_5/conv2d_11/Conv2DConv2D-sequential_5/max_pooling2d_8/MaxPool:output:04sequential_5/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_11/Conv2D?
-sequential_5/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_5/conv2d_11/BiasAdd/ReadVariableOp?
sequential_5/conv2d_11/BiasAddBiasAdd&sequential_5/conv2d_11/Conv2D:output:05sequential_5/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_5/conv2d_11/BiasAdd?
sequential_5/activation_13/ReluRelu'sequential_5/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
sequential_5/activation_13/Relu?
>sequential_5/global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_5/global_average_pooling2d_2/Mean/reduction_indices?
,sequential_5/global_average_pooling2d_2/MeanMean-sequential_5/activation_13/Relu:activations:0Gsequential_5/global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_5/global_average_pooling2d_2/Mean?
*sequential_5/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02,
*sequential_5/dense_2/MatMul/ReadVariableOp?
sequential_5/dense_2/MatMulMatMul5sequential_5/global_average_pooling2d_2/Mean:output:02sequential_5/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_5/dense_2/MatMul?
+sequential_5/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_5/dense_2/BiasAdd/ReadVariableOp?
sequential_5/dense_2/BiasAddBiasAdd%sequential_5/dense_2/MatMul:product:03sequential_5/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_5/dense_2/BiasAdd?
"sequential_5/activation_14/SoftmaxSoftmax%sequential_5/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2$
"sequential_5/activation_14/Softmax?
IdentityIdentity,sequential_5/activation_14/Softmax:softmax:0.^sequential_5/conv2d_10/BiasAdd/ReadVariableOp-^sequential_5/conv2d_10/Conv2D/ReadVariableOp.^sequential_5/conv2d_11/BiasAdd/ReadVariableOp-^sequential_5/conv2d_11/Conv2D/ReadVariableOp-^sequential_5/conv2d_8/BiasAdd/ReadVariableOp,^sequential_5/conv2d_8/Conv2D/ReadVariableOp-^sequential_5/conv2d_9/BiasAdd/ReadVariableOp,^sequential_5/conv2d_9/Conv2D/ReadVariableOp,^sequential_5/dense_2/BiasAdd/ReadVariableOp+^sequential_5/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2^
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
:?????????  
,
_user_specified_namesequential_4_input
?	
?
E__inference_conv2d_10_layer_call_and_return_conditional_losses_460185

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_12_layer_call_and_return_conditional_losses_460948

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
J
.__inference_activation_13_layer_call_fn_460982

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_4602462
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_activation_13_layer_call_and_return_conditional_losses_460977

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_460850

inputsB
>random_translation_2_stateful_uniform_statefuluniform_resource
identity??5random_translation_2/stateful_uniform/StatefulUniform?7random_translation_2/stateful_uniform_1/StatefulUniformn
random_translation_2/ShapeShapeinputs*
T0*
_output_shapes
:2
random_translation_2/Shape?
(random_translation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_2/strided_slice/stack?
*random_translation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_1?
*random_translation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice/stack_2?
"random_translation_2/strided_sliceStridedSlice#random_translation_2/Shape:output:01random_translation_2/strided_slice/stack:output:03random_translation_2/strided_slice/stack_1:output:03random_translation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_2/strided_slice?
*random_translation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_1/stack?
,random_translation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_1?
,random_translation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_1/stack_2?
$random_translation_2/strided_slice_1StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_1/stack:output:05random_translation_2/strided_slice_1/stack_1:output:05random_translation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_1?
random_translation_2/CastCast-random_translation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast?
*random_translation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_2/strided_slice_2/stack?
,random_translation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_1?
,random_translation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_2/strided_slice_2/stack_2?
$random_translation_2/strided_slice_2StridedSlice#random_translation_2/Shape:output:03random_translation_2/strided_slice_2/stack:output:05random_translation_2/strided_slice_2/stack_1:output:05random_translation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_2/strided_slice_2?
random_translation_2/Cast_1Cast-random_translation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_2/Cast_1?
-random_translation_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_2/stateful_uniform/shape/1?
+random_translation_2/stateful_uniform/shapePack+random_translation_2/strided_slice:output:06random_translation_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_2/stateful_uniform/shape?
)random_translation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2+
)random_translation_2/stateful_uniform/min?
)random_translation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2+
)random_translation_2/stateful_uniform/max?
?random_translation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_2/stateful_uniform/StatefulUniform/algorithm?
5random_translation_2/stateful_uniform/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceHrandom_translation_2/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_2/stateful_uniform/StatefulUniform?
)random_translation_2/stateful_uniform/subSub2random_translation_2/stateful_uniform/max:output:02random_translation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_2/stateful_uniform/sub?
)random_translation_2/stateful_uniform/mulMul>random_translation_2/stateful_uniform/StatefulUniform:output:0-random_translation_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_2/stateful_uniform/mul?
%random_translation_2/stateful_uniformAdd-random_translation_2/stateful_uniform/mul:z:02random_translation_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_2/stateful_uniform?
random_translation_2/mulMul)random_translation_2/stateful_uniform:z:0random_translation_2/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_2/mul?
/random_translation_2/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_2/stateful_uniform_1/shape/1?
-random_translation_2/stateful_uniform_1/shapePack+random_translation_2/strided_slice:output:08random_translation_2/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_2/stateful_uniform_1/shape?
+random_translation_2/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2-
+random_translation_2/stateful_uniform_1/min?
+random_translation_2/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2-
+random_translation_2/stateful_uniform_1/max?
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_2/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_2_stateful_uniform_statefuluniform_resourceJrandom_translation_2/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_2/stateful_uniform_1/shape:output:06^random_translation_2/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_2/stateful_uniform_1/StatefulUniform?
+random_translation_2/stateful_uniform_1/subSub4random_translation_2/stateful_uniform_1/max:output:04random_translation_2/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_2/stateful_uniform_1/sub?
+random_translation_2/stateful_uniform_1/mulMul@random_translation_2/stateful_uniform_1/StatefulUniform:output:0/random_translation_2/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_2/stateful_uniform_1/mul?
'random_translation_2/stateful_uniform_1Add/random_translation_2/stateful_uniform_1/mul:z:04random_translation_2/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_2/stateful_uniform_1?
random_translation_2/mul_1Mul+random_translation_2/stateful_uniform_1:z:0random_translation_2/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_2/mul_1?
 random_translation_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_2/concat/axis?
random_translation_2/concatConcatV2random_translation_2/mul_1:z:0random_translation_2/mul:z:0)random_translation_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_2/concat?
-random_translation_2/translation_matrix/ShapeShape$random_translation_2/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_2/translation_matrix/Shape?
;random_translation_2/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_2/translation_matrix/strided_slice/stack?
=random_translation_2/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_1?
=random_translation_2/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_2/translation_matrix/strided_slice/stack_2?
5random_translation_2/translation_matrix/strided_sliceStridedSlice6random_translation_2/translation_matrix/Shape:output:0Drandom_translation_2/translation_matrix/strided_slice/stack:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_2/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_2/translation_matrix/strided_slice?
2random_translation_2/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_2/translation_matrix/ones/mul/y?
0random_translation_2/translation_matrix/ones/mulMul>random_translation_2/translation_matrix/strided_slice:output:0;random_translation_2/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_2/translation_matrix/ones/mul?
3random_translation_2/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_2/translation_matrix/ones/Less/y?
1random_translation_2/translation_matrix/ones/LessLess4random_translation_2/translation_matrix/ones/mul:z:0<random_translation_2/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/ones/Less?
5random_translation_2/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/ones/packed/1?
3random_translation_2/translation_matrix/ones/packedPack>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_2/translation_matrix/ones/packed?
2random_translation_2/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_2/translation_matrix/ones/Const?
,random_translation_2/translation_matrix/onesFill<random_translation_2/translation_matrix/ones/packed:output:0;random_translation_2/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_2/translation_matrix/ones?
3random_translation_2/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/zeros/mul/y?
1random_translation_2/translation_matrix/zeros/mulMul>random_translation_2/translation_matrix/strided_slice:output:0<random_translation_2/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_2/translation_matrix/zeros/mul?
4random_translation_2/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_2/translation_matrix/zeros/Less/y?
2random_translation_2/translation_matrix/zeros/LessLess5random_translation_2/translation_matrix/zeros/mul:z:0=random_translation_2/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/zeros/Less?
6random_translation_2/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_2/translation_matrix/zeros/packed/1?
4random_translation_2/translation_matrix/zeros/packedPack>random_translation_2/translation_matrix/strided_slice:output:0?random_translation_2/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_2/translation_matrix/zeros/packed?
3random_translation_2/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_2/translation_matrix/zeros/Const?
-random_translation_2/translation_matrix/zerosFill=random_translation_2/translation_matrix/zeros/packed:output:0<random_translation_2/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_2/translation_matrix/zeros?
=random_translation_2/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_2/translation_matrix/strided_slice_1/stack?
?random_translation_2/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_1/stack_1?
?random_translation_2/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_1/stack_2?
7random_translation_2/translation_matrix/strided_slice_1StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_1?
+random_translation_2/translation_matrix/NegNeg@random_translation_2/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_2/translation_matrix/Neg?
5random_translation_2/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_1/mul/y?
3random_translation_2/translation_matrix/zeros_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_1/mul?
6random_translation_2/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_2/translation_matrix/zeros_1/Less/y?
4random_translation_2/translation_matrix/zeros_1/LessLess7random_translation_2/translation_matrix/zeros_1/mul:z:0?random_translation_2/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_1/Less?
8random_translation_2/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_1/packed/1?
6random_translation_2/translation_matrix/zeros_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_1/packed?
5random_translation_2/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_1/Const?
/random_translation_2/translation_matrix/zeros_1Fill?random_translation_2/translation_matrix/zeros_1/packed:output:0>random_translation_2/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_2/translation_matrix/zeros_1?
4random_translation_2/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_2/translation_matrix/ones_1/mul/y?
2random_translation_2/translation_matrix/ones_1/mulMul>random_translation_2/translation_matrix/strided_slice:output:0=random_translation_2/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_2/translation_matrix/ones_1/mul?
5random_translation_2/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_2/translation_matrix/ones_1/Less/y?
3random_translation_2/translation_matrix/ones_1/LessLess6random_translation_2/translation_matrix/ones_1/mul:z:0>random_translation_2/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/ones_1/Less?
7random_translation_2/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_2/translation_matrix/ones_1/packed/1?
5random_translation_2/translation_matrix/ones_1/packedPack>random_translation_2/translation_matrix/strided_slice:output:0@random_translation_2/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_2/translation_matrix/ones_1/packed?
4random_translation_2/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_2/translation_matrix/ones_1/Const?
.random_translation_2/translation_matrix/ones_1Fill>random_translation_2/translation_matrix/ones_1/packed:output:0=random_translation_2/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_2/translation_matrix/ones_1?
=random_translation_2/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_2/translation_matrix/strided_slice_2/stack?
?random_translation_2/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_2/translation_matrix/strided_slice_2/stack_1?
?random_translation_2/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_2/translation_matrix/strided_slice_2/stack_2?
7random_translation_2/translation_matrix/strided_slice_2StridedSlice$random_translation_2/concat:output:0Frandom_translation_2/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_2/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_2/translation_matrix/strided_slice_2?
-random_translation_2/translation_matrix/Neg_1Neg@random_translation_2/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_2/translation_matrix/Neg_1?
5random_translation_2/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_2/translation_matrix/zeros_2/mul/y?
3random_translation_2/translation_matrix/zeros_2/mulMul>random_translation_2/translation_matrix/strided_slice:output:0>random_translation_2/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_2/translation_matrix/zeros_2/mul?
6random_translation_2/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_2/translation_matrix/zeros_2/Less/y?
4random_translation_2/translation_matrix/zeros_2/LessLess7random_translation_2/translation_matrix/zeros_2/mul:z:0?random_translation_2/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_2/translation_matrix/zeros_2/Less?
8random_translation_2/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_2/translation_matrix/zeros_2/packed/1?
6random_translation_2/translation_matrix/zeros_2/packedPack>random_translation_2/translation_matrix/strided_slice:output:0Arandom_translation_2/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_2/translation_matrix/zeros_2/packed?
5random_translation_2/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_2/translation_matrix/zeros_2/Const?
/random_translation_2/translation_matrix/zeros_2Fill?random_translation_2/translation_matrix/zeros_2/packed:output:0>random_translation_2/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_2/translation_matrix/zeros_2?
3random_translation_2/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_2/translation_matrix/concat/axis?
.random_translation_2/translation_matrix/concatConcatV25random_translation_2/translation_matrix/ones:output:06random_translation_2/translation_matrix/zeros:output:0/random_translation_2/translation_matrix/Neg:y:08random_translation_2/translation_matrix/zeros_1:output:07random_translation_2/translation_matrix/ones_1:output:01random_translation_2/translation_matrix/Neg_1:y:08random_translation_2/translation_matrix/zeros_2:output:0<random_translation_2/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_2/translation_matrix/concat?
$random_translation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:2&
$random_translation_2/transform/Shape?
2random_translation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_2/transform/strided_slice/stack?
4random_translation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_1?
4random_translation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_2/transform/strided_slice/stack_2?
,random_translation_2/transform/strided_sliceStridedSlice-random_translation_2/transform/Shape:output:0;random_translation_2/transform/strided_slice/stack:output:0=random_translation_2/transform/strided_slice/stack_1:output:0=random_translation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_2/transform/strided_slice?
)random_translation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_2/transform/fill_value?
9random_translation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs7random_translation_2/translation_matrix/concat:output:05random_translation_2/transform/strided_slice:output:02random_translation_2/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_2/transform/ImageProjectiveTransformV3?
IdentityIdentityNrandom_translation_2/transform/ImageProjectiveTransformV3:transformed_images:06^random_translation_2/stateful_uniform/StatefulUniform8^random_translation_2/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2n
5random_translation_2/stateful_uniform/StatefulUniform5random_translation_2/stateful_uniform/StatefulUniform2r
7random_translation_2/stateful_uniform_1/StatefulUniform7random_translation_2/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_460502
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_4597932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_4_input
?
?
-__inference_sequential_5_layer_call_fn_460744

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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4604442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
-__inference_sequential_5_layer_call_fn_460403
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
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4603782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_4_input
?
]
-__inference_sequential_4_layer_call_fn_460027
random_translation_2_input
identity?
PartitionedCallPartitionedCallrandom_translation_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600242
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :k g
/
_output_shapes
:?????????  
4
_user_specified_namerandom_translation_2_input
?
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_460033

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?;
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460444

inputs
conv2d_8_460409
conv2d_8_460411
conv2d_9_460416
conv2d_9_460418
conv2d_10_460423
conv2d_10_460425
conv2d_11_460430
conv2d_11_460432
dense_2_460437
dense_2_460439
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
sequential_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600242
sequential_4/PartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0conv2d_8_460409conv2d_8_460411*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_4601052"
 conv2d_8/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_4601262
activation_10/PartitionedCall?
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4600332!
max_pooling2d_6/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_460416conv2d_9_460418*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4601452"
 conv2d_9/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_4601662
activation_11/PartitionedCall?
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4600452!
max_pooling2d_7/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_460423conv2d_10_460425*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4601852#
!conv2d_10/StatefulPartitionedCall?
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_4602062
activation_12/PartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4600572!
max_pooling2d_8/PartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_460430conv2d_11_460432*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4602252#
!conv2d_11/StatefulPartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_4602462
activation_13/PartitionedCall?
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_4600702,
*global_average_pooling2d_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_460437dense_2_460439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_4602652!
dense_2/StatefulPartitionedCall?
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_4602862
activation_14/PartitionedCall?
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_460145

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
s
-__inference_sequential_4_layer_call_fn_460861

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
e
I__inference_activation_10_layer_call_and_return_conditional_losses_460890

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_10_layer_call_and_return_conditional_losses_460934

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
H__inference_sequential_4_layer_call_and_return_conditional_losses_460854

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_460070

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
J
.__inference_activation_11_layer_call_fn_460924

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_4601662
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?=
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460378

inputs
sequential_4_460340
conv2d_8_460343
conv2d_8_460345
conv2d_9_460350
conv2d_9_460352
conv2d_10_460357
conv2d_10_460359
conv2d_11_460364
conv2d_11_460366
dense_2_460371
dense_2_460373
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputssequential_4_460340*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600132&
$sequential_4/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0conv2d_8_460343conv2d_8_460345*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_4601052"
 conv2d_8/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_10_layer_call_and_return_conditional_losses_4601262
activation_10/PartitionedCall?
max_pooling2d_6/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4600332!
max_pooling2d_6/PartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_9_460350conv2d_9_460352*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4601452"
 conv2d_9/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_11_layer_call_and_return_conditional_losses_4601662
activation_11/PartitionedCall?
max_pooling2d_7/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4600452!
max_pooling2d_7/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_10_460357conv2d_10_460359*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4601852#
!conv2d_10/StatefulPartitionedCall?
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_4602062
activation_12/PartitionedCall?
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_4600572!
max_pooling2d_8/PartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_11_460364conv2d_11_460366*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4602252#
!conv2d_11/StatefulPartitionedCall?
activation_13/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_13_layer_call_and_return_conditional_losses_4602462
activation_13/PartitionedCall?
*global_average_pooling2d_2/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_4600702,
*global_average_pooling2d_2/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_2_460371dense_2_460373*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_4602652!
dense_2/StatefulPartitionedCall?
activation_14/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_4602862
activation_14/PartitionedCall?
IdentityIdentity&activation_14/PartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_460057

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

*__inference_conv2d_10_layer_call_fn_460943

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4601852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
-__inference_sequential_5_layer_call_fn_460719

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
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4603782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
e
I__inference_activation_13_layer_call_and_return_conditional_losses_460246

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_activation_14_layer_call_and_return_conditional_losses_461006

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????
:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
~
)__inference_conv2d_8_layer_call_fn_460885

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_4601052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
J
.__inference_activation_12_layer_call_fn_460953

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_12_layer_call_and_return_conditional_losses_4602062
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?;
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460692

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
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_8/BiasAdd?
activation_10/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_10/Relu?
max_pooling2d_6/MaxPoolMaxPool activation_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_6/MaxPool?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_9/BiasAdd?
activation_11/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_11/Relu?
max_pooling2d_7/MaxPoolMaxPool activation_11/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_7/MaxPool?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_10/BiasAdd?
activation_12/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_12/Relu?
max_pooling2d_8/MaxPoolMaxPool activation_12/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_8/MaxPool?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_11/BiasAdd?
activation_13/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_13/Relu?
1global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_2/Mean/reduction_indices?
global_average_pooling2d_2/MeanMean activation_13/Relu:activations:0:global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_2/Mean?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMul(global_average_pooling2d_2/Mean:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAdd?
activation_14/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_14/Softmax?
IdentityIdentityactivation_14/Softmax:softmax:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
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
:?????????  
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_6_layer_call_fn_460039

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4600332
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_460018
random_translation_2_input
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_translation_2_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4600132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :22
StatefulPartitionedCallStatefulPartitionedCall:k g
/
_output_shapes
:?????????  
4
_user_specified_namerandom_translation_2_input
?
J
.__inference_activation_14_layer_call_fn_461011

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_14_layer_call_and_return_conditional_losses_4602862
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????
:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
~
)__inference_conv2d_9_layer_call_fn_460914

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4601452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
sequential_4_inputC
$serving_default_sequential_4_input:0?????????  A
activation_140
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?a
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
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?]
_tf_keras_sequential?]{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_4_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_translation_2_input"}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.6, "width_factor": 0.6, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_4_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_translation_2_input"}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.6, "width_factor": 0.6, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_translation_2_input"}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.6, "width_factor": 0.6, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_translation_2_input"}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.6, "width_factor": 0.6, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
bias
trainable_variables
	variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
!trainable_variables
"	variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
%trainable_variables
&	variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_6", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
/trainable_variables
0	variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
3trainable_variables
4	variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_7", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

7kernel
8bias
9trainable_variables
:	variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
=trainable_variables
>	variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_8", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Ekernel
Fbias
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Skernel
Tbias
Utrainable_variables
V	variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
Ytrainable_variables
Z	variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
]iter

^beta_1

_beta_2
	`decay
alearning_ratem?m?)m?*m?7m?8m?Em?Fm?Sm?Tm?v?v?)v?*v?7v?8v?Ev?Fv?Sv?Tv?"
	optimizer
f
0
1
)2
*3
74
85
E6
F7
S8
T9"
trackable_list_wrapper
f
0
1
)2
*3
74
85
E6
F7
S8
T9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables
clayer_metrics
dmetrics
	variables
trainable_variables

elayers
flayer_regularization_losses
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
g_rng
h	keras_api"?
_tf_keras_layer?{"class_name": "RandomTranslation", "name": "random_translation_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_translation_2", "trainable": true, "dtype": "float32", "height_factor": 0.6, "width_factor": 0.6, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables
jlayer_metrics
kmetrics
	variables
trainable_variables

llayers
mlayer_regularization_losses
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_8/kernel
: 2conv2d_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
nnon_trainable_variables
olayer_metrics
pmetrics
trainable_variables
	variables

qlayers
rlayer_regularization_losses
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
snon_trainable_variables
tlayer_metrics
umetrics
!trainable_variables
"	variables

vlayers
wlayer_regularization_losses
#regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables
ylayer_metrics
zmetrics
%trainable_variables
&	variables

{layers
|layer_regularization_losses
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_9/kernel
:@2conv2d_9/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables
~layer_metrics
metrics
+trainable_variables
,	variables
?layers
 ?layer_regularization_losses
-regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
/trainable_variables
0	variables
?layers
 ?layer_regularization_losses
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
3trainable_variables
4	variables
?layers
 ?layer_regularization_losses
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_10/kernel
:?2conv2d_10/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
9trainable_variables
:	variables
?layers
 ?layer_regularization_losses
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
=trainable_variables
>	variables
?layers
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
Atrainable_variables
B	variables
?layers
 ?layer_regularization_losses
Cregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_11/kernel
:?2conv2d_11/bias
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
Gtrainable_variables
H	variables
?layers
 ?layer_regularization_losses
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
Ktrainable_variables
L	variables
?layers
 ?layer_regularization_losses
Mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
Otrainable_variables
P	variables
?layers
 ?layer_regularization_losses
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_2/kernel
:
2dense_2/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
Utrainable_variables
V	variables
?layers
 ?layer_regularization_losses
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
Ytrainable_variables
Z	variables
?layers
 ?layer_regularization_losses
[regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
?
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
 "
trackable_list_wrapper
/
?
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:	2Variable
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:, 2Adam/conv2d_8/kernel/m
 : 2Adam/conv2d_8/bias/m
.:, @2Adam/conv2d_9/kernel/m
 :@2Adam/conv2d_9/bias/m
0:.@?2Adam/conv2d_10/kernel/m
": ?2Adam/conv2d_10/bias/m
1:/??2Adam/conv2d_11/kernel/m
": ?2Adam/conv2d_11/bias/m
&:$	?
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
.:, 2Adam/conv2d_8/kernel/v
 : 2Adam/conv2d_8/bias/v
.:, @2Adam/conv2d_9/kernel/v
 :@2Adam/conv2d_9/bias/v
0:.@?2Adam/conv2d_10/kernel/v
": ?2Adam/conv2d_10/bias/v
1:/??2Adam/conv2d_11/kernel/v
": ?2Adam/conv2d_11/bias/v
&:$	?
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
?2?
!__inference__wrapped_model_459793?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *9?6
4?1
sequential_4_input?????????  
?2?
-__inference_sequential_5_layer_call_fn_460403
-__inference_sequential_5_layer_call_fn_460744
-__inference_sequential_5_layer_call_fn_460719
-__inference_sequential_5_layer_call_fn_460467?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460648
H__inference_sequential_5_layer_call_and_return_conditional_losses_460334
H__inference_sequential_5_layer_call_and_return_conditional_losses_460692
H__inference_sequential_5_layer_call_and_return_conditional_losses_460295?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_sequential_4_layer_call_fn_460866
-__inference_sequential_4_layer_call_fn_460027
-__inference_sequential_4_layer_call_fn_460861
-__inference_sequential_4_layer_call_fn_460018?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_4_layer_call_and_return_conditional_losses_460850
H__inference_sequential_4_layer_call_and_return_conditional_losses_460854
H__inference_sequential_4_layer_call_and_return_conditional_losses_459900
H__inference_sequential_4_layer_call_and_return_conditional_losses_459904?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_conv2d_8_layer_call_fn_460885?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_8_layer_call_and_return_conditional_losses_460876?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_10_layer_call_fn_460895?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_10_layer_call_and_return_conditional_losses_460890?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_6_layer_call_fn_460039?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_460033?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_conv2d_9_layer_call_fn_460914?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_460905?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_11_layer_call_fn_460924?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_11_layer_call_and_return_conditional_losses_460919?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_7_layer_call_fn_460051?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_460045?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_10_layer_call_fn_460943?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_10_layer_call_and_return_conditional_losses_460934?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_12_layer_call_fn_460953?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_12_layer_call_and_return_conditional_losses_460948?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_8_layer_call_fn_460063?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_460057?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_11_layer_call_fn_460972?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_11_layer_call_and_return_conditional_losses_460963?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_13_layer_call_fn_460982?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_13_layer_call_and_return_conditional_losses_460977?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_global_average_pooling2d_2_layer_call_fn_460076?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_460070?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
(__inference_dense_2_layer_call_fn_461001?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_2_layer_call_and_return_conditional_losses_460992?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_14_layer_call_fn_461011?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_14_layer_call_and_return_conditional_losses_461006?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_460502sequential_4_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_459793?
)*78EFSTC?@
9?6
4?1
sequential_4_input?????????  
? "=?:
8
activation_14'?$
activation_14?????????
?
I__inference_activation_10_layer_call_and_return_conditional_losses_460890h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
.__inference_activation_10_layer_call_fn_460895[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
I__inference_activation_11_layer_call_and_return_conditional_losses_460919h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_11_layer_call_fn_460924[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_12_layer_call_and_return_conditional_losses_460948j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_12_layer_call_fn_460953]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_13_layer_call_and_return_conditional_losses_460977j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_13_layer_call_fn_460982]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_14_layer_call_and_return_conditional_losses_461006X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? }
.__inference_activation_14_layer_call_fn_461011K/?,
%?"
 ?
inputs?????????

? "??????????
?
E__inference_conv2d_10_layer_call_and_return_conditional_losses_460934m787?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_10_layer_call_fn_460943`787?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_11_layer_call_and_return_conditional_losses_460963nEF8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_11_layer_call_fn_460972aEF8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_8_layer_call_and_return_conditional_losses_460876l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
)__inference_conv2d_8_layer_call_fn_460885_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_460905l)*7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
)__inference_conv2d_9_layer_call_fn_460914_)*7?4
-?*
(?%
inputs????????? 
? " ??????????@?
C__inference_dense_2_layer_call_and_return_conditional_losses_460992]ST0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_2_layer_call_fn_461001PST0?-
&?#
!?
inputs??????????
? "??????????
?
V__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_460070?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_2_layer_call_fn_460076wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_460033?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_6_layer_call_fn_460039?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_460045?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_7_layer_call_fn_460051?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_460057?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_8_layer_call_fn_460063?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_4_layer_call_and_return_conditional_losses_459900??S?P
I?F
<?9
random_translation_2_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_459904?S?P
I?F
<?9
random_translation_2_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_460850t???<
5?2
(?%
inputs?????????  
p

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_460854p??<
5?2
(?%
inputs?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
-__inference_sequential_4_layer_call_fn_460018{?S?P
I?F
<?9
random_translation_2_input?????????  
p

 
? " ??????????  ?
-__inference_sequential_4_layer_call_fn_460027wS?P
I?F
<?9
random_translation_2_input?????????  
p 

 
? " ??????????  ?
-__inference_sequential_4_layer_call_fn_460861g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
-__inference_sequential_4_layer_call_fn_460866c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460295??)*78EFSTK?H
A?>
4?1
sequential_4_input?????????  
p

 
? "%?"
?
0?????????

? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460334?
)*78EFSTK?H
A?>
4?1
sequential_4_input?????????  
p 

 
? "%?"
?
0?????????

? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460648v?)*78EFST??<
5?2
(?%
inputs?????????  
p

 
? "%?"
?
0?????????

? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_460692t
)*78EFST??<
5?2
(?%
inputs?????????  
p 

 
? "%?"
?
0?????????

? ?
-__inference_sequential_5_layer_call_fn_460403u?)*78EFSTK?H
A?>
4?1
sequential_4_input?????????  
p

 
? "??????????
?
-__inference_sequential_5_layer_call_fn_460467s
)*78EFSTK?H
A?>
4?1
sequential_4_input?????????  
p 

 
? "??????????
?
-__inference_sequential_5_layer_call_fn_460719i?)*78EFST??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
-__inference_sequential_5_layer_call_fn_460744g
)*78EFST??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_460502?
)*78EFSTY?V
? 
O?L
J
sequential_4_input4?1
sequential_4_input?????????  "=?:
8
activation_14'?$
activation_14?????????
