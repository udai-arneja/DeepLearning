??
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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
?
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
?
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_6/kernel
|
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*'
_output_shapes
:@?*
dtype0
s
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:?*
dtype0
?
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_7/kernel
}
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*(
_output_shapes
:??*
dtype0
s
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_7/bias
l
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
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
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_4/kernel/m
?
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_5/kernel/m
?
*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/m
y
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_6/kernel/m
?
*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_6/bias/m
z
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_7/kernel/m
?
*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_7/bias/m
z
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?
*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_4/kernel/v
?
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_5/kernel/v
?
*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/v
y
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_6/kernel/v
?
*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_6/bias/v
z
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_7/kernel/v
?
*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_7/bias/v
z
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?
*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?R
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Q
value?QB?Q B?Q
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
_
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
R
"	variables
#regularization_losses
$trainable_variables
%	keras_api
R
&	variables
'regularization_losses
(trainable_variables
)	keras_api
R
*	variables
+regularization_losses
,trainable_variables
-	keras_api
h

.kernel
/bias
0	variables
1regularization_losses
2trainable_variables
3	keras_api
R
4	variables
5regularization_losses
6trainable_variables
7	keras_api
R
8	variables
9regularization_losses
:trainable_variables
;	keras_api
h

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
R
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
R
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
h

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
R
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
R
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
h

Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
R
^	variables
_regularization_losses
`trainable_variables
a	keras_api
?
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem?m?.m?/m?<m?=m?Jm?Km?Xm?Ym?v?v?.v?/v?<v?=v?Jv?Kv?Xv?Yv?
F
0
1
.2
/3
<4
=5
J6
K7
X8
Y9
 
F
0
1
.2
/3
<4
=5
J6
K7
X8
Y9
?
glayer_metrics

hlayers
ilayer_regularization_losses
	variables
regularization_losses
jmetrics
knon_trainable_variables
trainable_variables
 

l_rng
m	keras_api
 
 
 
?
nlayer_metrics

olayers
player_regularization_losses
	variables
regularization_losses
qmetrics
rnon_trainable_variables
trainable_variables
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

slayers
tlayer_regularization_losses
	variables
regularization_losses
 trainable_variables
umetrics
vnon_trainable_variables
wlayer_metrics
 
 
 
?

xlayers
ylayer_regularization_losses
"	variables
#regularization_losses
$trainable_variables
zmetrics
{non_trainable_variables
|layer_metrics
 
 
 
?

}layers
~layer_regularization_losses
&	variables
'regularization_losses
(trainable_variables
metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
*	variables
+regularization_losses
,trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
 

.0
/1
?
?layers
 ?layer_regularization_losses
0	variables
1regularization_losses
2trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
4	variables
5regularization_losses
6trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
8	variables
9regularization_losses
:trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
[Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
?
?layers
 ?layer_regularization_losses
>	variables
?regularization_losses
@trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
B	variables
Cregularization_losses
Dtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
F	variables
Gregularization_losses
Htrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
[Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 

J0
K1
?
?layers
 ?layer_regularization_losses
L	variables
Mregularization_losses
Ntrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
P	variables
Qregularization_losses
Rtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
T	variables
Uregularization_losses
Vtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

X0
Y1
 

X0
Y1
?
?layers
 ?layer_regularization_losses
Z	variables
[regularization_losses
\trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
^	variables
_regularization_losses
`trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
v
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
15
 

?0
?1
 

?
_state_var
 
 

0
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
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_sequential_2_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_2_inputconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_1/kerneldense_1/bias*
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
$__inference_signature_wrapper_307011
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_307690
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*4
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
"__inference__traced_restore_307820??
?
d
H__inference_activation_7_layer_call_and_return_conditional_losses_306712

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
?
?
$__inference_signature_wrapper_307011
sequential_2_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_3062832
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
_user_specified_namesequential_2_input
??
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_307158

inputsH
Dsequential_2_random_zoom_1_stateful_uniform_statefuluniform_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource+
'conv2d_6_conv2d_readvariableop_resource,
(conv2d_6_biasadd_readvariableop_resource+
'conv2d_7_conv2d_readvariableop_resource,
(conv2d_7_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?conv2d_5/BiasAdd/ReadVariableOp?conv2d_5/Conv2D/ReadVariableOp?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?;sequential_2/random_zoom_1/stateful_uniform/StatefulUniformz
 sequential_2/random_zoom_1/ShapeShapeinputs*
T0*
_output_shapes
:2"
 sequential_2/random_zoom_1/Shape?
.sequential_2/random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_2/random_zoom_1/strided_slice/stack?
0sequential_2/random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom_1/strided_slice/stack_1?
0sequential_2/random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom_1/strided_slice/stack_2?
(sequential_2/random_zoom_1/strided_sliceStridedSlice)sequential_2/random_zoom_1/Shape:output:07sequential_2/random_zoom_1/strided_slice/stack:output:09sequential_2/random_zoom_1/strided_slice/stack_1:output:09sequential_2/random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_2/random_zoom_1/strided_slice?
0sequential_2/random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom_1/strided_slice_1/stack?
2sequential_2/random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_zoom_1/strided_slice_1/stack_1?
2sequential_2/random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_zoom_1/strided_slice_1/stack_2?
*sequential_2/random_zoom_1/strided_slice_1StridedSlice)sequential_2/random_zoom_1/Shape:output:09sequential_2/random_zoom_1/strided_slice_1/stack:output:0;sequential_2/random_zoom_1/strided_slice_1/stack_1:output:0;sequential_2/random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_2/random_zoom_1/strided_slice_1?
sequential_2/random_zoom_1/CastCast3sequential_2/random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_2/random_zoom_1/Cast?
0sequential_2/random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_2/random_zoom_1/strided_slice_2/stack?
2sequential_2/random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_zoom_1/strided_slice_2/stack_1?
2sequential_2/random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_2/random_zoom_1/strided_slice_2/stack_2?
*sequential_2/random_zoom_1/strided_slice_2StridedSlice)sequential_2/random_zoom_1/Shape:output:09sequential_2/random_zoom_1/strided_slice_2/stack:output:0;sequential_2/random_zoom_1/strided_slice_2/stack_1:output:0;sequential_2/random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_2/random_zoom_1/strided_slice_2?
!sequential_2/random_zoom_1/Cast_1Cast3sequential_2/random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_2/random_zoom_1/Cast_1?
3sequential_2/random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_2/random_zoom_1/stateful_uniform/shape/1?
1sequential_2/random_zoom_1/stateful_uniform/shapePack1sequential_2/random_zoom_1/strided_slice:output:0<sequential_2/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_2/random_zoom_1/stateful_uniform/shape?
/sequential_2/random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_2/random_zoom_1/stateful_uniform/min?
/sequential_2/random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_2/random_zoom_1/stateful_uniform/max?
Esequential_2/random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2G
Esequential_2/random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
;sequential_2/random_zoom_1/stateful_uniform/StatefulUniformStatefulUniformDsequential_2_random_zoom_1_stateful_uniform_statefuluniform_resourceNsequential_2/random_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0:sequential_2/random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02=
;sequential_2/random_zoom_1/stateful_uniform/StatefulUniform?
/sequential_2/random_zoom_1/stateful_uniform/subSub8sequential_2/random_zoom_1/stateful_uniform/max:output:08sequential_2/random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 21
/sequential_2/random_zoom_1/stateful_uniform/sub?
/sequential_2/random_zoom_1/stateful_uniform/mulMulDsequential_2/random_zoom_1/stateful_uniform/StatefulUniform:output:03sequential_2/random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????21
/sequential_2/random_zoom_1/stateful_uniform/mul?
+sequential_2/random_zoom_1/stateful_uniformAdd3sequential_2/random_zoom_1/stateful_uniform/mul:z:08sequential_2/random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2-
+sequential_2/random_zoom_1/stateful_uniform?
&sequential_2/random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_2/random_zoom_1/concat/axis?
!sequential_2/random_zoom_1/concatConcatV2/sequential_2/random_zoom_1/stateful_uniform:z:0/sequential_2/random_zoom_1/stateful_uniform:z:0/sequential_2/random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!sequential_2/random_zoom_1/concat?
,sequential_2/random_zoom_1/zoom_matrix/ShapeShape*sequential_2/random_zoom_1/concat:output:0*
T0*
_output_shapes
:2.
,sequential_2/random_zoom_1/zoom_matrix/Shape?
:sequential_2/random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack?
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_1?
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_2?
4sequential_2/random_zoom_1/zoom_matrix/strided_sliceStridedSlice5sequential_2/random_zoom_1/zoom_matrix/Shape:output:0Csequential_2/random_zoom_1/zoom_matrix/strided_slice/stack:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_1:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential_2/random_zoom_1/zoom_matrix/strided_slice?
,sequential_2/random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_2/random_zoom_1/zoom_matrix/sub/y?
*sequential_2/random_zoom_1/zoom_matrix/subSub%sequential_2/random_zoom_1/Cast_1:y:05sequential_2/random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2,
*sequential_2/random_zoom_1/zoom_matrix/sub?
0sequential_2/random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_2/random_zoom_1/zoom_matrix/truediv/y?
.sequential_2/random_zoom_1/zoom_matrix/truedivRealDiv.sequential_2/random_zoom_1/zoom_matrix/sub:z:09sequential_2/random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 20
.sequential_2/random_zoom_1/zoom_matrix/truediv?
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_1StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_1?
.sequential_2/random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_2/random_zoom_1/zoom_matrix/sub_1/x?
,sequential_2/random_zoom_1/zoom_matrix/sub_1Sub7sequential_2/random_zoom_1/zoom_matrix/sub_1/x:output:0?sequential_2/random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_2/random_zoom_1/zoom_matrix/sub_1?
*sequential_2/random_zoom_1/zoom_matrix/mulMul2sequential_2/random_zoom_1/zoom_matrix/truediv:z:00sequential_2/random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2,
*sequential_2/random_zoom_1/zoom_matrix/mul?
.sequential_2/random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_2/random_zoom_1/zoom_matrix/sub_2/y?
,sequential_2/random_zoom_1/zoom_matrix/sub_2Sub#sequential_2/random_zoom_1/Cast:y:07sequential_2/random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2.
,sequential_2/random_zoom_1/zoom_matrix/sub_2?
2sequential_2/random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @24
2sequential_2/random_zoom_1/zoom_matrix/truediv_1/y?
0sequential_2/random_zoom_1/zoom_matrix/truediv_1RealDiv0sequential_2/random_zoom_1/zoom_matrix/sub_2:z:0;sequential_2/random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 22
0sequential_2/random_zoom_1/zoom_matrix/truediv_1?
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_2StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_2?
.sequential_2/random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_2/random_zoom_1/zoom_matrix/sub_3/x?
,sequential_2/random_zoom_1/zoom_matrix/sub_3Sub7sequential_2/random_zoom_1/zoom_matrix/sub_3/x:output:0?sequential_2/random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_2/random_zoom_1/zoom_matrix/sub_3?
,sequential_2/random_zoom_1/zoom_matrix/mul_1Mul4sequential_2/random_zoom_1/zoom_matrix/truediv_1:z:00sequential_2/random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2.
,sequential_2/random_zoom_1/zoom_matrix/mul_1?
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_3StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_3?
2sequential_2/random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/random_zoom_1/zoom_matrix/zeros/mul/y?
0sequential_2/random_zoom_1/zoom_matrix/zeros/mulMul=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0;sequential_2/random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_2/random_zoom_1/zoom_matrix/zeros/mul?
3sequential_2/random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3sequential_2/random_zoom_1/zoom_matrix/zeros/Less/y?
1sequential_2/random_zoom_1/zoom_matrix/zeros/LessLess4sequential_2/random_zoom_1/zoom_matrix/zeros/mul:z:0<sequential_2/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_2/random_zoom_1/zoom_matrix/zeros/Less?
5sequential_2/random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/random_zoom_1/zoom_matrix/zeros/packed/1?
3sequential_2/random_zoom_1/zoom_matrix/zeros/packedPack=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0>sequential_2/random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_2/random_zoom_1/zoom_matrix/zeros/packed?
2sequential_2/random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_2/random_zoom_1/zoom_matrix/zeros/Const?
,sequential_2/random_zoom_1/zoom_matrix/zerosFill<sequential_2/random_zoom_1/zoom_matrix/zeros/packed:output:0;sequential_2/random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_2/random_zoom_1/zoom_matrix/zeros?
4sequential_2/random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_2/random_zoom_1/zoom_matrix/zeros_1/mul/y?
2sequential_2/random_zoom_1/zoom_matrix/zeros_1/mulMul=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0=sequential_2/random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_zoom_1/zoom_matrix/zeros_1/mul?
5sequential_2/random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_2/random_zoom_1/zoom_matrix/zeros_1/Less/y?
3sequential_2/random_zoom_1/zoom_matrix/zeros_1/LessLess6sequential_2/random_zoom_1/zoom_matrix/zeros_1/mul:z:0>sequential_2/random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_2/random_zoom_1/zoom_matrix/zeros_1/Less?
7sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed/1?
5sequential_2/random_zoom_1/zoom_matrix/zeros_1/packedPack=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0@sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed?
4sequential_2/random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_2/random_zoom_1/zoom_matrix/zeros_1/Const?
.sequential_2/random_zoom_1/zoom_matrix/zeros_1Fill>sequential_2/random_zoom_1/zoom_matrix/zeros_1/packed:output:0=sequential_2/random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_2/random_zoom_1/zoom_matrix/zeros_1?
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_4StridedSlice*sequential_2/random_zoom_1/concat:output:0Esequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_2/random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_2/random_zoom_1/zoom_matrix/strided_slice_4?
4sequential_2/random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_2/random_zoom_1/zoom_matrix/zeros_2/mul/y?
2sequential_2/random_zoom_1/zoom_matrix/zeros_2/mulMul=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0=sequential_2/random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_zoom_1/zoom_matrix/zeros_2/mul?
5sequential_2/random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_2/random_zoom_1/zoom_matrix/zeros_2/Less/y?
3sequential_2/random_zoom_1/zoom_matrix/zeros_2/LessLess6sequential_2/random_zoom_1/zoom_matrix/zeros_2/mul:z:0>sequential_2/random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_2/random_zoom_1/zoom_matrix/zeros_2/Less?
7sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed/1?
5sequential_2/random_zoom_1/zoom_matrix/zeros_2/packedPack=sequential_2/random_zoom_1/zoom_matrix/strided_slice:output:0@sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed?
4sequential_2/random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_2/random_zoom_1/zoom_matrix/zeros_2/Const?
.sequential_2/random_zoom_1/zoom_matrix/zeros_2Fill>sequential_2/random_zoom_1/zoom_matrix/zeros_2/packed:output:0=sequential_2/random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_2/random_zoom_1/zoom_matrix/zeros_2?
2sequential_2/random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_2/random_zoom_1/zoom_matrix/concat/axis?
-sequential_2/random_zoom_1/zoom_matrix/concatConcatV2?sequential_2/random_zoom_1/zoom_matrix/strided_slice_3:output:05sequential_2/random_zoom_1/zoom_matrix/zeros:output:0.sequential_2/random_zoom_1/zoom_matrix/mul:z:07sequential_2/random_zoom_1/zoom_matrix/zeros_1:output:0?sequential_2/random_zoom_1/zoom_matrix/strided_slice_4:output:00sequential_2/random_zoom_1/zoom_matrix/mul_1:z:07sequential_2/random_zoom_1/zoom_matrix/zeros_2:output:0;sequential_2/random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2/
-sequential_2/random_zoom_1/zoom_matrix/concat?
*sequential_2/random_zoom_1/transform/ShapeShapeinputs*
T0*
_output_shapes
:2,
*sequential_2/random_zoom_1/transform/Shape?
8sequential_2/random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_2/random_zoom_1/transform/strided_slice/stack?
:sequential_2/random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_zoom_1/transform/strided_slice/stack_1?
:sequential_2/random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_2/random_zoom_1/transform/strided_slice/stack_2?
2sequential_2/random_zoom_1/transform/strided_sliceStridedSlice3sequential_2/random_zoom_1/transform/Shape:output:0Asequential_2/random_zoom_1/transform/strided_slice/stack:output:0Csequential_2/random_zoom_1/transform/strided_slice/stack_1:output:0Csequential_2/random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:24
2sequential_2/random_zoom_1/transform/strided_slice?
/sequential_2/random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_2/random_zoom_1/transform/fill_value?
?sequential_2/random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs6sequential_2/random_zoom_1/zoom_matrix/concat:output:0;sequential_2/random_zoom_1/transform/strided_slice:output:08sequential_2/random_zoom_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2A
?sequential_2/random_zoom_1/transform/ImageProjectiveTransformV3?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2DTsequential_2/random_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_4/BiasAdd?
activation_5/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_5/Relu?
max_pooling2d_3/MaxPoolMaxPoolactivation_5/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_3/MaxPoolw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_3/dropout/Const?
dropout_3/dropout/MulMul max_pooling2d_3/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_3/dropout/Mul?
dropout_3/dropout/ShapeShape max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_3/dropout/Mul_1?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2Ddropout_3/dropout/Mul_1:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_5/Conv2D?
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_5/BiasAdd?
activation_6/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_6/Relu?
max_pooling2d_4/MaxPoolMaxPoolactivation_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_4/MaxPool?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_6/Conv2D?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_6/BiasAdd?
activation_7/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_7/Relu?
max_pooling2d_5/MaxPoolMaxPoolactivation_7/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_5/MaxPool?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_7/Conv2D?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_7/BiasAdd?
activation_8/ReluReluconv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_8/Relu?
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indices?
global_average_pooling2d_1/MeanMeanactivation_8/Relu:activations:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_1/Mean?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul(global_average_pooling2d_1/Mean:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAdd?
activation_9/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_9/Softmax?
IdentityIdentityactivation_9/Softmax:softmax:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp<^sequential_2/random_zoom_1/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2z
;sequential_2/random_zoom_1/stateful_uniform/StatefulUniform;sequential_2/random_zoom_1/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
s
-__inference_sequential_2_layer_call_fn_307365

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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3064892
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
?	
?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_307465

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
?
F
*__inference_dropout_3_layer_call_fn_307426

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
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_3066282
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?<
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_307203

inputs+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource+
'conv2d_6_conv2d_readvariableop_resource,
(conv2d_6_biasadd_readvariableop_resource+
'conv2d_7_conv2d_readvariableop_resource,
(conv2d_7_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?conv2d_5/BiasAdd/ReadVariableOp?conv2d_5/Conv2D/ReadVariableOp?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_4/Conv2D?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_4/BiasAdd?
activation_5/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_5/Relu?
max_pooling2d_3/MaxPoolMaxPoolactivation_5/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_3/MaxPool?
dropout_3/IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2
dropout_3/Identity?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_5/Conv2D?
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_5/BiasAdd?
activation_6/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_6/Relu?
max_pooling2d_4/MaxPoolMaxPoolactivation_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_4/MaxPool?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_6/Conv2D?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_6/BiasAdd?
activation_7/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_7/Relu?
max_pooling2d_5/MaxPoolMaxPoolactivation_7/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_5/MaxPool?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_7/Conv2D?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_7/BiasAdd?
activation_8/ReluReluconv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_8/Relu?
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indices?
global_average_pooling2d_1/MeanMeanactivation_8/Relu:activations:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_1/Mean?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMul(global_average_pooling2d_1/Mean:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAdd?
activation_9/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_9/Softmax?
IdentityIdentityactivation_9/Softmax:softmax:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_307450

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
?
~
)__inference_conv2d_6_layer_call_fn_307474

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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3066912
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
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_307411

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_306651

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
?	
?
D__inference_conv2d_7_layer_call_and_return_conditional_losses_307494

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
?
~
)__inference_conv2d_7_layer_call_fn_307503

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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3067312
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
?
r
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_306546

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
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_306628

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
}
(__inference_dense_1_layer_call_fn_307532

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
C__inference_dense_1_layer_call_and_return_conditional_losses_3067712
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
I
-__inference_activation_5_layer_call_fn_307399

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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_3066022
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
?K
?
!__inference__wrapped_model_306283
sequential_2_input8
4sequential_3_conv2d_4_conv2d_readvariableop_resource9
5sequential_3_conv2d_4_biasadd_readvariableop_resource8
4sequential_3_conv2d_5_conv2d_readvariableop_resource9
5sequential_3_conv2d_5_biasadd_readvariableop_resource8
4sequential_3_conv2d_6_conv2d_readvariableop_resource9
5sequential_3_conv2d_6_biasadd_readvariableop_resource8
4sequential_3_conv2d_7_conv2d_readvariableop_resource9
5sequential_3_conv2d_7_biasadd_readvariableop_resource7
3sequential_3_dense_1_matmul_readvariableop_resource8
4sequential_3_dense_1_biasadd_readvariableop_resource
identity??,sequential_3/conv2d_4/BiasAdd/ReadVariableOp?+sequential_3/conv2d_4/Conv2D/ReadVariableOp?,sequential_3/conv2d_5/BiasAdd/ReadVariableOp?+sequential_3/conv2d_5/Conv2D/ReadVariableOp?,sequential_3/conv2d_6/BiasAdd/ReadVariableOp?+sequential_3/conv2d_6/Conv2D/ReadVariableOp?,sequential_3/conv2d_7/BiasAdd/ReadVariableOp?+sequential_3/conv2d_7/Conv2D/ReadVariableOp?+sequential_3/dense_1/BiasAdd/ReadVariableOp?*sequential_3/dense_1/MatMul/ReadVariableOp?
+sequential_3/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_3/conv2d_4/Conv2D/ReadVariableOp?
sequential_3/conv2d_4/Conv2DConv2Dsequential_2_input3sequential_3/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
sequential_3/conv2d_4/Conv2D?
,sequential_3/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/conv2d_4/BiasAdd/ReadVariableOp?
sequential_3/conv2d_4/BiasAddBiasAdd%sequential_3/conv2d_4/Conv2D:output:04sequential_3/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
sequential_3/conv2d_4/BiasAdd?
sequential_3/activation_5/ReluRelu&sequential_3/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2 
sequential_3/activation_5/Relu?
$sequential_3/max_pooling2d_3/MaxPoolMaxPool,sequential_3/activation_5/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2&
$sequential_3/max_pooling2d_3/MaxPool?
sequential_3/dropout_3/IdentityIdentity-sequential_3/max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2!
sequential_3/dropout_3/Identity?
+sequential_3/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_3/conv2d_5/Conv2D/ReadVariableOp?
sequential_3/conv2d_5/Conv2DConv2D(sequential_3/dropout_3/Identity:output:03sequential_3/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_3/conv2d_5/Conv2D?
,sequential_3/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/conv2d_5/BiasAdd/ReadVariableOp?
sequential_3/conv2d_5/BiasAddBiasAdd%sequential_3/conv2d_5/Conv2D:output:04sequential_3/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
sequential_3/conv2d_5/BiasAdd?
sequential_3/activation_6/ReluRelu&sequential_3/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
sequential_3/activation_6/Relu?
$sequential_3/max_pooling2d_4/MaxPoolMaxPool,sequential_3/activation_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2&
$sequential_3/max_pooling2d_4/MaxPool?
+sequential_3/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+sequential_3/conv2d_6/Conv2D/ReadVariableOp?
sequential_3/conv2d_6/Conv2DConv2D-sequential_3/max_pooling2d_4/MaxPool:output:03sequential_3/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_3/conv2d_6/Conv2D?
,sequential_3/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/conv2d_6/BiasAdd/ReadVariableOp?
sequential_3/conv2d_6/BiasAddBiasAdd%sequential_3/conv2d_6/Conv2D:output:04sequential_3/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
sequential_3/conv2d_6/BiasAdd?
sequential_3/activation_7/ReluRelu&sequential_3/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
sequential_3/activation_7/Relu?
$sequential_3/max_pooling2d_5/MaxPoolMaxPool,sequential_3/activation_7/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2&
$sequential_3/max_pooling2d_5/MaxPool?
+sequential_3/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+sequential_3/conv2d_7/Conv2D/ReadVariableOp?
sequential_3/conv2d_7/Conv2DConv2D-sequential_3/max_pooling2d_5/MaxPool:output:03sequential_3/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_3/conv2d_7/Conv2D?
,sequential_3/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_3/conv2d_7/BiasAdd/ReadVariableOp?
sequential_3/conv2d_7/BiasAddBiasAdd%sequential_3/conv2d_7/Conv2D:output:04sequential_3/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
sequential_3/conv2d_7/BiasAdd?
sequential_3/activation_8/ReluRelu&sequential_3/conv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2 
sequential_3/activation_8/Relu?
>sequential_3/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_3/global_average_pooling2d_1/Mean/reduction_indices?
,sequential_3/global_average_pooling2d_1/MeanMean,sequential_3/activation_8/Relu:activations:0Gsequential_3/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_3/global_average_pooling2d_1/Mean?
*sequential_3/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02,
*sequential_3/dense_1/MatMul/ReadVariableOp?
sequential_3/dense_1/MatMulMatMul5sequential_3/global_average_pooling2d_1/Mean:output:02sequential_3/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_3/dense_1/MatMul?
+sequential_3/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_3/dense_1/BiasAdd/ReadVariableOp?
sequential_3/dense_1/BiasAddBiasAdd%sequential_3/dense_1/MatMul:product:03sequential_3/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_3/dense_1/BiasAdd?
!sequential_3/activation_9/SoftmaxSoftmax%sequential_3/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2#
!sequential_3/activation_9/Softmax?
IdentityIdentity+sequential_3/activation_9/Softmax:softmax:0-^sequential_3/conv2d_4/BiasAdd/ReadVariableOp,^sequential_3/conv2d_4/Conv2D/ReadVariableOp-^sequential_3/conv2d_5/BiasAdd/ReadVariableOp,^sequential_3/conv2d_5/Conv2D/ReadVariableOp-^sequential_3/conv2d_6/BiasAdd/ReadVariableOp,^sequential_3/conv2d_6/Conv2D/ReadVariableOp-^sequential_3/conv2d_7/BiasAdd/ReadVariableOp,^sequential_3/conv2d_7/Conv2D/ReadVariableOp,^sequential_3/dense_1/BiasAdd/ReadVariableOp+^sequential_3/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2\
,sequential_3/conv2d_4/BiasAdd/ReadVariableOp,sequential_3/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_4/Conv2D/ReadVariableOp+sequential_3/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_5/BiasAdd/ReadVariableOp,sequential_3/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_5/Conv2D/ReadVariableOp+sequential_3/conv2d_5/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_6/BiasAdd/ReadVariableOp,sequential_3/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_6/Conv2D/ReadVariableOp+sequential_3/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_7/BiasAdd/ReadVariableOp,sequential_3/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_7/Conv2D/ReadVariableOp+sequential_3/conv2d_7/Conv2D/ReadVariableOp2Z
+sequential_3/dense_1/BiasAdd/ReadVariableOp+sequential_3/dense_1/BiasAdd/ReadVariableOp2X
*sequential_3/dense_1/MatMul/ReadVariableOp*sequential_3/dense_1/MatMul/ReadVariableOp:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_2_input
?
L
0__inference_max_pooling2d_4_layer_call_fn_306527

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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3065212
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
C__inference_dense_1_layer_call_and_return_conditional_losses_306771

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
?T
?
__inference__traced_save_307690
file_prefix.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
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
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
L
0__inference_max_pooling2d_5_layer_call_fn_306539

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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3065332
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
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_306623

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
q
H__inference_sequential_2_layer_call_and_return_conditional_losses_306387
random_zoom_1_input
identityo
IdentityIdentityrandom_zoom_1_input*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_1_input
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_306489

inputs;
7random_zoom_1_stateful_uniform_statefuluniform_resource
identity??.random_zoom_1/stateful_uniform/StatefulUniform`
random_zoom_1/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_1/Shape?
!random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_1/strided_slice/stack?
#random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_1?
#random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_2?
random_zoom_1/strided_sliceStridedSlicerandom_zoom_1/Shape:output:0*random_zoom_1/strided_slice/stack:output:0,random_zoom_1/strided_slice/stack_1:output:0,random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice?
#random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_1/stack?
%random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_1?
%random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_2?
random_zoom_1/strided_slice_1StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_1/stack:output:0.random_zoom_1/strided_slice_1/stack_1:output:0.random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_1?
random_zoom_1/CastCast&random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast?
#random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_2/stack?
%random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_1?
%random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_2?
random_zoom_1/strided_slice_2StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_2/stack:output:0.random_zoom_1/strided_slice_2/stack_1:output:0.random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_2?
random_zoom_1/Cast_1Cast&random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast_1?
&random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_1/stateful_uniform/shape/1?
$random_zoom_1/stateful_uniform/shapePack$random_zoom_1/strided_slice:output:0/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_1/stateful_uniform/shape?
"random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_1/stateful_uniform/min?
"random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_1/stateful_uniform/max?
8random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_1/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_1_stateful_uniform_statefuluniform_resourceArandom_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_1/stateful_uniform/StatefulUniform?
"random_zoom_1/stateful_uniform/subSub+random_zoom_1/stateful_uniform/max:output:0+random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_1/stateful_uniform/sub?
"random_zoom_1/stateful_uniform/mulMul7random_zoom_1/stateful_uniform/StatefulUniform:output:0&random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_1/stateful_uniform/mul?
random_zoom_1/stateful_uniformAdd&random_zoom_1/stateful_uniform/mul:z:0+random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_1/stateful_uniformx
random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_1/concat/axis?
random_zoom_1/concatConcatV2"random_zoom_1/stateful_uniform:z:0"random_zoom_1/stateful_uniform:z:0"random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_1/concat?
random_zoom_1/zoom_matrix/ShapeShaperandom_zoom_1/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_1/zoom_matrix/Shape?
-random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_1/zoom_matrix/strided_slice/stack?
/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_1?
/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_2?
'random_zoom_1/zoom_matrix/strided_sliceStridedSlice(random_zoom_1/zoom_matrix/Shape:output:06random_zoom_1/zoom_matrix/strided_slice/stack:output:08random_zoom_1/zoom_matrix/strided_slice/stack_1:output:08random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_1/zoom_matrix/strided_slice?
random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_1/zoom_matrix/sub/y?
random_zoom_1/zoom_matrix/subSubrandom_zoom_1/Cast_1:y:0(random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_1/zoom_matrix/sub?
#random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_1/zoom_matrix/truediv/y?
!random_zoom_1/zoom_matrix/truedivRealDiv!random_zoom_1/zoom_matrix/sub:z:0,random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_1/zoom_matrix/truediv?
/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_1/stack?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_1?
!random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_1/x?
random_zoom_1/zoom_matrix/sub_1Sub*random_zoom_1/zoom_matrix/sub_1/x:output:02random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_1?
random_zoom_1/zoom_matrix/mulMul%random_zoom_1/zoom_matrix/truediv:z:0#random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_1/zoom_matrix/mul?
!random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_2/y?
random_zoom_1/zoom_matrix/sub_2Subrandom_zoom_1/Cast:y:0*random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_1/zoom_matrix/sub_2?
%random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_1/zoom_matrix/truediv_1/y?
#random_zoom_1/zoom_matrix/truediv_1RealDiv#random_zoom_1/zoom_matrix/sub_2:z:0.random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/truediv_1?
/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_2/stack?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_2?
!random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_3/x?
random_zoom_1/zoom_matrix/sub_3Sub*random_zoom_1/zoom_matrix/sub_3/x:output:02random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_3?
random_zoom_1/zoom_matrix/mul_1Mul'random_zoom_1/zoom_matrix/truediv_1:z:0#random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/mul_1?
/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_3/stack?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_3?
%random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/zeros/mul/y?
#random_zoom_1/zoom_matrix/zeros/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:0.random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/zeros/mul?
&random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_1/zoom_matrix/zeros/Less/y?
$random_zoom_1/zoom_matrix/zeros/LessLess'random_zoom_1/zoom_matrix/zeros/mul:z:0/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_1/zoom_matrix/zeros/Less?
(random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_1/zoom_matrix/zeros/packed/1?
&random_zoom_1/zoom_matrix/zeros/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:01random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_1/zoom_matrix/zeros/packed?
%random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_1/zoom_matrix/zeros/Const?
random_zoom_1/zoom_matrix/zerosFill/random_zoom_1/zoom_matrix/zeros/packed:output:0.random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/zeros?
'random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_1/mul/y?
%random_zoom_1/zoom_matrix/zeros_1/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_1/mul?
(random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_1/Less/y?
&random_zoom_1/zoom_matrix/zeros_1/LessLess)random_zoom_1/zoom_matrix/zeros_1/mul:z:01random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_1/Less?
*random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_1/packed/1?
(random_zoom_1/zoom_matrix/zeros_1/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_1/packed?
'random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_1/Const?
!random_zoom_1/zoom_matrix/zeros_1Fill1random_zoom_1/zoom_matrix/zeros_1/packed:output:00random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_1?
/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_4/stack?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_4?
'random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_2/mul/y?
%random_zoom_1/zoom_matrix/zeros_2/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_2/mul?
(random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_2/Less/y?
&random_zoom_1/zoom_matrix/zeros_2/LessLess)random_zoom_1/zoom_matrix/zeros_2/mul:z:01random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_2/Less?
*random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_2/packed/1?
(random_zoom_1/zoom_matrix/zeros_2/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_2/packed?
'random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_2/Const?
!random_zoom_1/zoom_matrix/zeros_2Fill1random_zoom_1/zoom_matrix/zeros_2/packed:output:00random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_2?
%random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/concat/axis?
 random_zoom_1/zoom_matrix/concatConcatV22random_zoom_1/zoom_matrix/strided_slice_3:output:0(random_zoom_1/zoom_matrix/zeros:output:0!random_zoom_1/zoom_matrix/mul:z:0*random_zoom_1/zoom_matrix/zeros_1:output:02random_zoom_1/zoom_matrix/strided_slice_4:output:0#random_zoom_1/zoom_matrix/mul_1:z:0*random_zoom_1/zoom_matrix/zeros_2:output:0.random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_1/zoom_matrix/concatt
random_zoom_1/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_1/transform/Shape?
+random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_1/transform/strided_slice/stack?
-random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_1?
-random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_2?
%random_zoom_1/transform/strided_sliceStridedSlice&random_zoom_1/transform/Shape:output:04random_zoom_1/transform/strided_slice/stack:output:06random_zoom_1/transform/strided_slice/stack_1:output:06random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_1/transform/strided_slice?
"random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_1/transform/fill_value?
2random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_1/zoom_matrix/concat:output:0.random_zoom_1/transform/strided_slice:output:0+random_zoom_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_1/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_1/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_1/stateful_uniform/StatefulUniform.random_zoom_1/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
I
-__inference_activation_8_layer_call_fn_307513

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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_3067522
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
?
I
-__inference_activation_9_layer_call_fn_307542

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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_3067922
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
?
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_307358

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
?
d
H__inference_activation_5_layer_call_and_return_conditional_losses_306602

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
?
I
-__inference_activation_7_layer_call_fn_307484

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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_3067122
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
?A
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_306886

inputs
sequential_2_306847
conv2d_4_306850
conv2d_4_306852
conv2d_5_306858
conv2d_5_306860
conv2d_6_306865
conv2d_6_306867
conv2d_7_306872
conv2d_7_306874
dense_1_306879
dense_1_306881
identity?? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_306847*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3064892&
$sequential_2/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0conv2d_4_306850conv2d_4_306852*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3065812"
 conv2d_4/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_3066022
activation_5/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3065092!
max_pooling2d_3/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_3066232#
!dropout_3/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_5_306858conv2d_5_306860*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3066512"
 conv2d_5/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_3066722
activation_6/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3065212!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_306865conv2d_6_306867*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3066912"
 conv2d_6/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_3067122
activation_7/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3065332!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_306872conv2d_7_306874*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3067312"
 conv2d_7/StatefulPartitionedCall?
activation_8/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_3067522
activation_8/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3065462,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_306879dense_1_306881*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3067712!
dense_1/StatefulPartitionedCall?
activation_9/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_3067922
activation_9/PartitionedCall?
IdentityIdentity%activation_9/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
H__inference_activation_8_layer_call_and_return_conditional_losses_307508

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
?
c
*__inference_dropout_3_layer_call_fn_307421

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_3066232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_307820
file_prefix$
 assignvariableop_conv2d_4_kernel$
 assignvariableop_1_conv2d_4_bias&
"assignvariableop_2_conv2d_5_kernel$
 assignvariableop_3_conv2d_5_bias&
"assignvariableop_4_conv2d_6_kernel$
 assignvariableop_5_conv2d_6_bias&
"assignvariableop_6_conv2d_7_kernel$
 assignvariableop_7_conv2d_7_bias%
!assignvariableop_8_dense_1_kernel#
assignvariableop_9_dense_1_bias!
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
*assignvariableop_20_adam_conv2d_4_kernel_m,
(assignvariableop_21_adam_conv2d_4_bias_m.
*assignvariableop_22_adam_conv2d_5_kernel_m,
(assignvariableop_23_adam_conv2d_5_bias_m.
*assignvariableop_24_adam_conv2d_6_kernel_m,
(assignvariableop_25_adam_conv2d_6_bias_m.
*assignvariableop_26_adam_conv2d_7_kernel_m,
(assignvariableop_27_adam_conv2d_7_bias_m-
)assignvariableop_28_adam_dense_1_kernel_m+
'assignvariableop_29_adam_dense_1_bias_m.
*assignvariableop_30_adam_conv2d_4_kernel_v,
(assignvariableop_31_adam_conv2d_4_bias_v.
*assignvariableop_32_adam_conv2d_5_kernel_v,
(assignvariableop_33_adam_conv2d_5_bias_v.
*assignvariableop_34_adam_conv2d_6_kernel_v,
(assignvariableop_35_adam_conv2d_6_bias_v.
*assignvariableop_36_adam_conv2d_7_kernel_v,
(assignvariableop_37_adam_conv2d_7_bias_v-
)assignvariableop_38_adam_dense_1_kernel_v+
'assignvariableop_39_adam_dense_1_bias_v
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
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_7_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_4_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv2d_4_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_5_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv2d_5_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_6_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_6_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_7_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_7_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_1_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_1_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_4_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv2d_4_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_5_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_5_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_6_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_6_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_7_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_conv2d_7_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_1_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_1_bias_vIdentity_39:output:0"/device:CPU:0*
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
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_306521

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
?
d
H__inference_activation_8_layer_call_and_return_conditional_losses_306752

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
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_307523

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
?
V
-__inference_sequential_2_layer_call_fn_306503
random_zoom_1_input
identity?
PartitionedCallPartitionedCallrandom_zoom_1_input*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3065002
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_1_input
?	
?
-__inference_sequential_3_layer_call_fn_306911
sequential_2_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_3068862
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
_user_specified_namesequential_2_input
?
W
;__inference_global_average_pooling2d_1_layer_call_fn_306552

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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3065462
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
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_307416

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_307380

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
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_307354

inputs;
7random_zoom_1_stateful_uniform_statefuluniform_resource
identity??.random_zoom_1/stateful_uniform/StatefulUniform`
random_zoom_1/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_1/Shape?
!random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_1/strided_slice/stack?
#random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_1?
#random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_2?
random_zoom_1/strided_sliceStridedSlicerandom_zoom_1/Shape:output:0*random_zoom_1/strided_slice/stack:output:0,random_zoom_1/strided_slice/stack_1:output:0,random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice?
#random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_1/stack?
%random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_1?
%random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_2?
random_zoom_1/strided_slice_1StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_1/stack:output:0.random_zoom_1/strided_slice_1/stack_1:output:0.random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_1?
random_zoom_1/CastCast&random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast?
#random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_2/stack?
%random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_1?
%random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_2?
random_zoom_1/strided_slice_2StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_2/stack:output:0.random_zoom_1/strided_slice_2/stack_1:output:0.random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_2?
random_zoom_1/Cast_1Cast&random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast_1?
&random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_1/stateful_uniform/shape/1?
$random_zoom_1/stateful_uniform/shapePack$random_zoom_1/strided_slice:output:0/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_1/stateful_uniform/shape?
"random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_1/stateful_uniform/min?
"random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_1/stateful_uniform/max?
8random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_1/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_1_stateful_uniform_statefuluniform_resourceArandom_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_1/stateful_uniform/StatefulUniform?
"random_zoom_1/stateful_uniform/subSub+random_zoom_1/stateful_uniform/max:output:0+random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_1/stateful_uniform/sub?
"random_zoom_1/stateful_uniform/mulMul7random_zoom_1/stateful_uniform/StatefulUniform:output:0&random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_1/stateful_uniform/mul?
random_zoom_1/stateful_uniformAdd&random_zoom_1/stateful_uniform/mul:z:0+random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_1/stateful_uniformx
random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_1/concat/axis?
random_zoom_1/concatConcatV2"random_zoom_1/stateful_uniform:z:0"random_zoom_1/stateful_uniform:z:0"random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_1/concat?
random_zoom_1/zoom_matrix/ShapeShaperandom_zoom_1/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_1/zoom_matrix/Shape?
-random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_1/zoom_matrix/strided_slice/stack?
/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_1?
/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_2?
'random_zoom_1/zoom_matrix/strided_sliceStridedSlice(random_zoom_1/zoom_matrix/Shape:output:06random_zoom_1/zoom_matrix/strided_slice/stack:output:08random_zoom_1/zoom_matrix/strided_slice/stack_1:output:08random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_1/zoom_matrix/strided_slice?
random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_1/zoom_matrix/sub/y?
random_zoom_1/zoom_matrix/subSubrandom_zoom_1/Cast_1:y:0(random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_1/zoom_matrix/sub?
#random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_1/zoom_matrix/truediv/y?
!random_zoom_1/zoom_matrix/truedivRealDiv!random_zoom_1/zoom_matrix/sub:z:0,random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_1/zoom_matrix/truediv?
/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_1/stack?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_1?
!random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_1/x?
random_zoom_1/zoom_matrix/sub_1Sub*random_zoom_1/zoom_matrix/sub_1/x:output:02random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_1?
random_zoom_1/zoom_matrix/mulMul%random_zoom_1/zoom_matrix/truediv:z:0#random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_1/zoom_matrix/mul?
!random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_2/y?
random_zoom_1/zoom_matrix/sub_2Subrandom_zoom_1/Cast:y:0*random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_1/zoom_matrix/sub_2?
%random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_1/zoom_matrix/truediv_1/y?
#random_zoom_1/zoom_matrix/truediv_1RealDiv#random_zoom_1/zoom_matrix/sub_2:z:0.random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/truediv_1?
/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_2/stack?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_2?
!random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_3/x?
random_zoom_1/zoom_matrix/sub_3Sub*random_zoom_1/zoom_matrix/sub_3/x:output:02random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_3?
random_zoom_1/zoom_matrix/mul_1Mul'random_zoom_1/zoom_matrix/truediv_1:z:0#random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/mul_1?
/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_3/stack?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_3?
%random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/zeros/mul/y?
#random_zoom_1/zoom_matrix/zeros/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:0.random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/zeros/mul?
&random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_1/zoom_matrix/zeros/Less/y?
$random_zoom_1/zoom_matrix/zeros/LessLess'random_zoom_1/zoom_matrix/zeros/mul:z:0/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_1/zoom_matrix/zeros/Less?
(random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_1/zoom_matrix/zeros/packed/1?
&random_zoom_1/zoom_matrix/zeros/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:01random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_1/zoom_matrix/zeros/packed?
%random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_1/zoom_matrix/zeros/Const?
random_zoom_1/zoom_matrix/zerosFill/random_zoom_1/zoom_matrix/zeros/packed:output:0.random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/zeros?
'random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_1/mul/y?
%random_zoom_1/zoom_matrix/zeros_1/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_1/mul?
(random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_1/Less/y?
&random_zoom_1/zoom_matrix/zeros_1/LessLess)random_zoom_1/zoom_matrix/zeros_1/mul:z:01random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_1/Less?
*random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_1/packed/1?
(random_zoom_1/zoom_matrix/zeros_1/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_1/packed?
'random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_1/Const?
!random_zoom_1/zoom_matrix/zeros_1Fill1random_zoom_1/zoom_matrix/zeros_1/packed:output:00random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_1?
/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_4/stack?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_4?
'random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_2/mul/y?
%random_zoom_1/zoom_matrix/zeros_2/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_2/mul?
(random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_2/Less/y?
&random_zoom_1/zoom_matrix/zeros_2/LessLess)random_zoom_1/zoom_matrix/zeros_2/mul:z:01random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_2/Less?
*random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_2/packed/1?
(random_zoom_1/zoom_matrix/zeros_2/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_2/packed?
'random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_2/Const?
!random_zoom_1/zoom_matrix/zeros_2Fill1random_zoom_1/zoom_matrix/zeros_2/packed:output:00random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_2?
%random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/concat/axis?
 random_zoom_1/zoom_matrix/concatConcatV22random_zoom_1/zoom_matrix/strided_slice_3:output:0(random_zoom_1/zoom_matrix/zeros:output:0!random_zoom_1/zoom_matrix/mul:z:0*random_zoom_1/zoom_matrix/zeros_1:output:02random_zoom_1/zoom_matrix/strided_slice_4:output:0#random_zoom_1/zoom_matrix/mul_1:z:0*random_zoom_1/zoom_matrix/zeros_2:output:0.random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_1/zoom_matrix/concatt
random_zoom_1/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_1/transform/Shape?
+random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_1/transform/strided_slice/stack?
-random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_1?
-random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_2?
%random_zoom_1/transform/strided_sliceStridedSlice&random_zoom_1/transform/Shape:output:04random_zoom_1/transform/strided_slice/stack:output:06random_zoom_1/transform/strided_slice/stack_1:output:06random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_1/transform/strided_slice?
"random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_1/transform/fill_value?
2random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_1/zoom_matrix/concat:output:0.random_zoom_1/transform/strided_slice:output:0+random_zoom_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_1/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_1/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_1/stateful_uniform/StatefulUniform.random_zoom_1/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
H__inference_activation_7_layer_call_and_return_conditional_losses_307479

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
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_306672

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
?
I
-__inference_sequential_2_layer_call_fn_307370

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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3065002
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
?
d
H__inference_activation_5_layer_call_and_return_conditional_losses_307394

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
?
~
)__inference_conv2d_4_layer_call_fn_307389

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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3065812
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
?
~
)__inference_conv2d_5_layer_call_fn_307445

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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3066512
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
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_306383
random_zoom_1_input;
7random_zoom_1_stateful_uniform_statefuluniform_resource
identity??.random_zoom_1/stateful_uniform/StatefulUniformm
random_zoom_1/ShapeShaperandom_zoom_1_input*
T0*
_output_shapes
:2
random_zoom_1/Shape?
!random_zoom_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_1/strided_slice/stack?
#random_zoom_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_1?
#random_zoom_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice/stack_2?
random_zoom_1/strided_sliceStridedSlicerandom_zoom_1/Shape:output:0*random_zoom_1/strided_slice/stack:output:0,random_zoom_1/strided_slice/stack_1:output:0,random_zoom_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice?
#random_zoom_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_1/stack?
%random_zoom_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_1?
%random_zoom_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_1/stack_2?
random_zoom_1/strided_slice_1StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_1/stack:output:0.random_zoom_1/strided_slice_1/stack_1:output:0.random_zoom_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_1?
random_zoom_1/CastCast&random_zoom_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast?
#random_zoom_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_1/strided_slice_2/stack?
%random_zoom_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_1?
%random_zoom_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_1/strided_slice_2/stack_2?
random_zoom_1/strided_slice_2StridedSlicerandom_zoom_1/Shape:output:0,random_zoom_1/strided_slice_2/stack:output:0.random_zoom_1/strided_slice_2/stack_1:output:0.random_zoom_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_1/strided_slice_2?
random_zoom_1/Cast_1Cast&random_zoom_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_1/Cast_1?
&random_zoom_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_1/stateful_uniform/shape/1?
$random_zoom_1/stateful_uniform/shapePack$random_zoom_1/strided_slice:output:0/random_zoom_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_1/stateful_uniform/shape?
"random_zoom_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_1/stateful_uniform/min?
"random_zoom_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_1/stateful_uniform/max?
8random_zoom_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_1/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_1/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_1_stateful_uniform_statefuluniform_resourceArandom_zoom_1/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_1/stateful_uniform/StatefulUniform?
"random_zoom_1/stateful_uniform/subSub+random_zoom_1/stateful_uniform/max:output:0+random_zoom_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_1/stateful_uniform/sub?
"random_zoom_1/stateful_uniform/mulMul7random_zoom_1/stateful_uniform/StatefulUniform:output:0&random_zoom_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_1/stateful_uniform/mul?
random_zoom_1/stateful_uniformAdd&random_zoom_1/stateful_uniform/mul:z:0+random_zoom_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_1/stateful_uniformx
random_zoom_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_1/concat/axis?
random_zoom_1/concatConcatV2"random_zoom_1/stateful_uniform:z:0"random_zoom_1/stateful_uniform:z:0"random_zoom_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_1/concat?
random_zoom_1/zoom_matrix/ShapeShaperandom_zoom_1/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_1/zoom_matrix/Shape?
-random_zoom_1/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_1/zoom_matrix/strided_slice/stack?
/random_zoom_1/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_1?
/random_zoom_1/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_1/zoom_matrix/strided_slice/stack_2?
'random_zoom_1/zoom_matrix/strided_sliceStridedSlice(random_zoom_1/zoom_matrix/Shape:output:06random_zoom_1/zoom_matrix/strided_slice/stack:output:08random_zoom_1/zoom_matrix/strided_slice/stack_1:output:08random_zoom_1/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_1/zoom_matrix/strided_slice?
random_zoom_1/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_1/zoom_matrix/sub/y?
random_zoom_1/zoom_matrix/subSubrandom_zoom_1/Cast_1:y:0(random_zoom_1/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_1/zoom_matrix/sub?
#random_zoom_1/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_1/zoom_matrix/truediv/y?
!random_zoom_1/zoom_matrix/truedivRealDiv!random_zoom_1/zoom_matrix/sub:z:0,random_zoom_1/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_1/zoom_matrix/truediv?
/random_zoom_1/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_1/stack?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_1?
!random_zoom_1/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_1/x?
random_zoom_1/zoom_matrix/sub_1Sub*random_zoom_1/zoom_matrix/sub_1/x:output:02random_zoom_1/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_1?
random_zoom_1/zoom_matrix/mulMul%random_zoom_1/zoom_matrix/truediv:z:0#random_zoom_1/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_1/zoom_matrix/mul?
!random_zoom_1/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_2/y?
random_zoom_1/zoom_matrix/sub_2Subrandom_zoom_1/Cast:y:0*random_zoom_1/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_1/zoom_matrix/sub_2?
%random_zoom_1/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_1/zoom_matrix/truediv_1/y?
#random_zoom_1/zoom_matrix/truediv_1RealDiv#random_zoom_1/zoom_matrix/sub_2:z:0.random_zoom_1/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/truediv_1?
/random_zoom_1/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_2/stack?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_2?
!random_zoom_1/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_1/zoom_matrix/sub_3/x?
random_zoom_1/zoom_matrix/sub_3Sub*random_zoom_1/zoom_matrix/sub_3/x:output:02random_zoom_1/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/sub_3?
random_zoom_1/zoom_matrix/mul_1Mul'random_zoom_1/zoom_matrix/truediv_1:z:0#random_zoom_1/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/mul_1?
/random_zoom_1/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_1/zoom_matrix/strided_slice_3/stack?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_3?
%random_zoom_1/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/zeros/mul/y?
#random_zoom_1/zoom_matrix/zeros/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:0.random_zoom_1/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_1/zoom_matrix/zeros/mul?
&random_zoom_1/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_1/zoom_matrix/zeros/Less/y?
$random_zoom_1/zoom_matrix/zeros/LessLess'random_zoom_1/zoom_matrix/zeros/mul:z:0/random_zoom_1/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_1/zoom_matrix/zeros/Less?
(random_zoom_1/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_1/zoom_matrix/zeros/packed/1?
&random_zoom_1/zoom_matrix/zeros/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:01random_zoom_1/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_1/zoom_matrix/zeros/packed?
%random_zoom_1/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_1/zoom_matrix/zeros/Const?
random_zoom_1/zoom_matrix/zerosFill/random_zoom_1/zoom_matrix/zeros/packed:output:0.random_zoom_1/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_1/zoom_matrix/zeros?
'random_zoom_1/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_1/mul/y?
%random_zoom_1/zoom_matrix/zeros_1/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_1/mul?
(random_zoom_1/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_1/Less/y?
&random_zoom_1/zoom_matrix/zeros_1/LessLess)random_zoom_1/zoom_matrix/zeros_1/mul:z:01random_zoom_1/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_1/Less?
*random_zoom_1/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_1/packed/1?
(random_zoom_1/zoom_matrix/zeros_1/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_1/packed?
'random_zoom_1/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_1/Const?
!random_zoom_1/zoom_matrix/zeros_1Fill1random_zoom_1/zoom_matrix/zeros_1/packed:output:00random_zoom_1/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_1?
/random_zoom_1/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_1/zoom_matrix/strided_slice_4/stack?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_1/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_1/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_1/concat:output:08random_zoom_1/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_1/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_1/zoom_matrix/strided_slice_4?
'random_zoom_1/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_1/zoom_matrix/zeros_2/mul/y?
%random_zoom_1/zoom_matrix/zeros_2/mulMul0random_zoom_1/zoom_matrix/strided_slice:output:00random_zoom_1/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_1/zoom_matrix/zeros_2/mul?
(random_zoom_1/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_1/zoom_matrix/zeros_2/Less/y?
&random_zoom_1/zoom_matrix/zeros_2/LessLess)random_zoom_1/zoom_matrix/zeros_2/mul:z:01random_zoom_1/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_1/zoom_matrix/zeros_2/Less?
*random_zoom_1/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_1/zoom_matrix/zeros_2/packed/1?
(random_zoom_1/zoom_matrix/zeros_2/packedPack0random_zoom_1/zoom_matrix/strided_slice:output:03random_zoom_1/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_1/zoom_matrix/zeros_2/packed?
'random_zoom_1/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_1/zoom_matrix/zeros_2/Const?
!random_zoom_1/zoom_matrix/zeros_2Fill1random_zoom_1/zoom_matrix/zeros_2/packed:output:00random_zoom_1/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_1/zoom_matrix/zeros_2?
%random_zoom_1/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_1/zoom_matrix/concat/axis?
 random_zoom_1/zoom_matrix/concatConcatV22random_zoom_1/zoom_matrix/strided_slice_3:output:0(random_zoom_1/zoom_matrix/zeros:output:0!random_zoom_1/zoom_matrix/mul:z:0*random_zoom_1/zoom_matrix/zeros_1:output:02random_zoom_1/zoom_matrix/strided_slice_4:output:0#random_zoom_1/zoom_matrix/mul_1:z:0*random_zoom_1/zoom_matrix/zeros_2:output:0.random_zoom_1/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_1/zoom_matrix/concat?
random_zoom_1/transform/ShapeShaperandom_zoom_1_input*
T0*
_output_shapes
:2
random_zoom_1/transform/Shape?
+random_zoom_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_1/transform/strided_slice/stack?
-random_zoom_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_1?
-random_zoom_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_1/transform/strided_slice/stack_2?
%random_zoom_1/transform/strided_sliceStridedSlice&random_zoom_1/transform/Shape:output:04random_zoom_1/transform/strided_slice/stack:output:06random_zoom_1/transform/strided_slice/stack_1:output:06random_zoom_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_1/transform/strided_slice?
"random_zoom_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_1/transform/fill_value?
2random_zoom_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_zoom_1_input)random_zoom_1/zoom_matrix/concat:output:0.random_zoom_1/transform/strided_slice:output:0+random_zoom_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_1/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_1/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_1/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_1/stateful_uniform/StatefulUniform.random_zoom_1/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_1_input
?
d
H__inference_activation_9_layer_call_and_return_conditional_losses_306792

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
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_306509

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
?
L
0__inference_max_pooling2d_3_layer_call_fn_306515

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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3065092
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
?
I
-__inference_activation_6_layer_call_fn_307455

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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_3066722
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
?
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_306500

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
?
-__inference_sequential_2_layer_call_fn_306494
random_zoom_1_input
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_1_inputunknown*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3064892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_1_input
?>
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_306841
sequential_2_input
conv2d_4_306805
conv2d_4_306807
conv2d_5_306813
conv2d_5_306815
conv2d_6_306820
conv2d_6_306822
conv2d_7_306827
conv2d_7_306829
dense_1_306834
dense_1_306836
identity?? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
sequential_2/PartitionedCallPartitionedCallsequential_2_input*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3065002
sequential_2/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0conv2d_4_306805conv2d_4_306807*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3065812"
 conv2d_4/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_3066022
activation_5/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3065092!
max_pooling2d_3/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_3066282
dropout_3/PartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_5_306813conv2d_5_306815*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3066512"
 conv2d_5/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_3066722
activation_6/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3065212!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_306820conv2d_6_306822*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3066912"
 conv2d_6/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_3067122
activation_7/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3065332!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_306827conv2d_7_306829*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3067312"
 conv2d_7/StatefulPartitionedCall?
activation_8/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_3067522
activation_8/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3065462,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_306834dense_1_306836*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3067712!
dense_1/StatefulPartitionedCall?
activation_9/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_3067922
activation_9/PartitionedCall?
IdentityIdentity%activation_9/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_2_input
?	
?
-__inference_sequential_3_layer_call_fn_306976
sequential_2_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_3069532
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
_user_specified_namesequential_2_input
?
d
H__inference_activation_9_layer_call_and_return_conditional_losses_307537

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
?	
?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_306691

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
?	
?
D__inference_conv2d_7_layer_call_and_return_conditional_losses_306731

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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_307436

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
?	
?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_306581

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
?>
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_306953

inputs
conv2d_4_306917
conv2d_4_306919
conv2d_5_306925
conv2d_5_306927
conv2d_6_306932
conv2d_6_306934
conv2d_7_306939
conv2d_7_306941
dense_1_306946
dense_1_306948
identity?? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
sequential_2/PartitionedCallPartitionedCallinputs*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3065002
sequential_2/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0conv2d_4_306917conv2d_4_306919*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3065812"
 conv2d_4/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_3066022
activation_5/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3065092!
max_pooling2d_3/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_3066282
dropout_3/PartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_5_306925conv2d_5_306927*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3066512"
 conv2d_5/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_3066722
activation_6/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3065212!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_306932conv2d_6_306934*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3066912"
 conv2d_6/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_3067122
activation_7/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3065332!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_306939conv2d_7_306941*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3067312"
 conv2d_7/StatefulPartitionedCall?
activation_8/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_3067522
activation_8/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3065462,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_306946dense_1_306948*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3067712!
dense_1/StatefulPartitionedCall?
activation_9/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_3067922
activation_9/PartitionedCall?
IdentityIdentity%activation_9/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?B
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_306801
sequential_2_input
sequential_2_306568
conv2d_4_306592
conv2d_4_306594
conv2d_5_306662
conv2d_5_306664
conv2d_6_306702
conv2d_6_306704
conv2d_7_306742
conv2d_7_306744
dense_1_306782
dense_1_306784
identity?? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputsequential_2_306568*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3064892&
$sequential_2/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0conv2d_4_306592conv2d_4_306594*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3065812"
 conv2d_4/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_3066022
activation_5/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3065092!
max_pooling2d_3/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_3066232#
!dropout_3/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_5_306662conv2d_5_306664*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3066512"
 conv2d_5/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_3066722
activation_6/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3065212!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_306702conv2d_6_306704*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3066912"
 conv2d_6/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_3067122
activation_7/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3065332!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_306742conv2d_7_306744*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3067312"
 conv2d_7/StatefulPartitionedCall?
activation_8/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_8_layer_call_and_return_conditional_losses_3067522
activation_8/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3065462,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_306782dense_1_306784*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3067712!
dense_1/StatefulPartitionedCall?
activation_9/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_activation_9_layer_call_and_return_conditional_losses_3067922
activation_9/PartitionedCall?
IdentityIdentity%activation_9/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_2_input
?
?
-__inference_sequential_3_layer_call_fn_307255

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
H__inference_sequential_3_layer_call_and_return_conditional_losses_3069532
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
-__inference_sequential_3_layer_call_fn_307230

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
H__inference_sequential_3_layer_call_and_return_conditional_losses_3068862
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
?
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_306533

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
sequential_2_inputC
$serving_default_sequential_2_input:0?????????  @
activation_90
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?c
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?_
_tf_keras_sequential?_{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_2_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_1_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_2_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_1_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_1_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_1_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
"	variables
#regularization_losses
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
*	variables
+regularization_losses
,trainable_variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

.kernel
/bias
0	variables
1regularization_losses
2trainable_variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
4	variables
5regularization_losses
6trainable_variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
8	variables
9regularization_losses
:trainable_variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
^	variables
_regularization_losses
`trainable_variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem?m?.m?/m?<m?=m?Jm?Km?Xm?Ym?v?v?.v?/v?<v?=v?Jv?Kv?Xv?Yv?"
	optimizer
f
0
1
.2
/3
<4
=5
J6
K7
X8
Y9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
.2
/3
<4
=5
J6
K7
X8
Y9"
trackable_list_wrapper
?
glayer_metrics

hlayers
ilayer_regularization_losses
	variables
regularization_losses
jmetrics
knon_trainable_variables
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
l_rng
m	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_1", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
nlayer_metrics

olayers
player_regularization_losses
	variables
regularization_losses
qmetrics
rnon_trainable_variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_4/kernel
: 2conv2d_4/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

slayers
tlayer_regularization_losses
	variables
regularization_losses
 trainable_variables
umetrics
vnon_trainable_variables
wlayer_metrics
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

xlayers
ylayer_regularization_losses
"	variables
#regularization_losses
$trainable_variables
zmetrics
{non_trainable_variables
|layer_metrics
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

}layers
~layer_regularization_losses
&	variables
'regularization_losses
(trainable_variables
metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
*	variables
+regularization_losses
,trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_5/kernel
:@2conv2d_5/bias
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
0	variables
1regularization_losses
2trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
4	variables
5regularization_losses
6trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
8	variables
9regularization_losses
:trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@?2conv2d_6/kernel
:?2conv2d_6/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
>	variables
?regularization_losses
@trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
B	variables
Cregularization_losses
Dtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
F	variables
Gregularization_losses
Htrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2d_7/kernel
:?2conv2d_7/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
L	variables
Mregularization_losses
Ntrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
P	variables
Qregularization_losses
Rtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
T	variables
Uregularization_losses
Vtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_1/kernel
:
2dense_1/bias
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
Z	variables
[regularization_losses
\trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
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
?layers
 ?layer_regularization_losses
^	variables
_regularization_losses
`trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
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
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
.:, 2Adam/conv2d_4/kernel/m
 : 2Adam/conv2d_4/bias/m
.:, @2Adam/conv2d_5/kernel/m
 :@2Adam/conv2d_5/bias/m
/:-@?2Adam/conv2d_6/kernel/m
!:?2Adam/conv2d_6/bias/m
0:.??2Adam/conv2d_7/kernel/m
!:?2Adam/conv2d_7/bias/m
&:$	?
2Adam/dense_1/kernel/m
:
2Adam/dense_1/bias/m
.:, 2Adam/conv2d_4/kernel/v
 : 2Adam/conv2d_4/bias/v
.:, @2Adam/conv2d_5/kernel/v
 :@2Adam/conv2d_5/bias/v
/:-@?2Adam/conv2d_6/kernel/v
!:?2Adam/conv2d_6/bias/v
0:.??2Adam/conv2d_7/kernel/v
!:?2Adam/conv2d_7/bias/v
&:$	?
2Adam/dense_1/kernel/v
:
2Adam/dense_1/bias/v
?2?
-__inference_sequential_3_layer_call_fn_306976
-__inference_sequential_3_layer_call_fn_306911
-__inference_sequential_3_layer_call_fn_307255
-__inference_sequential_3_layer_call_fn_307230?
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
!__inference__wrapped_model_306283?
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
sequential_2_input?????????  
?2?
H__inference_sequential_3_layer_call_and_return_conditional_losses_306801
H__inference_sequential_3_layer_call_and_return_conditional_losses_307158
H__inference_sequential_3_layer_call_and_return_conditional_losses_307203
H__inference_sequential_3_layer_call_and_return_conditional_losses_306841?
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
-__inference_sequential_2_layer_call_fn_307365
-__inference_sequential_2_layer_call_fn_306503
-__inference_sequential_2_layer_call_fn_307370
-__inference_sequential_2_layer_call_fn_306494?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_307354
H__inference_sequential_2_layer_call_and_return_conditional_losses_306387
H__inference_sequential_2_layer_call_and_return_conditional_losses_307358
H__inference_sequential_2_layer_call_and_return_conditional_losses_306383?
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
)__inference_conv2d_4_layer_call_fn_307389?
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_307380?
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
-__inference_activation_5_layer_call_fn_307399?
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
H__inference_activation_5_layer_call_and_return_conditional_losses_307394?
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
0__inference_max_pooling2d_3_layer_call_fn_306515?
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_306509?
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
*__inference_dropout_3_layer_call_fn_307421
*__inference_dropout_3_layer_call_fn_307426?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_3_layer_call_and_return_conditional_losses_307416
E__inference_dropout_3_layer_call_and_return_conditional_losses_307411?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_conv2d_5_layer_call_fn_307445?
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_307436?
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
-__inference_activation_6_layer_call_fn_307455?
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
H__inference_activation_6_layer_call_and_return_conditional_losses_307450?
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
0__inference_max_pooling2d_4_layer_call_fn_306527?
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_306521?
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
)__inference_conv2d_6_layer_call_fn_307474?
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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_307465?
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
-__inference_activation_7_layer_call_fn_307484?
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
H__inference_activation_7_layer_call_and_return_conditional_losses_307479?
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
0__inference_max_pooling2d_5_layer_call_fn_306539?
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_306533?
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
)__inference_conv2d_7_layer_call_fn_307503?
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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_307494?
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
-__inference_activation_8_layer_call_fn_307513?
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
H__inference_activation_8_layer_call_and_return_conditional_losses_307508?
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
;__inference_global_average_pooling2d_1_layer_call_fn_306552?
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_306546?
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
(__inference_dense_1_layer_call_fn_307532?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_307523?
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
-__inference_activation_9_layer_call_fn_307542?
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
H__inference_activation_9_layer_call_and_return_conditional_losses_307537?
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
$__inference_signature_wrapper_307011sequential_2_input"?
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
!__inference__wrapped_model_306283?
./<=JKXYC?@
9?6
4?1
sequential_2_input?????????  
? ";?8
6
activation_9&?#
activation_9?????????
?
H__inference_activation_5_layer_call_and_return_conditional_losses_307394h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
-__inference_activation_5_layer_call_fn_307399[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
H__inference_activation_6_layer_call_and_return_conditional_losses_307450h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
-__inference_activation_6_layer_call_fn_307455[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
H__inference_activation_7_layer_call_and_return_conditional_losses_307479j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_activation_7_layer_call_fn_307484]8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_activation_8_layer_call_and_return_conditional_losses_307508j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_activation_8_layer_call_fn_307513]8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_activation_9_layer_call_and_return_conditional_losses_307537X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? |
-__inference_activation_9_layer_call_fn_307542K/?,
%?"
 ?
inputs?????????

? "??????????
?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_307380l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
)__inference_conv2d_4_layer_call_fn_307389_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_307436l./7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
)__inference_conv2d_5_layer_call_fn_307445_./7?4
-?*
(?%
inputs????????? 
? " ??????????@?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_307465m<=7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_6_layer_call_fn_307474`<=7?4
-?*
(?%
inputs?????????@
? "!????????????
D__inference_conv2d_7_layer_call_and_return_conditional_losses_307494nJK8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_7_layer_call_fn_307503aJK8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_1_layer_call_and_return_conditional_losses_307523]XY0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_1_layer_call_fn_307532PXY0?-
&?#
!?
inputs??????????
? "??????????
?
E__inference_dropout_3_layer_call_and_return_conditional_losses_307411l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
E__inference_dropout_3_layer_call_and_return_conditional_losses_307416l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
*__inference_dropout_3_layer_call_fn_307421_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
*__inference_dropout_3_layer_call_fn_307426_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_306546?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_1_layer_call_fn_306552wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_306509?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_3_layer_call_fn_306515?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_306521?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_4_layer_call_fn_306527?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_306533?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_5_layer_call_fn_306539?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_2_layer_call_and_return_conditional_losses_306383??L?I
B??
5?2
random_zoom_1_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_306387}L?I
B??
5?2
random_zoom_1_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_307354t???<
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_307358p??<
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
-__inference_sequential_2_layer_call_fn_306494t?L?I
B??
5?2
random_zoom_1_input?????????  
p

 
? " ??????????  ?
-__inference_sequential_2_layer_call_fn_306503pL?I
B??
5?2
random_zoom_1_input?????????  
p 

 
? " ??????????  ?
-__inference_sequential_2_layer_call_fn_307365g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
-__inference_sequential_2_layer_call_fn_307370c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_306801??./<=JKXYK?H
A?>
4?1
sequential_2_input?????????  
p

 
? "%?"
?
0?????????

? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_306841?
./<=JKXYK?H
A?>
4?1
sequential_2_input?????????  
p 

 
? "%?"
?
0?????????

? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_307158v?./<=JKXY??<
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_307203t
./<=JKXY??<
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
-__inference_sequential_3_layer_call_fn_306911u?./<=JKXYK?H
A?>
4?1
sequential_2_input?????????  
p

 
? "??????????
?
-__inference_sequential_3_layer_call_fn_306976s
./<=JKXYK?H
A?>
4?1
sequential_2_input?????????  
p 

 
? "??????????
?
-__inference_sequential_3_layer_call_fn_307230i?./<=JKXY??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
-__inference_sequential_3_layer_call_fn_307255g
./<=JKXY??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_307011?
./<=JKXYY?V
? 
O?L
J
sequential_2_input4?1
sequential_2_input?????????  ";?8
6
activation_9&?#
activation_9?????????
