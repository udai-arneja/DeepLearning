??
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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
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
?
_iter

`beta_1

abeta_2
	bdecay
clearning_ratem?m?+m?,m?9m?:m?Gm?Hm?Um?Vm?v?v?+v?,v?9v?:v?Gv?Hv?Uv?Vv?
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
?
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
?
regularization_losses
olayer_metrics
	variables
pnon_trainable_variables

qlayers
trainable_variables
rmetrics
slayer_regularization_losses
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
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
?
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
?
'regularization_losses
~layer_metrics
(	variables
non_trainable_variables
?layers
)trainable_variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
?
-regularization_losses
?layer_metrics
.	variables
?non_trainable_variables
?layers
/trainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
1regularization_losses
?layer_metrics
2	variables
?non_trainable_variables
?layers
3trainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
5regularization_losses
?layer_metrics
6	variables
?non_trainable_variables
?layers
7trainable_variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

90
:1

90
:1
?
;regularization_losses
?layer_metrics
<	variables
?non_trainable_variables
?layers
=trainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
?regularization_losses
?layer_metrics
@	variables
?non_trainable_variables
?layers
Atrainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Cregularization_losses
?layer_metrics
D	variables
?non_trainable_variables
?layers
Etrainable_variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

G0
H1
?
Iregularization_losses
?layer_metrics
J	variables
?non_trainable_variables
?layers
Ktrainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Mregularization_losses
?layer_metrics
N	variables
?non_trainable_variables
?layers
Otrainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Qregularization_losses
?layer_metrics
R	variables
?non_trainable_variables
?layers
Strainable_variables
?metrics
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
?
Wregularization_losses
?layer_metrics
X	variables
?non_trainable_variables
?layers
Ytrainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
[regularization_losses
?layer_metrics
\	variables
?non_trainable_variables
?layers
]trainable_variables
?metrics
 ?layer_regularization_losses
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
?0
?1
 

?
_state_var
 

?
_state_var
 

?
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
$__inference_signature_wrapper_308549
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*7
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_309480
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*6
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_309616??
?	
?
-__inference_sequential_3_layer_call_fn_308450
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
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_3084232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????  ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_2_input
?	
?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_308188

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
u
H__inference_sequential_2_layer_call_and_return_conditional_losses_307814
random_rotation_1_input
identitys
IdentityIdentityrandom_rotation_1_input*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :h d
/
_output_shapes
:?????????  
1
_user_specified_namerandom_rotation_1_input
?
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_308063

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
?:
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_308866

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
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
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
?
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_308096

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
?	
?
-__inference_sequential_3_layer_call_fn_308514
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_3084912
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
?
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_308084

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
?
?
-__inference_sequential_3_layer_call_fn_308920

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
H__inference_sequential_3_layer_call_and_return_conditional_losses_3084912
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
?
I
-__inference_activation_5_layer_call_fn_309200

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
H__inference_activation_5_layer_call_and_return_conditional_losses_3081692
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
?
W
;__inference_global_average_pooling2d_1_layer_call_fn_308115

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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3081092
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
Ц
?	
H__inference_sequential_3_layer_call_and_return_conditional_losses_308822

inputsL
Hsequential_2_random_rotation_1_stateful_uniform_statefuluniform_resourceO
Ksequential_2_random_translation_1_stateful_uniform_statefuluniform_resource+
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
identity??conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?conv2d_5/BiasAdd/ReadVariableOp?conv2d_5/Conv2D/ReadVariableOp?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp??sequential_2/random_rotation_1/stateful_uniform/StatefulUniform?Bsequential_2/random_translation_1/stateful_uniform/StatefulUniform?Dsequential_2/random_translation_1/stateful_uniform_1/StatefulUniform?
$sequential_2/random_rotation_1/ShapeShapeinputs*
T0*
_output_shapes
:2&
$sequential_2/random_rotation_1/Shape?
2sequential_2/random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_2/random_rotation_1/strided_slice/stack?
4sequential_2/random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation_1/strided_slice/stack_1?
4sequential_2/random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation_1/strided_slice/stack_2?
,sequential_2/random_rotation_1/strided_sliceStridedSlice-sequential_2/random_rotation_1/Shape:output:0;sequential_2/random_rotation_1/strided_slice/stack:output:0=sequential_2/random_rotation_1/strided_slice/stack_1:output:0=sequential_2/random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_2/random_rotation_1/strided_slice?
4sequential_2/random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation_1/strided_slice_1/stack?
6sequential_2/random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/random_rotation_1/strided_slice_1/stack_1?
6sequential_2/random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/random_rotation_1/strided_slice_1/stack_2?
.sequential_2/random_rotation_1/strided_slice_1StridedSlice-sequential_2/random_rotation_1/Shape:output:0=sequential_2/random_rotation_1/strided_slice_1/stack:output:0?sequential_2/random_rotation_1/strided_slice_1/stack_1:output:0?sequential_2/random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/random_rotation_1/strided_slice_1?
#sequential_2/random_rotation_1/CastCast7sequential_2/random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_2/random_rotation_1/Cast?
4sequential_2/random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_2/random_rotation_1/strided_slice_2/stack?
6sequential_2/random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/random_rotation_1/strided_slice_2/stack_1?
6sequential_2/random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/random_rotation_1/strided_slice_2/stack_2?
.sequential_2/random_rotation_1/strided_slice_2StridedSlice-sequential_2/random_rotation_1/Shape:output:0=sequential_2/random_rotation_1/strided_slice_2/stack:output:0?sequential_2/random_rotation_1/strided_slice_2/stack_1:output:0?sequential_2/random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_2/random_rotation_1/strided_slice_2?
%sequential_2/random_rotation_1/Cast_1Cast7sequential_2/random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_2/random_rotation_1/Cast_1?
5sequential_2/random_rotation_1/stateful_uniform/shapePack5sequential_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:27
5sequential_2/random_rotation_1/stateful_uniform/shape?
3sequential_2/random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:F??25
3sequential_2/random_rotation_1/stateful_uniform/min?
3sequential_2/random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F??25
3sequential_2/random_rotation_1/stateful_uniform/max?
Isequential_2/random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2K
Isequential_2/random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
?sequential_2/random_rotation_1/stateful_uniform/StatefulUniformStatefulUniformHsequential_2_random_rotation_1_stateful_uniform_statefuluniform_resourceRsequential_2/random_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:0>sequential_2/random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype02A
?sequential_2/random_rotation_1/stateful_uniform/StatefulUniform?
3sequential_2/random_rotation_1/stateful_uniform/subSub<sequential_2/random_rotation_1/stateful_uniform/max:output:0<sequential_2/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 25
3sequential_2/random_rotation_1/stateful_uniform/sub?
3sequential_2/random_rotation_1/stateful_uniform/mulMulHsequential_2/random_rotation_1/stateful_uniform/StatefulUniform:output:07sequential_2/random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????25
3sequential_2/random_rotation_1/stateful_uniform/mul?
/sequential_2/random_rotation_1/stateful_uniformAdd7sequential_2/random_rotation_1/stateful_uniform/mul:z:0<sequential_2/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????21
/sequential_2/random_rotation_1/stateful_uniform?
4sequential_2/random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_2/random_rotation_1/rotation_matrix/sub/y?
2sequential_2/random_rotation_1/rotation_matrix/subSub)sequential_2/random_rotation_1/Cast_1:y:0=sequential_2/random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 24
2sequential_2/random_rotation_1/rotation_matrix/sub?
2sequential_2/random_rotation_1/rotation_matrix/CosCos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_2/random_rotation_1/rotation_matrix/Cos?
6sequential_2/random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_2/random_rotation_1/rotation_matrix/sub_1/y?
4sequential_2/random_rotation_1/rotation_matrix/sub_1Sub)sequential_2/random_rotation_1/Cast_1:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_1?
2sequential_2/random_rotation_1/rotation_matrix/mulMul6sequential_2/random_rotation_1/rotation_matrix/Cos:y:08sequential_2/random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????24
2sequential_2/random_rotation_1/rotation_matrix/mul?
2sequential_2/random_rotation_1/rotation_matrix/SinSin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_2/random_rotation_1/rotation_matrix/Sin?
6sequential_2/random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_2/random_rotation_1/rotation_matrix/sub_2/y?
4sequential_2/random_rotation_1/rotation_matrix/sub_2Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_2?
4sequential_2/random_rotation_1/rotation_matrix/mul_1Mul6sequential_2/random_rotation_1/rotation_matrix/Sin:y:08sequential_2/random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/mul_1?
4sequential_2/random_rotation_1/rotation_matrix/sub_3Sub6sequential_2/random_rotation_1/rotation_matrix/mul:z:08sequential_2/random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/sub_3?
4sequential_2/random_rotation_1/rotation_matrix/sub_4Sub6sequential_2/random_rotation_1/rotation_matrix/sub:z:08sequential_2/random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/sub_4?
8sequential_2/random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2:
8sequential_2/random_rotation_1/rotation_matrix/truediv/y?
6sequential_2/random_rotation_1/rotation_matrix/truedivRealDiv8sequential_2/random_rotation_1/rotation_matrix/sub_4:z:0Asequential_2/random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????28
6sequential_2/random_rotation_1/rotation_matrix/truediv?
6sequential_2/random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_2/random_rotation_1/rotation_matrix/sub_5/y?
4sequential_2/random_rotation_1/rotation_matrix/sub_5Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_5?
4sequential_2/random_rotation_1/rotation_matrix/Sin_1Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/Sin_1?
6sequential_2/random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_2/random_rotation_1/rotation_matrix/sub_6/y?
4sequential_2/random_rotation_1/rotation_matrix/sub_6Sub)sequential_2/random_rotation_1/Cast_1:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_6?
4sequential_2/random_rotation_1/rotation_matrix/mul_2Mul8sequential_2/random_rotation_1/rotation_matrix/Sin_1:y:08sequential_2/random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/mul_2?
4sequential_2/random_rotation_1/rotation_matrix/Cos_1Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/Cos_1?
6sequential_2/random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_2/random_rotation_1/rotation_matrix/sub_7/y?
4sequential_2/random_rotation_1/rotation_matrix/sub_7Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 26
4sequential_2/random_rotation_1/rotation_matrix/sub_7?
4sequential_2/random_rotation_1/rotation_matrix/mul_3Mul8sequential_2/random_rotation_1/rotation_matrix/Cos_1:y:08sequential_2/random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/mul_3?
2sequential_2/random_rotation_1/rotation_matrix/addAddV28sequential_2/random_rotation_1/rotation_matrix/mul_2:z:08sequential_2/random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????24
2sequential_2/random_rotation_1/rotation_matrix/add?
4sequential_2/random_rotation_1/rotation_matrix/sub_8Sub8sequential_2/random_rotation_1/rotation_matrix/sub_5:z:06sequential_2/random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/sub_8?
:sequential_2/random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_2/random_rotation_1/rotation_matrix/truediv_1/y?
8sequential_2/random_rotation_1/rotation_matrix/truediv_1RealDiv8sequential_2/random_rotation_1/rotation_matrix/sub_8:z:0Csequential_2/random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2:
8sequential_2/random_rotation_1/rotation_matrix/truediv_1?
4sequential_2/random_rotation_1/rotation_matrix/ShapeShape3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:26
4sequential_2/random_rotation_1/rotation_matrix/Shape?
Bsequential_2/random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2?
<sequential_2/random_rotation_1/rotation_matrix/strided_sliceStridedSlice=sequential_2/random_rotation_1/rotation_matrix/Shape:output:0Ksequential_2/random_rotation_1/rotation_matrix/strided_slice/stack:output:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<sequential_2/random_rotation_1/rotation_matrix/strided_slice?
4sequential_2/random_rotation_1/rotation_matrix/Cos_2Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/Cos_2?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_1StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Cos_2:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_1?
4sequential_2/random_rotation_1/rotation_matrix/Sin_2Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/Sin_2?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_2StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Sin_2:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_2?
2sequential_2/random_rotation_1/rotation_matrix/NegNegGsequential_2/random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????24
2sequential_2/random_rotation_1/rotation_matrix/Neg?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_3StridedSlice:sequential_2/random_rotation_1/rotation_matrix/truediv:z:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_3?
4sequential_2/random_rotation_1/rotation_matrix/Sin_3Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/Sin_3?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_4StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Sin_3:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_4?
4sequential_2/random_rotation_1/rotation_matrix/Cos_3Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/Cos_3?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_5StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Cos_3:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_5?
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_6StridedSlice<sequential_2/random_rotation_1/rotation_matrix/truediv_1:z:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_6?
:sequential_2/random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_2/random_rotation_1/rotation_matrix/zeros/mul/y?
8sequential_2/random_rotation_1/rotation_matrix/zeros/mulMulEsequential_2/random_rotation_1/rotation_matrix/strided_slice:output:0Csequential_2/random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2:
8sequential_2/random_rotation_1/rotation_matrix/zeros/mul?
;sequential_2/random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2=
;sequential_2/random_rotation_1/rotation_matrix/zeros/Less/y?
9sequential_2/random_rotation_1/rotation_matrix/zeros/LessLess<sequential_2/random_rotation_1/rotation_matrix/zeros/mul:z:0Dsequential_2/random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2;
9sequential_2/random_rotation_1/rotation_matrix/zeros/Less?
=sequential_2/random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential_2/random_rotation_1/rotation_matrix/zeros/packed/1?
;sequential_2/random_rotation_1/rotation_matrix/zeros/packedPackEsequential_2/random_rotation_1/rotation_matrix/strided_slice:output:0Fsequential_2/random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2=
;sequential_2/random_rotation_1/rotation_matrix/zeros/packed?
:sequential_2/random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2<
:sequential_2/random_rotation_1/rotation_matrix/zeros/Const?
4sequential_2/random_rotation_1/rotation_matrix/zerosFillDsequential_2/random_rotation_1/rotation_matrix/zeros/packed:output:0Csequential_2/random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????26
4sequential_2/random_rotation_1/rotation_matrix/zeros?
:sequential_2/random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_2/random_rotation_1/rotation_matrix/concat/axis?
5sequential_2/random_rotation_1/rotation_matrix/concatConcatV2Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_1:output:06sequential_2/random_rotation_1/rotation_matrix/Neg:y:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_3:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_4:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_5:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_6:output:0=sequential_2/random_rotation_1/rotation_matrix/zeros:output:0Csequential_2/random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????27
5sequential_2/random_rotation_1/rotation_matrix/concat?
.sequential_2/random_rotation_1/transform/ShapeShapeinputs*
T0*
_output_shapes
:20
.sequential_2/random_rotation_1/transform/Shape?
<sequential_2/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/random_rotation_1/transform/strided_slice/stack?
>sequential_2/random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/random_rotation_1/transform/strided_slice/stack_1?
>sequential_2/random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_2/random_rotation_1/transform/strided_slice/stack_2?
6sequential_2/random_rotation_1/transform/strided_sliceStridedSlice7sequential_2/random_rotation_1/transform/Shape:output:0Esequential_2/random_rotation_1/transform/strided_slice/stack:output:0Gsequential_2/random_rotation_1/transform/strided_slice/stack_1:output:0Gsequential_2/random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:28
6sequential_2/random_rotation_1/transform/strided_slice?
3sequential_2/random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_2/random_rotation_1/transform/fill_value?
Csequential_2/random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs>sequential_2/random_rotation_1/rotation_matrix/concat:output:0?sequential_2/random_rotation_1/transform/strided_slice:output:0<sequential_2/random_rotation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2E
Csequential_2/random_rotation_1/transform/ImageProjectiveTransformV3?
'sequential_2/random_translation_1/ShapeShapeXsequential_2/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2)
'sequential_2/random_translation_1/Shape?
5sequential_2/random_translation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_2/random_translation_1/strided_slice/stack?
7sequential_2/random_translation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_2/random_translation_1/strided_slice/stack_1?
7sequential_2/random_translation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_2/random_translation_1/strided_slice/stack_2?
/sequential_2/random_translation_1/strided_sliceStridedSlice0sequential_2/random_translation_1/Shape:output:0>sequential_2/random_translation_1/strided_slice/stack:output:0@sequential_2/random_translation_1/strided_slice/stack_1:output:0@sequential_2/random_translation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_2/random_translation_1/strided_slice?
7sequential_2/random_translation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7sequential_2/random_translation_1/strided_slice_1/stack?
9sequential_2/random_translation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_2/random_translation_1/strided_slice_1/stack_1?
9sequential_2/random_translation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_2/random_translation_1/strided_slice_1/stack_2?
1sequential_2/random_translation_1/strided_slice_1StridedSlice0sequential_2/random_translation_1/Shape:output:0@sequential_2/random_translation_1/strided_slice_1/stack:output:0Bsequential_2/random_translation_1/strided_slice_1/stack_1:output:0Bsequential_2/random_translation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_2/random_translation_1/strided_slice_1?
&sequential_2/random_translation_1/CastCast:sequential_2/random_translation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_2/random_translation_1/Cast?
7sequential_2/random_translation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7sequential_2/random_translation_1/strided_slice_2/stack?
9sequential_2/random_translation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_2/random_translation_1/strided_slice_2/stack_1?
9sequential_2/random_translation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_2/random_translation_1/strided_slice_2/stack_2?
1sequential_2/random_translation_1/strided_slice_2StridedSlice0sequential_2/random_translation_1/Shape:output:0@sequential_2/random_translation_1/strided_slice_2/stack:output:0Bsequential_2/random_translation_1/strided_slice_2/stack_1:output:0Bsequential_2/random_translation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_2/random_translation_1/strided_slice_2?
(sequential_2/random_translation_1/Cast_1Cast:sequential_2/random_translation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2*
(sequential_2/random_translation_1/Cast_1?
:sequential_2/random_translation_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_2/random_translation_1/stateful_uniform/shape/1?
8sequential_2/random_translation_1/stateful_uniform/shapePack8sequential_2/random_translation_1/strided_slice:output:0Csequential_2/random_translation_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2:
8sequential_2/random_translation_1/stateful_uniform/shape?
6sequential_2/random_translation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????28
6sequential_2/random_translation_1/stateful_uniform/min?
6sequential_2/random_translation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>28
6sequential_2/random_translation_1/stateful_uniform/max?
Lsequential_2/random_translation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2N
Lsequential_2/random_translation_1/stateful_uniform/StatefulUniform/algorithm?
Bsequential_2/random_translation_1/stateful_uniform/StatefulUniformStatefulUniformKsequential_2_random_translation_1_stateful_uniform_statefuluniform_resourceUsequential_2/random_translation_1/stateful_uniform/StatefulUniform/algorithm:output:0Asequential_2/random_translation_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02D
Bsequential_2/random_translation_1/stateful_uniform/StatefulUniform?
6sequential_2/random_translation_1/stateful_uniform/subSub?sequential_2/random_translation_1/stateful_uniform/max:output:0?sequential_2/random_translation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 28
6sequential_2/random_translation_1/stateful_uniform/sub?
6sequential_2/random_translation_1/stateful_uniform/mulMulKsequential_2/random_translation_1/stateful_uniform/StatefulUniform:output:0:sequential_2/random_translation_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????28
6sequential_2/random_translation_1/stateful_uniform/mul?
2sequential_2/random_translation_1/stateful_uniformAdd:sequential_2/random_translation_1/stateful_uniform/mul:z:0?sequential_2/random_translation_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????24
2sequential_2/random_translation_1/stateful_uniform?
%sequential_2/random_translation_1/mulMul6sequential_2/random_translation_1/stateful_uniform:z:0*sequential_2/random_translation_1/Cast:y:0*
T0*'
_output_shapes
:?????????2'
%sequential_2/random_translation_1/mul?
<sequential_2/random_translation_1/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_2/random_translation_1/stateful_uniform_1/shape/1?
:sequential_2/random_translation_1/stateful_uniform_1/shapePack8sequential_2/random_translation_1/strided_slice:output:0Esequential_2/random_translation_1/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2<
:sequential_2/random_translation_1/stateful_uniform_1/shape?
8sequential_2/random_translation_1/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2:
8sequential_2/random_translation_1/stateful_uniform_1/min?
8sequential_2/random_translation_1/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>2:
8sequential_2/random_translation_1/stateful_uniform_1/max?
Nsequential_2/random_translation_1/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2P
Nsequential_2/random_translation_1/stateful_uniform_1/StatefulUniform/algorithm?
Dsequential_2/random_translation_1/stateful_uniform_1/StatefulUniformStatefulUniformKsequential_2_random_translation_1_stateful_uniform_statefuluniform_resourceWsequential_2/random_translation_1/stateful_uniform_1/StatefulUniform/algorithm:output:0Csequential_2/random_translation_1/stateful_uniform_1/shape:output:0C^sequential_2/random_translation_1/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype02F
Dsequential_2/random_translation_1/stateful_uniform_1/StatefulUniform?
8sequential_2/random_translation_1/stateful_uniform_1/subSubAsequential_2/random_translation_1/stateful_uniform_1/max:output:0Asequential_2/random_translation_1/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2:
8sequential_2/random_translation_1/stateful_uniform_1/sub?
8sequential_2/random_translation_1/stateful_uniform_1/mulMulMsequential_2/random_translation_1/stateful_uniform_1/StatefulUniform:output:0<sequential_2/random_translation_1/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2:
8sequential_2/random_translation_1/stateful_uniform_1/mul?
4sequential_2/random_translation_1/stateful_uniform_1Add<sequential_2/random_translation_1/stateful_uniform_1/mul:z:0Asequential_2/random_translation_1/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????26
4sequential_2/random_translation_1/stateful_uniform_1?
'sequential_2/random_translation_1/mul_1Mul8sequential_2/random_translation_1/stateful_uniform_1:z:0,sequential_2/random_translation_1/Cast_1:y:0*
T0*'
_output_shapes
:?????????2)
'sequential_2/random_translation_1/mul_1?
-sequential_2/random_translation_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_2/random_translation_1/concat/axis?
(sequential_2/random_translation_1/concatConcatV2+sequential_2/random_translation_1/mul_1:z:0)sequential_2/random_translation_1/mul:z:06sequential_2/random_translation_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(sequential_2/random_translation_1/concat?
:sequential_2/random_translation_1/translation_matrix/ShapeShape1sequential_2/random_translation_1/concat:output:0*
T0*
_output_shapes
:2<
:sequential_2/random_translation_1/translation_matrix/Shape?
Hsequential_2/random_translation_1/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hsequential_2/random_translation_1/translation_matrix/strided_slice/stack?
Jsequential_2/random_translation_1/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_translation_1/translation_matrix/strided_slice/stack_1?
Jsequential_2/random_translation_1/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2L
Jsequential_2/random_translation_1/translation_matrix/strided_slice/stack_2?
Bsequential_2/random_translation_1/translation_matrix/strided_sliceStridedSliceCsequential_2/random_translation_1/translation_matrix/Shape:output:0Qsequential_2/random_translation_1/translation_matrix/strided_slice/stack:output:0Ssequential_2/random_translation_1/translation_matrix/strided_slice/stack_1:output:0Ssequential_2/random_translation_1/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2D
Bsequential_2/random_translation_1/translation_matrix/strided_slice?
?sequential_2/random_translation_1/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_2/random_translation_1/translation_matrix/ones/mul/y?
=sequential_2/random_translation_1/translation_matrix/ones/mulMulKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Hsequential_2/random_translation_1/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 2?
=sequential_2/random_translation_1/translation_matrix/ones/mul?
@sequential_2/random_translation_1/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2B
@sequential_2/random_translation_1/translation_matrix/ones/Less/y?
>sequential_2/random_translation_1/translation_matrix/ones/LessLessAsequential_2/random_translation_1/translation_matrix/ones/mul:z:0Isequential_2/random_translation_1/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 2@
>sequential_2/random_translation_1/translation_matrix/ones/Less?
Bsequential_2/random_translation_1/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_2/random_translation_1/translation_matrix/ones/packed/1?
@sequential_2/random_translation_1/translation_matrix/ones/packedPackKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Ksequential_2/random_translation_1/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:2B
@sequential_2/random_translation_1/translation_matrix/ones/packed?
?sequential_2/random_translation_1/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2A
?sequential_2/random_translation_1/translation_matrix/ones/Const?
9sequential_2/random_translation_1/translation_matrix/onesFillIsequential_2/random_translation_1/translation_matrix/ones/packed:output:0Hsequential_2/random_translation_1/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2;
9sequential_2/random_translation_1/translation_matrix/ones?
@sequential_2/random_translation_1/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@sequential_2/random_translation_1/translation_matrix/zeros/mul/y?
>sequential_2/random_translation_1/translation_matrix/zeros/mulMulKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Isequential_2/random_translation_1/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2@
>sequential_2/random_translation_1/translation_matrix/zeros/mul?
Asequential_2/random_translation_1/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2C
Asequential_2/random_translation_1/translation_matrix/zeros/Less/y?
?sequential_2/random_translation_1/translation_matrix/zeros/LessLessBsequential_2/random_translation_1/translation_matrix/zeros/mul:z:0Jsequential_2/random_translation_1/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2A
?sequential_2/random_translation_1/translation_matrix/zeros/Less?
Csequential_2/random_translation_1/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_2/random_translation_1/translation_matrix/zeros/packed/1?
Asequential_2/random_translation_1/translation_matrix/zeros/packedPackKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Lsequential_2/random_translation_1/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2C
Asequential_2/random_translation_1/translation_matrix/zeros/packed?
@sequential_2/random_translation_1/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2B
@sequential_2/random_translation_1/translation_matrix/zeros/Const?
:sequential_2/random_translation_1/translation_matrix/zerosFillJsequential_2/random_translation_1/translation_matrix/zeros/packed:output:0Isequential_2/random_translation_1/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2<
:sequential_2/random_translation_1/translation_matrix/zeros?
Jsequential_2/random_translation_1/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2L
Jsequential_2/random_translation_1/translation_matrix/strided_slice_1/stack?
Lsequential_2/random_translation_1/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2N
Lsequential_2/random_translation_1/translation_matrix/strided_slice_1/stack_1?
Lsequential_2/random_translation_1/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2N
Lsequential_2/random_translation_1/translation_matrix/strided_slice_1/stack_2?
Dsequential_2/random_translation_1/translation_matrix/strided_slice_1StridedSlice1sequential_2/random_translation_1/concat:output:0Ssequential_2/random_translation_1/translation_matrix/strided_slice_1/stack:output:0Usequential_2/random_translation_1/translation_matrix/strided_slice_1/stack_1:output:0Usequential_2/random_translation_1/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2F
Dsequential_2/random_translation_1/translation_matrix/strided_slice_1?
8sequential_2/random_translation_1/translation_matrix/NegNegMsequential_2/random_translation_1/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2:
8sequential_2/random_translation_1/translation_matrix/Neg?
Bsequential_2/random_translation_1/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_2/random_translation_1/translation_matrix/zeros_1/mul/y?
@sequential_2/random_translation_1/translation_matrix/zeros_1/mulMulKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Ksequential_2/random_translation_1/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2B
@sequential_2/random_translation_1/translation_matrix/zeros_1/mul?
Csequential_2/random_translation_1/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2E
Csequential_2/random_translation_1/translation_matrix/zeros_1/Less/y?
Asequential_2/random_translation_1/translation_matrix/zeros_1/LessLessDsequential_2/random_translation_1/translation_matrix/zeros_1/mul:z:0Lsequential_2/random_translation_1/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2C
Asequential_2/random_translation_1/translation_matrix/zeros_1/Less?
Esequential_2/random_translation_1/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Esequential_2/random_translation_1/translation_matrix/zeros_1/packed/1?
Csequential_2/random_translation_1/translation_matrix/zeros_1/packedPackKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Nsequential_2/random_translation_1/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2E
Csequential_2/random_translation_1/translation_matrix/zeros_1/packed?
Bsequential_2/random_translation_1/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_2/random_translation_1/translation_matrix/zeros_1/Const?
<sequential_2/random_translation_1/translation_matrix/zeros_1FillLsequential_2/random_translation_1/translation_matrix/zeros_1/packed:output:0Ksequential_2/random_translation_1/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2>
<sequential_2/random_translation_1/translation_matrix/zeros_1?
Asequential_2/random_translation_1/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_2/random_translation_1/translation_matrix/ones_1/mul/y?
?sequential_2/random_translation_1/translation_matrix/ones_1/mulMulKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Jsequential_2/random_translation_1/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 2A
?sequential_2/random_translation_1/translation_matrix/ones_1/mul?
Bsequential_2/random_translation_1/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2D
Bsequential_2/random_translation_1/translation_matrix/ones_1/Less/y?
@sequential_2/random_translation_1/translation_matrix/ones_1/LessLessCsequential_2/random_translation_1/translation_matrix/ones_1/mul:z:0Ksequential_2/random_translation_1/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 2B
@sequential_2/random_translation_1/translation_matrix/ones_1/Less?
Dsequential_2/random_translation_1/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2F
Dsequential_2/random_translation_1/translation_matrix/ones_1/packed/1?
Bsequential_2/random_translation_1/translation_matrix/ones_1/packedPackKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Msequential_2/random_translation_1/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:2D
Bsequential_2/random_translation_1/translation_matrix/ones_1/packed?
Asequential_2/random_translation_1/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2C
Asequential_2/random_translation_1/translation_matrix/ones_1/Const?
;sequential_2/random_translation_1/translation_matrix/ones_1FillKsequential_2/random_translation_1/translation_matrix/ones_1/packed:output:0Jsequential_2/random_translation_1/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????2=
;sequential_2/random_translation_1/translation_matrix/ones_1?
Jsequential_2/random_translation_1/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2L
Jsequential_2/random_translation_1/translation_matrix/strided_slice_2/stack?
Lsequential_2/random_translation_1/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2N
Lsequential_2/random_translation_1/translation_matrix/strided_slice_2/stack_1?
Lsequential_2/random_translation_1/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2N
Lsequential_2/random_translation_1/translation_matrix/strided_slice_2/stack_2?
Dsequential_2/random_translation_1/translation_matrix/strided_slice_2StridedSlice1sequential_2/random_translation_1/concat:output:0Ssequential_2/random_translation_1/translation_matrix/strided_slice_2/stack:output:0Usequential_2/random_translation_1/translation_matrix/strided_slice_2/stack_1:output:0Usequential_2/random_translation_1/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2F
Dsequential_2/random_translation_1/translation_matrix/strided_slice_2?
:sequential_2/random_translation_1/translation_matrix/Neg_1NegMsequential_2/random_translation_1/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2<
:sequential_2/random_translation_1/translation_matrix/Neg_1?
Bsequential_2/random_translation_1/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_2/random_translation_1/translation_matrix/zeros_2/mul/y?
@sequential_2/random_translation_1/translation_matrix/zeros_2/mulMulKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Ksequential_2/random_translation_1/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2B
@sequential_2/random_translation_1/translation_matrix/zeros_2/mul?
Csequential_2/random_translation_1/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2E
Csequential_2/random_translation_1/translation_matrix/zeros_2/Less/y?
Asequential_2/random_translation_1/translation_matrix/zeros_2/LessLessDsequential_2/random_translation_1/translation_matrix/zeros_2/mul:z:0Lsequential_2/random_translation_1/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2C
Asequential_2/random_translation_1/translation_matrix/zeros_2/Less?
Esequential_2/random_translation_1/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2G
Esequential_2/random_translation_1/translation_matrix/zeros_2/packed/1?
Csequential_2/random_translation_1/translation_matrix/zeros_2/packedPackKsequential_2/random_translation_1/translation_matrix/strided_slice:output:0Nsequential_2/random_translation_1/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2E
Csequential_2/random_translation_1/translation_matrix/zeros_2/packed?
Bsequential_2/random_translation_1/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_2/random_translation_1/translation_matrix/zeros_2/Const?
<sequential_2/random_translation_1/translation_matrix/zeros_2FillLsequential_2/random_translation_1/translation_matrix/zeros_2/packed:output:0Ksequential_2/random_translation_1/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2>
<sequential_2/random_translation_1/translation_matrix/zeros_2?
@sequential_2/random_translation_1/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2B
@sequential_2/random_translation_1/translation_matrix/concat/axis?
;sequential_2/random_translation_1/translation_matrix/concatConcatV2Bsequential_2/random_translation_1/translation_matrix/ones:output:0Csequential_2/random_translation_1/translation_matrix/zeros:output:0<sequential_2/random_translation_1/translation_matrix/Neg:y:0Esequential_2/random_translation_1/translation_matrix/zeros_1:output:0Dsequential_2/random_translation_1/translation_matrix/ones_1:output:0>sequential_2/random_translation_1/translation_matrix/Neg_1:y:0Esequential_2/random_translation_1/translation_matrix/zeros_2:output:0Isequential_2/random_translation_1/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2=
;sequential_2/random_translation_1/translation_matrix/concat?
1sequential_2/random_translation_1/transform/ShapeShapeXsequential_2/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:23
1sequential_2/random_translation_1/transform/Shape?
?sequential_2/random_translation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_2/random_translation_1/transform/strided_slice/stack?
Asequential_2/random_translation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_2/random_translation_1/transform/strided_slice/stack_1?
Asequential_2/random_translation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_2/random_translation_1/transform/strided_slice/stack_2?
9sequential_2/random_translation_1/transform/strided_sliceStridedSlice:sequential_2/random_translation_1/transform/Shape:output:0Hsequential_2/random_translation_1/transform/strided_slice/stack:output:0Jsequential_2/random_translation_1/transform/strided_slice/stack_1:output:0Jsequential_2/random_translation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2;
9sequential_2/random_translation_1/transform/strided_slice?
6sequential_2/random_translation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    28
6sequential_2/random_translation_1/transform/fill_value?
Fsequential_2/random_translation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Xsequential_2/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0Dsequential_2/random_translation_1/translation_matrix/concat:output:0Bsequential_2/random_translation_1/transform/strided_slice:output:0?sequential_2/random_translation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2H
Fsequential_2/random_translation_1/transform/ImageProjectiveTransformV3?
Dsequential_2/random_flip_1/random_flip_left_right/control_dependencyIdentity[sequential_2/random_translation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*Y
_classO
MKloc:@sequential_2/random_translation_1/transform/ImageProjectiveTransformV3*/
_output_shapes
:?????????  2F
Dsequential_2/random_flip_1/random_flip_left_right/control_dependency?
7sequential_2/random_flip_1/random_flip_left_right/ShapeShapeMsequential_2/random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:29
7sequential_2/random_flip_1/random_flip_left_right/Shape?
Esequential_2/random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_2/random_flip_1/random_flip_left_right/strided_slice/stack?
Gsequential_2/random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_2/random_flip_1/random_flip_left_right/strided_slice/stack_1?
Gsequential_2/random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_2/random_flip_1/random_flip_left_right/strided_slice/stack_2?
?sequential_2/random_flip_1/random_flip_left_right/strided_sliceStridedSlice@sequential_2/random_flip_1/random_flip_left_right/Shape:output:0Nsequential_2/random_flip_1/random_flip_left_right/strided_slice/stack:output:0Psequential_2/random_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Psequential_2/random_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2A
?sequential_2/random_flip_1/random_flip_left_right/strided_slice?
Fsequential_2/random_flip_1/random_flip_left_right/random_uniform/shapePackHsequential_2/random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2H
Fsequential_2/random_flip_1/random_flip_left_right/random_uniform/shape?
Dsequential_2/random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2F
Dsequential_2/random_flip_1/random_flip_left_right/random_uniform/min?
Dsequential_2/random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2F
Dsequential_2/random_flip_1/random_flip_left_right/random_uniform/max?
Nsequential_2/random_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformOsequential_2/random_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02P
Nsequential_2/random_flip_1/random_flip_left_right/random_uniform/RandomUniform?
Dsequential_2/random_flip_1/random_flip_left_right/random_uniform/MulMulWsequential_2/random_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0Msequential_2/random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????2F
Dsequential_2/random_flip_1/random_flip_left_right/random_uniform/Mul?
Asequential_2/random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_2/random_flip_1/random_flip_left_right/Reshape/shape/1?
Asequential_2/random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_2/random_flip_1/random_flip_left_right/Reshape/shape/2?
Asequential_2/random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2C
Asequential_2/random_flip_1/random_flip_left_right/Reshape/shape/3?
?sequential_2/random_flip_1/random_flip_left_right/Reshape/shapePackHsequential_2/random_flip_1/random_flip_left_right/strided_slice:output:0Jsequential_2/random_flip_1/random_flip_left_right/Reshape/shape/1:output:0Jsequential_2/random_flip_1/random_flip_left_right/Reshape/shape/2:output:0Jsequential_2/random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2A
?sequential_2/random_flip_1/random_flip_left_right/Reshape/shape?
9sequential_2/random_flip_1/random_flip_left_right/ReshapeReshapeHsequential_2/random_flip_1/random_flip_left_right/random_uniform/Mul:z:0Hsequential_2/random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2;
9sequential_2/random_flip_1/random_flip_left_right/Reshape?
7sequential_2/random_flip_1/random_flip_left_right/RoundRoundBsequential_2/random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????29
7sequential_2/random_flip_1/random_flip_left_right/Round?
@sequential_2/random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_2/random_flip_1/random_flip_left_right/ReverseV2/axis?
;sequential_2/random_flip_1/random_flip_left_right/ReverseV2	ReverseV2Msequential_2/random_flip_1/random_flip_left_right/control_dependency:output:0Isequential_2/random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????  2=
;sequential_2/random_flip_1/random_flip_left_right/ReverseV2?
5sequential_2/random_flip_1/random_flip_left_right/mulMul;sequential_2/random_flip_1/random_flip_left_right/Round:y:0Dsequential_2/random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:?????????  27
5sequential_2/random_flip_1/random_flip_left_right/mul?
7sequential_2/random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_2/random_flip_1/random_flip_left_right/sub/x?
5sequential_2/random_flip_1/random_flip_left_right/subSub@sequential_2/random_flip_1/random_flip_left_right/sub/x:output:0;sequential_2/random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????27
5sequential_2/random_flip_1/random_flip_left_right/sub?
7sequential_2/random_flip_1/random_flip_left_right/mul_1Mul9sequential_2/random_flip_1/random_flip_left_right/sub:z:0Msequential_2/random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:?????????  29
7sequential_2/random_flip_1/random_flip_left_right/mul_1?
5sequential_2/random_flip_1/random_flip_left_right/addAddV29sequential_2/random_flip_1/random_flip_left_right/mul:z:0;sequential_2/random_flip_1/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:?????????  27
5sequential_2/random_flip_1/random_flip_left_right/add?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2D9sequential_2/random_flip_1/random_flip_left_right/add:z:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
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
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
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
activation_9/Softmax?
IdentityIdentityactivation_9/Softmax:softmax:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp@^sequential_2/random_rotation_1/stateful_uniform/StatefulUniformC^sequential_2/random_translation_1/stateful_uniform/StatefulUniformE^sequential_2/random_translation_1/stateful_uniform_1/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????  ::::::::::::2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2?
?sequential_2/random_rotation_1/stateful_uniform/StatefulUniform?sequential_2/random_rotation_1/stateful_uniform/StatefulUniform2?
Bsequential_2/random_translation_1/stateful_uniform/StatefulUniformBsequential_2/random_translation_1/stateful_uniform/StatefulUniform2?
Dsequential_2/random_translation_1/stateful_uniform_1/StatefulUniformDsequential_2/random_translation_1/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_309210

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
?
I
-__inference_activation_7_layer_call_fn_309258

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
H__inference_activation_7_layer_call_and_return_conditional_losses_3082492
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
?
L
0__inference_max_pooling2d_3_layer_call_fn_308078

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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3080722
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
Z
-__inference_sequential_2_layer_call_fn_308066
random_rotation_1_input
identity?
PartitionedCallPartitionedCallrandom_rotation_1_input*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080632
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????  :h d
/
_output_shapes
:?????????  
1
_user_specified_namerandom_rotation_1_input
?
r
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_308109

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
?
?
-__inference_sequential_2_layer_call_fn_309166

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
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
~
)__inference_conv2d_7_layer_call_fn_309277

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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3082682
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
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_307810
random_rotation_1_input?
;random_rotation_1_stateful_uniform_statefuluniform_resourceB
>random_translation_1_stateful_uniform_statefuluniform_resource
identity??2random_rotation_1/stateful_uniform/StatefulUniform?5random_translation_1/stateful_uniform/StatefulUniform?7random_translation_1/stateful_uniform_1/StatefulUniformy
random_rotation_1/ShapeShaperandom_rotation_1_input*
T0*
_output_shapes
:2
random_rotation_1/Shape?
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stack?
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1?
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2?
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_slice?
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_1/stack?
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_1?
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2?
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1?
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast?
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_2/stack?
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_1?
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2?
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2?
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1?
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shape?
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:F??2(
&random_rotation_1/stateful_uniform/min?
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F??2(
&random_rotation_1/stateful_uniform/max?
<random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_1/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_1_stateful_uniform_statefuluniform_resourceErandom_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_1/stateful_uniform/StatefulUniform?
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/sub?
&random_rotation_1/stateful_uniform/mulMul;random_rotation_1/stateful_uniform/StatefulUniform:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_1/stateful_uniform/mul?
"random_rotation_1/stateful_uniformAdd*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_1/stateful_uniform?
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_1/rotation_matrix/sub/y?
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/sub?
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Cos?
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_1/y?
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1?
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/mul?
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Sin?
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_2/y?
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2?
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_1?
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_3?
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_4?
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/y?
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_1/rotation_matrix/truediv?
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_5/y?
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5?
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_1?
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_6/y?
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6?
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_2?
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_1?
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_7/y?
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7?
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_3?
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/add?
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_8?
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/y?
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_1/rotation_matrix/truediv_1?
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/Shape?
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack?
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1?
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2?
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice?
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_2?
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stack?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1?
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_2?
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stack?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2?
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Neg?
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stack?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3?
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_3?
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stack?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4?
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_3?
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stack?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5?
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stack?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6?
-random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/zeros/mul/y?
+random_rotation_1/rotation_matrix/zeros/mulMul8random_rotation_1/rotation_matrix/strided_slice:output:06random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_1/rotation_matrix/zeros/mul?
.random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_1/rotation_matrix/zeros/Less/y?
,random_rotation_1/rotation_matrix/zeros/LessLess/random_rotation_1/rotation_matrix/zeros/mul:z:07random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_1/rotation_matrix/zeros/Less?
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1?
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packed?
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Const?
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/zeros?
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axis?
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_1/rotation_matrix/concat?
!random_rotation_1/transform/ShapeShaperandom_rotation_1_input*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shape?
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack?
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1?
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2?
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_slice?
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_value?
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_rotation_1_input1random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3?
random_translation_1/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_1/Shape?
(random_translation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_1/strided_slice/stack?
*random_translation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice/stack_1?
*random_translation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice/stack_2?
"random_translation_1/strided_sliceStridedSlice#random_translation_1/Shape:output:01random_translation_1/strided_slice/stack:output:03random_translation_1/strided_slice/stack_1:output:03random_translation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_1/strided_slice?
*random_translation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice_1/stack?
,random_translation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_1/stack_1?
,random_translation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_1/stack_2?
$random_translation_1/strided_slice_1StridedSlice#random_translation_1/Shape:output:03random_translation_1/strided_slice_1/stack:output:05random_translation_1/strided_slice_1/stack_1:output:05random_translation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_1/strided_slice_1?
random_translation_1/CastCast-random_translation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_1/Cast?
*random_translation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice_2/stack?
,random_translation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_2/stack_1?
,random_translation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_2/stack_2?
$random_translation_1/strided_slice_2StridedSlice#random_translation_1/Shape:output:03random_translation_1/strided_slice_2/stack:output:05random_translation_1/strided_slice_2/stack_1:output:05random_translation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_1/strided_slice_2?
random_translation_1/Cast_1Cast-random_translation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_1/Cast_1?
-random_translation_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_1/stateful_uniform/shape/1?
+random_translation_1/stateful_uniform/shapePack+random_translation_1/strided_slice:output:06random_translation_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_1/stateful_uniform/shape?
)random_translation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)random_translation_1/stateful_uniform/min?
)random_translation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)random_translation_1/stateful_uniform/max?
?random_translation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_1/stateful_uniform/StatefulUniform/algorithm?
5random_translation_1/stateful_uniform/StatefulUniformStatefulUniform>random_translation_1_stateful_uniform_statefuluniform_resourceHrandom_translation_1/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_1/stateful_uniform/StatefulUniform?
)random_translation_1/stateful_uniform/subSub2random_translation_1/stateful_uniform/max:output:02random_translation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_1/stateful_uniform/sub?
)random_translation_1/stateful_uniform/mulMul>random_translation_1/stateful_uniform/StatefulUniform:output:0-random_translation_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_1/stateful_uniform/mul?
%random_translation_1/stateful_uniformAdd-random_translation_1/stateful_uniform/mul:z:02random_translation_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_1/stateful_uniform?
random_translation_1/mulMul)random_translation_1/stateful_uniform:z:0random_translation_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_1/mul?
/random_translation_1/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_1/stateful_uniform_1/shape/1?
-random_translation_1/stateful_uniform_1/shapePack+random_translation_1/strided_slice:output:08random_translation_1/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_1/stateful_uniform_1/shape?
+random_translation_1/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2-
+random_translation_1/stateful_uniform_1/min?
+random_translation_1/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+random_translation_1/stateful_uniform_1/max?
Arandom_translation_1/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_1/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_1/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_1_stateful_uniform_statefuluniform_resourceJrandom_translation_1/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_1/stateful_uniform_1/shape:output:06^random_translation_1/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_1/stateful_uniform_1/StatefulUniform?
+random_translation_1/stateful_uniform_1/subSub4random_translation_1/stateful_uniform_1/max:output:04random_translation_1/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_1/stateful_uniform_1/sub?
+random_translation_1/stateful_uniform_1/mulMul@random_translation_1/stateful_uniform_1/StatefulUniform:output:0/random_translation_1/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_1/stateful_uniform_1/mul?
'random_translation_1/stateful_uniform_1Add/random_translation_1/stateful_uniform_1/mul:z:04random_translation_1/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_1/stateful_uniform_1?
random_translation_1/mul_1Mul+random_translation_1/stateful_uniform_1:z:0random_translation_1/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_1/mul_1?
 random_translation_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_1/concat/axis?
random_translation_1/concatConcatV2random_translation_1/mul_1:z:0random_translation_1/mul:z:0)random_translation_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_1/concat?
-random_translation_1/translation_matrix/ShapeShape$random_translation_1/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_1/translation_matrix/Shape?
;random_translation_1/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_1/translation_matrix/strided_slice/stack?
=random_translation_1/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_1/translation_matrix/strided_slice/stack_1?
=random_translation_1/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_1/translation_matrix/strided_slice/stack_2?
5random_translation_1/translation_matrix/strided_sliceStridedSlice6random_translation_1/translation_matrix/Shape:output:0Drandom_translation_1/translation_matrix/strided_slice/stack:output:0Frandom_translation_1/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_1/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_1/translation_matrix/strided_slice?
2random_translation_1/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_1/translation_matrix/ones/mul/y?
0random_translation_1/translation_matrix/ones/mulMul>random_translation_1/translation_matrix/strided_slice:output:0;random_translation_1/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_1/translation_matrix/ones/mul?
3random_translation_1/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_1/translation_matrix/ones/Less/y?
1random_translation_1/translation_matrix/ones/LessLess4random_translation_1/translation_matrix/ones/mul:z:0<random_translation_1/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_1/translation_matrix/ones/Less?
5random_translation_1/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/ones/packed/1?
3random_translation_1/translation_matrix/ones/packedPack>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_1/translation_matrix/ones/packed?
2random_translation_1/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_1/translation_matrix/ones/Const?
,random_translation_1/translation_matrix/onesFill<random_translation_1/translation_matrix/ones/packed:output:0;random_translation_1/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_1/translation_matrix/ones?
3random_translation_1/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_1/translation_matrix/zeros/mul/y?
1random_translation_1/translation_matrix/zeros/mulMul>random_translation_1/translation_matrix/strided_slice:output:0<random_translation_1/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_1/translation_matrix/zeros/mul?
4random_translation_1/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_1/translation_matrix/zeros/Less/y?
2random_translation_1/translation_matrix/zeros/LessLess5random_translation_1/translation_matrix/zeros/mul:z:0=random_translation_1/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_1/translation_matrix/zeros/Less?
6random_translation_1/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_1/translation_matrix/zeros/packed/1?
4random_translation_1/translation_matrix/zeros/packedPack>random_translation_1/translation_matrix/strided_slice:output:0?random_translation_1/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_1/translation_matrix/zeros/packed?
3random_translation_1/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_1/translation_matrix/zeros/Const?
-random_translation_1/translation_matrix/zerosFill=random_translation_1/translation_matrix/zeros/packed:output:0<random_translation_1/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_1/translation_matrix/zeros?
=random_translation_1/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_1/translation_matrix/strided_slice_1/stack?
?random_translation_1/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_1/translation_matrix/strided_slice_1/stack_1?
?random_translation_1/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_1/translation_matrix/strided_slice_1/stack_2?
7random_translation_1/translation_matrix/strided_slice_1StridedSlice$random_translation_1/concat:output:0Frandom_translation_1/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_1/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_1/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_1/translation_matrix/strided_slice_1?
+random_translation_1/translation_matrix/NegNeg@random_translation_1/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_1/translation_matrix/Neg?
5random_translation_1/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/zeros_1/mul/y?
3random_translation_1/translation_matrix/zeros_1/mulMul>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/zeros_1/mul?
6random_translation_1/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_1/translation_matrix/zeros_1/Less/y?
4random_translation_1/translation_matrix/zeros_1/LessLess7random_translation_1/translation_matrix/zeros_1/mul:z:0?random_translation_1/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_1/translation_matrix/zeros_1/Less?
8random_translation_1/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_1/translation_matrix/zeros_1/packed/1?
6random_translation_1/translation_matrix/zeros_1/packedPack>random_translation_1/translation_matrix/strided_slice:output:0Arandom_translation_1/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_1/translation_matrix/zeros_1/packed?
5random_translation_1/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_1/translation_matrix/zeros_1/Const?
/random_translation_1/translation_matrix/zeros_1Fill?random_translation_1/translation_matrix/zeros_1/packed:output:0>random_translation_1/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_1/translation_matrix/zeros_1?
4random_translation_1/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_1/translation_matrix/ones_1/mul/y?
2random_translation_1/translation_matrix/ones_1/mulMul>random_translation_1/translation_matrix/strided_slice:output:0=random_translation_1/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_1/translation_matrix/ones_1/mul?
5random_translation_1/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_1/translation_matrix/ones_1/Less/y?
3random_translation_1/translation_matrix/ones_1/LessLess6random_translation_1/translation_matrix/ones_1/mul:z:0>random_translation_1/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/ones_1/Less?
7random_translation_1/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_1/translation_matrix/ones_1/packed/1?
5random_translation_1/translation_matrix/ones_1/packedPack>random_translation_1/translation_matrix/strided_slice:output:0@random_translation_1/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_1/translation_matrix/ones_1/packed?
4random_translation_1/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_1/translation_matrix/ones_1/Const?
.random_translation_1/translation_matrix/ones_1Fill>random_translation_1/translation_matrix/ones_1/packed:output:0=random_translation_1/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_1/translation_matrix/ones_1?
=random_translation_1/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_1/translation_matrix/strided_slice_2/stack?
?random_translation_1/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_1/translation_matrix/strided_slice_2/stack_1?
?random_translation_1/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_1/translation_matrix/strided_slice_2/stack_2?
7random_translation_1/translation_matrix/strided_slice_2StridedSlice$random_translation_1/concat:output:0Frandom_translation_1/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_1/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_1/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_1/translation_matrix/strided_slice_2?
-random_translation_1/translation_matrix/Neg_1Neg@random_translation_1/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_1/translation_matrix/Neg_1?
5random_translation_1/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/zeros_2/mul/y?
3random_translation_1/translation_matrix/zeros_2/mulMul>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/zeros_2/mul?
6random_translation_1/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_1/translation_matrix/zeros_2/Less/y?
4random_translation_1/translation_matrix/zeros_2/LessLess7random_translation_1/translation_matrix/zeros_2/mul:z:0?random_translation_1/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_1/translation_matrix/zeros_2/Less?
8random_translation_1/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_1/translation_matrix/zeros_2/packed/1?
6random_translation_1/translation_matrix/zeros_2/packedPack>random_translation_1/translation_matrix/strided_slice:output:0Arandom_translation_1/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_1/translation_matrix/zeros_2/packed?
5random_translation_1/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_1/translation_matrix/zeros_2/Const?
/random_translation_1/translation_matrix/zeros_2Fill?random_translation_1/translation_matrix/zeros_2/packed:output:0>random_translation_1/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_1/translation_matrix/zeros_2?
3random_translation_1/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_1/translation_matrix/concat/axis?
.random_translation_1/translation_matrix/concatConcatV25random_translation_1/translation_matrix/ones:output:06random_translation_1/translation_matrix/zeros:output:0/random_translation_1/translation_matrix/Neg:y:08random_translation_1/translation_matrix/zeros_1:output:07random_translation_1/translation_matrix/ones_1:output:01random_translation_1/translation_matrix/Neg_1:y:08random_translation_1/translation_matrix/zeros_2:output:0<random_translation_1/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_1/translation_matrix/concat?
$random_translation_1/transform/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_1/transform/Shape?
2random_translation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_1/transform/strided_slice/stack?
4random_translation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_1/transform/strided_slice/stack_1?
4random_translation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_1/transform/strided_slice/stack_2?
,random_translation_1/transform/strided_sliceStridedSlice-random_translation_1/transform/Shape:output:0;random_translation_1/transform/strided_slice/stack:output:0=random_translation_1/transform/strided_slice/stack_1:output:0=random_translation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_1/transform/strided_slice?
)random_translation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_1/transform/fill_value?
9random_translation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_1/translation_matrix/concat:output:05random_translation_1/transform/strided_slice:output:02random_translation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_1/transform/ImageProjectiveTransformV3?
7random_flip_1/random_flip_left_right/control_dependencyIdentityNrandom_translation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*L
_classB
@>loc:@random_translation_1/transform/ImageProjectiveTransformV3*/
_output_shapes
:?????????  29
7random_flip_1/random_flip_left_right/control_dependency?
*random_flip_1/random_flip_left_right/ShapeShape@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_1/random_flip_left_right/Shape?
8random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_1/random_flip_left_right/strided_slice/stack?
:random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_1?
:random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_2?
2random_flip_1/random_flip_left_right/strided_sliceStridedSlice3random_flip_1/random_flip_left_right/Shape:output:0Arandom_flip_1/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_1/random_flip_left_right/strided_slice?
9random_flip_1/random_flip_left_right/random_uniform/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_1/random_flip_left_right/random_uniform/shape?
7random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_1/random_flip_left_right/random_uniform/min?
7random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7random_flip_1/random_flip_left_right/random_uniform/max?
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02C
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniform?
7random_flip_1/random_flip_left_right/random_uniform/MulMulJrandom_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????29
7random_flip_1/random_flip_left_right/random_uniform/Mul?
4random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/1?
4random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/2?
4random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/3?
2random_flip_1/random_flip_left_right/Reshape/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0=random_flip_1/random_flip_left_right/Reshape/shape/1:output:0=random_flip_1/random_flip_left_right/Reshape/shape/2:output:0=random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_1/random_flip_left_right/Reshape/shape?
,random_flip_1/random_flip_left_right/ReshapeReshape;random_flip_1/random_flip_left_right/random_uniform/Mul:z:0;random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2.
,random_flip_1/random_flip_left_right/Reshape?
*random_flip_1/random_flip_left_right/RoundRound5random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip_1/random_flip_left_right/Round?
3random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_1/random_flip_left_right/ReverseV2/axis?
.random_flip_1/random_flip_left_right/ReverseV2	ReverseV2@random_flip_1/random_flip_left_right/control_dependency:output:0<random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????  20
.random_flip_1/random_flip_left_right/ReverseV2?
(random_flip_1/random_flip_left_right/mulMul.random_flip_1/random_flip_left_right/Round:y:07random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:?????????  2*
(random_flip_1/random_flip_left_right/mul?
*random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_flip_1/random_flip_left_right/sub/x?
(random_flip_1/random_flip_left_right/subSub3random_flip_1/random_flip_left_right/sub/x:output:0.random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2*
(random_flip_1/random_flip_left_right/sub?
*random_flip_1/random_flip_left_right/mul_1Mul,random_flip_1/random_flip_left_right/sub:z:0@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:?????????  2,
*random_flip_1/random_flip_left_right/mul_1?
(random_flip_1/random_flip_left_right/addAddV2,random_flip_1/random_flip_left_right/mul:z:0.random_flip_1/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:?????????  2*
(random_flip_1/random_flip_left_right/add?
IdentityIdentity,random_flip_1/random_flip_left_right/add:z:03^random_rotation_1/stateful_uniform/StatefulUniform6^random_translation_1/stateful_uniform/StatefulUniform8^random_translation_1/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::2h
2random_rotation_1/stateful_uniform/StatefulUniform2random_rotation_1/stateful_uniform/StatefulUniform2n
5random_translation_1/stateful_uniform/StatefulUniform5random_translation_1/stateful_uniform/StatefulUniform2r
7random_translation_1/stateful_uniform_1/StatefulUniform7random_translation_1/stateful_uniform_1/StatefulUniform:h d
/
_output_shapes
:?????????  
1
_user_specified_namerandom_rotation_1_input
?
I
-__inference_activation_6_layer_call_fn_309229

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
H__inference_activation_6_layer_call_and_return_conditional_losses_3082092
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
?
~
)__inference_conv2d_5_layer_call_fn_309219

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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3081882
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
?	
?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_309181

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
?
I
-__inference_sequential_2_layer_call_fn_309171

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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080632
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
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_308308

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
?
-__inference_sequential_3_layer_call_fn_308895

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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_3084232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????  ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_4_layer_call_fn_308090

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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3080842
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
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_309153

inputs?
;random_rotation_1_stateful_uniform_statefuluniform_resourceB
>random_translation_1_stateful_uniform_statefuluniform_resource
identity??2random_rotation_1/stateful_uniform/StatefulUniform?5random_translation_1/stateful_uniform/StatefulUniform?7random_translation_1/stateful_uniform_1/StatefulUniformh
random_rotation_1/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_1/Shape?
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stack?
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1?
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2?
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_slice?
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_1/stack?
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_1?
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2?
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1?
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast?
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_2/stack?
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_1?
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2?
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2?
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1?
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shape?
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:F??2(
&random_rotation_1/stateful_uniform/min?
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F??2(
&random_rotation_1/stateful_uniform/max?
<random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_1/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_1_stateful_uniform_statefuluniform_resourceErandom_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_1/stateful_uniform/StatefulUniform?
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/sub?
&random_rotation_1/stateful_uniform/mulMul;random_rotation_1/stateful_uniform/StatefulUniform:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_1/stateful_uniform/mul?
"random_rotation_1/stateful_uniformAdd*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_1/stateful_uniform?
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_1/rotation_matrix/sub/y?
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/sub?
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Cos?
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_1/y?
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1?
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/mul?
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Sin?
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_2/y?
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2?
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_1?
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_3?
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_4?
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/y?
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_1/rotation_matrix/truediv?
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_5/y?
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5?
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_1?
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_6/y?
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6?
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_2?
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_1?
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_7/y?
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7?
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_3?
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/add?
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_8?
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/y?
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_1/rotation_matrix/truediv_1?
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/Shape?
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack?
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1?
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2?
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice?
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_2?
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stack?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1?
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_2?
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stack?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2?
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Neg?
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stack?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3?
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_3?
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stack?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4?
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_3?
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stack?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5?
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stack?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6?
-random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/zeros/mul/y?
+random_rotation_1/rotation_matrix/zeros/mulMul8random_rotation_1/rotation_matrix/strided_slice:output:06random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_1/rotation_matrix/zeros/mul?
.random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_1/rotation_matrix/zeros/Less/y?
,random_rotation_1/rotation_matrix/zeros/LessLess/random_rotation_1/rotation_matrix/zeros/mul:z:07random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_1/rotation_matrix/zeros/Less?
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1?
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packed?
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Const?
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/zeros?
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axis?
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_1/rotation_matrix/concat|
!random_rotation_1/transform/ShapeShapeinputs*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shape?
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack?
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1?
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2?
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_slice?
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_value?
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs1random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3?
random_translation_1/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_1/Shape?
(random_translation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_1/strided_slice/stack?
*random_translation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice/stack_1?
*random_translation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice/stack_2?
"random_translation_1/strided_sliceStridedSlice#random_translation_1/Shape:output:01random_translation_1/strided_slice/stack:output:03random_translation_1/strided_slice/stack_1:output:03random_translation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_1/strided_slice?
*random_translation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice_1/stack?
,random_translation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_1/stack_1?
,random_translation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_1/stack_2?
$random_translation_1/strided_slice_1StridedSlice#random_translation_1/Shape:output:03random_translation_1/strided_slice_1/stack:output:05random_translation_1/strided_slice_1/stack_1:output:05random_translation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_1/strided_slice_1?
random_translation_1/CastCast-random_translation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_1/Cast?
*random_translation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice_2/stack?
,random_translation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_2/stack_1?
,random_translation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_2/stack_2?
$random_translation_1/strided_slice_2StridedSlice#random_translation_1/Shape:output:03random_translation_1/strided_slice_2/stack:output:05random_translation_1/strided_slice_2/stack_1:output:05random_translation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_1/strided_slice_2?
random_translation_1/Cast_1Cast-random_translation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_1/Cast_1?
-random_translation_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_1/stateful_uniform/shape/1?
+random_translation_1/stateful_uniform/shapePack+random_translation_1/strided_slice:output:06random_translation_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_1/stateful_uniform/shape?
)random_translation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)random_translation_1/stateful_uniform/min?
)random_translation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)random_translation_1/stateful_uniform/max?
?random_translation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_1/stateful_uniform/StatefulUniform/algorithm?
5random_translation_1/stateful_uniform/StatefulUniformStatefulUniform>random_translation_1_stateful_uniform_statefuluniform_resourceHrandom_translation_1/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_1/stateful_uniform/StatefulUniform?
)random_translation_1/stateful_uniform/subSub2random_translation_1/stateful_uniform/max:output:02random_translation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_1/stateful_uniform/sub?
)random_translation_1/stateful_uniform/mulMul>random_translation_1/stateful_uniform/StatefulUniform:output:0-random_translation_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_1/stateful_uniform/mul?
%random_translation_1/stateful_uniformAdd-random_translation_1/stateful_uniform/mul:z:02random_translation_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_1/stateful_uniform?
random_translation_1/mulMul)random_translation_1/stateful_uniform:z:0random_translation_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_1/mul?
/random_translation_1/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_1/stateful_uniform_1/shape/1?
-random_translation_1/stateful_uniform_1/shapePack+random_translation_1/strided_slice:output:08random_translation_1/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_1/stateful_uniform_1/shape?
+random_translation_1/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2-
+random_translation_1/stateful_uniform_1/min?
+random_translation_1/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+random_translation_1/stateful_uniform_1/max?
Arandom_translation_1/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_1/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_1/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_1_stateful_uniform_statefuluniform_resourceJrandom_translation_1/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_1/stateful_uniform_1/shape:output:06^random_translation_1/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_1/stateful_uniform_1/StatefulUniform?
+random_translation_1/stateful_uniform_1/subSub4random_translation_1/stateful_uniform_1/max:output:04random_translation_1/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_1/stateful_uniform_1/sub?
+random_translation_1/stateful_uniform_1/mulMul@random_translation_1/stateful_uniform_1/StatefulUniform:output:0/random_translation_1/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_1/stateful_uniform_1/mul?
'random_translation_1/stateful_uniform_1Add/random_translation_1/stateful_uniform_1/mul:z:04random_translation_1/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_1/stateful_uniform_1?
random_translation_1/mul_1Mul+random_translation_1/stateful_uniform_1:z:0random_translation_1/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_1/mul_1?
 random_translation_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_1/concat/axis?
random_translation_1/concatConcatV2random_translation_1/mul_1:z:0random_translation_1/mul:z:0)random_translation_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_1/concat?
-random_translation_1/translation_matrix/ShapeShape$random_translation_1/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_1/translation_matrix/Shape?
;random_translation_1/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_1/translation_matrix/strided_slice/stack?
=random_translation_1/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_1/translation_matrix/strided_slice/stack_1?
=random_translation_1/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_1/translation_matrix/strided_slice/stack_2?
5random_translation_1/translation_matrix/strided_sliceStridedSlice6random_translation_1/translation_matrix/Shape:output:0Drandom_translation_1/translation_matrix/strided_slice/stack:output:0Frandom_translation_1/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_1/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_1/translation_matrix/strided_slice?
2random_translation_1/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_1/translation_matrix/ones/mul/y?
0random_translation_1/translation_matrix/ones/mulMul>random_translation_1/translation_matrix/strided_slice:output:0;random_translation_1/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_1/translation_matrix/ones/mul?
3random_translation_1/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_1/translation_matrix/ones/Less/y?
1random_translation_1/translation_matrix/ones/LessLess4random_translation_1/translation_matrix/ones/mul:z:0<random_translation_1/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_1/translation_matrix/ones/Less?
5random_translation_1/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/ones/packed/1?
3random_translation_1/translation_matrix/ones/packedPack>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_1/translation_matrix/ones/packed?
2random_translation_1/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_1/translation_matrix/ones/Const?
,random_translation_1/translation_matrix/onesFill<random_translation_1/translation_matrix/ones/packed:output:0;random_translation_1/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_1/translation_matrix/ones?
3random_translation_1/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_1/translation_matrix/zeros/mul/y?
1random_translation_1/translation_matrix/zeros/mulMul>random_translation_1/translation_matrix/strided_slice:output:0<random_translation_1/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_1/translation_matrix/zeros/mul?
4random_translation_1/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_1/translation_matrix/zeros/Less/y?
2random_translation_1/translation_matrix/zeros/LessLess5random_translation_1/translation_matrix/zeros/mul:z:0=random_translation_1/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_1/translation_matrix/zeros/Less?
6random_translation_1/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_1/translation_matrix/zeros/packed/1?
4random_translation_1/translation_matrix/zeros/packedPack>random_translation_1/translation_matrix/strided_slice:output:0?random_translation_1/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_1/translation_matrix/zeros/packed?
3random_translation_1/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_1/translation_matrix/zeros/Const?
-random_translation_1/translation_matrix/zerosFill=random_translation_1/translation_matrix/zeros/packed:output:0<random_translation_1/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_1/translation_matrix/zeros?
=random_translation_1/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_1/translation_matrix/strided_slice_1/stack?
?random_translation_1/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_1/translation_matrix/strided_slice_1/stack_1?
?random_translation_1/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_1/translation_matrix/strided_slice_1/stack_2?
7random_translation_1/translation_matrix/strided_slice_1StridedSlice$random_translation_1/concat:output:0Frandom_translation_1/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_1/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_1/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_1/translation_matrix/strided_slice_1?
+random_translation_1/translation_matrix/NegNeg@random_translation_1/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_1/translation_matrix/Neg?
5random_translation_1/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/zeros_1/mul/y?
3random_translation_1/translation_matrix/zeros_1/mulMul>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/zeros_1/mul?
6random_translation_1/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_1/translation_matrix/zeros_1/Less/y?
4random_translation_1/translation_matrix/zeros_1/LessLess7random_translation_1/translation_matrix/zeros_1/mul:z:0?random_translation_1/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_1/translation_matrix/zeros_1/Less?
8random_translation_1/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_1/translation_matrix/zeros_1/packed/1?
6random_translation_1/translation_matrix/zeros_1/packedPack>random_translation_1/translation_matrix/strided_slice:output:0Arandom_translation_1/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_1/translation_matrix/zeros_1/packed?
5random_translation_1/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_1/translation_matrix/zeros_1/Const?
/random_translation_1/translation_matrix/zeros_1Fill?random_translation_1/translation_matrix/zeros_1/packed:output:0>random_translation_1/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_1/translation_matrix/zeros_1?
4random_translation_1/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_1/translation_matrix/ones_1/mul/y?
2random_translation_1/translation_matrix/ones_1/mulMul>random_translation_1/translation_matrix/strided_slice:output:0=random_translation_1/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_1/translation_matrix/ones_1/mul?
5random_translation_1/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_1/translation_matrix/ones_1/Less/y?
3random_translation_1/translation_matrix/ones_1/LessLess6random_translation_1/translation_matrix/ones_1/mul:z:0>random_translation_1/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/ones_1/Less?
7random_translation_1/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_1/translation_matrix/ones_1/packed/1?
5random_translation_1/translation_matrix/ones_1/packedPack>random_translation_1/translation_matrix/strided_slice:output:0@random_translation_1/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_1/translation_matrix/ones_1/packed?
4random_translation_1/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_1/translation_matrix/ones_1/Const?
.random_translation_1/translation_matrix/ones_1Fill>random_translation_1/translation_matrix/ones_1/packed:output:0=random_translation_1/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_1/translation_matrix/ones_1?
=random_translation_1/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_1/translation_matrix/strided_slice_2/stack?
?random_translation_1/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_1/translation_matrix/strided_slice_2/stack_1?
?random_translation_1/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_1/translation_matrix/strided_slice_2/stack_2?
7random_translation_1/translation_matrix/strided_slice_2StridedSlice$random_translation_1/concat:output:0Frandom_translation_1/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_1/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_1/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_1/translation_matrix/strided_slice_2?
-random_translation_1/translation_matrix/Neg_1Neg@random_translation_1/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_1/translation_matrix/Neg_1?
5random_translation_1/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/zeros_2/mul/y?
3random_translation_1/translation_matrix/zeros_2/mulMul>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/zeros_2/mul?
6random_translation_1/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_1/translation_matrix/zeros_2/Less/y?
4random_translation_1/translation_matrix/zeros_2/LessLess7random_translation_1/translation_matrix/zeros_2/mul:z:0?random_translation_1/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_1/translation_matrix/zeros_2/Less?
8random_translation_1/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_1/translation_matrix/zeros_2/packed/1?
6random_translation_1/translation_matrix/zeros_2/packedPack>random_translation_1/translation_matrix/strided_slice:output:0Arandom_translation_1/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_1/translation_matrix/zeros_2/packed?
5random_translation_1/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_1/translation_matrix/zeros_2/Const?
/random_translation_1/translation_matrix/zeros_2Fill?random_translation_1/translation_matrix/zeros_2/packed:output:0>random_translation_1/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_1/translation_matrix/zeros_2?
3random_translation_1/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_1/translation_matrix/concat/axis?
.random_translation_1/translation_matrix/concatConcatV25random_translation_1/translation_matrix/ones:output:06random_translation_1/translation_matrix/zeros:output:0/random_translation_1/translation_matrix/Neg:y:08random_translation_1/translation_matrix/zeros_1:output:07random_translation_1/translation_matrix/ones_1:output:01random_translation_1/translation_matrix/Neg_1:y:08random_translation_1/translation_matrix/zeros_2:output:0<random_translation_1/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_1/translation_matrix/concat?
$random_translation_1/transform/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_1/transform/Shape?
2random_translation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_1/transform/strided_slice/stack?
4random_translation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_1/transform/strided_slice/stack_1?
4random_translation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_1/transform/strided_slice/stack_2?
,random_translation_1/transform/strided_sliceStridedSlice-random_translation_1/transform/Shape:output:0;random_translation_1/transform/strided_slice/stack:output:0=random_translation_1/transform/strided_slice/stack_1:output:0=random_translation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_1/transform/strided_slice?
)random_translation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_1/transform/fill_value?
9random_translation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_1/translation_matrix/concat:output:05random_translation_1/transform/strided_slice:output:02random_translation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_1/transform/ImageProjectiveTransformV3?
7random_flip_1/random_flip_left_right/control_dependencyIdentityNrandom_translation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*L
_classB
@>loc:@random_translation_1/transform/ImageProjectiveTransformV3*/
_output_shapes
:?????????  29
7random_flip_1/random_flip_left_right/control_dependency?
*random_flip_1/random_flip_left_right/ShapeShape@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_1/random_flip_left_right/Shape?
8random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_1/random_flip_left_right/strided_slice/stack?
:random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_1?
:random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_2?
2random_flip_1/random_flip_left_right/strided_sliceStridedSlice3random_flip_1/random_flip_left_right/Shape:output:0Arandom_flip_1/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_1/random_flip_left_right/strided_slice?
9random_flip_1/random_flip_left_right/random_uniform/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_1/random_flip_left_right/random_uniform/shape?
7random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_1/random_flip_left_right/random_uniform/min?
7random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7random_flip_1/random_flip_left_right/random_uniform/max?
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02C
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniform?
7random_flip_1/random_flip_left_right/random_uniform/MulMulJrandom_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????29
7random_flip_1/random_flip_left_right/random_uniform/Mul?
4random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/1?
4random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/2?
4random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/3?
2random_flip_1/random_flip_left_right/Reshape/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0=random_flip_1/random_flip_left_right/Reshape/shape/1:output:0=random_flip_1/random_flip_left_right/Reshape/shape/2:output:0=random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_1/random_flip_left_right/Reshape/shape?
,random_flip_1/random_flip_left_right/ReshapeReshape;random_flip_1/random_flip_left_right/random_uniform/Mul:z:0;random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2.
,random_flip_1/random_flip_left_right/Reshape?
*random_flip_1/random_flip_left_right/RoundRound5random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip_1/random_flip_left_right/Round?
3random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_1/random_flip_left_right/ReverseV2/axis?
.random_flip_1/random_flip_left_right/ReverseV2	ReverseV2@random_flip_1/random_flip_left_right/control_dependency:output:0<random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????  20
.random_flip_1/random_flip_left_right/ReverseV2?
(random_flip_1/random_flip_left_right/mulMul.random_flip_1/random_flip_left_right/Round:y:07random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:?????????  2*
(random_flip_1/random_flip_left_right/mul?
*random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_flip_1/random_flip_left_right/sub/x?
(random_flip_1/random_flip_left_right/subSub3random_flip_1/random_flip_left_right/sub/x:output:0.random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2*
(random_flip_1/random_flip_left_right/sub?
*random_flip_1/random_flip_left_right/mul_1Mul,random_flip_1/random_flip_left_right/sub:z:0@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:?????????  2,
*random_flip_1/random_flip_left_right/mul_1?
(random_flip_1/random_flip_left_right/addAddV2,random_flip_1/random_flip_left_right/mul:z:0.random_flip_1/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:?????????  2*
(random_flip_1/random_flip_left_right/add?
IdentityIdentity,random_flip_1/random_flip_left_right/add:z:03^random_rotation_1/stateful_uniform/StatefulUniform6^random_translation_1/stateful_uniform/StatefulUniform8^random_translation_1/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::2h
2random_rotation_1/stateful_uniform/StatefulUniform2random_rotation_1/stateful_uniform/StatefulUniform2n
5random_translation_1/stateful_uniform/StatefulUniform5random_translation_1/stateful_uniform/StatefulUniform2r
7random_translation_1/stateful_uniform_1/StatefulUniform7random_translation_1/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
~
)__inference_conv2d_4_layer_call_fn_309190

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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3081482
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
?
d
H__inference_activation_9_layer_call_and_return_conditional_losses_309311

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
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_308209

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
-__inference_activation_8_layer_call_fn_309287

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
H__inference_activation_8_layer_call_and_return_conditional_losses_3082892
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
?
~
)__inference_conv2d_6_layer_call_fn_309248

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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3082282
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
?
C__inference_dense_1_layer_call_and_return_conditional_losses_309297

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
??
?
"__inference__traced_restore_309616
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
assignvariableop_15_variable"
assignvariableop_16_variable_1"
assignvariableop_17_variable_2
assignvariableop_18_total
assignvariableop_19_count
assignvariableop_20_total_1
assignvariableop_21_count_1.
*assignvariableop_22_adam_conv2d_4_kernel_m,
(assignvariableop_23_adam_conv2d_4_bias_m.
*assignvariableop_24_adam_conv2d_5_kernel_m,
(assignvariableop_25_adam_conv2d_5_bias_m.
*assignvariableop_26_adam_conv2d_6_kernel_m,
(assignvariableop_27_adam_conv2d_6_bias_m.
*assignvariableop_28_adam_conv2d_7_kernel_m,
(assignvariableop_29_adam_conv2d_7_bias_m-
)assignvariableop_30_adam_dense_1_kernel_m+
'assignvariableop_31_adam_dense_1_bias_m.
*assignvariableop_32_adam_conv2d_4_kernel_v,
(assignvariableop_33_adam_conv2d_4_bias_v.
*assignvariableop_34_adam_conv2d_5_kernel_v,
(assignvariableop_35_adam_conv2d_5_bias_v.
*assignvariableop_36_adam_conv2d_6_kernel_v,
(assignvariableop_37_adam_conv2d_6_bias_v.
*assignvariableop_38_adam_conv2d_7_kernel_v,
(assignvariableop_39_adam_conv2d_7_bias_v-
)assignvariableop_40_adam_dense_1_kernel_v+
'assignvariableop_41_adam_dense_1_bias_v
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+				2
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
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_4_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv2d_4_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_5_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_5_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_6_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_6_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_7_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_conv2d_7_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_1_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_1_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_4_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_4_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_5_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_5_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_6_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_conv2d_6_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_7_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_conv2d_7_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_1_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_1_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42?
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::2$
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
?	
?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_309239

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
d
H__inference_activation_5_layer_call_and_return_conditional_losses_308169

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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_308148

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
?
?
$__inference_signature_wrapper_308549
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
!__inference__wrapped_model_3075762
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
?
d
H__inference_sequential_2_layer_call_and_return_conditional_losses_309157

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
H__inference_activation_9_layer_call_and_return_conditional_losses_308329

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
?
d
H__inference_activation_8_layer_call_and_return_conditional_losses_309282

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
?W
?
__inference__traced_save_309480
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
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+				2
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
?: : : : @:@:@?:?:??:?:	?
:
: : : : : :::: : : : : : : @:@:@?:?:??:?:	?
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
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:%!

_output_shapes
:	?
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
:@?:!&

_output_shapes	
:?:.'*
(
_output_shapes
:??:!(

_output_shapes	
:?:%)!

_output_shapes
:	?
: *

_output_shapes
:
:+

_output_shapes
: 
?
d
H__inference_activation_7_layer_call_and_return_conditional_losses_309253

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
?
?
-__inference_sequential_2_layer_call_fn_308057
random_rotation_1_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_rotation_1_inputunknown	unknown_0*
Tin
2*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::22
StatefulPartitionedCallStatefulPartitionedCall:h d
/
_output_shapes
:?????????  
1
_user_specified_namerandom_rotation_1_input
?
L
0__inference_max_pooling2d_5_layer_call_fn_308102

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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3080962
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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_308228

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
d
H__inference_activation_8_layer_call_and_return_conditional_losses_308289

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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_308268

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
?
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_308072

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
H__inference_sequential_3_layer_call_and_return_conditional_losses_308491

inputs
conv2d_4_308456
conv2d_4_308458
conv2d_5_308463
conv2d_5_308465
conv2d_6_308470
conv2d_6_308472
conv2d_7_308477
conv2d_7_308479
dense_1_308484
dense_1_308486
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080632
sequential_2/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0conv2d_4_308456conv2d_4_308458*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3081482"
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
H__inference_activation_5_layer_call_and_return_conditional_losses_3081692
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3080722!
max_pooling2d_3/PartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_308463conv2d_5_308465*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3081882"
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
H__inference_activation_6_layer_call_and_return_conditional_losses_3082092
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3080842!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_308470conv2d_6_308472*
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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3082282"
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
H__inference_activation_7_layer_call_and_return_conditional_losses_3082492
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3080962!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_308477conv2d_7_308479*
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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3082682"
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
H__inference_activation_8_layer_call_and_return_conditional_losses_3082892
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3081092,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_308484dense_1_308486*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3083082!
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
H__inference_activation_9_layer_call_and_return_conditional_losses_3083292
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
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_309224

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
-__inference_activation_9_layer_call_fn_309316

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
H__inference_activation_9_layer_call_and_return_conditional_losses_3083292
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
?>
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_308338
sequential_2_input
sequential_2_308133
sequential_2_308135
conv2d_4_308159
conv2d_4_308161
conv2d_5_308199
conv2d_5_308201
conv2d_6_308239
conv2d_6_308241
conv2d_7_308279
conv2d_7_308281
dense_1_308319
dense_1_308321
identity?? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputsequential_2_308133sequential_2_308135*
Tin
2*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080502&
$sequential_2/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0conv2d_4_308159conv2d_4_308161*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3081482"
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
H__inference_activation_5_layer_call_and_return_conditional_losses_3081692
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3080722!
max_pooling2d_3/PartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_308199conv2d_5_308201*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3081882"
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
H__inference_activation_6_layer_call_and_return_conditional_losses_3082092
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3080842!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_308239conv2d_6_308241*
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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3082282"
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
H__inference_activation_7_layer_call_and_return_conditional_losses_3082492
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3080962!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_308279conv2d_7_308281*
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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3082682"
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
H__inference_activation_8_layer_call_and_return_conditional_losses_3082892
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3081092,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_308319dense_1_308321*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3083082!
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
H__inference_activation_9_layer_call_and_return_conditional_losses_3083292
activation_9/PartitionedCall?
IdentityIdentity%activation_9/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????  ::::::::::::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_2_input
?
}
(__inference_dense_1_layer_call_fn_309306

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
C__inference_dense_1_layer_call_and_return_conditional_losses_3083082
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
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_308050

inputs?
;random_rotation_1_stateful_uniform_statefuluniform_resourceB
>random_translation_1_stateful_uniform_statefuluniform_resource
identity??2random_rotation_1/stateful_uniform/StatefulUniform?5random_translation_1/stateful_uniform/StatefulUniform?7random_translation_1/stateful_uniform_1/StatefulUniformh
random_rotation_1/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_1/Shape?
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stack?
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1?
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2?
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_slice?
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_1/stack?
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_1?
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2?
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1?
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast?
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice_2/stack?
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_1?
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2?
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2?
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1?
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shape?
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:F??2(
&random_rotation_1/stateful_uniform/min?
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F??2(
&random_rotation_1/stateful_uniform/max?
<random_rotation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_1/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_1/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_1_stateful_uniform_statefuluniform_resourceErandom_rotation_1/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_1/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_1/stateful_uniform/StatefulUniform?
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/sub?
&random_rotation_1/stateful_uniform/mulMul;random_rotation_1/stateful_uniform/StatefulUniform:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_1/stateful_uniform/mul?
"random_rotation_1/stateful_uniformAdd*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_1/stateful_uniform?
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_1/rotation_matrix/sub/y?
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/sub?
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Cos?
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_1/y?
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1?
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/mul?
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Sin?
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_2/y?
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2?
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_1?
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_3?
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_4?
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/y?
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_1/rotation_matrix/truediv?
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_5/y?
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5?
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_1?
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_6/y?
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6?
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_2?
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_1?
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_1/rotation_matrix/sub_7/y?
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7?
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/mul_3?
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/add?
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/sub_8?
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/y?
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_1/rotation_matrix/truediv_1?
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/Shape?
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack?
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1?
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2?
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice?
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_2?
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stack?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1?
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_2?
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stack?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2?
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_1/rotation_matrix/Neg?
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stack?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3?
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Sin_3?
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stack?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4?
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/Cos_3?
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stack?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5?
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stack?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6?
-random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/zeros/mul/y?
+random_rotation_1/rotation_matrix/zeros/mulMul8random_rotation_1/rotation_matrix/strided_slice:output:06random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_1/rotation_matrix/zeros/mul?
.random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_1/rotation_matrix/zeros/Less/y?
,random_rotation_1/rotation_matrix/zeros/LessLess/random_rotation_1/rotation_matrix/zeros/mul:z:07random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_1/rotation_matrix/zeros/Less?
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1?
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packed?
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Const?
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_1/rotation_matrix/zeros?
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axis?
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_1/rotation_matrix/concat|
!random_rotation_1/transform/ShapeShapeinputs*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shape?
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack?
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1?
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2?
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_slice?
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_value?
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs1random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3?
random_translation_1/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_1/Shape?
(random_translation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_1/strided_slice/stack?
*random_translation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice/stack_1?
*random_translation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice/stack_2?
"random_translation_1/strided_sliceStridedSlice#random_translation_1/Shape:output:01random_translation_1/strided_slice/stack:output:03random_translation_1/strided_slice/stack_1:output:03random_translation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_1/strided_slice?
*random_translation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice_1/stack?
,random_translation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_1/stack_1?
,random_translation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_1/stack_2?
$random_translation_1/strided_slice_1StridedSlice#random_translation_1/Shape:output:03random_translation_1/strided_slice_1/stack:output:05random_translation_1/strided_slice_1/stack_1:output:05random_translation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_1/strided_slice_1?
random_translation_1/CastCast-random_translation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_1/Cast?
*random_translation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_1/strided_slice_2/stack?
,random_translation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_2/stack_1?
,random_translation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_1/strided_slice_2/stack_2?
$random_translation_1/strided_slice_2StridedSlice#random_translation_1/Shape:output:03random_translation_1/strided_slice_2/stack:output:05random_translation_1/strided_slice_2/stack_1:output:05random_translation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_1/strided_slice_2?
random_translation_1/Cast_1Cast-random_translation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_1/Cast_1?
-random_translation_1/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_1/stateful_uniform/shape/1?
+random_translation_1/stateful_uniform/shapePack+random_translation_1/strided_slice:output:06random_translation_1/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_1/stateful_uniform/shape?
)random_translation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2+
)random_translation_1/stateful_uniform/min?
)random_translation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)random_translation_1/stateful_uniform/max?
?random_translation_1/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_1/stateful_uniform/StatefulUniform/algorithm?
5random_translation_1/stateful_uniform/StatefulUniformStatefulUniform>random_translation_1_stateful_uniform_statefuluniform_resourceHrandom_translation_1/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_1/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_1/stateful_uniform/StatefulUniform?
)random_translation_1/stateful_uniform/subSub2random_translation_1/stateful_uniform/max:output:02random_translation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_1/stateful_uniform/sub?
)random_translation_1/stateful_uniform/mulMul>random_translation_1/stateful_uniform/StatefulUniform:output:0-random_translation_1/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_1/stateful_uniform/mul?
%random_translation_1/stateful_uniformAdd-random_translation_1/stateful_uniform/mul:z:02random_translation_1/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_1/stateful_uniform?
random_translation_1/mulMul)random_translation_1/stateful_uniform:z:0random_translation_1/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_1/mul?
/random_translation_1/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_1/stateful_uniform_1/shape/1?
-random_translation_1/stateful_uniform_1/shapePack+random_translation_1/strided_slice:output:08random_translation_1/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_1/stateful_uniform_1/shape?
+random_translation_1/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2-
+random_translation_1/stateful_uniform_1/min?
+random_translation_1/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+random_translation_1/stateful_uniform_1/max?
Arandom_translation_1/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_1/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_1/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_1_stateful_uniform_statefuluniform_resourceJrandom_translation_1/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_1/stateful_uniform_1/shape:output:06^random_translation_1/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_1/stateful_uniform_1/StatefulUniform?
+random_translation_1/stateful_uniform_1/subSub4random_translation_1/stateful_uniform_1/max:output:04random_translation_1/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_1/stateful_uniform_1/sub?
+random_translation_1/stateful_uniform_1/mulMul@random_translation_1/stateful_uniform_1/StatefulUniform:output:0/random_translation_1/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_1/stateful_uniform_1/mul?
'random_translation_1/stateful_uniform_1Add/random_translation_1/stateful_uniform_1/mul:z:04random_translation_1/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_1/stateful_uniform_1?
random_translation_1/mul_1Mul+random_translation_1/stateful_uniform_1:z:0random_translation_1/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_1/mul_1?
 random_translation_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_1/concat/axis?
random_translation_1/concatConcatV2random_translation_1/mul_1:z:0random_translation_1/mul:z:0)random_translation_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_1/concat?
-random_translation_1/translation_matrix/ShapeShape$random_translation_1/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_1/translation_matrix/Shape?
;random_translation_1/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_1/translation_matrix/strided_slice/stack?
=random_translation_1/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_1/translation_matrix/strided_slice/stack_1?
=random_translation_1/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_1/translation_matrix/strided_slice/stack_2?
5random_translation_1/translation_matrix/strided_sliceStridedSlice6random_translation_1/translation_matrix/Shape:output:0Drandom_translation_1/translation_matrix/strided_slice/stack:output:0Frandom_translation_1/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_1/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_1/translation_matrix/strided_slice?
2random_translation_1/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_1/translation_matrix/ones/mul/y?
0random_translation_1/translation_matrix/ones/mulMul>random_translation_1/translation_matrix/strided_slice:output:0;random_translation_1/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_1/translation_matrix/ones/mul?
3random_translation_1/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_1/translation_matrix/ones/Less/y?
1random_translation_1/translation_matrix/ones/LessLess4random_translation_1/translation_matrix/ones/mul:z:0<random_translation_1/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_1/translation_matrix/ones/Less?
5random_translation_1/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/ones/packed/1?
3random_translation_1/translation_matrix/ones/packedPack>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_1/translation_matrix/ones/packed?
2random_translation_1/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_1/translation_matrix/ones/Const?
,random_translation_1/translation_matrix/onesFill<random_translation_1/translation_matrix/ones/packed:output:0;random_translation_1/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_1/translation_matrix/ones?
3random_translation_1/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_1/translation_matrix/zeros/mul/y?
1random_translation_1/translation_matrix/zeros/mulMul>random_translation_1/translation_matrix/strided_slice:output:0<random_translation_1/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_1/translation_matrix/zeros/mul?
4random_translation_1/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_1/translation_matrix/zeros/Less/y?
2random_translation_1/translation_matrix/zeros/LessLess5random_translation_1/translation_matrix/zeros/mul:z:0=random_translation_1/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_1/translation_matrix/zeros/Less?
6random_translation_1/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_1/translation_matrix/zeros/packed/1?
4random_translation_1/translation_matrix/zeros/packedPack>random_translation_1/translation_matrix/strided_slice:output:0?random_translation_1/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_1/translation_matrix/zeros/packed?
3random_translation_1/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_1/translation_matrix/zeros/Const?
-random_translation_1/translation_matrix/zerosFill=random_translation_1/translation_matrix/zeros/packed:output:0<random_translation_1/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_1/translation_matrix/zeros?
=random_translation_1/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_1/translation_matrix/strided_slice_1/stack?
?random_translation_1/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_1/translation_matrix/strided_slice_1/stack_1?
?random_translation_1/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_1/translation_matrix/strided_slice_1/stack_2?
7random_translation_1/translation_matrix/strided_slice_1StridedSlice$random_translation_1/concat:output:0Frandom_translation_1/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_1/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_1/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_1/translation_matrix/strided_slice_1?
+random_translation_1/translation_matrix/NegNeg@random_translation_1/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_1/translation_matrix/Neg?
5random_translation_1/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/zeros_1/mul/y?
3random_translation_1/translation_matrix/zeros_1/mulMul>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/zeros_1/mul?
6random_translation_1/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_1/translation_matrix/zeros_1/Less/y?
4random_translation_1/translation_matrix/zeros_1/LessLess7random_translation_1/translation_matrix/zeros_1/mul:z:0?random_translation_1/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_1/translation_matrix/zeros_1/Less?
8random_translation_1/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_1/translation_matrix/zeros_1/packed/1?
6random_translation_1/translation_matrix/zeros_1/packedPack>random_translation_1/translation_matrix/strided_slice:output:0Arandom_translation_1/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_1/translation_matrix/zeros_1/packed?
5random_translation_1/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_1/translation_matrix/zeros_1/Const?
/random_translation_1/translation_matrix/zeros_1Fill?random_translation_1/translation_matrix/zeros_1/packed:output:0>random_translation_1/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_1/translation_matrix/zeros_1?
4random_translation_1/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_1/translation_matrix/ones_1/mul/y?
2random_translation_1/translation_matrix/ones_1/mulMul>random_translation_1/translation_matrix/strided_slice:output:0=random_translation_1/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_1/translation_matrix/ones_1/mul?
5random_translation_1/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_1/translation_matrix/ones_1/Less/y?
3random_translation_1/translation_matrix/ones_1/LessLess6random_translation_1/translation_matrix/ones_1/mul:z:0>random_translation_1/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/ones_1/Less?
7random_translation_1/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_1/translation_matrix/ones_1/packed/1?
5random_translation_1/translation_matrix/ones_1/packedPack>random_translation_1/translation_matrix/strided_slice:output:0@random_translation_1/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_1/translation_matrix/ones_1/packed?
4random_translation_1/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_1/translation_matrix/ones_1/Const?
.random_translation_1/translation_matrix/ones_1Fill>random_translation_1/translation_matrix/ones_1/packed:output:0=random_translation_1/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_1/translation_matrix/ones_1?
=random_translation_1/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_1/translation_matrix/strided_slice_2/stack?
?random_translation_1/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_1/translation_matrix/strided_slice_2/stack_1?
?random_translation_1/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_1/translation_matrix/strided_slice_2/stack_2?
7random_translation_1/translation_matrix/strided_slice_2StridedSlice$random_translation_1/concat:output:0Frandom_translation_1/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_1/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_1/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_1/translation_matrix/strided_slice_2?
-random_translation_1/translation_matrix/Neg_1Neg@random_translation_1/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_1/translation_matrix/Neg_1?
5random_translation_1/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_1/translation_matrix/zeros_2/mul/y?
3random_translation_1/translation_matrix/zeros_2/mulMul>random_translation_1/translation_matrix/strided_slice:output:0>random_translation_1/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_1/translation_matrix/zeros_2/mul?
6random_translation_1/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_1/translation_matrix/zeros_2/Less/y?
4random_translation_1/translation_matrix/zeros_2/LessLess7random_translation_1/translation_matrix/zeros_2/mul:z:0?random_translation_1/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_1/translation_matrix/zeros_2/Less?
8random_translation_1/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_1/translation_matrix/zeros_2/packed/1?
6random_translation_1/translation_matrix/zeros_2/packedPack>random_translation_1/translation_matrix/strided_slice:output:0Arandom_translation_1/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_1/translation_matrix/zeros_2/packed?
5random_translation_1/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_1/translation_matrix/zeros_2/Const?
/random_translation_1/translation_matrix/zeros_2Fill?random_translation_1/translation_matrix/zeros_2/packed:output:0>random_translation_1/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_1/translation_matrix/zeros_2?
3random_translation_1/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_1/translation_matrix/concat/axis?
.random_translation_1/translation_matrix/concatConcatV25random_translation_1/translation_matrix/ones:output:06random_translation_1/translation_matrix/zeros:output:0/random_translation_1/translation_matrix/Neg:y:08random_translation_1/translation_matrix/zeros_1:output:07random_translation_1/translation_matrix/ones_1:output:01random_translation_1/translation_matrix/Neg_1:y:08random_translation_1/translation_matrix/zeros_2:output:0<random_translation_1/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_1/translation_matrix/concat?
$random_translation_1/transform/ShapeShapeKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_1/transform/Shape?
2random_translation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_1/transform/strided_slice/stack?
4random_translation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_1/transform/strided_slice/stack_1?
4random_translation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_1/transform/strided_slice/stack_2?
,random_translation_1/transform/strided_sliceStridedSlice-random_translation_1/transform/Shape:output:0;random_translation_1/transform/strided_slice/stack:output:0=random_translation_1/transform/strided_slice/stack_1:output:0=random_translation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_1/transform/strided_slice?
)random_translation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_1/transform/fill_value?
9random_translation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_1/translation_matrix/concat:output:05random_translation_1/transform/strided_slice:output:02random_translation_1/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_1/transform/ImageProjectiveTransformV3?
7random_flip_1/random_flip_left_right/control_dependencyIdentityNrandom_translation_1/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*L
_classB
@>loc:@random_translation_1/transform/ImageProjectiveTransformV3*/
_output_shapes
:?????????  29
7random_flip_1/random_flip_left_right/control_dependency?
*random_flip_1/random_flip_left_right/ShapeShape@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_1/random_flip_left_right/Shape?
8random_flip_1/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_1/random_flip_left_right/strided_slice/stack?
:random_flip_1/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_1?
:random_flip_1/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_1/random_flip_left_right/strided_slice/stack_2?
2random_flip_1/random_flip_left_right/strided_sliceStridedSlice3random_flip_1/random_flip_left_right/Shape:output:0Arandom_flip_1/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_1/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_1/random_flip_left_right/strided_slice?
9random_flip_1/random_flip_left_right/random_uniform/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_1/random_flip_left_right/random_uniform/shape?
7random_flip_1/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_1/random_flip_left_right/random_uniform/min?
7random_flip_1/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7random_flip_1/random_flip_left_right/random_uniform/max?
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_1/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02C
Arandom_flip_1/random_flip_left_right/random_uniform/RandomUniform?
7random_flip_1/random_flip_left_right/random_uniform/MulMulJrandom_flip_1/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_1/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????29
7random_flip_1/random_flip_left_right/random_uniform/Mul?
4random_flip_1/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/1?
4random_flip_1/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/2?
4random_flip_1/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_1/random_flip_left_right/Reshape/shape/3?
2random_flip_1/random_flip_left_right/Reshape/shapePack;random_flip_1/random_flip_left_right/strided_slice:output:0=random_flip_1/random_flip_left_right/Reshape/shape/1:output:0=random_flip_1/random_flip_left_right/Reshape/shape/2:output:0=random_flip_1/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_1/random_flip_left_right/Reshape/shape?
,random_flip_1/random_flip_left_right/ReshapeReshape;random_flip_1/random_flip_left_right/random_uniform/Mul:z:0;random_flip_1/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2.
,random_flip_1/random_flip_left_right/Reshape?
*random_flip_1/random_flip_left_right/RoundRound5random_flip_1/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip_1/random_flip_left_right/Round?
3random_flip_1/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_1/random_flip_left_right/ReverseV2/axis?
.random_flip_1/random_flip_left_right/ReverseV2	ReverseV2@random_flip_1/random_flip_left_right/control_dependency:output:0<random_flip_1/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????  20
.random_flip_1/random_flip_left_right/ReverseV2?
(random_flip_1/random_flip_left_right/mulMul.random_flip_1/random_flip_left_right/Round:y:07random_flip_1/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:?????????  2*
(random_flip_1/random_flip_left_right/mul?
*random_flip_1/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*random_flip_1/random_flip_left_right/sub/x?
(random_flip_1/random_flip_left_right/subSub3random_flip_1/random_flip_left_right/sub/x:output:0.random_flip_1/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2*
(random_flip_1/random_flip_left_right/sub?
*random_flip_1/random_flip_left_right/mul_1Mul,random_flip_1/random_flip_left_right/sub:z:0@random_flip_1/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:?????????  2,
*random_flip_1/random_flip_left_right/mul_1?
(random_flip_1/random_flip_left_right/addAddV2,random_flip_1/random_flip_left_right/mul:z:0.random_flip_1/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:?????????  2*
(random_flip_1/random_flip_left_right/add?
IdentityIdentity,random_flip_1/random_flip_left_right/add:z:03^random_rotation_1/stateful_uniform/StatefulUniform6^random_translation_1/stateful_uniform/StatefulUniform8^random_translation_1/stateful_uniform_1/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????  ::2h
2random_rotation_1/stateful_uniform/StatefulUniform2random_rotation_1/stateful_uniform/StatefulUniform2n
5random_translation_1/stateful_uniform/StatefulUniform5random_translation_1/stateful_uniform/StatefulUniform2r
7random_translation_1/stateful_uniform_1/StatefulUniform7random_translation_1/stateful_uniform_1/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?=
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_308423

inputs
sequential_2_308383
sequential_2_308385
conv2d_4_308388
conv2d_4_308390
conv2d_5_308395
conv2d_5_308397
conv2d_6_308402
conv2d_6_308404
conv2d_7_308409
conv2d_7_308411
dense_1_308416
dense_1_308418
identity?? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_308383sequential_2_308385*
Tin
2*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080502&
$sequential_2/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0conv2d_4_308388conv2d_4_308390*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3081482"
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
H__inference_activation_5_layer_call_and_return_conditional_losses_3081692
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3080722!
max_pooling2d_3/PartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_308395conv2d_5_308397*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3081882"
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
H__inference_activation_6_layer_call_and_return_conditional_losses_3082092
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3080842!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_308402conv2d_6_308404*
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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3082282"
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
H__inference_activation_7_layer_call_and_return_conditional_losses_3082492
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3080962!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_308409conv2d_7_308411*
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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3082682"
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
H__inference_activation_8_layer_call_and_return_conditional_losses_3082892
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3081092,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_308416dense_1_308418*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3083082!
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
H__inference_activation_9_layer_call_and_return_conditional_losses_3083292
activation_9/PartitionedCall?
IdentityIdentity%activation_9/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????  ::::::::::::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
D__inference_conv2d_7_layer_call_and_return_conditional_losses_309268

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
?;
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_308377
sequential_2_input
conv2d_4_308342
conv2d_4_308344
conv2d_5_308349
conv2d_5_308351
conv2d_6_308356
conv2d_6_308358
conv2d_7_308363
conv2d_7_308365
dense_1_308370
dense_1_308372
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_3080632
sequential_2/PartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0conv2d_4_308342conv2d_4_308344*
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_3081482"
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
H__inference_activation_5_layer_call_and_return_conditional_losses_3081692
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3080722!
max_pooling2d_3/PartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_308349conv2d_5_308351*
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_3081882"
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
H__inference_activation_6_layer_call_and_return_conditional_losses_3082092
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3080842!
max_pooling2d_4/PartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_6_308356conv2d_6_308358*
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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_3082282"
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
H__inference_activation_7_layer_call_and_return_conditional_losses_3082492
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3080962!
max_pooling2d_5/PartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_7_308363conv2d_7_308365*
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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_3082682"
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
H__inference_activation_8_layer_call_and_return_conditional_losses_3082892
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_3081092,
*global_average_pooling2d_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0dense_1_308370dense_1_308372*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_3083082!
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
H__inference_activation_9_layer_call_and_return_conditional_losses_3083292
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
?J
?
!__inference__wrapped_model_307576
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
+sequential_3/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_3/conv2d_5/Conv2D/ReadVariableOp?
sequential_3/conv2d_5/Conv2DConv2D-sequential_3/max_pooling2d_3/MaxPool:output:03sequential_3/conv2d_5/Conv2D/ReadVariableOp:value:0*
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
?
d
H__inference_activation_5_layer_call_and_return_conditional_losses_309195

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
?
d
H__inference_activation_7_layer_call_and_return_conditional_losses_308249

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
?g
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
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?c
_tf_keras_sequential?b{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_2_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_1_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_1", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_2_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_1_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_1", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
layer-1
layer-2
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_1_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_1", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_1_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_1", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_1", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}]}}}
?	

kernel
bias
regularization_losses
 	variables
!trainable_variables
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#regularization_losses
$	variables
%trainable_variables
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
'regularization_losses
(	variables
)trainable_variables
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
1regularization_losses
2	variables
3trainable_variables
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
5regularization_losses
6	variables
7trainable_variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

9kernel
:bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Gkernel
Hbias
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Ukernel
Vbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
[regularization_losses
\	variables
]trainable_variables
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
_iter

`beta_1

