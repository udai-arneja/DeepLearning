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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
: *
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
: *
dtype0
?
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0
?
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_14/kernel
~
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_14/bias
n
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes	
:?*
dtype0
?
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_15/kernel

$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_15/bias
n
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?
*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
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
Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_12/kernel/m
?
+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_12/bias/m
{
)Adam/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_13/kernel/m
?
+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/m
{
)Adam/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_14/kernel/m
?
+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_14/bias/m
|
)Adam/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_15/kernel/m
?
+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_15/bias/m
|
)Adam/conv2d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?
*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_12/kernel/v
?
+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_12/bias/v
{
)Adam/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_13/kernel/v
?
+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/v
{
)Adam/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_14/kernel/v
?
+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_14/bias/v
|
)Adam/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_15/kernel/v
?
+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_15/bias/v
|
)Adam/conv2d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?
*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
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
h

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
R
0	variables
1regularization_losses
2trainable_variables
3	keras_api
R
4	variables
5regularization_losses
6trainable_variables
7	keras_api
h

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
R
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
flearning_ratem?m?*m?+m?8m?9m?Jm?Km?Xm?Ym?v?v?*v?+v?8v?9v?Jv?Kv?Xv?Yv?
F
0
1
*2
+3
84
95
J6
K7
X8
Y9
 
F
0
1
*2
+3
84
95
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
\Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
?
?layers
 ?layer_regularization_losses
,	variables
-regularization_losses
.trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
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
\Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91
 

80
91
?
?layers
 ?layer_regularization_losses