abeta_2
	bdecay
clearning_ratem?m?+m?,m?9m?:m?Gm?Hm?Um?Vm?v?v?+v?,v?9v?:v?Gv?Hv?Uv?Vv?"
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
?
regularization_losses
dlayer_metrics
	variables
enon_trainable_variables

flayers
trainable_variables
gmetrics
hlayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
i_rng
j	keras_api"?
_tf_keras_layer?{"class_name": "RandomRotation", "name": "random_rotation_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_1", "trainable": true, "dtype": "float32", "factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
k_rng
l	keras_api"?
_tf_keras_layer?{"class_name": "RandomTranslation", "name": "random_translation_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_translation_1", "trainable": true, "dtype": "float32", "height_factor": 0.3, "width_factor": 0.3, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
m_rng
n	keras_api"?
_tf_keras_layer?{"class_name": "RandomFlip", "name": "random_flip_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_flip_1", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
olayer_metrics
	variables
pnon_trainable_variables

qlayers
trainable_variables
rmetrics
slayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_4/kernel
: 2conv2d_4/bias
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
?
regularization_losses
tlayer_metrics
 	variables
unon_trainable_variables

vlayers
!trainable_variables
wmetrics
xlayer_regularization_losses
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
#regularization_losses
ylayer_metrics
$	variables
znon_trainable_variables

{layers
%trainable_variables
|metrics
}layer_regularization_losses
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
'regularization_losses
~layer_metrics
(	variables
non_trainable_variables
?layers
)trainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_5/kernel
:@2conv2d_5/bias
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
?
-regularization_losses
?layer_metrics
.	variables
?non_trainable_variables
?layers
/trainable_variables
?metrics
 ?layer_regularization_losses
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
1regularization_losses
?layer_metrics
2	variables
?non_trainable_variables
?layers
3trainable_variables
?metrics
 ?layer_regularization_losses
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
5regularization_losses
?layer_metrics
6	variables
?non_trainable_variables
?layers
7trainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@?2conv2d_6/kernel
:?2conv2d_6/bias
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
?
;regularization_losses
?layer_metrics
<	variables
?non_trainable_variables
?layers
=trainable_variables
?metrics
 ?layer_regularization_losses
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
?regularization_losses
?layer_metrics
@	variables
?non_trainable_variables
?layers
Atrainable_variables
?metrics
 ?layer_regularization_losses
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
Cregularization_losses
?layer_metrics
D	variables
?non_trainable_variables
?layers
Etrainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2d_7/kernel
:?2conv2d_7/bias
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
?
Iregularization_losses
?layer_metrics
J	variables
?non_trainable_variables
?layers
Ktrainable_variables
?metrics
 ?layer_regularization_losses
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
Mregularization_losses
?layer_metrics
N	variables
?non_trainable_variables
?layers
Otrainable_variables
?metrics
 ?layer_regularization_losses
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
Qregularization_losses
?layer_metrics
R	variables
?non_trainable_variables
?layers
Strainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_1/kernel
:
2dense_1/bias
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
?
Wregularization_losses
?layer_metrics
X	variables
?non_trainable_variables
?layers
Ytrainable_variables
?metrics
 ?layer_regularization_losses
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
[regularization_losses
?layer_metrics
\	variables
?non_trainable_variables
?layers
]trainable_variables
?metrics
 ?layer_regularization_losses
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
trackable_dict_wrapper
 "
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
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
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
:	2Variable
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
?2?
!__inference__wrapped_model_307576?
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_308866
H__inference_sequential_3_layer_call_and_return_conditional_losses_308338
H__inference_sequential_3_layer_call_and_return_conditional_losses_308822
H__inference_sequential_3_layer_call_and_return_conditional_losses_308377?
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
-__inference_sequential_3_layer_call_fn_308450
-__inference_sequential_3_layer_call_fn_308920
-__inference_sequential_3_layer_call_fn_308895
-__inference_sequential_3_layer_call_fn_308514?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_307810
H__inference_sequential_2_layer_call_and_return_conditional_losses_309157
H__inference_sequential_2_layer_call_and_return_conditional_losses_309153
H__inference_sequential_2_layer_call_and_return_conditional_losses_307814?
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
-__inference_sequential_2_layer_call_fn_309171
-__inference_sequential_2_layer_call_fn_309166
-__inference_sequential_2_layer_call_fn_308066
-__inference_sequential_2_layer_call_fn_308057?
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_309181?
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
)__inference_conv2d_4_layer_call_fn_309190?
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
H__inference_activation_5_layer_call_and_return_conditional_losses_309195?
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
-__inference_activation_5_layer_call_fn_309200?
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_308072?
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
0__inference_max_pooling2d_3_layer_call_fn_308078?
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
D__inference_conv2d_5_layer_call_and_return_conditional_losses_309210?
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
)__inference_conv2d_5_layer_call_fn_309219?
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
H__inference_activation_6_layer_call_and_return_conditional_losses_309224?
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
-__inference_activation_6_layer_call_fn_309229?
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
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_308084?
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
0__inference_max_pooling2d_4_layer_call_fn_308090?
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
D__inference_conv2d_6_layer_call_and_return_conditional_losses_309239?
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
)__inference_conv2d_6_layer_call_fn_309248?
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
H__inference_activation_7_layer_call_and_return_conditional_losses_309253?
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
-__inference_activation_7_layer_call_fn_309258?
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
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_308096?
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
0__inference_max_pooling2d_5_layer_call_fn_308102?
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
D__inference_conv2d_7_layer_call_and_return_conditional_losses_309268?
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
)__inference_conv2d_7_layer_call_fn_309277?
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
H__inference_activation_8_layer_call_and_return_conditional_losses_309282?
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
-__inference_activation_8_layer_call_fn_309287?
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
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_308109?
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
;__inference_global_average_pooling2d_1_layer_call_fn_308115?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_309297?
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
(__inference_dense_1_layer_call_fn_309306?
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
H__inference_activation_9_layer_call_and_return_conditional_losses_309311?
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
-__inference_activation_9_layer_call_fn_309316?
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
$__inference_signature_wrapper_308549sequential_2_input"?
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
!__inference__wrapped_model_307576?
+,9:GHUVC?@
9?6
4?1
sequential_2_input?????????  
? ";?8
6
activation_9&?#
activation_9?????????
?
H__inference_activation_5_layer_call_and_return_conditional_losses_309195h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
-__inference_activation_5_layer_call_fn_309200[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
H__inference_activation_6_layer_call_and_return_conditional_losses_309224h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
-__inference_activation_6_layer_call_fn_309229[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
H__inference_activation_7_layer_call_and_return_conditional_losses_309253j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_activation_7_layer_call_fn_309258]8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_activation_8_layer_call_and_return_conditional_losses_309282j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_activation_8_layer_call_fn_309287]8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_activation_9_layer_call_and_return_conditional_losses_309311X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? |
-__inference_activation_9_layer_call_fn_309316K/?,
%?"
 ?
inputs?????????

? "??????????
?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_309181l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
)__inference_conv2d_4_layer_call_fn_309190_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_309210l+,7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
)__inference_conv2d_5_layer_call_fn_309219_+,7?4
-?*
(?%
inputs????????? 
? " ??????????@?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_309239m9:7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_6_layer_call_fn_309248`9:7?4
-?*
(?%
inputs?????????@
? "!????????????
D__inference_conv2d_7_layer_call_and_return_conditional_losses_309268nGH8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_7_layer_call_fn_309277aGH8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_1_layer_call_and_return_conditional_losses_309297]UV0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_1_layer_call_fn_309306PUV0?-
&?#
!?
inputs??????????
? "??????????
?
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_308109?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_1_layer_call_fn_308115wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_308072?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_3_layer_call_fn_308078?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_308084?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_4_layer_call_fn_308090?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_308096?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_5_layer_call_fn_308102?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_2_layer_call_and_return_conditional_losses_307810???P?M
F?C
9?6
random_rotation_1_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_307814?P?M
F?C
9?6
random_rotation_1_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_309153v????<
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_309157p??<
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
-__inference_sequential_2_layer_call_fn_308057z??P?M
F?C
9?6
random_rotation_1_input?????????  
p

 
? " ??????????  ?
-__inference_sequential_2_layer_call_fn_308066tP?M
F?C
9?6
random_rotation_1_input?????????  
p 

 
? " ??????????  ?
-__inference_sequential_2_layer_call_fn_309166i????<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
-__inference_sequential_2_layer_call_fn_309171c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_308338???+,9:GHUVK?H
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_308377?
+,9:GHUVK?H
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_308822x??+,9:GHUV??<
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_308866t
+,9:GHUV??<
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
-__inference_sequential_3_layer_call_fn_308450w??+,9:GHUVK?H
A?>
4?1
sequential_2_input?????????  
p

 
? "??????????
?
-__inference_sequential_3_layer_call_fn_308514s
+,9:GHUVK?H
A?>
4?1
sequential_2_input?????????  
p 

 
? "??????????
?
-__inference_sequential_3_layer_call_fn_308895k??+,9:GHUV??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
-__inference_sequential_3_layer_call_fn_308920g
+,9:GHUV??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_308549?
+,9:GHUVY?V
? 
O?L
J
sequential_2_input4?1
sequential_2_input?????????  ";?8
6
activation_9&?#
activation_9?????????