:	variables
;regularization_losses
<trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
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
\Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/conv2d_12/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_12/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_13/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_13/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_14/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_14/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_12/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_12/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_13/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_13/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_14/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_14/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_sequential_6_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_6_inputconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasdense_3/kerneldense_3/bias*
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
$__inference_signature_wrapper_614743
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp)Adam/conv2d_12/bias/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp)Adam/conv2d_13/bias/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp)Adam/conv2d_15/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp)Adam/conv2d_12/bias/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp)Adam/conv2d_13/bias/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp)Adam/conv2d_15/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_615422
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_12/kernel/mAdam/conv2d_12/bias/mAdam/conv2d_13/kernel/mAdam/conv2d_13/bias/mAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/mAdam/conv2d_15/kernel/mAdam/conv2d_15/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d_12/kernel/vAdam/conv2d_12/bias/vAdam/conv2d_13/kernel/vAdam/conv2d_13/bias/vAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/vAdam/conv2d_15/kernel/vAdam/conv2d_15/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*4
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
"__inference__traced_restore_615552??
?
M
1__inference_max_pooling2d_10_layer_call_fn_614259

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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6142532
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
?
?
$__inference_signature_wrapper_614743
sequential_6_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_6140152
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
_user_specified_namesequential_6_input
?
c
*__inference_dropout_5_layer_call_fn_615211

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_6144352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
J
.__inference_activation_18_layer_call_fn_615245

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
I__inference_activation_18_layer_call_and_return_conditional_losses_6144842
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
q
H__inference_sequential_6_layer_call_and_return_conditional_losses_614119
random_zoom_3_input
identityo
IdentityIdentityrandom_zoom_3_input*
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
_user_specified_namerandom_zoom_3_input
?
}
(__inference_dense_3_layer_call_fn_615264

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
C__inference_dense_3_layer_call_and_return_conditional_losses_6145032
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
?	
?
E__inference_conv2d_15_layer_call_and_return_conditional_losses_615226

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
?
e
I__inference_activation_19_layer_call_and_return_conditional_losses_615269

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
e
I__inference_activation_17_layer_call_and_return_conditional_losses_614414

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
e
I__inference_activation_15_layer_call_and_return_conditional_losses_615126

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
e
I__inference_activation_16_layer_call_and_return_conditional_losses_615155

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
?
?
-__inference_sequential_7_layer_call_fn_614987

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
H__inference_sequential_7_layer_call_and_return_conditional_losses_6146852
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
J
.__inference_activation_17_layer_call_fn_615189

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
I__inference_activation_17_layer_call_and_return_conditional_losses_6144142
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
?
e
I__inference_activation_19_layer_call_and_return_conditional_losses_614524

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
֨
?
"__inference__traced_restore_615552
file_prefix%
!assignvariableop_conv2d_12_kernel%
!assignvariableop_1_conv2d_12_bias'
#assignvariableop_2_conv2d_13_kernel%
!assignvariableop_3_conv2d_13_bias'
#assignvariableop_4_conv2d_14_kernel%
!assignvariableop_5_conv2d_14_bias'
#assignvariableop_6_conv2d_15_kernel%
!assignvariableop_7_conv2d_15_bias%
!assignvariableop_8_dense_3_kernel#
assignvariableop_9_dense_3_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate 
assignvariableop_15_variable
assignvariableop_16_total
assignvariableop_17_count
assignvariableop_18_total_1
assignvariableop_19_count_1/
+assignvariableop_20_adam_conv2d_12_kernel_m-
)assignvariableop_21_adam_conv2d_12_bias_m/
+assignvariableop_22_adam_conv2d_13_kernel_m-
)assignvariableop_23_adam_conv2d_13_bias_m/
+assignvariableop_24_adam_conv2d_14_kernel_m-
)assignvariableop_25_adam_conv2d_14_bias_m/
+assignvariableop_26_adam_conv2d_15_kernel_m-
)assignvariableop_27_adam_conv2d_15_bias_m-
)assignvariableop_28_adam_dense_3_kernel_m+
'assignvariableop_29_adam_dense_3_bias_m/
+assignvariableop_30_adam_conv2d_12_kernel_v-
)assignvariableop_31_adam_conv2d_12_bias_v/
+assignvariableop_32_adam_conv2d_13_kernel_v-
)assignvariableop_33_adam_conv2d_13_bias_v/
+assignvariableop_34_adam_conv2d_14_kernel_v-
)assignvariableop_35_adam_conv2d_14_bias_v/
+assignvariableop_36_adam_conv2d_15_kernel_v-
)assignvariableop_37_adam_conv2d_15_bias_v-
)assignvariableop_38_adam_dense_3_kernel_v+
'assignvariableop_39_adam_dense_3_bias_v
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_14_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_14_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_15_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_15_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_3_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_12_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_conv2d_12_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_13_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_conv2d_13_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_14_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_14_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_15_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_15_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_3_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_3_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_12_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_12_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_13_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_13_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_14_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_14_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_15_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_15_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_3_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_3_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_615201

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
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
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_12_layer_call_and_return_conditional_losses_615112

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
?	
?
E__inference_conv2d_12_layer_call_and_return_conditional_losses_614313

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
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_614503

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
?
H__inference_sequential_6_layer_call_and_return_conditional_losses_614115
random_zoom_3_input;
7random_zoom_3_stateful_uniform_statefuluniform_resource
identity??.random_zoom_3/stateful_uniform/StatefulUniformm
random_zoom_3/ShapeShaperandom_zoom_3_input*
T0*
_output_shapes
:2
random_zoom_3/Shape?
!random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_3/strided_slice/stack?
#random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice/stack_1?
#random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice/stack_2?
random_zoom_3/strided_sliceStridedSlicerandom_zoom_3/Shape:output:0*random_zoom_3/strided_slice/stack:output:0,random_zoom_3/strided_slice/stack_1:output:0,random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice?
#random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice_1/stack?
%random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_1/stack_1?
%random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_1/stack_2?
random_zoom_3/strided_slice_1StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_1/stack:output:0.random_zoom_3/strided_slice_1/stack_1:output:0.random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice_1?
random_zoom_3/CastCast&random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_3/Cast?
#random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice_2/stack?
%random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_2/stack_1?
%random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_2/stack_2?
random_zoom_3/strided_slice_2StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_2/stack:output:0.random_zoom_3/strided_slice_2/stack_1:output:0.random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice_2?
random_zoom_3/Cast_1Cast&random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_3/Cast_1?
&random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_3/stateful_uniform/shape/1?
$random_zoom_3/stateful_uniform/shapePack$random_zoom_3/strided_slice:output:0/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_3/stateful_uniform/shape?
"random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_3/stateful_uniform/min?
"random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_3/stateful_uniform/max?
8random_zoom_3/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_3/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_3/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_3_stateful_uniform_statefuluniform_resourceArandom_zoom_3/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_3/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_3/stateful_uniform/StatefulUniform?
"random_zoom_3/stateful_uniform/subSub+random_zoom_3/stateful_uniform/max:output:0+random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_3/stateful_uniform/sub?
"random_zoom_3/stateful_uniform/mulMul7random_zoom_3/stateful_uniform/StatefulUniform:output:0&random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_3/stateful_uniform/mul?
random_zoom_3/stateful_uniformAdd&random_zoom_3/stateful_uniform/mul:z:0+random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_3/stateful_uniformx
random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_3/concat/axis?
random_zoom_3/concatConcatV2"random_zoom_3/stateful_uniform:z:0"random_zoom_3/stateful_uniform:z:0"random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_3/concat?
random_zoom_3/zoom_matrix/ShapeShaperandom_zoom_3/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_3/zoom_matrix/Shape?
-random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_3/zoom_matrix/strided_slice/stack?
/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_3/zoom_matrix/strided_slice/stack_1?
/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_3/zoom_matrix/strided_slice/stack_2?
'random_zoom_3/zoom_matrix/strided_sliceStridedSlice(random_zoom_3/zoom_matrix/Shape:output:06random_zoom_3/zoom_matrix/strided_slice/stack:output:08random_zoom_3/zoom_matrix/strided_slice/stack_1:output:08random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_3/zoom_matrix/strided_slice?
random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_3/zoom_matrix/sub/y?
random_zoom_3/zoom_matrix/subSubrandom_zoom_3/Cast_1:y:0(random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_3/zoom_matrix/sub?
#random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_3/zoom_matrix/truediv/y?
!random_zoom_3/zoom_matrix/truedivRealDiv!random_zoom_3/zoom_matrix/sub:z:0,random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_3/zoom_matrix/truediv?
/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_3/zoom_matrix/strided_slice_1/stack?
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_1?
!random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_1/x?
random_zoom_3/zoom_matrix/sub_1Sub*random_zoom_3/zoom_matrix/sub_1/x:output:02random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/sub_1?
random_zoom_3/zoom_matrix/mulMul%random_zoom_3/zoom_matrix/truediv:z:0#random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_3/zoom_matrix/mul?
!random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_2/y?
random_zoom_3/zoom_matrix/sub_2Subrandom_zoom_3/Cast:y:0*random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_3/zoom_matrix/sub_2?
%random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_3/zoom_matrix/truediv_1/y?
#random_zoom_3/zoom_matrix/truediv_1RealDiv#random_zoom_3/zoom_matrix/sub_2:z:0.random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_3/zoom_matrix/truediv_1?
/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_3/zoom_matrix/strided_slice_2/stack?
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_2?
!random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_3/x?
random_zoom_3/zoom_matrix/sub_3Sub*random_zoom_3/zoom_matrix/sub_3/x:output:02random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/sub_3?
random_zoom_3/zoom_matrix/mul_1Mul'random_zoom_3/zoom_matrix/truediv_1:z:0#random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/mul_1?
/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_3/zoom_matrix/strided_slice_3/stack?
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_3?
%random_zoom_3/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_3/zoom_matrix/zeros/mul/y?
#random_zoom_3/zoom_matrix/zeros/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:0.random_zoom_3/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_3/zoom_matrix/zeros/mul?
&random_zoom_3/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_3/zoom_matrix/zeros/Less/y?
$random_zoom_3/zoom_matrix/zeros/LessLess'random_zoom_3/zoom_matrix/zeros/mul:z:0/random_zoom_3/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_3/zoom_matrix/zeros/Less?
(random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_3/zoom_matrix/zeros/packed/1?
&random_zoom_3/zoom_matrix/zeros/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:01random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_3/zoom_matrix/zeros/packed?
%random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_3/zoom_matrix/zeros/Const?
random_zoom_3/zoom_matrix/zerosFill/random_zoom_3/zoom_matrix/zeros/packed:output:0.random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/zeros?
'random_zoom_3/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_3/zoom_matrix/zeros_1/mul/y?
%random_zoom_3/zoom_matrix/zeros_1/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:00random_zoom_3/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_3/zoom_matrix/zeros_1/mul?
(random_zoom_3/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_3/zoom_matrix/zeros_1/Less/y?
&random_zoom_3/zoom_matrix/zeros_1/LessLess)random_zoom_3/zoom_matrix/zeros_1/mul:z:01random_zoom_3/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_3/zoom_matrix/zeros_1/Less?
*random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_3/zoom_matrix/zeros_1/packed/1?
(random_zoom_3/zoom_matrix/zeros_1/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_3/zoom_matrix/zeros_1/packed?
'random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_3/zoom_matrix/zeros_1/Const?
!random_zoom_3/zoom_matrix/zeros_1Fill1random_zoom_3/zoom_matrix/zeros_1/packed:output:00random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_3/zoom_matrix/zeros_1?
/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_3/zoom_matrix/strided_slice_4/stack?
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_4?
'random_zoom_3/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_3/zoom_matrix/zeros_2/mul/y?
%random_zoom_3/zoom_matrix/zeros_2/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:00random_zoom_3/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_3/zoom_matrix/zeros_2/mul?
(random_zoom_3/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_3/zoom_matrix/zeros_2/Less/y?
&random_zoom_3/zoom_matrix/zeros_2/LessLess)random_zoom_3/zoom_matrix/zeros_2/mul:z:01random_zoom_3/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_3/zoom_matrix/zeros_2/Less?
*random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_3/zoom_matrix/zeros_2/packed/1?
(random_zoom_3/zoom_matrix/zeros_2/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_3/zoom_matrix/zeros_2/packed?
'random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_3/zoom_matrix/zeros_2/Const?
!random_zoom_3/zoom_matrix/zeros_2Fill1random_zoom_3/zoom_matrix/zeros_2/packed:output:00random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_3/zoom_matrix/zeros_2?
%random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_3/zoom_matrix/concat/axis?
 random_zoom_3/zoom_matrix/concatConcatV22random_zoom_3/zoom_matrix/strided_slice_3:output:0(random_zoom_3/zoom_matrix/zeros:output:0!random_zoom_3/zoom_matrix/mul:z:0*random_zoom_3/zoom_matrix/zeros_1:output:02random_zoom_3/zoom_matrix/strided_slice_4:output:0#random_zoom_3/zoom_matrix/mul_1:z:0*random_zoom_3/zoom_matrix/zeros_2:output:0.random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_3/zoom_matrix/concat?
random_zoom_3/transform/ShapeShaperandom_zoom_3_input*
T0*
_output_shapes
:2
random_zoom_3/transform/Shape?
+random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_3/transform/strided_slice/stack?
-random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_3/transform/strided_slice/stack_1?
-random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_3/transform/strided_slice/stack_2?
%random_zoom_3/transform/strided_sliceStridedSlice&random_zoom_3/transform/Shape:output:04random_zoom_3/transform/strided_slice/stack:output:06random_zoom_3/transform/strided_slice/stack_1:output:06random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_3/transform/strided_slice?
"random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_3/transform/fill_value?
2random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_zoom_3_input)random_zoom_3/zoom_matrix/concat:output:0.random_zoom_3/transform/strided_slice:output:0+random_zoom_3/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_3/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_3/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_3/stateful_uniform/StatefulUniform.random_zoom_3/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_3_input
?B
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614618

inputs
sequential_6_614579
conv2d_12_614582
conv2d_12_614584
conv2d_13_614589
conv2d_13_614591
conv2d_14_614596
conv2d_14_614598
conv2d_15_614604
conv2d_15_614606
dense_3_614611
dense_3_614613
identity??!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCallinputssequential_6_614579*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142212&
$sequential_6/StatefulPartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0conv2d_12_614582conv2d_12_614584*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6143132#
!conv2d_12/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6143342
activation_15/PartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6142412!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_614589conv2d_13_614591*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6143532#
!conv2d_13/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6143742
activation_16/PartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6142532"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_614596conv2d_14_614598*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6143932#
!conv2d_14/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6144142
activation_17/PartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6142652"
 max_pooling2d_11/PartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_6144352#
!dropout_5/StatefulPartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_15_614604conv2d_15_614606*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6144632#
!conv2d_15/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6144842
activation_18/PartitionedCall?
*global_average_pooling2d_3/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6142782,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_614611dense_3_614613*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6145032!
dense_3/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6145242
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
-__inference_sequential_7_layer_call_fn_614962

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
H__inference_sequential_7_layer_call_and_return_conditional_losses_6146182
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
?
M
1__inference_max_pooling2d_11_layer_call_fn_614271

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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6142652
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
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_614253

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
e
I__inference_activation_17_layer_call_and_return_conditional_losses_615184

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
F
*__inference_dropout_5_layer_call_fn_615216

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_6144402
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
s
-__inference_sequential_6_layer_call_fn_615097

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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142212
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
??
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614685

inputs
conv2d_12_614649
conv2d_12_614651
conv2d_13_614656
conv2d_13_614658
conv2d_14_614663
conv2d_14_614665
conv2d_15_614671
conv2d_15_614673
dense_3_614678
dense_3_614680
identity??!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
sequential_6/PartitionedCallPartitionedCallinputs*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142322
sequential_6/PartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_12_614649conv2d_12_614651*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6143132#
!conv2d_12/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6143342
activation_15/PartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6142412!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_614656conv2d_13_614658*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6143532#
!conv2d_13/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6143742
activation_16/PartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6142532"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_614663conv2d_14_614665*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6143932#
!conv2d_14/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6144142
activation_17/PartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6142652"
 max_pooling2d_11/PartitionedCall?
dropout_5/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_6144402
dropout_5/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_15_614671conv2d_15_614673*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6144632#
!conv2d_15/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6144842
activation_18/PartitionedCall?
*global_average_pooling2d_3/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6142782,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_614678dense_3_614680*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6145032!
dense_3/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6145242
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_15_layer_call_and_return_conditional_losses_614463

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
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_614435

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
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
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614890

inputsH
Dsequential_6_random_zoom_3_stateful_uniform_statefuluniform_resource,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity?? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?;sequential_6/random_zoom_3/stateful_uniform/StatefulUniformz
 sequential_6/random_zoom_3/ShapeShapeinputs*
T0*
_output_shapes
:2"
 sequential_6/random_zoom_3/Shape?
.sequential_6/random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_6/random_zoom_3/strided_slice/stack?
0sequential_6/random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_6/random_zoom_3/strided_slice/stack_1?
0sequential_6/random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_6/random_zoom_3/strided_slice/stack_2?
(sequential_6/random_zoom_3/strided_sliceStridedSlice)sequential_6/random_zoom_3/Shape:output:07sequential_6/random_zoom_3/strided_slice/stack:output:09sequential_6/random_zoom_3/strided_slice/stack_1:output:09sequential_6/random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_6/random_zoom_3/strided_slice?
0sequential_6/random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_6/random_zoom_3/strided_slice_1/stack?
2sequential_6/random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/random_zoom_3/strided_slice_1/stack_1?
2sequential_6/random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/random_zoom_3/strided_slice_1/stack_2?
*sequential_6/random_zoom_3/strided_slice_1StridedSlice)sequential_6/random_zoom_3/Shape:output:09sequential_6/random_zoom_3/strided_slice_1/stack:output:0;sequential_6/random_zoom_3/strided_slice_1/stack_1:output:0;sequential_6/random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_6/random_zoom_3/strided_slice_1?
sequential_6/random_zoom_3/CastCast3sequential_6/random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_6/random_zoom_3/Cast?
0sequential_6/random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_6/random_zoom_3/strided_slice_2/stack?
2sequential_6/random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/random_zoom_3/strided_slice_2/stack_1?
2sequential_6/random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/random_zoom_3/strided_slice_2/stack_2?
*sequential_6/random_zoom_3/strided_slice_2StridedSlice)sequential_6/random_zoom_3/Shape:output:09sequential_6/random_zoom_3/strided_slice_2/stack:output:0;sequential_6/random_zoom_3/strided_slice_2/stack_1:output:0;sequential_6/random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_6/random_zoom_3/strided_slice_2?
!sequential_6/random_zoom_3/Cast_1Cast3sequential_6/random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_6/random_zoom_3/Cast_1?
3sequential_6/random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_6/random_zoom_3/stateful_uniform/shape/1?
1sequential_6/random_zoom_3/stateful_uniform/shapePack1sequential_6/random_zoom_3/strided_slice:output:0<sequential_6/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_6/random_zoom_3/stateful_uniform/shape?
/sequential_6/random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_6/random_zoom_3/stateful_uniform/min?
/sequential_6/random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_6/random_zoom_3/stateful_uniform/max?
Esequential_6/random_zoom_3/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2G
Esequential_6/random_zoom_3/stateful_uniform/StatefulUniform/algorithm?
;sequential_6/random_zoom_3/stateful_uniform/StatefulUniformStatefulUniformDsequential_6_random_zoom_3_stateful_uniform_statefuluniform_resourceNsequential_6/random_zoom_3/stateful_uniform/StatefulUniform/algorithm:output:0:sequential_6/random_zoom_3/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02=
;sequential_6/random_zoom_3/stateful_uniform/StatefulUniform?
/sequential_6/random_zoom_3/stateful_uniform/subSub8sequential_6/random_zoom_3/stateful_uniform/max:output:08sequential_6/random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: 21
/sequential_6/random_zoom_3/stateful_uniform/sub?
/sequential_6/random_zoom_3/stateful_uniform/mulMulDsequential_6/random_zoom_3/stateful_uniform/StatefulUniform:output:03sequential_6/random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????21
/sequential_6/random_zoom_3/stateful_uniform/mul?
+sequential_6/random_zoom_3/stateful_uniformAdd3sequential_6/random_zoom_3/stateful_uniform/mul:z:08sequential_6/random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2-
+sequential_6/random_zoom_3/stateful_uniform?
&sequential_6/random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_6/random_zoom_3/concat/axis?
!sequential_6/random_zoom_3/concatConcatV2/sequential_6/random_zoom_3/stateful_uniform:z:0/sequential_6/random_zoom_3/stateful_uniform:z:0/sequential_6/random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!sequential_6/random_zoom_3/concat?
,sequential_6/random_zoom_3/zoom_matrix/ShapeShape*sequential_6/random_zoom_3/concat:output:0*
T0*
_output_shapes
:2.
,sequential_6/random_zoom_3/zoom_matrix/Shape?
:sequential_6/random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_6/random_zoom_3/zoom_matrix/strided_slice/stack?
<sequential_6/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_6/random_zoom_3/zoom_matrix/strided_slice/stack_1?
<sequential_6/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_6/random_zoom_3/zoom_matrix/strided_slice/stack_2?
4sequential_6/random_zoom_3/zoom_matrix/strided_sliceStridedSlice5sequential_6/random_zoom_3/zoom_matrix/Shape:output:0Csequential_6/random_zoom_3/zoom_matrix/strided_slice/stack:output:0Esequential_6/random_zoom_3/zoom_matrix/strided_slice/stack_1:output:0Esequential_6/random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential_6/random_zoom_3/zoom_matrix/strided_slice?
,sequential_6/random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_6/random_zoom_3/zoom_matrix/sub/y?
*sequential_6/random_zoom_3/zoom_matrix/subSub%sequential_6/random_zoom_3/Cast_1:y:05sequential_6/random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2,
*sequential_6/random_zoom_3/zoom_matrix/sub?
0sequential_6/random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_6/random_zoom_3/zoom_matrix/truediv/y?
.sequential_6/random_zoom_3/zoom_matrix/truedivRealDiv.sequential_6/random_zoom_3/zoom_matrix/sub:z:09sequential_6/random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 20
.sequential_6/random_zoom_3/zoom_matrix/truediv?
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack_1?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack_2?
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_1StridedSlice*sequential_6/random_zoom_3/concat:output:0Esequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_1?
.sequential_6/random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_6/random_zoom_3/zoom_matrix/sub_1/x?
,sequential_6/random_zoom_3/zoom_matrix/sub_1Sub7sequential_6/random_zoom_3/zoom_matrix/sub_1/x:output:0?sequential_6/random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_6/random_zoom_3/zoom_matrix/sub_1?
*sequential_6/random_zoom_3/zoom_matrix/mulMul2sequential_6/random_zoom_3/zoom_matrix/truediv:z:00sequential_6/random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2,
*sequential_6/random_zoom_3/zoom_matrix/mul?
.sequential_6/random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_6/random_zoom_3/zoom_matrix/sub_2/y?
,sequential_6/random_zoom_3/zoom_matrix/sub_2Sub#sequential_6/random_zoom_3/Cast:y:07sequential_6/random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2.
,sequential_6/random_zoom_3/zoom_matrix/sub_2?
2sequential_6/random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @24
2sequential_6/random_zoom_3/zoom_matrix/truediv_1/y?
0sequential_6/random_zoom_3/zoom_matrix/truediv_1RealDiv0sequential_6/random_zoom_3/zoom_matrix/sub_2:z:0;sequential_6/random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 22
0sequential_6/random_zoom_3/zoom_matrix/truediv_1?
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack_1?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack_2?
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_2StridedSlice*sequential_6/random_zoom_3/concat:output:0Esequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_2?
.sequential_6/random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_6/random_zoom_3/zoom_matrix/sub_3/x?
,sequential_6/random_zoom_3/zoom_matrix/sub_3Sub7sequential_6/random_zoom_3/zoom_matrix/sub_3/x:output:0?sequential_6/random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_6/random_zoom_3/zoom_matrix/sub_3?
,sequential_6/random_zoom_3/zoom_matrix/mul_1Mul4sequential_6/random_zoom_3/zoom_matrix/truediv_1:z:00sequential_6/random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2.
,sequential_6/random_zoom_3/zoom_matrix/mul_1?
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack_1?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack_2?
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_3StridedSlice*sequential_6/random_zoom_3/concat:output:0Esequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_3?
2sequential_6/random_zoom_3/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_6/random_zoom_3/zoom_matrix/zeros/mul/y?
0sequential_6/random_zoom_3/zoom_matrix/zeros/mulMul=sequential_6/random_zoom_3/zoom_matrix/strided_slice:output:0;sequential_6/random_zoom_3/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_6/random_zoom_3/zoom_matrix/zeros/mul?
3sequential_6/random_zoom_3/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3sequential_6/random_zoom_3/zoom_matrix/zeros/Less/y?
1sequential_6/random_zoom_3/zoom_matrix/zeros/LessLess4sequential_6/random_zoom_3/zoom_matrix/zeros/mul:z:0<sequential_6/random_zoom_3/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_6/random_zoom_3/zoom_matrix/zeros/Less?
5sequential_6/random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_6/random_zoom_3/zoom_matrix/zeros/packed/1?
3sequential_6/random_zoom_3/zoom_matrix/zeros/packedPack=sequential_6/random_zoom_3/zoom_matrix/strided_slice:output:0>sequential_6/random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_6/random_zoom_3/zoom_matrix/zeros/packed?
2sequential_6/random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_6/random_zoom_3/zoom_matrix/zeros/Const?
,sequential_6/random_zoom_3/zoom_matrix/zerosFill<sequential_6/random_zoom_3/zoom_matrix/zeros/packed:output:0;sequential_6/random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_6/random_zoom_3/zoom_matrix/zeros?
4sequential_6/random_zoom_3/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_6/random_zoom_3/zoom_matrix/zeros_1/mul/y?
2sequential_6/random_zoom_3/zoom_matrix/zeros_1/mulMul=sequential_6/random_zoom_3/zoom_matrix/strided_slice:output:0=sequential_6/random_zoom_3/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_6/random_zoom_3/zoom_matrix/zeros_1/mul?
5sequential_6/random_zoom_3/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_6/random_zoom_3/zoom_matrix/zeros_1/Less/y?
3sequential_6/random_zoom_3/zoom_matrix/zeros_1/LessLess6sequential_6/random_zoom_3/zoom_matrix/zeros_1/mul:z:0>sequential_6/random_zoom_3/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_6/random_zoom_3/zoom_matrix/zeros_1/Less?
7sequential_6/random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_6/random_zoom_3/zoom_matrix/zeros_1/packed/1?
5sequential_6/random_zoom_3/zoom_matrix/zeros_1/packedPack=sequential_6/random_zoom_3/zoom_matrix/strided_slice:output:0@sequential_6/random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_6/random_zoom_3/zoom_matrix/zeros_1/packed?
4sequential_6/random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_6/random_zoom_3/zoom_matrix/zeros_1/Const?
.sequential_6/random_zoom_3/zoom_matrix/zeros_1Fill>sequential_6/random_zoom_3/zoom_matrix/zeros_1/packed:output:0=sequential_6/random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_6/random_zoom_3/zoom_matrix/zeros_1?
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack_1?
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack_2?
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_4StridedSlice*sequential_6/random_zoom_3/concat:output:0Esequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_6/random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_6/random_zoom_3/zoom_matrix/strided_slice_4?
4sequential_6/random_zoom_3/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_6/random_zoom_3/zoom_matrix/zeros_2/mul/y?
2sequential_6/random_zoom_3/zoom_matrix/zeros_2/mulMul=sequential_6/random_zoom_3/zoom_matrix/strided_slice:output:0=sequential_6/random_zoom_3/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_6/random_zoom_3/zoom_matrix/zeros_2/mul?
5sequential_6/random_zoom_3/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_6/random_zoom_3/zoom_matrix/zeros_2/Less/y?
3sequential_6/random_zoom_3/zoom_matrix/zeros_2/LessLess6sequential_6/random_zoom_3/zoom_matrix/zeros_2/mul:z:0>sequential_6/random_zoom_3/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_6/random_zoom_3/zoom_matrix/zeros_2/Less?
7sequential_6/random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_6/random_zoom_3/zoom_matrix/zeros_2/packed/1?
5sequential_6/random_zoom_3/zoom_matrix/zeros_2/packedPack=sequential_6/random_zoom_3/zoom_matrix/strided_slice:output:0@sequential_6/random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_6/random_zoom_3/zoom_matrix/zeros_2/packed?
4sequential_6/random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_6/random_zoom_3/zoom_matrix/zeros_2/Const?
.sequential_6/random_zoom_3/zoom_matrix/zeros_2Fill>sequential_6/random_zoom_3/zoom_matrix/zeros_2/packed:output:0=sequential_6/random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_6/random_zoom_3/zoom_matrix/zeros_2?
2sequential_6/random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_6/random_zoom_3/zoom_matrix/concat/axis?
-sequential_6/random_zoom_3/zoom_matrix/concatConcatV2?sequential_6/random_zoom_3/zoom_matrix/strided_slice_3:output:05sequential_6/random_zoom_3/zoom_matrix/zeros:output:0.sequential_6/random_zoom_3/zoom_matrix/mul:z:07sequential_6/random_zoom_3/zoom_matrix/zeros_1:output:0?sequential_6/random_zoom_3/zoom_matrix/strided_slice_4:output:00sequential_6/random_zoom_3/zoom_matrix/mul_1:z:07sequential_6/random_zoom_3/zoom_matrix/zeros_2:output:0;sequential_6/random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2/
-sequential_6/random_zoom_3/zoom_matrix/concat?
*sequential_6/random_zoom_3/transform/ShapeShapeinputs*
T0*
_output_shapes
:2,
*sequential_6/random_zoom_3/transform/Shape?
8sequential_6/random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_6/random_zoom_3/transform/strided_slice/stack?
:sequential_6/random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_6/random_zoom_3/transform/strided_slice/stack_1?
:sequential_6/random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_6/random_zoom_3/transform/strided_slice/stack_2?
2sequential_6/random_zoom_3/transform/strided_sliceStridedSlice3sequential_6/random_zoom_3/transform/Shape:output:0Asequential_6/random_zoom_3/transform/strided_slice/stack:output:0Csequential_6/random_zoom_3/transform/strided_slice/stack_1:output:0Csequential_6/random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:24
2sequential_6/random_zoom_3/transform/strided_slice?
/sequential_6/random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_6/random_zoom_3/transform/fill_value?
?sequential_6/random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs6sequential_6/random_zoom_3/zoom_matrix/concat:output:0;sequential_6/random_zoom_3/transform/strided_slice:output:08sequential_6/random_zoom_3/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2A
?sequential_6/random_zoom_3/transform/ImageProjectiveTransformV3?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2DTsequential_6/random_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_12/BiasAdd?
activation_15/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_15/Relu?
max_pooling2d_9/MaxPoolMaxPool activation_15/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_9/MaxPool?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_13/BiasAdd?
activation_16/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_16/Relu?
max_pooling2d_10/MaxPoolMaxPool activation_16/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_10/MaxPool?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_14/BiasAdd?
activation_17/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_17/Relu?
max_pooling2d_11/MaxPoolMaxPool activation_17/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_11/MaxPoolw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_5/dropout/Const?
dropout_5/dropout/MulMul!max_pooling2d_11/MaxPool:output:0 dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_5/dropout/Mul?
dropout_5/dropout/ShapeShape!max_pooling2d_11/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_5/dropout/Mul_1?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_15/Conv2D/ReadVariableOp?
conv2d_15/Conv2DConv2Ddropout_5/dropout/Mul_1:z:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_15/Conv2D?
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp?
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_15/BiasAdd?
activation_18/ReluReluconv2d_15/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_18/Relu?
1global_average_pooling2d_3/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_3/Mean/reduction_indices?
global_average_pooling2d_3/MeanMean activation_18/Relu:activations:0:global_average_pooling2d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_3/Mean?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul(global_average_pooling2d_3/Mean:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAdd?
activation_19/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_19/Softmax?
IdentityIdentityactivation_19/Softmax:softmax:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp<^sequential_6/random_zoom_3/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2z
;sequential_6/random_zoom_3/stateful_uniform/StatefulUniform;sequential_6/random_zoom_3/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
e
I__inference_activation_18_layer_call_and_return_conditional_losses_614484

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
??
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614573
sequential_6_input
conv2d_12_614537
conv2d_12_614539
conv2d_13_614544
conv2d_13_614546
conv2d_14_614551
conv2d_14_614553
conv2d_15_614559
conv2d_15_614561
dense_3_614566
dense_3_614568
identity??!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
sequential_6/PartitionedCallPartitionedCallsequential_6_input*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142322
sequential_6/PartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_12_614537conv2d_12_614539*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6143132#
!conv2d_12/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6143342
activation_15/PartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6142412!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_614544conv2d_13_614546*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6143532#
!conv2d_13/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6143742
activation_16/PartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6142532"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_614551conv2d_14_614553*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6143932#
!conv2d_14/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6144142
activation_17/PartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6142652"
 max_pooling2d_11/PartitionedCall?
dropout_5/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_6144402
dropout_5/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_15_614559conv2d_15_614561*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6144632#
!conv2d_15/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6144842
activation_18/PartitionedCall?
*global_average_pooling2d_3/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6142782,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_614566dense_3_614568*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6145032!
dense_3/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6145242
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_6_input
?	
?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_614353

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
-__inference_sequential_6_layer_call_fn_615102

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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142322
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_615090

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
?
d
H__inference_sequential_6_layer_call_and_return_conditional_losses_614232

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
?	
?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_614393

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
I__inference_activation_16_layer_call_and_return_conditional_losses_614374

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
?
W
;__inference_global_average_pooling2d_3_layer_call_fn_614284

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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6142782
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
?

*__inference_conv2d_12_layer_call_fn_615121

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
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6143132
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
?<
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614935

inputs,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity?? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_12/Conv2D/ReadVariableOp?
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_12/Conv2D?
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp?
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_12/BiasAdd?
activation_15/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_15/Relu?
max_pooling2d_9/MaxPoolMaxPool activation_15/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_9/MaxPool?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_13/BiasAdd?
activation_16/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_16/Relu?
max_pooling2d_10/MaxPoolMaxPool activation_16/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_10/MaxPool?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_14/BiasAdd?
activation_17/ReluReluconv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_17/Relu?
max_pooling2d_11/MaxPoolMaxPool activation_17/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_11/MaxPool?
dropout_5/IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:??????????2
dropout_5/Identity?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_15/Conv2D/ReadVariableOp?
conv2d_15/Conv2DConv2Ddropout_5/Identity:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_15/Conv2D?
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp?
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_15/BiasAdd?
activation_18/ReluReluconv2d_15/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_18/Relu?
1global_average_pooling2d_3/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_3/Mean/reduction_indices?
global_average_pooling2d_3/MeanMean activation_18/Relu:activations:0:global_average_pooling2d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_3/Mean?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul(global_average_pooling2d_3/Mean:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAdd?
activation_19/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_19/Softmax?
IdentityIdentityactivation_19/Softmax:softmax:0!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
J
.__inference_activation_16_layer_call_fn_615160

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
I__inference_activation_16_layer_call_and_return_conditional_losses_6143742
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
?U
?
__inference__traced_save_615422
file_prefix/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop4
0savev2_adam_conv2d_12_bias_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop4
0savev2_adam_conv2d_13_bias_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop4
0savev2_adam_conv2d_14_bias_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop4
0savev2_adam_conv2d_15_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop4
0savev2_adam_conv2d_12_bias_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop4
0savev2_adam_conv2d_13_bias_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop4
0savev2_adam_conv2d_15_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
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
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop0savev2_adam_conv2d_12_bias_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop0savev2_adam_conv2d_13_bias_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop0savev2_adam_conv2d_15_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop0savev2_adam_conv2d_12_bias_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop0savev2_adam_conv2d_13_bias_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop0savev2_adam_conv2d_15_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?

*__inference_conv2d_14_layer_call_fn_615179

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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6143932
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
?B
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614533
sequential_6_input
sequential_6_614300
conv2d_12_614324
conv2d_12_614326
conv2d_13_614364
conv2d_13_614366
conv2d_14_614404
conv2d_14_614406
conv2d_15_614474
conv2d_15_614476
dense_3_614514
dense_3_614516
identity??!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputsequential_6_614300*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142212&
$sequential_6/StatefulPartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0conv2d_12_614324conv2d_12_614326*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6143132#
!conv2d_12/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6143342
activation_15/PartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6142412!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_614364conv2d_13_614366*
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
GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6143532#
!conv2d_13/StatefulPartitionedCall?
activation_16/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6143742
activation_16/PartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6142532"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_614404conv2d_14_614406*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6143932#
!conv2d_14/StatefulPartitionedCall?
activation_17/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6144142
activation_17/PartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6142652"
 max_pooling2d_11/PartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_6144352#
!dropout_5/StatefulPartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_15_614474conv2d_15_614476*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6144632#
!conv2d_15/StatefulPartitionedCall?
activation_18/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6144842
activation_18/PartitionedCall?
*global_average_pooling2d_3/PartitionedCallPartitionedCall&activation_18/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6142782,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_614514dense_3_614516*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6145032!
dense_3/StatefulPartitionedCall?
activation_19/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6145242
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_6_input
?
?
-__inference_sequential_6_layer_call_fn_614226
random_zoom_3_input
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_3_inputunknown*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142212
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
_user_specified_namerandom_zoom_3_input
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_614265

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
e
I__inference_activation_18_layer_call_and_return_conditional_losses_615240

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
?
H__inference_sequential_6_layer_call_and_return_conditional_losses_614221

inputs;
7random_zoom_3_stateful_uniform_statefuluniform_resource
identity??.random_zoom_3/stateful_uniform/StatefulUniform`
random_zoom_3/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_3/Shape?
!random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_3/strided_slice/stack?
#random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice/stack_1?
#random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice/stack_2?
random_zoom_3/strided_sliceStridedSlicerandom_zoom_3/Shape:output:0*random_zoom_3/strided_slice/stack:output:0,random_zoom_3/strided_slice/stack_1:output:0,random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice?
#random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice_1/stack?
%random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_1/stack_1?
%random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_1/stack_2?
random_zoom_3/strided_slice_1StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_1/stack:output:0.random_zoom_3/strided_slice_1/stack_1:output:0.random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice_1?
random_zoom_3/CastCast&random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_3/Cast?
#random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice_2/stack?
%random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_2/stack_1?
%random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_2/stack_2?
random_zoom_3/strided_slice_2StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_2/stack:output:0.random_zoom_3/strided_slice_2/stack_1:output:0.random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice_2?
random_zoom_3/Cast_1Cast&random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_3/Cast_1?
&random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_3/stateful_uniform/shape/1?
$random_zoom_3/stateful_uniform/shapePack$random_zoom_3/strided_slice:output:0/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_3/stateful_uniform/shape?
"random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_3/stateful_uniform/min?
"random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_3/stateful_uniform/max?
8random_zoom_3/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_3/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_3/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_3_stateful_uniform_statefuluniform_resourceArandom_zoom_3/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_3/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_3/stateful_uniform/StatefulUniform?
"random_zoom_3/stateful_uniform/subSub+random_zoom_3/stateful_uniform/max:output:0+random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_3/stateful_uniform/sub?
"random_zoom_3/stateful_uniform/mulMul7random_zoom_3/stateful_uniform/StatefulUniform:output:0&random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_3/stateful_uniform/mul?
random_zoom_3/stateful_uniformAdd&random_zoom_3/stateful_uniform/mul:z:0+random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_3/stateful_uniformx
random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_3/concat/axis?
random_zoom_3/concatConcatV2"random_zoom_3/stateful_uniform:z:0"random_zoom_3/stateful_uniform:z:0"random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_3/concat?
random_zoom_3/zoom_matrix/ShapeShaperandom_zoom_3/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_3/zoom_matrix/Shape?
-random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_3/zoom_matrix/strided_slice/stack?
/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_3/zoom_matrix/strided_slice/stack_1?
/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_3/zoom_matrix/strided_slice/stack_2?
'random_zoom_3/zoom_matrix/strided_sliceStridedSlice(random_zoom_3/zoom_matrix/Shape:output:06random_zoom_3/zoom_matrix/strided_slice/stack:output:08random_zoom_3/zoom_matrix/strided_slice/stack_1:output:08random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_3/zoom_matrix/strided_slice?
random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_3/zoom_matrix/sub/y?
random_zoom_3/zoom_matrix/subSubrandom_zoom_3/Cast_1:y:0(random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_3/zoom_matrix/sub?
#random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_3/zoom_matrix/truediv/y?
!random_zoom_3/zoom_matrix/truedivRealDiv!random_zoom_3/zoom_matrix/sub:z:0,random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_3/zoom_matrix/truediv?
/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_3/zoom_matrix/strided_slice_1/stack?
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_1?
!random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_1/x?
random_zoom_3/zoom_matrix/sub_1Sub*random_zoom_3/zoom_matrix/sub_1/x:output:02random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/sub_1?
random_zoom_3/zoom_matrix/mulMul%random_zoom_3/zoom_matrix/truediv:z:0#random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_3/zoom_matrix/mul?
!random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_2/y?
random_zoom_3/zoom_matrix/sub_2Subrandom_zoom_3/Cast:y:0*random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_3/zoom_matrix/sub_2?
%random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_3/zoom_matrix/truediv_1/y?
#random_zoom_3/zoom_matrix/truediv_1RealDiv#random_zoom_3/zoom_matrix/sub_2:z:0.random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_3/zoom_matrix/truediv_1?
/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_3/zoom_matrix/strided_slice_2/stack?
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_2?
!random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_3/x?
random_zoom_3/zoom_matrix/sub_3Sub*random_zoom_3/zoom_matrix/sub_3/x:output:02random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/sub_3?
random_zoom_3/zoom_matrix/mul_1Mul'random_zoom_3/zoom_matrix/truediv_1:z:0#random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/mul_1?
/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_3/zoom_matrix/strided_slice_3/stack?
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_3?
%random_zoom_3/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_3/zoom_matrix/zeros/mul/y?
#random_zoom_3/zoom_matrix/zeros/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:0.random_zoom_3/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_3/zoom_matrix/zeros/mul?
&random_zoom_3/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_3/zoom_matrix/zeros/Less/y?
$random_zoom_3/zoom_matrix/zeros/LessLess'random_zoom_3/zoom_matrix/zeros/mul:z:0/random_zoom_3/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_3/zoom_matrix/zeros/Less?
(random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_3/zoom_matrix/zeros/packed/1?
&random_zoom_3/zoom_matrix/zeros/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:01random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_3/zoom_matrix/zeros/packed?
%random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_3/zoom_matrix/zeros/Const?
random_zoom_3/zoom_matrix/zerosFill/random_zoom_3/zoom_matrix/zeros/packed:output:0.random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/zeros?
'random_zoom_3/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_3/zoom_matrix/zeros_1/mul/y?
%random_zoom_3/zoom_matrix/zeros_1/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:00random_zoom_3/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_3/zoom_matrix/zeros_1/mul?
(random_zoom_3/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_3/zoom_matrix/zeros_1/Less/y?
&random_zoom_3/zoom_matrix/zeros_1/LessLess)random_zoom_3/zoom_matrix/zeros_1/mul:z:01random_zoom_3/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_3/zoom_matrix/zeros_1/Less?
*random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_3/zoom_matrix/zeros_1/packed/1?
(random_zoom_3/zoom_matrix/zeros_1/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_3/zoom_matrix/zeros_1/packed?
'random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_3/zoom_matrix/zeros_1/Const?
!random_zoom_3/zoom_matrix/zeros_1Fill1random_zoom_3/zoom_matrix/zeros_1/packed:output:00random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_3/zoom_matrix/zeros_1?
/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_3/zoom_matrix/strided_slice_4/stack?
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_4?
'random_zoom_3/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_3/zoom_matrix/zeros_2/mul/y?
%random_zoom_3/zoom_matrix/zeros_2/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:00random_zoom_3/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_3/zoom_matrix/zeros_2/mul?
(random_zoom_3/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_3/zoom_matrix/zeros_2/Less/y?
&random_zoom_3/zoom_matrix/zeros_2/LessLess)random_zoom_3/zoom_matrix/zeros_2/mul:z:01random_zoom_3/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_3/zoom_matrix/zeros_2/Less?
*random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_3/zoom_matrix/zeros_2/packed/1?
(random_zoom_3/zoom_matrix/zeros_2/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_3/zoom_matrix/zeros_2/packed?
'random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_3/zoom_matrix/zeros_2/Const?
!random_zoom_3/zoom_matrix/zeros_2Fill1random_zoom_3/zoom_matrix/zeros_2/packed:output:00random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_3/zoom_matrix/zeros_2?
%random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_3/zoom_matrix/concat/axis?
 random_zoom_3/zoom_matrix/concatConcatV22random_zoom_3/zoom_matrix/strided_slice_3:output:0(random_zoom_3/zoom_matrix/zeros:output:0!random_zoom_3/zoom_matrix/mul:z:0*random_zoom_3/zoom_matrix/zeros_1:output:02random_zoom_3/zoom_matrix/strided_slice_4:output:0#random_zoom_3/zoom_matrix/mul_1:z:0*random_zoom_3/zoom_matrix/zeros_2:output:0.random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_3/zoom_matrix/concatt
random_zoom_3/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_3/transform/Shape?
+random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_3/transform/strided_slice/stack?
-random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_3/transform/strided_slice/stack_1?
-random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_3/transform/strided_slice/stack_2?
%random_zoom_3/transform/strided_sliceStridedSlice&random_zoom_3/transform/Shape:output:04random_zoom_3/transform/strided_slice/stack:output:06random_zoom_3/transform/strided_slice/stack_1:output:06random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_3/transform/strided_slice?
"random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_3/transform/fill_value?
2random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_3/zoom_matrix/concat:output:0.random_zoom_3/transform/strided_slice:output:0+random_zoom_3/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_3/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_3/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_3/stateful_uniform/StatefulUniform.random_zoom_3/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

*__inference_conv2d_13_layer_call_fn_615150

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
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6143532
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
?
J
.__inference_activation_15_layer_call_fn_615131

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
I__inference_activation_15_layer_call_and_return_conditional_losses_6143342
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
?
C__inference_dense_3_layer_call_and_return_conditional_losses_615255

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
?
H__inference_sequential_6_layer_call_and_return_conditional_losses_615086

inputs;
7random_zoom_3_stateful_uniform_statefuluniform_resource
identity??.random_zoom_3/stateful_uniform/StatefulUniform`
random_zoom_3/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_3/Shape?
!random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_3/strided_slice/stack?
#random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice/stack_1?
#random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice/stack_2?
random_zoom_3/strided_sliceStridedSlicerandom_zoom_3/Shape:output:0*random_zoom_3/strided_slice/stack:output:0,random_zoom_3/strided_slice/stack_1:output:0,random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice?
#random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice_1/stack?
%random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_1/stack_1?
%random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_1/stack_2?
random_zoom_3/strided_slice_1StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_1/stack:output:0.random_zoom_3/strided_slice_1/stack_1:output:0.random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice_1?
random_zoom_3/CastCast&random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_3/Cast?
#random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_3/strided_slice_2/stack?
%random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_2/stack_1?
%random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_3/strided_slice_2/stack_2?
random_zoom_3/strided_slice_2StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_2/stack:output:0.random_zoom_3/strided_slice_2/stack_1:output:0.random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_3/strided_slice_2?
random_zoom_3/Cast_1Cast&random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_3/Cast_1?
&random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_3/stateful_uniform/shape/1?
$random_zoom_3/stateful_uniform/shapePack$random_zoom_3/strided_slice:output:0/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_3/stateful_uniform/shape?
"random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_3/stateful_uniform/min?
"random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_3/stateful_uniform/max?
8random_zoom_3/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_3/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_3/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_3_stateful_uniform_statefuluniform_resourceArandom_zoom_3/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_3/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_3/stateful_uniform/StatefulUniform?
"random_zoom_3/stateful_uniform/subSub+random_zoom_3/stateful_uniform/max:output:0+random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_3/stateful_uniform/sub?
"random_zoom_3/stateful_uniform/mulMul7random_zoom_3/stateful_uniform/StatefulUniform:output:0&random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_3/stateful_uniform/mul?
random_zoom_3/stateful_uniformAdd&random_zoom_3/stateful_uniform/mul:z:0+random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_3/stateful_uniformx
random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_3/concat/axis?
random_zoom_3/concatConcatV2"random_zoom_3/stateful_uniform:z:0"random_zoom_3/stateful_uniform:z:0"random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_3/concat?
random_zoom_3/zoom_matrix/ShapeShaperandom_zoom_3/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_3/zoom_matrix/Shape?
-random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_3/zoom_matrix/strided_slice/stack?
/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_3/zoom_matrix/strided_slice/stack_1?
/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_3/zoom_matrix/strided_slice/stack_2?
'random_zoom_3/zoom_matrix/strided_sliceStridedSlice(random_zoom_3/zoom_matrix/Shape:output:06random_zoom_3/zoom_matrix/strided_slice/stack:output:08random_zoom_3/zoom_matrix/strided_slice/stack_1:output:08random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_3/zoom_matrix/strided_slice?
random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_3/zoom_matrix/sub/y?
random_zoom_3/zoom_matrix/subSubrandom_zoom_3/Cast_1:y:0(random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_3/zoom_matrix/sub?
#random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_3/zoom_matrix/truediv/y?
!random_zoom_3/zoom_matrix/truedivRealDiv!random_zoom_3/zoom_matrix/sub:z:0,random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_3/zoom_matrix/truediv?
/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_3/zoom_matrix/strided_slice_1/stack?
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_1?
!random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_1/x?
random_zoom_3/zoom_matrix/sub_1Sub*random_zoom_3/zoom_matrix/sub_1/x:output:02random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/sub_1?
random_zoom_3/zoom_matrix/mulMul%random_zoom_3/zoom_matrix/truediv:z:0#random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_3/zoom_matrix/mul?
!random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_2/y?
random_zoom_3/zoom_matrix/sub_2Subrandom_zoom_3/Cast:y:0*random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_3/zoom_matrix/sub_2?
%random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_3/zoom_matrix/truediv_1/y?
#random_zoom_3/zoom_matrix/truediv_1RealDiv#random_zoom_3/zoom_matrix/sub_2:z:0.random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_3/zoom_matrix/truediv_1?
/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_3/zoom_matrix/strided_slice_2/stack?
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_2?
!random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_3/zoom_matrix/sub_3/x?
random_zoom_3/zoom_matrix/sub_3Sub*random_zoom_3/zoom_matrix/sub_3/x:output:02random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/sub_3?
random_zoom_3/zoom_matrix/mul_1Mul'random_zoom_3/zoom_matrix/truediv_1:z:0#random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/mul_1?
/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_3/zoom_matrix/strided_slice_3/stack?
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_3?
%random_zoom_3/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_3/zoom_matrix/zeros/mul/y?
#random_zoom_3/zoom_matrix/zeros/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:0.random_zoom_3/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_3/zoom_matrix/zeros/mul?
&random_zoom_3/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_3/zoom_matrix/zeros/Less/y?
$random_zoom_3/zoom_matrix/zeros/LessLess'random_zoom_3/zoom_matrix/zeros/mul:z:0/random_zoom_3/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_3/zoom_matrix/zeros/Less?
(random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_3/zoom_matrix/zeros/packed/1?
&random_zoom_3/zoom_matrix/zeros/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:01random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_3/zoom_matrix/zeros/packed?
%random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_3/zoom_matrix/zeros/Const?
random_zoom_3/zoom_matrix/zerosFill/random_zoom_3/zoom_matrix/zeros/packed:output:0.random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_3/zoom_matrix/zeros?
'random_zoom_3/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_3/zoom_matrix/zeros_1/mul/y?
%random_zoom_3/zoom_matrix/zeros_1/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:00random_zoom_3/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_3/zoom_matrix/zeros_1/mul?
(random_zoom_3/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_3/zoom_matrix/zeros_1/Less/y?
&random_zoom_3/zoom_matrix/zeros_1/LessLess)random_zoom_3/zoom_matrix/zeros_1/mul:z:01random_zoom_3/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_3/zoom_matrix/zeros_1/Less?
*random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_3/zoom_matrix/zeros_1/packed/1?
(random_zoom_3/zoom_matrix/zeros_1/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_3/zoom_matrix/zeros_1/packed?
'random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_3/zoom_matrix/zeros_1/Const?
!random_zoom_3/zoom_matrix/zeros_1Fill1random_zoom_3/zoom_matrix/zeros_1/packed:output:00random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_3/zoom_matrix/zeros_1?
/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_3/zoom_matrix/strided_slice_4/stack?
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_3/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_3/zoom_matrix/strided_slice_4?
'random_zoom_3/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_3/zoom_matrix/zeros_2/mul/y?
%random_zoom_3/zoom_matrix/zeros_2/mulMul0random_zoom_3/zoom_matrix/strided_slice:output:00random_zoom_3/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_3/zoom_matrix/zeros_2/mul?
(random_zoom_3/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_3/zoom_matrix/zeros_2/Less/y?
&random_zoom_3/zoom_matrix/zeros_2/LessLess)random_zoom_3/zoom_matrix/zeros_2/mul:z:01random_zoom_3/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_3/zoom_matrix/zeros_2/Less?
*random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_3/zoom_matrix/zeros_2/packed/1?
(random_zoom_3/zoom_matrix/zeros_2/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_3/zoom_matrix/zeros_2/packed?
'random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_3/zoom_matrix/zeros_2/Const?
!random_zoom_3/zoom_matrix/zeros_2Fill1random_zoom_3/zoom_matrix/zeros_2/packed:output:00random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_3/zoom_matrix/zeros_2?
%random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_3/zoom_matrix/concat/axis?
 random_zoom_3/zoom_matrix/concatConcatV22random_zoom_3/zoom_matrix/strided_slice_3:output:0(random_zoom_3/zoom_matrix/zeros:output:0!random_zoom_3/zoom_matrix/mul:z:0*random_zoom_3/zoom_matrix/zeros_1:output:02random_zoom_3/zoom_matrix/strided_slice_4:output:0#random_zoom_3/zoom_matrix/mul_1:z:0*random_zoom_3/zoom_matrix/zeros_2:output:0.random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_3/zoom_matrix/concatt
random_zoom_3/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_3/transform/Shape?
+random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_3/transform/strided_slice/stack?
-random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_3/transform/strided_slice/stack_1?
-random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_3/transform/strided_slice/stack_2?
%random_zoom_3/transform/strided_sliceStridedSlice&random_zoom_3/transform/Shape:output:04random_zoom_3/transform/strided_slice/stack:output:06random_zoom_3/transform/strided_slice/stack_1:output:06random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_3/transform/strided_slice?
"random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_3/transform/fill_value?
2random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_3/zoom_matrix/concat:output:0.random_zoom_3/transform/strided_slice:output:0+random_zoom_3/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_3/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_3/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_3/stateful_uniform/StatefulUniform.random_zoom_3/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
-__inference_sequential_7_layer_call_fn_614708
sequential_6_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
H__inference_sequential_7_layer_call_and_return_conditional_losses_6146852
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
_user_specified_namesequential_6_input
?

*__inference_conv2d_15_layer_call_fn_615235

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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6144632
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
L
0__inference_max_pooling2d_9_layer_call_fn_614247

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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6142412
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
J
.__inference_activation_19_layer_call_fn_615274

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
I__inference_activation_19_layer_call_and_return_conditional_losses_6145242
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
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_614241

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
?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_615141

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
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_614440

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_615170

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
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_615206

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_activation_15_layer_call_and_return_conditional_losses_614334

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
r
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_614278

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
V
-__inference_sequential_6_layer_call_fn_614235
random_zoom_3_input
identity?
PartitionedCallPartitionedCallrandom_zoom_3_input*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6142322
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
_user_specified_namerandom_zoom_3_input
?	
?
-__inference_sequential_7_layer_call_fn_614643
sequential_6_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
H__inference_sequential_7_layer_call_and_return_conditional_losses_6146182
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
_user_specified_namesequential_6_input
?L
?
!__inference__wrapped_model_614015
sequential_6_input9
5sequential_7_conv2d_12_conv2d_readvariableop_resource:
6sequential_7_conv2d_12_biasadd_readvariableop_resource9
5sequential_7_conv2d_13_conv2d_readvariableop_resource:
6sequential_7_conv2d_13_biasadd_readvariableop_resource9
5sequential_7_conv2d_14_conv2d_readvariableop_resource:
6sequential_7_conv2d_14_biasadd_readvariableop_resource9
5sequential_7_conv2d_15_conv2d_readvariableop_resource:
6sequential_7_conv2d_15_biasadd_readvariableop_resource7
3sequential_7_dense_3_matmul_readvariableop_resource8
4sequential_7_dense_3_biasadd_readvariableop_resource
identity??-sequential_7/conv2d_12/BiasAdd/ReadVariableOp?,sequential_7/conv2d_12/Conv2D/ReadVariableOp?-sequential_7/conv2d_13/BiasAdd/ReadVariableOp?,sequential_7/conv2d_13/Conv2D/ReadVariableOp?-sequential_7/conv2d_14/BiasAdd/ReadVariableOp?,sequential_7/conv2d_14/Conv2D/ReadVariableOp?-sequential_7/conv2d_15/BiasAdd/ReadVariableOp?,sequential_7/conv2d_15/Conv2D/ReadVariableOp?+sequential_7/dense_3/BiasAdd/ReadVariableOp?*sequential_7/dense_3/MatMul/ReadVariableOp?
,sequential_7/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_7/conv2d_12/Conv2D/ReadVariableOp?
sequential_7/conv2d_12/Conv2DConv2Dsequential_6_input4sequential_7/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
sequential_7/conv2d_12/Conv2D?
-sequential_7/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_7/conv2d_12/BiasAdd/ReadVariableOp?
sequential_7/conv2d_12/BiasAddBiasAdd&sequential_7/conv2d_12/Conv2D:output:05sequential_7/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2 
sequential_7/conv2d_12/BiasAdd?
sequential_7/activation_15/ReluRelu'sequential_7/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2!
sequential_7/activation_15/Relu?
$sequential_7/max_pooling2d_9/MaxPoolMaxPool-sequential_7/activation_15/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2&
$sequential_7/max_pooling2d_9/MaxPool?
,sequential_7/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_7/conv2d_13/Conv2D/ReadVariableOp?
sequential_7/conv2d_13/Conv2DConv2D-sequential_7/max_pooling2d_9/MaxPool:output:04sequential_7/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_7/conv2d_13/Conv2D?
-sequential_7/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_7/conv2d_13/BiasAdd/ReadVariableOp?
sequential_7/conv2d_13/BiasAddBiasAdd&sequential_7/conv2d_13/Conv2D:output:05sequential_7/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
sequential_7/conv2d_13/BiasAdd?
sequential_7/activation_16/ReluRelu'sequential_7/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
sequential_7/activation_16/Relu?
%sequential_7/max_pooling2d_10/MaxPoolMaxPool-sequential_7/activation_16/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2'
%sequential_7/max_pooling2d_10/MaxPool?
,sequential_7/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02.
,sequential_7/conv2d_14/Conv2D/ReadVariableOp?
sequential_7/conv2d_14/Conv2DConv2D.sequential_7/max_pooling2d_10/MaxPool:output:04sequential_7/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_7/conv2d_14/Conv2D?
-sequential_7/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_7/conv2d_14/BiasAdd/ReadVariableOp?
sequential_7/conv2d_14/BiasAddBiasAdd&sequential_7/conv2d_14/Conv2D:output:05sequential_7/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_7/conv2d_14/BiasAdd?
sequential_7/activation_17/ReluRelu'sequential_7/conv2d_14/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
sequential_7/activation_17/Relu?
%sequential_7/max_pooling2d_11/MaxPoolMaxPool-sequential_7/activation_17/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2'
%sequential_7/max_pooling2d_11/MaxPool?
sequential_7/dropout_5/IdentityIdentity.sequential_7/max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:??????????2!
sequential_7/dropout_5/Identity?
,sequential_7/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_15_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_7/conv2d_15/Conv2D/ReadVariableOp?
sequential_7/conv2d_15/Conv2DConv2D(sequential_7/dropout_5/Identity:output:04sequential_7/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_7/conv2d_15/Conv2D?
-sequential_7/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_7/conv2d_15/BiasAdd/ReadVariableOp?
sequential_7/conv2d_15/BiasAddBiasAdd&sequential_7/conv2d_15/Conv2D:output:05sequential_7/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_7/conv2d_15/BiasAdd?
sequential_7/activation_18/ReluRelu'sequential_7/conv2d_15/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
sequential_7/activation_18/Relu?
>sequential_7/global_average_pooling2d_3/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_7/global_average_pooling2d_3/Mean/reduction_indices?
,sequential_7/global_average_pooling2d_3/MeanMean-sequential_7/activation_18/Relu:activations:0Gsequential_7/global_average_pooling2d_3/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_7/global_average_pooling2d_3/Mean?
*sequential_7/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_7_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02,
*sequential_7/dense_3/MatMul/ReadVariableOp?
sequential_7/dense_3/MatMulMatMul5sequential_7/global_average_pooling2d_3/Mean:output:02sequential_7/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_7/dense_3/MatMul?
+sequential_7/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_7_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_7/dense_3/BiasAdd/ReadVariableOp?
sequential_7/dense_3/BiasAddBiasAdd%sequential_7/dense_3/MatMul:product:03sequential_7/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_7/dense_3/BiasAdd?
"sequential_7/activation_19/SoftmaxSoftmax%sequential_7/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2$
"sequential_7/activation_19/Softmax?
IdentityIdentity,sequential_7/activation_19/Softmax:softmax:0.^sequential_7/conv2d_12/BiasAdd/ReadVariableOp-^sequential_7/conv2d_12/Conv2D/ReadVariableOp.^sequential_7/conv2d_13/BiasAdd/ReadVariableOp-^sequential_7/conv2d_13/Conv2D/ReadVariableOp.^sequential_7/conv2d_14/BiasAdd/ReadVariableOp-^sequential_7/conv2d_14/Conv2D/ReadVariableOp.^sequential_7/conv2d_15/BiasAdd/ReadVariableOp-^sequential_7/conv2d_15/Conv2D/ReadVariableOp,^sequential_7/dense_3/BiasAdd/ReadVariableOp+^sequential_7/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2^
-sequential_7/conv2d_12/BiasAdd/ReadVariableOp-sequential_7/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_12/Conv2D/ReadVariableOp,sequential_7/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_13/BiasAdd/ReadVariableOp-sequential_7/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_13/Conv2D/ReadVariableOp,sequential_7/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_14/BiasAdd/ReadVariableOp-sequential_7/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_14/Conv2D/ReadVariableOp,sequential_7/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_15/BiasAdd/ReadVariableOp-sequential_7/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_15/Conv2D/ReadVariableOp,sequential_7/conv2d_15/Conv2D/ReadVariableOp2Z
+sequential_7/dense_3/BiasAdd/ReadVariableOp+sequential_7/dense_3/BiasAdd/ReadVariableOp2X
*sequential_7/dense_3/MatMul/ReadVariableOp*sequential_7/dense_3/MatMul/ReadVariableOp:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_6_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
sequential_6_inputC
$serving_default_sequential_6_input:0?????????  A
activation_190
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?d
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
_tf_keras_sequential?_{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_6_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_6_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
"	variables
#regularization_losses
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
&	variables
'regularization_losses
(trainable_variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
0	variables
1regularization_losses
2trainable_variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
4	variables
5regularization_losses
6trainable_variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
>	variables
?regularization_losses
@trainable_variables
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

Jkernel
Kbias
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
^	variables
_regularization_losses
`trainable_variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem?m?*m?+m?8m?9m?Jm?Km?Xm?Ym?v?v?*v?+v?8v?9v?Jv?Kv?Xv?Yv?"
	optimizer
f
0
1
*2
+3
84
95
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
*2
+3
84
95
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
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
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
*:( 2conv2d_12/kernel
: 2conv2d_12/bias
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
*:( @2conv2d_13/kernel
:@2conv2d_13/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
,	variables
-regularization_losses
.trainable_variables
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
+:)@?2conv2d_14/kernel
:?2conv2d_14/bias
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
:	variables
;regularization_losses
<trainable_variables
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
,:*??2conv2d_15/kernel
:?2conv2d_15/bias
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
2dense_3/kernel
:
2dense_3/bias
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
/:- 2Adam/conv2d_12/kernel/m
!: 2Adam/conv2d_12/bias/m
/:- @2Adam/conv2d_13/kernel/m
!:@2Adam/conv2d_13/bias/m
0:.@?2Adam/conv2d_14/kernel/m
": ?2Adam/conv2d_14/bias/m
1:/??2Adam/conv2d_15/kernel/m
": ?2Adam/conv2d_15/bias/m
&:$	?
2Adam/dense_3/kernel/m
:
2Adam/dense_3/bias/m
/:- 2Adam/conv2d_12/kernel/v
!: 2Adam/conv2d_12/bias/v
/:- @2Adam/conv2d_13/kernel/v
!:@2Adam/conv2d_13/bias/v
0:.@?2Adam/conv2d_14/kernel/v
": ?2Adam/conv2d_14/bias/v
1:/??2Adam/conv2d_15/kernel/v
": ?2Adam/conv2d_15/bias/v
&:$	?
2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/v
?2?
-__inference_sequential_7_layer_call_fn_614708
-__inference_sequential_7_layer_call_fn_614962
-__inference_sequential_7_layer_call_fn_614643
-__inference_sequential_7_layer_call_fn_614987?
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
!__inference__wrapped_model_614015?
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
sequential_6_input?????????  
?2?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614573
H__inference_sequential_7_layer_call_and_return_conditional_losses_614935
H__inference_sequential_7_layer_call_and_return_conditional_losses_614890
H__inference_sequential_7_layer_call_and_return_conditional_losses_614533?
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
-__inference_sequential_6_layer_call_fn_615102
-__inference_sequential_6_layer_call_fn_614226
-__inference_sequential_6_layer_call_fn_614235
-__inference_sequential_6_layer_call_fn_615097?
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_614115
H__inference_sequential_6_layer_call_and_return_conditional_losses_614119
H__inference_sequential_6_layer_call_and_return_conditional_losses_615086
H__inference_sequential_6_layer_call_and_return_conditional_losses_615090?
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
*__inference_conv2d_12_layer_call_fn_615121?
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_615112?
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
.__inference_activation_15_layer_call_fn_615131?
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
I__inference_activation_15_layer_call_and_return_conditional_losses_615126?
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
0__inference_max_pooling2d_9_layer_call_fn_614247?
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_614241?
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
*__inference_conv2d_13_layer_call_fn_615150?
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_615141?
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
.__inference_activation_16_layer_call_fn_615160?
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
I__inference_activation_16_layer_call_and_return_conditional_losses_615155?
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
1__inference_max_pooling2d_10_layer_call_fn_614259?
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
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_614253?
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
*__inference_conv2d_14_layer_call_fn_615179?
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_615170?
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
.__inference_activation_17_layer_call_fn_615189?
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
I__inference_activation_17_layer_call_and_return_conditional_losses_615184?
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
1__inference_max_pooling2d_11_layer_call_fn_614271?
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
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_614265?
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
*__inference_dropout_5_layer_call_fn_615216
*__inference_dropout_5_layer_call_fn_615211?
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
E__inference_dropout_5_layer_call_and_return_conditional_losses_615201
E__inference_dropout_5_layer_call_and_return_conditional_losses_615206?
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
*__inference_conv2d_15_layer_call_fn_615235?
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_615226?
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
.__inference_activation_18_layer_call_fn_615245?
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
I__inference_activation_18_layer_call_and_return_conditional_losses_615240?
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
;__inference_global_average_pooling2d_3_layer_call_fn_614284?
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_614278?
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
(__inference_dense_3_layer_call_fn_615264?
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
C__inference_dense_3_layer_call_and_return_conditional_losses_615255?
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
.__inference_activation_19_layer_call_fn_615274?
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
I__inference_activation_19_layer_call_and_return_conditional_losses_615269?
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
$__inference_signature_wrapper_614743sequential_6_input"?
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
!__inference__wrapped_model_614015?
*+89JKXYC?@
9?6
4?1
sequential_6_input?????????  
? "=?:
8
activation_19'?$
activation_19?????????
?
I__inference_activation_15_layer_call_and_return_conditional_losses_615126h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
.__inference_activation_15_layer_call_fn_615131[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
I__inference_activation_16_layer_call_and_return_conditional_losses_615155h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_16_layer_call_fn_615160[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_17_layer_call_and_return_conditional_losses_615184j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_17_layer_call_fn_615189]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_18_layer_call_and_return_conditional_losses_615240j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_18_layer_call_fn_615245]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_19_layer_call_and_return_conditional_losses_615269X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? }
.__inference_activation_19_layer_call_fn_615274K/?,
%?"
 ?
inputs?????????

? "??????????
?
E__inference_conv2d_12_layer_call_and_return_conditional_losses_615112l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
*__inference_conv2d_12_layer_call_fn_615121_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_615141l*+7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_13_layer_call_fn_615150_*+7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_615170m897?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_14_layer_call_fn_615179`897?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_15_layer_call_and_return_conditional_losses_615226nJK8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_15_layer_call_fn_615235aJK8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_3_layer_call_and_return_conditional_losses_615255]XY0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_3_layer_call_fn_615264PXY0?-
&?#
!?
inputs??????????
? "??????????
?
E__inference_dropout_5_layer_call_and_return_conditional_losses_615201n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
E__inference_dropout_5_layer_call_and_return_conditional_losses_615206n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
*__inference_dropout_5_layer_call_fn_615211a<?9
2?/
)?&
inputs??????????
p
? "!????????????
*__inference_dropout_5_layer_call_fn_615216a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_614278?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_3_layer_call_fn_614284wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_614253?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_10_layer_call_fn_614259?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_614265?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_11_layer_call_fn_614271?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_614241?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_9_layer_call_fn_614247?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_6_layer_call_and_return_conditional_losses_614115??L?I
B??
5?2
random_zoom_3_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_6_layer_call_and_return_conditional_losses_614119}L?I
B??
5?2
random_zoom_3_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_6_layer_call_and_return_conditional_losses_615086t???<
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_615090p??<
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
-__inference_sequential_6_layer_call_fn_614226t?L?I
B??
5?2
random_zoom_3_input?????????  
p

 
? " ??????????  ?
-__inference_sequential_6_layer_call_fn_614235pL?I
B??
5?2
random_zoom_3_input?????????  
p 

 
? " ??????????  ?
-__inference_sequential_6_layer_call_fn_615097g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
-__inference_sequential_6_layer_call_fn_615102c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614533??*+89JKXYK?H
A?>
4?1
sequential_6_input?????????  
p

 
? "%?"
?
0?????????

? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614573?
*+89JKXYK?H
A?>
4?1
sequential_6_input?????????  
p 

 
? "%?"
?
0?????????

? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_614890v?*+89JKXY??<
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
H__inference_sequential_7_layer_call_and_return_conditional_losses_614935t
*+89JKXY??<
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
-__inference_sequential_7_layer_call_fn_614643u?*+89JKXYK?H
A?>
4?1
sequential_6_input?????????  
p

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_614708s
*+89JKXYK?H
A?>
4?1
sequential_6_input?????????  
p 

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_614962i?*+89JKXY??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_614987g
*+89JKXY??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_614743?
*+89JKXYY?V
? 
O?L
J
sequential_6_input4?1
sequential_6_input?????????  "=?:
8
activation_19'?$
activation_19?????????
