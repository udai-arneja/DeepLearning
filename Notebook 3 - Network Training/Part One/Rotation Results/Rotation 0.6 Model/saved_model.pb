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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8ɵ
?
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
: *
dtype0
t
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
: *
dtype0
?
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_29/kernel
}
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_29/bias
m
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes
:@*
dtype0
?
conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_30/kernel
~
$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_30/bias
n
"conv2d_30/bias/Read/ReadVariableOpReadVariableOpconv2d_30/bias*
_output_shapes	
:?*
dtype0
?
conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_31/kernel

$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_31/bias
n
"conv2d_31/bias/Read/ReadVariableOpReadVariableOpconv2d_31/bias*
_output_shapes	
:?*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	?
*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
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
Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_28/kernel/m
?
+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_28/bias/m
{
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_29/kernel/m
?
+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/m
{
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_30/kernel/m
?
+Adam/conv2d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_30/bias/m
|
)Adam/conv2d_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_31/kernel/m
?
+Adam/conv2d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_31/bias/m
|
)Adam/conv2d_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_7/kernel/m
?
)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes
:	?
*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_28/kernel/v
?
+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_28/bias/v
{
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_29/kernel/v
?
+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/v
{
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_30/kernel/v
?
+Adam/conv2d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_30/bias/v
|
)Adam/conv2d_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_31/kernel/v
?
+Adam/conv2d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_31/bias/v
|
)Adam/conv2d_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_7/kernel/v
?
)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes
:	?
*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?P
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
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
R
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
R
/	variables
0trainable_variables
1regularization_losses
2	keras_api
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
R
=	variables
>trainable_variables
?regularization_losses
@	keras_api
R
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
h

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
R
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
R
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
h

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
R
Y	variables
Ztrainable_variables
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
	variables

blayers
cnon_trainable_variables
trainable_variables
regularization_losses
dlayer_regularization_losses
emetrics
flayer_metrics
 

g_rng
h	keras_api
 
 
 
?
	variables

ilayers
jnon_trainable_variables
trainable_variables
regularization_losses
klayer_regularization_losses
lmetrics
mlayer_metrics
\Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables

nlayers
onon_trainable_variables
trainable_variables
regularization_losses
player_regularization_losses
qmetrics
rlayer_metrics
 
 
 
?
!	variables

slayers
tnon_trainable_variables
"trainable_variables
#regularization_losses
ulayer_regularization_losses
vmetrics
wlayer_metrics
 
 
 
?
%	variables

xlayers
ynon_trainable_variables
&trainable_variables
'regularization_losses
zlayer_regularization_losses
{metrics
|layer_metrics
\Z
VARIABLE_VALUEconv2d_29/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_29/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
+	variables

}layers
~non_trainable_variables
,trainable_variables
-regularization_losses
layer_regularization_losses
?metrics
?layer_metrics
 
 
 
?
/	variables
?layers
?non_trainable_variables
0trainable_variables
1regularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
 
 
 
?
3	variables
?layers
?non_trainable_variables
4trainable_variables
5regularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
\Z
VARIABLE_VALUEconv2d_30/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_30/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
9	variables
?layers
?non_trainable_variables
:trainable_variables
;regularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
 
 
 
?
=	variables
?layers
?non_trainable_variables
>trainable_variables
?regularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
 
 
 
?
A	variables
?layers
?non_trainable_variables
Btrainable_variables
Cregularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
\Z
VARIABLE_VALUEconv2d_31/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_31/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

E0
F1
 
?
G	variables
?layers
?non_trainable_variables
Htrainable_variables
Iregularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
 
 
 
?
K	variables
?layers
?non_trainable_variables
Ltrainable_variables
Mregularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
 
 
 
?
O	variables
?layers
?non_trainable_variables
Ptrainable_variables
Qregularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

S0
T1
 
?
U	variables
?layers
?non_trainable_variables
Vtrainable_variables
Wregularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
 
 
 
?
Y	variables
?layers
?non_trainable_variables
Ztrainable_variables
[regularization_losses
 ?layer_regularization_losses
?metrics
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
 

?0
?1
 

?
_state_var
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
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_29/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_29/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_30/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_30/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_31/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_31/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_29/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_29/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_30/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_30/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_31/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_31/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
#serving_default_sequential_14_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_14_inputconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasdense_7/kerneldense_7/bias*
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
$__inference_signature_wrapper_186657
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp$conv2d_30/kernel/Read/ReadVariableOp"conv2d_30/bias/Read/ReadVariableOp$conv2d_31/kernel/Read/ReadVariableOp"conv2d_31/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp+Adam/conv2d_30/kernel/m/Read/ReadVariableOp)Adam/conv2d_30/bias/m/Read/ReadVariableOp+Adam/conv2d_31/kernel/m/Read/ReadVariableOp)Adam/conv2d_31/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp+Adam/conv2d_30/kernel/v/Read/ReadVariableOp)Adam/conv2d_30/bias/v/Read/ReadVariableOp+Adam/conv2d_31/kernel/v/Read/ReadVariableOp)Adam/conv2d_31/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_187316
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_28/kernel/mAdam/conv2d_28/bias/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/mAdam/conv2d_30/kernel/mAdam/conv2d_30/bias/mAdam/conv2d_31/kernel/mAdam/conv2d_31/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/vAdam/conv2d_30/kernel/vAdam/conv2d_30/bias/vAdam/conv2d_31/kernel/vAdam/conv2d_31/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*4
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
"__inference__traced_restore_187446??
?

*__inference_conv2d_29_layer_call_fn_187071

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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_1863002
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
?>
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186533

inputs
sequential_14_186495
conv2d_28_186498
conv2d_28_186500
conv2d_29_186505
conv2d_29_186507
conv2d_30_186512
conv2d_30_186514
conv2d_31_186519
conv2d_31_186521
dense_7_186526
dense_7_186528
identity??!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall?!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?%sequential_14/StatefulPartitionedCall?
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallinputssequential_14_186495*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861682'
%sequential_14/StatefulPartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall.sequential_14/StatefulPartitionedCall:output:0conv2d_28_186498conv2d_28_186500*
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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_1862602#
!conv2d_28/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_35_layer_call_and_return_conditional_losses_1862812
activation_35/PartitionedCall?
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1861882"
 max_pooling2d_21/PartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_29_186505conv2d_29_186507*
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_1863002#
!conv2d_29/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_36_layer_call_and_return_conditional_losses_1863212
activation_36/PartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_1862002"
 max_pooling2d_22/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_30_186512conv2d_30_186514*
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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_1863402#
!conv2d_30/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_37_layer_call_and_return_conditional_losses_1863612
activation_37/PartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_37/PartitionedCall:output:0*
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
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_1862122"
 max_pooling2d_23/PartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_31_186519conv2d_31_186521*
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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_1863802#
!conv2d_31/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_38_layer_call_and_return_conditional_losses_1864012
activation_38/PartitionedCall?
*global_average_pooling2d_7/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_1862252,
*global_average_pooling2d_7/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_7/PartitionedCall:output:0dense_7_186526dense_7_186528*
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
C__inference_dense_7_layer_call_and_return_conditional_losses_1864202!
dense_7/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
I__inference_activation_39_layer_call_and_return_conditional_losses_1864412
activation_39/PartitionedCall?
IdentityIdentity&activation_39/PartitionedCall:output:0"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_186212

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
I__inference_activation_38_layer_call_and_return_conditional_losses_186401

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
M
1__inference_max_pooling2d_23_layer_call_fn_186218

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
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_1862122
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
C__inference_dense_7_layer_call_and_return_conditional_losses_186420

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
?
?
.__inference_sequential_15_layer_call_fn_186900

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
GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_1865992
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
?
v
I__inference_sequential_14_layer_call_and_return_conditional_losses_186058
random_rotation_7_input
identitys
IdentityIdentityrandom_rotation_7_input*
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
_user_specified_namerandom_rotation_7_input
?	
?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_186380

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
I__inference_activation_35_layer_call_and_return_conditional_losses_187047

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
I__inference_activation_39_layer_call_and_return_conditional_losses_187163

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
?>
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186450
sequential_14_input
sequential_14_186247
conv2d_28_186271
conv2d_28_186273
conv2d_29_186311
conv2d_29_186313
conv2d_30_186351
conv2d_30_186353
conv2d_31_186391
conv2d_31_186393
dense_7_186431
dense_7_186433
identity??!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall?!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?%sequential_14/StatefulPartitionedCall?
%sequential_14/StatefulPartitionedCallStatefulPartitionedCallsequential_14_inputsequential_14_186247*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861682'
%sequential_14/StatefulPartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall.sequential_14/StatefulPartitionedCall:output:0conv2d_28_186271conv2d_28_186273*
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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_1862602#
!conv2d_28/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_35_layer_call_and_return_conditional_losses_1862812
activation_35/PartitionedCall?
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1861882"
 max_pooling2d_21/PartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_29_186311conv2d_29_186313*
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_1863002#
!conv2d_29/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_36_layer_call_and_return_conditional_losses_1863212
activation_36/PartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_1862002"
 max_pooling2d_22/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_30_186351conv2d_30_186353*
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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_1863402#
!conv2d_30/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_37_layer_call_and_return_conditional_losses_1863612
activation_37/PartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_37/PartitionedCall:output:0*
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
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_1862122"
 max_pooling2d_23/PartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_31_186391conv2d_31_186393*
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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_1863802#
!conv2d_31/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_38_layer_call_and_return_conditional_losses_1864012
activation_38/PartitionedCall?
*global_average_pooling2d_7/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_1862252,
*global_average_pooling2d_7/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_7/PartitionedCall:output:0dense_7_186431dense_7_186433*
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
C__inference_dense_7_layer_call_and_return_conditional_losses_1864202!
dense_7/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
I__inference_activation_39_layer_call_and_return_conditional_losses_1864412
activation_39/PartitionedCall?
IdentityIdentity&activation_39/PartitionedCall:output:0"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall&^sequential_14/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2N
%sequential_14/StatefulPartitionedCall%sequential_14/StatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_14_input
?;
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186848

inputs,
(conv2d_28_conv2d_readvariableop_resource-
)conv2d_28_biasadd_readvariableop_resource,
(conv2d_29_conv2d_readvariableop_resource-
)conv2d_29_biasadd_readvariableop_resource,
(conv2d_30_conv2d_readvariableop_resource-
)conv2d_30_biasadd_readvariableop_resource,
(conv2d_31_conv2d_readvariableop_resource-
)conv2d_31_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identity?? conv2d_28/BiasAdd/ReadVariableOp?conv2d_28/Conv2D/ReadVariableOp? conv2d_29/BiasAdd/ReadVariableOp?conv2d_29/Conv2D/ReadVariableOp? conv2d_30/BiasAdd/ReadVariableOp?conv2d_30/Conv2D/ReadVariableOp? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_28/Conv2D/ReadVariableOp?
conv2d_28/Conv2DConv2Dinputs'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_28/Conv2D?
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp?
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_28/BiasAdd?
activation_35/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_35/Relu?
max_pooling2d_21/MaxPoolMaxPool activation_35/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_21/MaxPool?
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_29/Conv2D/ReadVariableOp?
conv2d_29/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_29/Conv2D?
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp?
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_29/BiasAdd?
activation_36/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_36/Relu?
max_pooling2d_22/MaxPoolMaxPool activation_36/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_22/MaxPool?
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_30/Conv2D/ReadVariableOp?
conv2d_30/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_30/Conv2D?
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_30/BiasAdd/ReadVariableOp?
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_30/BiasAdd?
activation_37/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_37/Relu?
max_pooling2d_23/MaxPoolMaxPool activation_37/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_23/MaxPool?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_31/Conv2D/ReadVariableOp?
conv2d_31/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_31/Conv2D?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_31/BiasAdd/ReadVariableOp?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_31/BiasAdd?
activation_38/ReluReluconv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_38/Relu?
1global_average_pooling2d_7/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_7/Mean/reduction_indices?
global_average_pooling2d_7/MeanMean activation_38/Relu:activations:0:global_average_pooling2d_7/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_7/Mean?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMul(global_average_pooling2d_7/Mean:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_7/BiasAdd?
activation_39/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_39/Softmax?
IdentityIdentityactivation_39/Softmax:softmax:0!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
e
I__inference_sequential_14_layer_call_and_return_conditional_losses_187011

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
*__inference_conv2d_28_layer_call_fn_187042

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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_1862602
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
?

*__inference_conv2d_30_layer_call_fn_187100

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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_1863402
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
?
J
.__inference_activation_36_layer_call_fn_187081

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
I__inference_activation_36_layer_call_and_return_conditional_losses_1863212
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
?
J
.__inference_activation_38_layer_call_fn_187139

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
I__inference_activation_38_layer_call_and_return_conditional_losses_1864012
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
?	
?
C__inference_dense_7_layer_call_and_return_conditional_losses_187149

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
.__inference_sequential_15_layer_call_fn_186558
sequential_14_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_1865332
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
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_14_input
?
M
1__inference_max_pooling2d_21_layer_call_fn_186194

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
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1861882
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
.__inference_sequential_14_layer_call_fn_186173
random_rotation_7_input
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_rotation_7_inputunknown*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :22
StatefulPartitionedCallStatefulPartitionedCall:h d
/
_output_shapes
:?????????  
1
_user_specified_namerandom_rotation_7_input
?
r
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_186225

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
?
e
I__inference_sequential_14_layer_call_and_return_conditional_losses_186179

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
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_186168

inputs?
;random_rotation_7_stateful_uniform_statefuluniform_resource
identity??2random_rotation_7/stateful_uniform/StatefulUniformh
random_rotation_7/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_7/Shape?
%random_rotation_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_7/strided_slice/stack?
'random_rotation_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice/stack_1?
'random_rotation_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice/stack_2?
random_rotation_7/strided_sliceStridedSlice random_rotation_7/Shape:output:0.random_rotation_7/strided_slice/stack:output:00random_rotation_7/strided_slice/stack_1:output:00random_rotation_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_7/strided_slice?
'random_rotation_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice_1/stack?
)random_rotation_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_1/stack_1?
)random_rotation_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_1/stack_2?
!random_rotation_7/strided_slice_1StridedSlice random_rotation_7/Shape:output:00random_rotation_7/strided_slice_1/stack:output:02random_rotation_7/strided_slice_1/stack_1:output:02random_rotation_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_7/strided_slice_1?
random_rotation_7/CastCast*random_rotation_7/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_7/Cast?
'random_rotation_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice_2/stack?
)random_rotation_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_2/stack_1?
)random_rotation_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_2/stack_2?
!random_rotation_7/strided_slice_2StridedSlice random_rotation_7/Shape:output:00random_rotation_7/strided_slice_2/stack:output:02random_rotation_7/strided_slice_2/stack_1:output:02random_rotation_7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_7/strided_slice_2?
random_rotation_7/Cast_1Cast*random_rotation_7/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_7/Cast_1?
(random_rotation_7/stateful_uniform/shapePack(random_rotation_7/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_7/stateful_uniform/shape?
&random_rotation_7/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_7/stateful_uniform/min?
&random_rotation_7/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_7/stateful_uniform/max?
<random_rotation_7/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_7/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_7/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_7_stateful_uniform_statefuluniform_resourceErandom_rotation_7/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_7/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_7/stateful_uniform/StatefulUniform?
&random_rotation_7/stateful_uniform/subSub/random_rotation_7/stateful_uniform/max:output:0/random_rotation_7/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_7/stateful_uniform/sub?
&random_rotation_7/stateful_uniform/mulMul;random_rotation_7/stateful_uniform/StatefulUniform:output:0*random_rotation_7/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_7/stateful_uniform/mul?
"random_rotation_7/stateful_uniformAdd*random_rotation_7/stateful_uniform/mul:z:0/random_rotation_7/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_7/stateful_uniform?
'random_rotation_7/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_7/rotation_matrix/sub/y?
%random_rotation_7/rotation_matrix/subSubrandom_rotation_7/Cast_1:y:00random_rotation_7/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_7/rotation_matrix/sub?
%random_rotation_7/rotation_matrix/CosCos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Cos?
)random_rotation_7/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_1/y?
'random_rotation_7/rotation_matrix/sub_1Subrandom_rotation_7/Cast_1:y:02random_rotation_7/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_1?
%random_rotation_7/rotation_matrix/mulMul)random_rotation_7/rotation_matrix/Cos:y:0+random_rotation_7/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/mul?
%random_rotation_7/rotation_matrix/SinSin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Sin?
)random_rotation_7/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_2/y?
'random_rotation_7/rotation_matrix/sub_2Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_2?
'random_rotation_7/rotation_matrix/mul_1Mul)random_rotation_7/rotation_matrix/Sin:y:0+random_rotation_7/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_1?
'random_rotation_7/rotation_matrix/sub_3Sub)random_rotation_7/rotation_matrix/mul:z:0+random_rotation_7/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_3?
'random_rotation_7/rotation_matrix/sub_4Sub)random_rotation_7/rotation_matrix/sub:z:0+random_rotation_7/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_4?
+random_rotation_7/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_7/rotation_matrix/truediv/y?
)random_rotation_7/rotation_matrix/truedivRealDiv+random_rotation_7/rotation_matrix/sub_4:z:04random_rotation_7/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_7/rotation_matrix/truediv?
)random_rotation_7/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_5/y?
'random_rotation_7/rotation_matrix/sub_5Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_5?
'random_rotation_7/rotation_matrix/Sin_1Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_1?
)random_rotation_7/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_6/y?
'random_rotation_7/rotation_matrix/sub_6Subrandom_rotation_7/Cast_1:y:02random_rotation_7/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_6?
'random_rotation_7/rotation_matrix/mul_2Mul+random_rotation_7/rotation_matrix/Sin_1:y:0+random_rotation_7/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_2?
'random_rotation_7/rotation_matrix/Cos_1Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_1?
)random_rotation_7/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_7/y?
'random_rotation_7/rotation_matrix/sub_7Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_7?
'random_rotation_7/rotation_matrix/mul_3Mul+random_rotation_7/rotation_matrix/Cos_1:y:0+random_rotation_7/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_3?
%random_rotation_7/rotation_matrix/addAddV2+random_rotation_7/rotation_matrix/mul_2:z:0+random_rotation_7/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/add?
'random_rotation_7/rotation_matrix/sub_8Sub+random_rotation_7/rotation_matrix/sub_5:z:0)random_rotation_7/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_8?
-random_rotation_7/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_7/rotation_matrix/truediv_1/y?
+random_rotation_7/rotation_matrix/truediv_1RealDiv+random_rotation_7/rotation_matrix/sub_8:z:06random_rotation_7/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_7/rotation_matrix/truediv_1?
'random_rotation_7/rotation_matrix/ShapeShape&random_rotation_7/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_7/rotation_matrix/Shape?
5random_rotation_7/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_7/rotation_matrix/strided_slice/stack?
7random_rotation_7/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_7/rotation_matrix/strided_slice/stack_1?
7random_rotation_7/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_7/rotation_matrix/strided_slice/stack_2?
/random_rotation_7/rotation_matrix/strided_sliceStridedSlice0random_rotation_7/rotation_matrix/Shape:output:0>random_rotation_7/rotation_matrix/strided_slice/stack:output:0@random_rotation_7/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_7/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_7/rotation_matrix/strided_slice?
'random_rotation_7/rotation_matrix/Cos_2Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_2?
7random_rotation_7/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_1/stack?
9random_rotation_7/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_1StridedSlice+random_rotation_7/rotation_matrix/Cos_2:y:0@random_rotation_7/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_1?
'random_rotation_7/rotation_matrix/Sin_2Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_2?
7random_rotation_7/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_2/stack?
9random_rotation_7/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_2StridedSlice+random_rotation_7/rotation_matrix/Sin_2:y:0@random_rotation_7/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_2?
%random_rotation_7/rotation_matrix/NegNeg:random_rotation_7/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Neg?
7random_rotation_7/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_3/stack?
9random_rotation_7/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_3StridedSlice-random_rotation_7/rotation_matrix/truediv:z:0@random_rotation_7/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_3?
'random_rotation_7/rotation_matrix/Sin_3Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_3?
7random_rotation_7/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_4/stack?
9random_rotation_7/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_4StridedSlice+random_rotation_7/rotation_matrix/Sin_3:y:0@random_rotation_7/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_4?
'random_rotation_7/rotation_matrix/Cos_3Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_3?
7random_rotation_7/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_5/stack?
9random_rotation_7/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_5StridedSlice+random_rotation_7/rotation_matrix/Cos_3:y:0@random_rotation_7/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_5?
7random_rotation_7/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_6/stack?
9random_rotation_7/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_6StridedSlice/random_rotation_7/rotation_matrix/truediv_1:z:0@random_rotation_7/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_6?
-random_rotation_7/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_7/rotation_matrix/zeros/mul/y?
+random_rotation_7/rotation_matrix/zeros/mulMul8random_rotation_7/rotation_matrix/strided_slice:output:06random_rotation_7/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_7/rotation_matrix/zeros/mul?
.random_rotation_7/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_7/rotation_matrix/zeros/Less/y?
,random_rotation_7/rotation_matrix/zeros/LessLess/random_rotation_7/rotation_matrix/zeros/mul:z:07random_rotation_7/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_7/rotation_matrix/zeros/Less?
0random_rotation_7/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_7/rotation_matrix/zeros/packed/1?
.random_rotation_7/rotation_matrix/zeros/packedPack8random_rotation_7/rotation_matrix/strided_slice:output:09random_rotation_7/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_7/rotation_matrix/zeros/packed?
-random_rotation_7/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_7/rotation_matrix/zeros/Const?
'random_rotation_7/rotation_matrix/zerosFill7random_rotation_7/rotation_matrix/zeros/packed:output:06random_rotation_7/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/zeros?
-random_rotation_7/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_7/rotation_matrix/concat/axis?
(random_rotation_7/rotation_matrix/concatConcatV2:random_rotation_7/rotation_matrix/strided_slice_1:output:0)random_rotation_7/rotation_matrix/Neg:y:0:random_rotation_7/rotation_matrix/strided_slice_3:output:0:random_rotation_7/rotation_matrix/strided_slice_4:output:0:random_rotation_7/rotation_matrix/strided_slice_5:output:0:random_rotation_7/rotation_matrix/strided_slice_6:output:00random_rotation_7/rotation_matrix/zeros:output:06random_rotation_7/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_7/rotation_matrix/concat|
!random_rotation_7/transform/ShapeShapeinputs*
T0*
_output_shapes
:2#
!random_rotation_7/transform/Shape?
/random_rotation_7/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_7/transform/strided_slice/stack?
1random_rotation_7/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_7/transform/strided_slice/stack_1?
1random_rotation_7/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_7/transform/strided_slice/stack_2?
)random_rotation_7/transform/strided_sliceStridedSlice*random_rotation_7/transform/Shape:output:08random_rotation_7/transform/strided_slice/stack:output:0:random_rotation_7/transform/strided_slice/stack_1:output:0:random_rotation_7/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_7/transform/strided_slice?
&random_rotation_7/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_7/transform/fill_value?
6random_rotation_7/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs1random_rotation_7/rotation_matrix/concat:output:02random_rotation_7/transform/strided_slice:output:0/random_rotation_7/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_7/transform/ImageProjectiveTransformV3?
IdentityIdentityKrandom_rotation_7/transform/ImageProjectiveTransformV3:transformed_images:03^random_rotation_7/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2h
2random_rotation_7/stateful_uniform/StatefulUniform2random_rotation_7/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_186657
sequential_14_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_1859462
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
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_14_input
֨
?
"__inference__traced_restore_187446
file_prefix%
!assignvariableop_conv2d_28_kernel%
!assignvariableop_1_conv2d_28_bias'
#assignvariableop_2_conv2d_29_kernel%
!assignvariableop_3_conv2d_29_bias'
#assignvariableop_4_conv2d_30_kernel%
!assignvariableop_5_conv2d_30_bias'
#assignvariableop_6_conv2d_31_kernel%
!assignvariableop_7_conv2d_31_bias%
!assignvariableop_8_dense_7_kernel#
assignvariableop_9_dense_7_bias!
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
+assignvariableop_20_adam_conv2d_28_kernel_m-
)assignvariableop_21_adam_conv2d_28_bias_m/
+assignvariableop_22_adam_conv2d_29_kernel_m-
)assignvariableop_23_adam_conv2d_29_bias_m/
+assignvariableop_24_adam_conv2d_30_kernel_m-
)assignvariableop_25_adam_conv2d_30_bias_m/
+assignvariableop_26_adam_conv2d_31_kernel_m-
)assignvariableop_27_adam_conv2d_31_bias_m-
)assignvariableop_28_adam_dense_7_kernel_m+
'assignvariableop_29_adam_dense_7_bias_m/
+assignvariableop_30_adam_conv2d_28_kernel_v-
)assignvariableop_31_adam_conv2d_28_bias_v/
+assignvariableop_32_adam_conv2d_29_kernel_v-
)assignvariableop_33_adam_conv2d_29_bias_v/
+assignvariableop_34_adam_conv2d_30_kernel_v-
)assignvariableop_35_adam_conv2d_30_bias_v/
+assignvariableop_36_adam_conv2d_31_kernel_v-
)assignvariableop_37_adam_conv2d_31_bias_v-
)assignvariableop_38_adam_dense_7_kernel_v+
'assignvariableop_39_adam_dense_7_bias_v
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_28_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_28_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_29_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_29_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_30_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_30_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_31_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_31_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_7_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_7_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_28_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_conv2d_28_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_29_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_conv2d_29_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_30_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_30_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_31_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_31_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_7_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_7_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_28_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_28_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_29_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_29_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_30_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_30_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_31_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_31_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_7_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_7_bias_vIdentity_39:output:0"/device:CPU:0*
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
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_186188

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
I__inference_activation_38_layer_call_and_return_conditional_losses_187134

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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_186260

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
?<
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186489
sequential_14_input
conv2d_28_186454
conv2d_28_186456
conv2d_29_186461
conv2d_29_186463
conv2d_30_186468
conv2d_30_186470
conv2d_31_186475
conv2d_31_186477
dense_7_186482
dense_7_186484
identity??!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall?!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
sequential_14/PartitionedCallPartitionedCallsequential_14_input*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861792
sequential_14/PartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall&sequential_14/PartitionedCall:output:0conv2d_28_186454conv2d_28_186456*
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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_1862602#
!conv2d_28/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_35_layer_call_and_return_conditional_losses_1862812
activation_35/PartitionedCall?
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1861882"
 max_pooling2d_21/PartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_29_186461conv2d_29_186463*
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_1863002#
!conv2d_29/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_36_layer_call_and_return_conditional_losses_1863212
activation_36/PartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_1862002"
 max_pooling2d_22/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_30_186468conv2d_30_186470*
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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_1863402#
!conv2d_30/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_37_layer_call_and_return_conditional_losses_1863612
activation_37/PartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_37/PartitionedCall:output:0*
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
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_1862122"
 max_pooling2d_23/PartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_31_186475conv2d_31_186477*
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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_1863802#
!conv2d_31/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_38_layer_call_and_return_conditional_losses_1864012
activation_38/PartitionedCall?
*global_average_pooling2d_7/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_1862252,
*global_average_pooling2d_7/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_7/PartitionedCall:output:0dense_7_186482dense_7_186484*
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
C__inference_dense_7_layer_call_and_return_conditional_losses_1864202!
dense_7/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
I__inference_activation_39_layer_call_and_return_conditional_losses_1864412
activation_39/PartitionedCall?
IdentityIdentity&activation_39/PartitionedCall:output:0"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_14_input
?	
?
E__inference_conv2d_30_layer_call_and_return_conditional_losses_186340

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
J
.__inference_activation_37_layer_call_fn_187110

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
I__inference_activation_37_layer_call_and_return_conditional_losses_1863612
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
?	
?
E__inference_conv2d_30_layer_call_and_return_conditional_losses_187091

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
I__inference_activation_37_layer_call_and_return_conditional_losses_186361

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
?L
?	
!__inference__wrapped_model_185946
sequential_14_input:
6sequential_15_conv2d_28_conv2d_readvariableop_resource;
7sequential_15_conv2d_28_biasadd_readvariableop_resource:
6sequential_15_conv2d_29_conv2d_readvariableop_resource;
7sequential_15_conv2d_29_biasadd_readvariableop_resource:
6sequential_15_conv2d_30_conv2d_readvariableop_resource;
7sequential_15_conv2d_30_biasadd_readvariableop_resource:
6sequential_15_conv2d_31_conv2d_readvariableop_resource;
7sequential_15_conv2d_31_biasadd_readvariableop_resource8
4sequential_15_dense_7_matmul_readvariableop_resource9
5sequential_15_dense_7_biasadd_readvariableop_resource
identity??.sequential_15/conv2d_28/BiasAdd/ReadVariableOp?-sequential_15/conv2d_28/Conv2D/ReadVariableOp?.sequential_15/conv2d_29/BiasAdd/ReadVariableOp?-sequential_15/conv2d_29/Conv2D/ReadVariableOp?.sequential_15/conv2d_30/BiasAdd/ReadVariableOp?-sequential_15/conv2d_30/Conv2D/ReadVariableOp?.sequential_15/conv2d_31/BiasAdd/ReadVariableOp?-sequential_15/conv2d_31/Conv2D/ReadVariableOp?,sequential_15/dense_7/BiasAdd/ReadVariableOp?+sequential_15/dense_7/MatMul/ReadVariableOp?
-sequential_15/conv2d_28/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_15/conv2d_28/Conv2D/ReadVariableOp?
sequential_15/conv2d_28/Conv2DConv2Dsequential_14_input5sequential_15/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2 
sequential_15/conv2d_28/Conv2D?
.sequential_15/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_15/conv2d_28/BiasAdd/ReadVariableOp?
sequential_15/conv2d_28/BiasAddBiasAdd'sequential_15/conv2d_28/Conv2D:output:06sequential_15/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2!
sequential_15/conv2d_28/BiasAdd?
 sequential_15/activation_35/ReluRelu(sequential_15/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2"
 sequential_15/activation_35/Relu?
&sequential_15/max_pooling2d_21/MaxPoolMaxPool.sequential_15/activation_35/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2(
&sequential_15/max_pooling2d_21/MaxPool?
-sequential_15/conv2d_29/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_15/conv2d_29/Conv2D/ReadVariableOp?
sequential_15/conv2d_29/Conv2DConv2D/sequential_15/max_pooling2d_21/MaxPool:output:05sequential_15/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_15/conv2d_29/Conv2D?
.sequential_15/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_15/conv2d_29/BiasAdd/ReadVariableOp?
sequential_15/conv2d_29/BiasAddBiasAdd'sequential_15/conv2d_29/Conv2D:output:06sequential_15/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_15/conv2d_29/BiasAdd?
 sequential_15/activation_36/ReluRelu(sequential_15/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_15/activation_36/Relu?
&sequential_15/max_pooling2d_22/MaxPoolMaxPool.sequential_15/activation_36/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2(
&sequential_15/max_pooling2d_22/MaxPool?
-sequential_15/conv2d_30/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_15/conv2d_30/Conv2D/ReadVariableOp?
sequential_15/conv2d_30/Conv2DConv2D/sequential_15/max_pooling2d_22/MaxPool:output:05sequential_15/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2 
sequential_15/conv2d_30/Conv2D?
.sequential_15/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_15/conv2d_30/BiasAdd/ReadVariableOp?
sequential_15/conv2d_30/BiasAddBiasAdd'sequential_15/conv2d_30/Conv2D:output:06sequential_15/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_15/conv2d_30/BiasAdd?
 sequential_15/activation_37/ReluRelu(sequential_15/conv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_15/activation_37/Relu?
&sequential_15/max_pooling2d_23/MaxPoolMaxPool.sequential_15/activation_37/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2(
&sequential_15/max_pooling2d_23/MaxPool?
-sequential_15/conv2d_31/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_15/conv2d_31/Conv2D/ReadVariableOp?
sequential_15/conv2d_31/Conv2DConv2D/sequential_15/max_pooling2d_23/MaxPool:output:05sequential_15/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2 
sequential_15/conv2d_31/Conv2D?
.sequential_15/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_15/conv2d_31/BiasAdd/ReadVariableOp?
sequential_15/conv2d_31/BiasAddBiasAdd'sequential_15/conv2d_31/Conv2D:output:06sequential_15/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_15/conv2d_31/BiasAdd?
 sequential_15/activation_38/ReluRelu(sequential_15/conv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_15/activation_38/Relu?
?sequential_15/global_average_pooling2d_7/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_15/global_average_pooling2d_7/Mean/reduction_indices?
-sequential_15/global_average_pooling2d_7/MeanMean.sequential_15/activation_38/Relu:activations:0Hsequential_15/global_average_pooling2d_7/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_15/global_average_pooling2d_7/Mean?
+sequential_15/dense_7/MatMul/ReadVariableOpReadVariableOp4sequential_15_dense_7_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02-
+sequential_15/dense_7/MatMul/ReadVariableOp?
sequential_15/dense_7/MatMulMatMul6sequential_15/global_average_pooling2d_7/Mean:output:03sequential_15/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_15/dense_7/MatMul?
,sequential_15/dense_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_15_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_15/dense_7/BiasAdd/ReadVariableOp?
sequential_15/dense_7/BiasAddBiasAdd&sequential_15/dense_7/MatMul:product:04sequential_15/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_15/dense_7/BiasAdd?
#sequential_15/activation_39/SoftmaxSoftmax&sequential_15/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2%
#sequential_15/activation_39/Softmax?
IdentityIdentity-sequential_15/activation_39/Softmax:softmax:0/^sequential_15/conv2d_28/BiasAdd/ReadVariableOp.^sequential_15/conv2d_28/Conv2D/ReadVariableOp/^sequential_15/conv2d_29/BiasAdd/ReadVariableOp.^sequential_15/conv2d_29/Conv2D/ReadVariableOp/^sequential_15/conv2d_30/BiasAdd/ReadVariableOp.^sequential_15/conv2d_30/Conv2D/ReadVariableOp/^sequential_15/conv2d_31/BiasAdd/ReadVariableOp.^sequential_15/conv2d_31/Conv2D/ReadVariableOp-^sequential_15/dense_7/BiasAdd/ReadVariableOp,^sequential_15/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2`
.sequential_15/conv2d_28/BiasAdd/ReadVariableOp.sequential_15/conv2d_28/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_28/Conv2D/ReadVariableOp-sequential_15/conv2d_28/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_29/BiasAdd/ReadVariableOp.sequential_15/conv2d_29/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_29/Conv2D/ReadVariableOp-sequential_15/conv2d_29/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_30/BiasAdd/ReadVariableOp.sequential_15/conv2d_30/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_30/Conv2D/ReadVariableOp-sequential_15/conv2d_30/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_31/BiasAdd/ReadVariableOp.sequential_15/conv2d_31/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_31/Conv2D/ReadVariableOp-sequential_15/conv2d_31/Conv2D/ReadVariableOp2\
,sequential_15/dense_7/BiasAdd/ReadVariableOp,sequential_15/dense_7/BiasAdd/ReadVariableOp2Z
+sequential_15/dense_7/MatMul/ReadVariableOp+sequential_15/dense_7/MatMul/ReadVariableOp:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_14_input
?	
?
.__inference_sequential_15_layer_call_fn_186622
sequential_14_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_1865992
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
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_14_input
??
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186804

inputsM
Isequential_14_random_rotation_7_stateful_uniform_statefuluniform_resource,
(conv2d_28_conv2d_readvariableop_resource-
)conv2d_28_biasadd_readvariableop_resource,
(conv2d_29_conv2d_readvariableop_resource-
)conv2d_29_biasadd_readvariableop_resource,
(conv2d_30_conv2d_readvariableop_resource-
)conv2d_30_biasadd_readvariableop_resource,
(conv2d_31_conv2d_readvariableop_resource-
)conv2d_31_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identity?? conv2d_28/BiasAdd/ReadVariableOp?conv2d_28/Conv2D/ReadVariableOp? conv2d_29/BiasAdd/ReadVariableOp?conv2d_29/Conv2D/ReadVariableOp? conv2d_30/BiasAdd/ReadVariableOp?conv2d_30/Conv2D/ReadVariableOp? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?@sequential_14/random_rotation_7/stateful_uniform/StatefulUniform?
%sequential_14/random_rotation_7/ShapeShapeinputs*
T0*
_output_shapes
:2'
%sequential_14/random_rotation_7/Shape?
3sequential_14/random_rotation_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_14/random_rotation_7/strided_slice/stack?
5sequential_14/random_rotation_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_14/random_rotation_7/strided_slice/stack_1?
5sequential_14/random_rotation_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_14/random_rotation_7/strided_slice/stack_2?
-sequential_14/random_rotation_7/strided_sliceStridedSlice.sequential_14/random_rotation_7/Shape:output:0<sequential_14/random_rotation_7/strided_slice/stack:output:0>sequential_14/random_rotation_7/strided_slice/stack_1:output:0>sequential_14/random_rotation_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_14/random_rotation_7/strided_slice?
5sequential_14/random_rotation_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_14/random_rotation_7/strided_slice_1/stack?
7sequential_14/random_rotation_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_14/random_rotation_7/strided_slice_1/stack_1?
7sequential_14/random_rotation_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_14/random_rotation_7/strided_slice_1/stack_2?
/sequential_14/random_rotation_7/strided_slice_1StridedSlice.sequential_14/random_rotation_7/Shape:output:0>sequential_14/random_rotation_7/strided_slice_1/stack:output:0@sequential_14/random_rotation_7/strided_slice_1/stack_1:output:0@sequential_14/random_rotation_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_14/random_rotation_7/strided_slice_1?
$sequential_14/random_rotation_7/CastCast8sequential_14/random_rotation_7/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$sequential_14/random_rotation_7/Cast?
5sequential_14/random_rotation_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_14/random_rotation_7/strided_slice_2/stack?
7sequential_14/random_rotation_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_14/random_rotation_7/strided_slice_2/stack_1?
7sequential_14/random_rotation_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_14/random_rotation_7/strided_slice_2/stack_2?
/sequential_14/random_rotation_7/strided_slice_2StridedSlice.sequential_14/random_rotation_7/Shape:output:0>sequential_14/random_rotation_7/strided_slice_2/stack:output:0@sequential_14/random_rotation_7/strided_slice_2/stack_1:output:0@sequential_14/random_rotation_7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_14/random_rotation_7/strided_slice_2?
&sequential_14/random_rotation_7/Cast_1Cast8sequential_14/random_rotation_7/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_14/random_rotation_7/Cast_1?
6sequential_14/random_rotation_7/stateful_uniform/shapePack6sequential_14/random_rotation_7/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6sequential_14/random_rotation_7/stateful_uniform/shape?
4sequential_14/random_rotation_7/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?26
4sequential_14/random_rotation_7/stateful_uniform/min?
4sequential_14/random_rotation_7/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?26
4sequential_14/random_rotation_7/stateful_uniform/max?
Jsequential_14/random_rotation_7/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2L
Jsequential_14/random_rotation_7/stateful_uniform/StatefulUniform/algorithm?
@sequential_14/random_rotation_7/stateful_uniform/StatefulUniformStatefulUniformIsequential_14_random_rotation_7_stateful_uniform_statefuluniform_resourceSsequential_14/random_rotation_7/stateful_uniform/StatefulUniform/algorithm:output:0?sequential_14/random_rotation_7/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype02B
@sequential_14/random_rotation_7/stateful_uniform/StatefulUniform?
4sequential_14/random_rotation_7/stateful_uniform/subSub=sequential_14/random_rotation_7/stateful_uniform/max:output:0=sequential_14/random_rotation_7/stateful_uniform/min:output:0*
T0*
_output_shapes
: 26
4sequential_14/random_rotation_7/stateful_uniform/sub?
4sequential_14/random_rotation_7/stateful_uniform/mulMulIsequential_14/random_rotation_7/stateful_uniform/StatefulUniform:output:08sequential_14/random_rotation_7/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????26
4sequential_14/random_rotation_7/stateful_uniform/mul?
0sequential_14/random_rotation_7/stateful_uniformAdd8sequential_14/random_rotation_7/stateful_uniform/mul:z:0=sequential_14/random_rotation_7/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????22
0sequential_14/random_rotation_7/stateful_uniform?
5sequential_14/random_rotation_7/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5sequential_14/random_rotation_7/rotation_matrix/sub/y?
3sequential_14/random_rotation_7/rotation_matrix/subSub*sequential_14/random_rotation_7/Cast_1:y:0>sequential_14/random_rotation_7/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 25
3sequential_14/random_rotation_7/rotation_matrix/sub?
3sequential_14/random_rotation_7/rotation_matrix/CosCos4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????25
3sequential_14/random_rotation_7/rotation_matrix/Cos?
7sequential_14/random_rotation_7/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_14/random_rotation_7/rotation_matrix/sub_1/y?
5sequential_14/random_rotation_7/rotation_matrix/sub_1Sub*sequential_14/random_rotation_7/Cast_1:y:0@sequential_14/random_rotation_7/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 27
5sequential_14/random_rotation_7/rotation_matrix/sub_1?
3sequential_14/random_rotation_7/rotation_matrix/mulMul7sequential_14/random_rotation_7/rotation_matrix/Cos:y:09sequential_14/random_rotation_7/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????25
3sequential_14/random_rotation_7/rotation_matrix/mul?
3sequential_14/random_rotation_7/rotation_matrix/SinSin4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????25
3sequential_14/random_rotation_7/rotation_matrix/Sin?
7sequential_14/random_rotation_7/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_14/random_rotation_7/rotation_matrix/sub_2/y?
5sequential_14/random_rotation_7/rotation_matrix/sub_2Sub(sequential_14/random_rotation_7/Cast:y:0@sequential_14/random_rotation_7/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 27
5sequential_14/random_rotation_7/rotation_matrix/sub_2?
5sequential_14/random_rotation_7/rotation_matrix/mul_1Mul7sequential_14/random_rotation_7/rotation_matrix/Sin:y:09sequential_14/random_rotation_7/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/mul_1?
5sequential_14/random_rotation_7/rotation_matrix/sub_3Sub7sequential_14/random_rotation_7/rotation_matrix/mul:z:09sequential_14/random_rotation_7/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/sub_3?
5sequential_14/random_rotation_7/rotation_matrix/sub_4Sub7sequential_14/random_rotation_7/rotation_matrix/sub:z:09sequential_14/random_rotation_7/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/sub_4?
9sequential_14/random_rotation_7/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2;
9sequential_14/random_rotation_7/rotation_matrix/truediv/y?
7sequential_14/random_rotation_7/rotation_matrix/truedivRealDiv9sequential_14/random_rotation_7/rotation_matrix/sub_4:z:0Bsequential_14/random_rotation_7/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????29
7sequential_14/random_rotation_7/rotation_matrix/truediv?
7sequential_14/random_rotation_7/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_14/random_rotation_7/rotation_matrix/sub_5/y?
5sequential_14/random_rotation_7/rotation_matrix/sub_5Sub(sequential_14/random_rotation_7/Cast:y:0@sequential_14/random_rotation_7/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 27
5sequential_14/random_rotation_7/rotation_matrix/sub_5?
5sequential_14/random_rotation_7/rotation_matrix/Sin_1Sin4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/Sin_1?
7sequential_14/random_rotation_7/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_14/random_rotation_7/rotation_matrix/sub_6/y?
5sequential_14/random_rotation_7/rotation_matrix/sub_6Sub*sequential_14/random_rotation_7/Cast_1:y:0@sequential_14/random_rotation_7/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 27
5sequential_14/random_rotation_7/rotation_matrix/sub_6?
5sequential_14/random_rotation_7/rotation_matrix/mul_2Mul9sequential_14/random_rotation_7/rotation_matrix/Sin_1:y:09sequential_14/random_rotation_7/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/mul_2?
5sequential_14/random_rotation_7/rotation_matrix/Cos_1Cos4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/Cos_1?
7sequential_14/random_rotation_7/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_14/random_rotation_7/rotation_matrix/sub_7/y?
5sequential_14/random_rotation_7/rotation_matrix/sub_7Sub(sequential_14/random_rotation_7/Cast:y:0@sequential_14/random_rotation_7/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 27
5sequential_14/random_rotation_7/rotation_matrix/sub_7?
5sequential_14/random_rotation_7/rotation_matrix/mul_3Mul9sequential_14/random_rotation_7/rotation_matrix/Cos_1:y:09sequential_14/random_rotation_7/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/mul_3?
3sequential_14/random_rotation_7/rotation_matrix/addAddV29sequential_14/random_rotation_7/rotation_matrix/mul_2:z:09sequential_14/random_rotation_7/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????25
3sequential_14/random_rotation_7/rotation_matrix/add?
5sequential_14/random_rotation_7/rotation_matrix/sub_8Sub9sequential_14/random_rotation_7/rotation_matrix/sub_5:z:07sequential_14/random_rotation_7/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/sub_8?
;sequential_14/random_rotation_7/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2=
;sequential_14/random_rotation_7/rotation_matrix/truediv_1/y?
9sequential_14/random_rotation_7/rotation_matrix/truediv_1RealDiv9sequential_14/random_rotation_7/rotation_matrix/sub_8:z:0Dsequential_14/random_rotation_7/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2;
9sequential_14/random_rotation_7/rotation_matrix/truediv_1?
5sequential_14/random_rotation_7/rotation_matrix/ShapeShape4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*
_output_shapes
:27
5sequential_14/random_rotation_7/rotation_matrix/Shape?
Csequential_14/random_rotation_7/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_14/random_rotation_7/rotation_matrix/strided_slice/stack?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice/stack_1?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice/stack_2?
=sequential_14/random_rotation_7/rotation_matrix/strided_sliceStridedSlice>sequential_14/random_rotation_7/rotation_matrix/Shape:output:0Lsequential_14/random_rotation_7/rotation_matrix/strided_slice/stack:output:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice/stack_1:output:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_14/random_rotation_7/rotation_matrix/strided_slice?
5sequential_14/random_rotation_7/rotation_matrix/Cos_2Cos4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/Cos_2?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack_1?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack_2?
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_1StridedSlice9sequential_14/random_rotation_7/rotation_matrix/Cos_2:y:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_1?
5sequential_14/random_rotation_7/rotation_matrix/Sin_2Sin4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/Sin_2?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack_1?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack_2?
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_2StridedSlice9sequential_14/random_rotation_7/rotation_matrix/Sin_2:y:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_2?
3sequential_14/random_rotation_7/rotation_matrix/NegNegHsequential_14/random_rotation_7/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????25
3sequential_14/random_rotation_7/rotation_matrix/Neg?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack_1?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack_2?
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_3StridedSlice;sequential_14/random_rotation_7/rotation_matrix/truediv:z:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_3?
5sequential_14/random_rotation_7/rotation_matrix/Sin_3Sin4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/Sin_3?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack_1?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack_2?
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_4StridedSlice9sequential_14/random_rotation_7/rotation_matrix/Sin_3:y:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_4?
5sequential_14/random_rotation_7/rotation_matrix/Cos_3Cos4sequential_14/random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/Cos_3?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack_1?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack_2?
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_5StridedSlice9sequential_14/random_rotation_7/rotation_matrix/Cos_3:y:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_5?
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack_1?
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack_2?
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_6StridedSlice=sequential_14/random_rotation_7/rotation_matrix/truediv_1:z:0Nsequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_14/random_rotation_7/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_14/random_rotation_7/rotation_matrix/strided_slice_6?
;sequential_14/random_rotation_7/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_14/random_rotation_7/rotation_matrix/zeros/mul/y?
9sequential_14/random_rotation_7/rotation_matrix/zeros/mulMulFsequential_14/random_rotation_7/rotation_matrix/strided_slice:output:0Dsequential_14/random_rotation_7/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2;
9sequential_14/random_rotation_7/rotation_matrix/zeros/mul?
<sequential_14/random_rotation_7/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2>
<sequential_14/random_rotation_7/rotation_matrix/zeros/Less/y?
:sequential_14/random_rotation_7/rotation_matrix/zeros/LessLess=sequential_14/random_rotation_7/rotation_matrix/zeros/mul:z:0Esequential_14/random_rotation_7/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2<
:sequential_14/random_rotation_7/rotation_matrix/zeros/Less?
>sequential_14/random_rotation_7/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_14/random_rotation_7/rotation_matrix/zeros/packed/1?
<sequential_14/random_rotation_7/rotation_matrix/zeros/packedPackFsequential_14/random_rotation_7/rotation_matrix/strided_slice:output:0Gsequential_14/random_rotation_7/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2>
<sequential_14/random_rotation_7/rotation_matrix/zeros/packed?
;sequential_14/random_rotation_7/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2=
;sequential_14/random_rotation_7/rotation_matrix/zeros/Const?
5sequential_14/random_rotation_7/rotation_matrix/zerosFillEsequential_14/random_rotation_7/rotation_matrix/zeros/packed:output:0Dsequential_14/random_rotation_7/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????27
5sequential_14/random_rotation_7/rotation_matrix/zeros?
;sequential_14/random_rotation_7/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_14/random_rotation_7/rotation_matrix/concat/axis?
6sequential_14/random_rotation_7/rotation_matrix/concatConcatV2Hsequential_14/random_rotation_7/rotation_matrix/strided_slice_1:output:07sequential_14/random_rotation_7/rotation_matrix/Neg:y:0Hsequential_14/random_rotation_7/rotation_matrix/strided_slice_3:output:0Hsequential_14/random_rotation_7/rotation_matrix/strided_slice_4:output:0Hsequential_14/random_rotation_7/rotation_matrix/strided_slice_5:output:0Hsequential_14/random_rotation_7/rotation_matrix/strided_slice_6:output:0>sequential_14/random_rotation_7/rotation_matrix/zeros:output:0Dsequential_14/random_rotation_7/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????28
6sequential_14/random_rotation_7/rotation_matrix/concat?
/sequential_14/random_rotation_7/transform/ShapeShapeinputs*
T0*
_output_shapes
:21
/sequential_14/random_rotation_7/transform/Shape?
=sequential_14/random_rotation_7/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_14/random_rotation_7/transform/strided_slice/stack?
?sequential_14/random_rotation_7/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_14/random_rotation_7/transform/strided_slice/stack_1?
?sequential_14/random_rotation_7/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_14/random_rotation_7/transform/strided_slice/stack_2?
7sequential_14/random_rotation_7/transform/strided_sliceStridedSlice8sequential_14/random_rotation_7/transform/Shape:output:0Fsequential_14/random_rotation_7/transform/strided_slice/stack:output:0Hsequential_14/random_rotation_7/transform/strided_slice/stack_1:output:0Hsequential_14/random_rotation_7/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:29
7sequential_14/random_rotation_7/transform/strided_slice?
4sequential_14/random_rotation_7/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_14/random_rotation_7/transform/fill_value?
Dsequential_14/random_rotation_7/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs?sequential_14/random_rotation_7/rotation_matrix/concat:output:0@sequential_14/random_rotation_7/transform/strided_slice:output:0=sequential_14/random_rotation_7/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2F
Dsequential_14/random_rotation_7/transform/ImageProjectiveTransformV3?
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_28/Conv2D/ReadVariableOp?
conv2d_28/Conv2DConv2DYsequential_14/random_rotation_7/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_28/Conv2D?
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp?
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_28/BiasAdd?
activation_35/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_35/Relu?
max_pooling2d_21/MaxPoolMaxPool activation_35/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_21/MaxPool?
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_29/Conv2D/ReadVariableOp?
conv2d_29/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_29/Conv2D?
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp?
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_29/BiasAdd?
activation_36/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_36/Relu?
max_pooling2d_22/MaxPoolMaxPool activation_36/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_22/MaxPool?
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_30/Conv2D/ReadVariableOp?
conv2d_30/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_30/Conv2D?
 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_30/BiasAdd/ReadVariableOp?
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_30/BiasAdd?
activation_37/ReluReluconv2d_30/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_37/Relu?
max_pooling2d_23/MaxPoolMaxPool activation_37/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_23/MaxPool?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_31/Conv2D/ReadVariableOp?
conv2d_31/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_31/Conv2D?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_31/BiasAdd/ReadVariableOp?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_31/BiasAdd?
activation_38/ReluReluconv2d_31/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_38/Relu?
1global_average_pooling2d_7/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_7/Mean/reduction_indices?
global_average_pooling2d_7/MeanMean activation_38/Relu:activations:0:global_average_pooling2d_7/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_7/Mean?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMul(global_average_pooling2d_7/Mean:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_7/BiasAdd?
activation_39/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_39/Softmax?
IdentityIdentityactivation_39/Softmax:softmax:0!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOpA^sequential_14/random_rotation_7/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2?
@sequential_14/random_rotation_7/stateful_uniform/StatefulUniform@sequential_14/random_rotation_7/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_187007

inputs?
;random_rotation_7_stateful_uniform_statefuluniform_resource
identity??2random_rotation_7/stateful_uniform/StatefulUniformh
random_rotation_7/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_7/Shape?
%random_rotation_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_7/strided_slice/stack?
'random_rotation_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice/stack_1?
'random_rotation_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice/stack_2?
random_rotation_7/strided_sliceStridedSlice random_rotation_7/Shape:output:0.random_rotation_7/strided_slice/stack:output:00random_rotation_7/strided_slice/stack_1:output:00random_rotation_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_7/strided_slice?
'random_rotation_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice_1/stack?
)random_rotation_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_1/stack_1?
)random_rotation_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_1/stack_2?
!random_rotation_7/strided_slice_1StridedSlice random_rotation_7/Shape:output:00random_rotation_7/strided_slice_1/stack:output:02random_rotation_7/strided_slice_1/stack_1:output:02random_rotation_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_7/strided_slice_1?
random_rotation_7/CastCast*random_rotation_7/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_7/Cast?
'random_rotation_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice_2/stack?
)random_rotation_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_2/stack_1?
)random_rotation_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_2/stack_2?
!random_rotation_7/strided_slice_2StridedSlice random_rotation_7/Shape:output:00random_rotation_7/strided_slice_2/stack:output:02random_rotation_7/strided_slice_2/stack_1:output:02random_rotation_7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_7/strided_slice_2?
random_rotation_7/Cast_1Cast*random_rotation_7/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_7/Cast_1?
(random_rotation_7/stateful_uniform/shapePack(random_rotation_7/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_7/stateful_uniform/shape?
&random_rotation_7/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_7/stateful_uniform/min?
&random_rotation_7/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_7/stateful_uniform/max?
<random_rotation_7/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_7/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_7/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_7_stateful_uniform_statefuluniform_resourceErandom_rotation_7/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_7/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_7/stateful_uniform/StatefulUniform?
&random_rotation_7/stateful_uniform/subSub/random_rotation_7/stateful_uniform/max:output:0/random_rotation_7/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_7/stateful_uniform/sub?
&random_rotation_7/stateful_uniform/mulMul;random_rotation_7/stateful_uniform/StatefulUniform:output:0*random_rotation_7/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_7/stateful_uniform/mul?
"random_rotation_7/stateful_uniformAdd*random_rotation_7/stateful_uniform/mul:z:0/random_rotation_7/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_7/stateful_uniform?
'random_rotation_7/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_7/rotation_matrix/sub/y?
%random_rotation_7/rotation_matrix/subSubrandom_rotation_7/Cast_1:y:00random_rotation_7/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_7/rotation_matrix/sub?
%random_rotation_7/rotation_matrix/CosCos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Cos?
)random_rotation_7/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_1/y?
'random_rotation_7/rotation_matrix/sub_1Subrandom_rotation_7/Cast_1:y:02random_rotation_7/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_1?
%random_rotation_7/rotation_matrix/mulMul)random_rotation_7/rotation_matrix/Cos:y:0+random_rotation_7/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/mul?
%random_rotation_7/rotation_matrix/SinSin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Sin?
)random_rotation_7/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_2/y?
'random_rotation_7/rotation_matrix/sub_2Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_2?
'random_rotation_7/rotation_matrix/mul_1Mul)random_rotation_7/rotation_matrix/Sin:y:0+random_rotation_7/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_1?
'random_rotation_7/rotation_matrix/sub_3Sub)random_rotation_7/rotation_matrix/mul:z:0+random_rotation_7/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_3?
'random_rotation_7/rotation_matrix/sub_4Sub)random_rotation_7/rotation_matrix/sub:z:0+random_rotation_7/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_4?
+random_rotation_7/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_7/rotation_matrix/truediv/y?
)random_rotation_7/rotation_matrix/truedivRealDiv+random_rotation_7/rotation_matrix/sub_4:z:04random_rotation_7/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_7/rotation_matrix/truediv?
)random_rotation_7/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_5/y?
'random_rotation_7/rotation_matrix/sub_5Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_5?
'random_rotation_7/rotation_matrix/Sin_1Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_1?
)random_rotation_7/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_6/y?
'random_rotation_7/rotation_matrix/sub_6Subrandom_rotation_7/Cast_1:y:02random_rotation_7/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_6?
'random_rotation_7/rotation_matrix/mul_2Mul+random_rotation_7/rotation_matrix/Sin_1:y:0+random_rotation_7/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_2?
'random_rotation_7/rotation_matrix/Cos_1Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_1?
)random_rotation_7/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_7/y?
'random_rotation_7/rotation_matrix/sub_7Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_7?
'random_rotation_7/rotation_matrix/mul_3Mul+random_rotation_7/rotation_matrix/Cos_1:y:0+random_rotation_7/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_3?
%random_rotation_7/rotation_matrix/addAddV2+random_rotation_7/rotation_matrix/mul_2:z:0+random_rotation_7/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/add?
'random_rotation_7/rotation_matrix/sub_8Sub+random_rotation_7/rotation_matrix/sub_5:z:0)random_rotation_7/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_8?
-random_rotation_7/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_7/rotation_matrix/truediv_1/y?
+random_rotation_7/rotation_matrix/truediv_1RealDiv+random_rotation_7/rotation_matrix/sub_8:z:06random_rotation_7/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_7/rotation_matrix/truediv_1?
'random_rotation_7/rotation_matrix/ShapeShape&random_rotation_7/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_7/rotation_matrix/Shape?
5random_rotation_7/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_7/rotation_matrix/strided_slice/stack?
7random_rotation_7/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_7/rotation_matrix/strided_slice/stack_1?
7random_rotation_7/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_7/rotation_matrix/strided_slice/stack_2?
/random_rotation_7/rotation_matrix/strided_sliceStridedSlice0random_rotation_7/rotation_matrix/Shape:output:0>random_rotation_7/rotation_matrix/strided_slice/stack:output:0@random_rotation_7/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_7/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_7/rotation_matrix/strided_slice?
'random_rotation_7/rotation_matrix/Cos_2Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_2?
7random_rotation_7/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_1/stack?
9random_rotation_7/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_1StridedSlice+random_rotation_7/rotation_matrix/Cos_2:y:0@random_rotation_7/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_1?
'random_rotation_7/rotation_matrix/Sin_2Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_2?
7random_rotation_7/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_2/stack?
9random_rotation_7/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_2StridedSlice+random_rotation_7/rotation_matrix/Sin_2:y:0@random_rotation_7/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_2?
%random_rotation_7/rotation_matrix/NegNeg:random_rotation_7/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Neg?
7random_rotation_7/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_3/stack?
9random_rotation_7/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_3StridedSlice-random_rotation_7/rotation_matrix/truediv:z:0@random_rotation_7/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_3?
'random_rotation_7/rotation_matrix/Sin_3Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_3?
7random_rotation_7/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_4/stack?
9random_rotation_7/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_4StridedSlice+random_rotation_7/rotation_matrix/Sin_3:y:0@random_rotation_7/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_4?
'random_rotation_7/rotation_matrix/Cos_3Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_3?
7random_rotation_7/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_5/stack?
9random_rotation_7/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_5StridedSlice+random_rotation_7/rotation_matrix/Cos_3:y:0@random_rotation_7/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_5?
7random_rotation_7/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_6/stack?
9random_rotation_7/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_6StridedSlice/random_rotation_7/rotation_matrix/truediv_1:z:0@random_rotation_7/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_6?
-random_rotation_7/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_7/rotation_matrix/zeros/mul/y?
+random_rotation_7/rotation_matrix/zeros/mulMul8random_rotation_7/rotation_matrix/strided_slice:output:06random_rotation_7/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_7/rotation_matrix/zeros/mul?
.random_rotation_7/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_7/rotation_matrix/zeros/Less/y?
,random_rotation_7/rotation_matrix/zeros/LessLess/random_rotation_7/rotation_matrix/zeros/mul:z:07random_rotation_7/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_7/rotation_matrix/zeros/Less?
0random_rotation_7/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_7/rotation_matrix/zeros/packed/1?
.random_rotation_7/rotation_matrix/zeros/packedPack8random_rotation_7/rotation_matrix/strided_slice:output:09random_rotation_7/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_7/rotation_matrix/zeros/packed?
-random_rotation_7/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_7/rotation_matrix/zeros/Const?
'random_rotation_7/rotation_matrix/zerosFill7random_rotation_7/rotation_matrix/zeros/packed:output:06random_rotation_7/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/zeros?
-random_rotation_7/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_7/rotation_matrix/concat/axis?
(random_rotation_7/rotation_matrix/concatConcatV2:random_rotation_7/rotation_matrix/strided_slice_1:output:0)random_rotation_7/rotation_matrix/Neg:y:0:random_rotation_7/rotation_matrix/strided_slice_3:output:0:random_rotation_7/rotation_matrix/strided_slice_4:output:0:random_rotation_7/rotation_matrix/strided_slice_5:output:0:random_rotation_7/rotation_matrix/strided_slice_6:output:00random_rotation_7/rotation_matrix/zeros:output:06random_rotation_7/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_7/rotation_matrix/concat|
!random_rotation_7/transform/ShapeShapeinputs*
T0*
_output_shapes
:2#
!random_rotation_7/transform/Shape?
/random_rotation_7/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_7/transform/strided_slice/stack?
1random_rotation_7/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_7/transform/strided_slice/stack_1?
1random_rotation_7/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_7/transform/strided_slice/stack_2?
)random_rotation_7/transform/strided_sliceStridedSlice*random_rotation_7/transform/Shape:output:08random_rotation_7/transform/strided_slice/stack:output:0:random_rotation_7/transform/strided_slice/stack_1:output:0:random_rotation_7/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_7/transform/strided_slice?
&random_rotation_7/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_7/transform/fill_value?
6random_rotation_7/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs1random_rotation_7/rotation_matrix/concat:output:02random_rotation_7/transform/strided_slice:output:0/random_rotation_7/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_7/transform/ImageProjectiveTransformV3?
IdentityIdentityKrandom_rotation_7/transform/ImageProjectiveTransformV3:transformed_images:03^random_rotation_7/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2h
2random_rotation_7/stateful_uniform/StatefulUniform2random_rotation_7/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
[
.__inference_sequential_14_layer_call_fn_186182
random_rotation_7_input
identity?
PartitionedCallPartitionedCallrandom_rotation_7_input*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861792
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
_user_specified_namerandom_rotation_7_input
?
J
.__inference_activation_35_layer_call_fn_187052

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
I__inference_activation_35_layer_call_and_return_conditional_losses_1862812
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
?
e
I__inference_activation_37_layer_call_and_return_conditional_losses_187105

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
?	
?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_187120

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
?
M
1__inference_max_pooling2d_22_layer_call_fn_186206

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
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_1862002
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

*__inference_conv2d_31_layer_call_fn_187129

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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_1863802
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
?
e
I__inference_activation_36_layer_call_and_return_conditional_losses_187076

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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_187033

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
I__inference_activation_39_layer_call_and_return_conditional_losses_186441

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
h
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_186200

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
?
J
.__inference_sequential_14_layer_call_fn_187023

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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861792
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_187062

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
I__inference_activation_35_layer_call_and_return_conditional_losses_186281

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
?
.__inference_sequential_15_layer_call_fn_186875

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
GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_1865332
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
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_186054
random_rotation_7_input?
;random_rotation_7_stateful_uniform_statefuluniform_resource
identity??2random_rotation_7/stateful_uniform/StatefulUniformy
random_rotation_7/ShapeShaperandom_rotation_7_input*
T0*
_output_shapes
:2
random_rotation_7/Shape?
%random_rotation_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_7/strided_slice/stack?
'random_rotation_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice/stack_1?
'random_rotation_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice/stack_2?
random_rotation_7/strided_sliceStridedSlice random_rotation_7/Shape:output:0.random_rotation_7/strided_slice/stack:output:00random_rotation_7/strided_slice/stack_1:output:00random_rotation_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_7/strided_slice?
'random_rotation_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice_1/stack?
)random_rotation_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_1/stack_1?
)random_rotation_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_1/stack_2?
!random_rotation_7/strided_slice_1StridedSlice random_rotation_7/Shape:output:00random_rotation_7/strided_slice_1/stack:output:02random_rotation_7/strided_slice_1/stack_1:output:02random_rotation_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_7/strided_slice_1?
random_rotation_7/CastCast*random_rotation_7/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_7/Cast?
'random_rotation_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_7/strided_slice_2/stack?
)random_rotation_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_2/stack_1?
)random_rotation_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_7/strided_slice_2/stack_2?
!random_rotation_7/strided_slice_2StridedSlice random_rotation_7/Shape:output:00random_rotation_7/strided_slice_2/stack:output:02random_rotation_7/strided_slice_2/stack_1:output:02random_rotation_7/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_7/strided_slice_2?
random_rotation_7/Cast_1Cast*random_rotation_7/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_7/Cast_1?
(random_rotation_7/stateful_uniform/shapePack(random_rotation_7/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_7/stateful_uniform/shape?
&random_rotation_7/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_7/stateful_uniform/min?
&random_rotation_7/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_7/stateful_uniform/max?
<random_rotation_7/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_7/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_7/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_7_stateful_uniform_statefuluniform_resourceErandom_rotation_7/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_7/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_7/stateful_uniform/StatefulUniform?
&random_rotation_7/stateful_uniform/subSub/random_rotation_7/stateful_uniform/max:output:0/random_rotation_7/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_7/stateful_uniform/sub?
&random_rotation_7/stateful_uniform/mulMul;random_rotation_7/stateful_uniform/StatefulUniform:output:0*random_rotation_7/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_7/stateful_uniform/mul?
"random_rotation_7/stateful_uniformAdd*random_rotation_7/stateful_uniform/mul:z:0/random_rotation_7/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_7/stateful_uniform?
'random_rotation_7/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_7/rotation_matrix/sub/y?
%random_rotation_7/rotation_matrix/subSubrandom_rotation_7/Cast_1:y:00random_rotation_7/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_7/rotation_matrix/sub?
%random_rotation_7/rotation_matrix/CosCos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Cos?
)random_rotation_7/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_1/y?
'random_rotation_7/rotation_matrix/sub_1Subrandom_rotation_7/Cast_1:y:02random_rotation_7/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_1?
%random_rotation_7/rotation_matrix/mulMul)random_rotation_7/rotation_matrix/Cos:y:0+random_rotation_7/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/mul?
%random_rotation_7/rotation_matrix/SinSin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Sin?
)random_rotation_7/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_2/y?
'random_rotation_7/rotation_matrix/sub_2Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_2?
'random_rotation_7/rotation_matrix/mul_1Mul)random_rotation_7/rotation_matrix/Sin:y:0+random_rotation_7/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_1?
'random_rotation_7/rotation_matrix/sub_3Sub)random_rotation_7/rotation_matrix/mul:z:0+random_rotation_7/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_3?
'random_rotation_7/rotation_matrix/sub_4Sub)random_rotation_7/rotation_matrix/sub:z:0+random_rotation_7/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_4?
+random_rotation_7/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_7/rotation_matrix/truediv/y?
)random_rotation_7/rotation_matrix/truedivRealDiv+random_rotation_7/rotation_matrix/sub_4:z:04random_rotation_7/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_7/rotation_matrix/truediv?
)random_rotation_7/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_5/y?
'random_rotation_7/rotation_matrix/sub_5Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_5?
'random_rotation_7/rotation_matrix/Sin_1Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_1?
)random_rotation_7/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_6/y?
'random_rotation_7/rotation_matrix/sub_6Subrandom_rotation_7/Cast_1:y:02random_rotation_7/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_6?
'random_rotation_7/rotation_matrix/mul_2Mul+random_rotation_7/rotation_matrix/Sin_1:y:0+random_rotation_7/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_2?
'random_rotation_7/rotation_matrix/Cos_1Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_1?
)random_rotation_7/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_7/rotation_matrix/sub_7/y?
'random_rotation_7/rotation_matrix/sub_7Subrandom_rotation_7/Cast:y:02random_rotation_7/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_7/rotation_matrix/sub_7?
'random_rotation_7/rotation_matrix/mul_3Mul+random_rotation_7/rotation_matrix/Cos_1:y:0+random_rotation_7/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/mul_3?
%random_rotation_7/rotation_matrix/addAddV2+random_rotation_7/rotation_matrix/mul_2:z:0+random_rotation_7/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/add?
'random_rotation_7/rotation_matrix/sub_8Sub+random_rotation_7/rotation_matrix/sub_5:z:0)random_rotation_7/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/sub_8?
-random_rotation_7/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_7/rotation_matrix/truediv_1/y?
+random_rotation_7/rotation_matrix/truediv_1RealDiv+random_rotation_7/rotation_matrix/sub_8:z:06random_rotation_7/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_7/rotation_matrix/truediv_1?
'random_rotation_7/rotation_matrix/ShapeShape&random_rotation_7/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_7/rotation_matrix/Shape?
5random_rotation_7/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_7/rotation_matrix/strided_slice/stack?
7random_rotation_7/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_7/rotation_matrix/strided_slice/stack_1?
7random_rotation_7/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_7/rotation_matrix/strided_slice/stack_2?
/random_rotation_7/rotation_matrix/strided_sliceStridedSlice0random_rotation_7/rotation_matrix/Shape:output:0>random_rotation_7/rotation_matrix/strided_slice/stack:output:0@random_rotation_7/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_7/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_7/rotation_matrix/strided_slice?
'random_rotation_7/rotation_matrix/Cos_2Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_2?
7random_rotation_7/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_1/stack?
9random_rotation_7/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_1StridedSlice+random_rotation_7/rotation_matrix/Cos_2:y:0@random_rotation_7/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_1?
'random_rotation_7/rotation_matrix/Sin_2Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_2?
7random_rotation_7/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_2/stack?
9random_rotation_7/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_2StridedSlice+random_rotation_7/rotation_matrix/Sin_2:y:0@random_rotation_7/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_2?
%random_rotation_7/rotation_matrix/NegNeg:random_rotation_7/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_7/rotation_matrix/Neg?
7random_rotation_7/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_3/stack?
9random_rotation_7/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_3StridedSlice-random_rotation_7/rotation_matrix/truediv:z:0@random_rotation_7/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_3?
'random_rotation_7/rotation_matrix/Sin_3Sin&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Sin_3?
7random_rotation_7/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_4/stack?
9random_rotation_7/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_4StridedSlice+random_rotation_7/rotation_matrix/Sin_3:y:0@random_rotation_7/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_4?
'random_rotation_7/rotation_matrix/Cos_3Cos&random_rotation_7/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/Cos_3?
7random_rotation_7/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_5/stack?
9random_rotation_7/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_5StridedSlice+random_rotation_7/rotation_matrix/Cos_3:y:0@random_rotation_7/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_5?
7random_rotation_7/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_7/rotation_matrix/strided_slice_6/stack?
9random_rotation_7/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_7/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_7/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_7/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_7/rotation_matrix/strided_slice_6StridedSlice/random_rotation_7/rotation_matrix/truediv_1:z:0@random_rotation_7/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_7/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_7/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_7/rotation_matrix/strided_slice_6?
-random_rotation_7/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_7/rotation_matrix/zeros/mul/y?
+random_rotation_7/rotation_matrix/zeros/mulMul8random_rotation_7/rotation_matrix/strided_slice:output:06random_rotation_7/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_7/rotation_matrix/zeros/mul?
.random_rotation_7/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_7/rotation_matrix/zeros/Less/y?
,random_rotation_7/rotation_matrix/zeros/LessLess/random_rotation_7/rotation_matrix/zeros/mul:z:07random_rotation_7/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_7/rotation_matrix/zeros/Less?
0random_rotation_7/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_7/rotation_matrix/zeros/packed/1?
.random_rotation_7/rotation_matrix/zeros/packedPack8random_rotation_7/rotation_matrix/strided_slice:output:09random_rotation_7/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_7/rotation_matrix/zeros/packed?
-random_rotation_7/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_7/rotation_matrix/zeros/Const?
'random_rotation_7/rotation_matrix/zerosFill7random_rotation_7/rotation_matrix/zeros/packed:output:06random_rotation_7/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_7/rotation_matrix/zeros?
-random_rotation_7/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_7/rotation_matrix/concat/axis?
(random_rotation_7/rotation_matrix/concatConcatV2:random_rotation_7/rotation_matrix/strided_slice_1:output:0)random_rotation_7/rotation_matrix/Neg:y:0:random_rotation_7/rotation_matrix/strided_slice_3:output:0:random_rotation_7/rotation_matrix/strided_slice_4:output:0:random_rotation_7/rotation_matrix/strided_slice_5:output:0:random_rotation_7/rotation_matrix/strided_slice_6:output:00random_rotation_7/rotation_matrix/zeros:output:06random_rotation_7/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_7/rotation_matrix/concat?
!random_rotation_7/transform/ShapeShaperandom_rotation_7_input*
T0*
_output_shapes
:2#
!random_rotation_7/transform/Shape?
/random_rotation_7/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_7/transform/strided_slice/stack?
1random_rotation_7/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_7/transform/strided_slice/stack_1?
1random_rotation_7/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_7/transform/strided_slice/stack_2?
)random_rotation_7/transform/strided_sliceStridedSlice*random_rotation_7/transform/Shape:output:08random_rotation_7/transform/strided_slice/stack:output:0:random_rotation_7/transform/strided_slice/stack_1:output:0:random_rotation_7/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_7/transform/strided_slice?
&random_rotation_7/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_7/transform/fill_value?
6random_rotation_7/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_rotation_7_input1random_rotation_7/rotation_matrix/concat:output:02random_rotation_7/transform/strided_slice:output:0/random_rotation_7/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_7/transform/ImageProjectiveTransformV3?
IdentityIdentityKrandom_rotation_7/transform/ImageProjectiveTransformV3:transformed_images:03^random_rotation_7/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2h
2random_rotation_7/stateful_uniform/StatefulUniform2random_rotation_7/stateful_uniform/StatefulUniform:h d
/
_output_shapes
:?????????  
1
_user_specified_namerandom_rotation_7_input
?
e
I__inference_activation_36_layer_call_and_return_conditional_losses_186321

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
J
.__inference_activation_39_layer_call_fn_187168

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
I__inference_activation_39_layer_call_and_return_conditional_losses_1864412
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
}
(__inference_dense_7_layer_call_fn_187158

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
C__inference_dense_7_layer_call_and_return_conditional_losses_1864202
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
?
W
;__inference_global_average_pooling2d_7_layer_call_fn_186231

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
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_1862252
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
?U
?
__inference__traced_save_187316
file_prefix/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop/
+savev2_conv2d_30_kernel_read_readvariableop-
)savev2_conv2d_30_bias_read_readvariableop/
+savev2_conv2d_31_kernel_read_readvariableop-
)savev2_conv2d_31_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
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
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableop6
2savev2_adam_conv2d_30_kernel_m_read_readvariableop4
0savev2_adam_conv2d_30_bias_m_read_readvariableop6
2savev2_adam_conv2d_31_kernel_m_read_readvariableop4
0savev2_adam_conv2d_31_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableop6
2savev2_adam_conv2d_30_kernel_v_read_readvariableop4
0savev2_adam_conv2d_30_bias_v_read_readvariableop6
2savev2_adam_conv2d_31_kernel_v_read_readvariableop4
0savev2_adam_conv2d_31_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop2savev2_adam_conv2d_30_kernel_m_read_readvariableop0savev2_adam_conv2d_30_bias_m_read_readvariableop2savev2_adam_conv2d_31_kernel_m_read_readvariableop0savev2_adam_conv2d_31_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop2savev2_adam_conv2d_30_kernel_v_read_readvariableop0savev2_adam_conv2d_30_bias_v_read_readvariableop2savev2_adam_conv2d_31_kernel_v_read_readvariableop0savev2_adam_conv2d_31_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?	
?
E__inference_conv2d_29_layer_call_and_return_conditional_losses_186300

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
?<
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186599

inputs
conv2d_28_186564
conv2d_28_186566
conv2d_29_186571
conv2d_29_186573
conv2d_30_186578
conv2d_30_186580
conv2d_31_186585
conv2d_31_186587
dense_7_186592
dense_7_186594
identity??!conv2d_28/StatefulPartitionedCall?!conv2d_29/StatefulPartitionedCall?!conv2d_30/StatefulPartitionedCall?!conv2d_31/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
sequential_14/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861792
sequential_14/PartitionedCall?
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall&sequential_14/PartitionedCall:output:0conv2d_28_186564conv2d_28_186566*
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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_1862602#
!conv2d_28/StatefulPartitionedCall?
activation_35/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
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
I__inference_activation_35_layer_call_and_return_conditional_losses_1862812
activation_35/PartitionedCall?
 max_pooling2d_21/PartitionedCallPartitionedCall&activation_35/PartitionedCall:output:0*
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
GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_1861882"
 max_pooling2d_21/PartitionedCall?
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_29_186571conv2d_29_186573*
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_1863002#
!conv2d_29/StatefulPartitionedCall?
activation_36/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
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
I__inference_activation_36_layer_call_and_return_conditional_losses_1863212
activation_36/PartitionedCall?
 max_pooling2d_22/PartitionedCallPartitionedCall&activation_36/PartitionedCall:output:0*
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
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_1862002"
 max_pooling2d_22/PartitionedCall?
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_30_186578conv2d_30_186580*
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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_1863402#
!conv2d_30/StatefulPartitionedCall?
activation_37/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
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
I__inference_activation_37_layer_call_and_return_conditional_losses_1863612
activation_37/PartitionedCall?
 max_pooling2d_23/PartitionedCallPartitionedCall&activation_37/PartitionedCall:output:0*
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
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_1862122"
 max_pooling2d_23/PartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_31_186585conv2d_31_186587*
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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_1863802#
!conv2d_31/StatefulPartitionedCall?
activation_38/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
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
I__inference_activation_38_layer_call_and_return_conditional_losses_1864012
activation_38/PartitionedCall?
*global_average_pooling2d_7/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_1862252,
*global_average_pooling2d_7/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_7/PartitionedCall:output:0dense_7_186592dense_7_186594*
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
C__inference_dense_7_layer_call_and_return_conditional_losses_1864202!
dense_7/StatefulPartitionedCall?
activation_39/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
I__inference_activation_39_layer_call_and_return_conditional_losses_1864412
activation_39/PartitionedCall?
IdentityIdentity&activation_39/PartitionedCall:output:0"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
t
.__inference_sequential_14_layer_call_fn_187018

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
GPU2*0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1861682
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
[
sequential_14_inputD
%serving_default_sequential_14_input:0?????????  A
activation_390
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:ѳ
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
_tf_keras_sequential?]{"class_name": "Sequential", "name": "sequential_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_14_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_7_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_7", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_21", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_39", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_14_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_7_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_7", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_21", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_39", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_7_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_7", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_7_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_7", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_21", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_39", "trainable": true, "dtype": "float32", "activation": "softmax"}}
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
	variables

blayers
cnon_trainable_variables
trainable_variables
regularization_losses
dlayer_regularization_losses
emetrics
flayer_metrics
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
_tf_keras_layer?{"class_name": "RandomRotation", "name": "random_rotation_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_7", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables

ilayers
jnon_trainable_variables
trainable_variables
regularization_losses
klayer_regularization_losses
lmetrics
mlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_28/kernel
: 2conv2d_28/bias
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
	variables

nlayers
onon_trainable_variables
trainable_variables
regularization_losses
player_regularization_losses
qmetrics
rlayer_metrics
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
!	variables

slayers
tnon_trainable_variables
"trainable_variables
#regularization_losses
ulayer_regularization_losses
vmetrics
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
%	variables

xlayers
ynon_trainable_variables
&trainable_variables
'regularization_losses
zlayer_regularization_losses
{metrics
|layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_29/kernel
:@2conv2d_29/bias
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
+	variables

}layers
~non_trainable_variables
,trainable_variables
-regularization_losses
layer_regularization_losses
?metrics
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
/	variables
?layers
?non_trainable_variables
0trainable_variables
1regularization_losses
 ?layer_regularization_losses
?metrics
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
3	variables
?layers
?non_trainable_variables
4trainable_variables
5regularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_30/kernel
:?2conv2d_30/bias
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
9	variables
?layers
?non_trainable_variables
:trainable_variables
;regularization_losses
 ?layer_regularization_losses
?metrics
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
=	variables
?layers
?non_trainable_variables
>trainable_variables
?regularization_losses
 ?layer_regularization_losses
?metrics
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
A	variables
?layers
?non_trainable_variables
Btrainable_variables
Cregularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_31/kernel
:?2conv2d_31/bias
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
G	variables
?layers
?non_trainable_variables
Htrainable_variables
Iregularization_losses
 ?layer_regularization_losses
?metrics
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
K	variables
?layers
?non_trainable_variables
Ltrainable_variables
Mregularization_losses
 ?layer_regularization_losses
?metrics
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
O	variables
?layers
?non_trainable_variables
Ptrainable_variables
Qregularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_7/kernel
:
2dense_7/bias
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
U	variables
?layers
?non_trainable_variables
Vtrainable_variables
Wregularization_losses
 ?layer_regularization_losses
?metrics
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
Y	variables
?layers
?non_trainable_variables
Ztrainable_variables
[regularization_losses
 ?layer_regularization_losses
?metrics
?layer_metrics
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
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
/
?
_state_var"
_generic_user_object
"
_generic_user_object
'
0"
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
/:- 2Adam/conv2d_28/kernel/m
!: 2Adam/conv2d_28/bias/m
/:- @2Adam/conv2d_29/kernel/m
!:@2Adam/conv2d_29/bias/m
0:.@?2Adam/conv2d_30/kernel/m
": ?2Adam/conv2d_30/bias/m
1:/??2Adam/conv2d_31/kernel/m
": ?2Adam/conv2d_31/bias/m
&:$	?
2Adam/dense_7/kernel/m
:
2Adam/dense_7/bias/m
/:- 2Adam/conv2d_28/kernel/v
!: 2Adam/conv2d_28/bias/v
/:- @2Adam/conv2d_29/kernel/v
!:@2Adam/conv2d_29/bias/v
0:.@?2Adam/conv2d_30/kernel/v
": ?2Adam/conv2d_30/bias/v
1:/??2Adam/conv2d_31/kernel/v
": ?2Adam/conv2d_31/bias/v
&:$	?
2Adam/dense_7/kernel/v
:
2Adam/dense_7/bias/v
?2?
!__inference__wrapped_model_185946?
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
annotations? *:?7
5?2
sequential_14_input?????????  
?2?
.__inference_sequential_15_layer_call_fn_186558
.__inference_sequential_15_layer_call_fn_186622
.__inference_sequential_15_layer_call_fn_186900
.__inference_sequential_15_layer_call_fn_186875?
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
I__inference_sequential_15_layer_call_and_return_conditional_losses_186804
I__inference_sequential_15_layer_call_and_return_conditional_losses_186848
I__inference_sequential_15_layer_call_and_return_conditional_losses_186489
I__inference_sequential_15_layer_call_and_return_conditional_losses_186450?
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
.__inference_sequential_14_layer_call_fn_187018
.__inference_sequential_14_layer_call_fn_186182
.__inference_sequential_14_layer_call_fn_186173
.__inference_sequential_14_layer_call_fn_187023?
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
I__inference_sequential_14_layer_call_and_return_conditional_losses_187007
I__inference_sequential_14_layer_call_and_return_conditional_losses_187011
I__inference_sequential_14_layer_call_and_return_conditional_losses_186058
I__inference_sequential_14_layer_call_and_return_conditional_losses_186054?
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
*__inference_conv2d_28_layer_call_fn_187042?
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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_187033?
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
.__inference_activation_35_layer_call_fn_187052?
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
I__inference_activation_35_layer_call_and_return_conditional_losses_187047?
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
1__inference_max_pooling2d_21_layer_call_fn_186194?
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
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_186188?
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
*__inference_conv2d_29_layer_call_fn_187071?
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_187062?
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
.__inference_activation_36_layer_call_fn_187081?
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
I__inference_activation_36_layer_call_and_return_conditional_losses_187076?
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
1__inference_max_pooling2d_22_layer_call_fn_186206?
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
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_186200?
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
*__inference_conv2d_30_layer_call_fn_187100?
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
E__inference_conv2d_30_layer_call_and_return_conditional_losses_187091?
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
.__inference_activation_37_layer_call_fn_187110?
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
I__inference_activation_37_layer_call_and_return_conditional_losses_187105?
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
1__inference_max_pooling2d_23_layer_call_fn_186218?
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
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_186212?
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
*__inference_conv2d_31_layer_call_fn_187129?
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
E__inference_conv2d_31_layer_call_and_return_conditional_losses_187120?
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
.__inference_activation_38_layer_call_fn_187139?
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
I__inference_activation_38_layer_call_and_return_conditional_losses_187134?
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
;__inference_global_average_pooling2d_7_layer_call_fn_186231?
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
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_186225?
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
(__inference_dense_7_layer_call_fn_187158?
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
C__inference_dense_7_layer_call_and_return_conditional_losses_187149?
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
.__inference_activation_39_layer_call_fn_187168?
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
I__inference_activation_39_layer_call_and_return_conditional_losses_187163?
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
$__inference_signature_wrapper_186657sequential_14_input"?
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
!__inference__wrapped_model_185946?
)*78EFSTD?A
:?7
5?2
sequential_14_input?????????  
? "=?:
8
activation_39'?$
activation_39?????????
?
I__inference_activation_35_layer_call_and_return_conditional_losses_187047h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
.__inference_activation_35_layer_call_fn_187052[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
I__inference_activation_36_layer_call_and_return_conditional_losses_187076h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_36_layer_call_fn_187081[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_37_layer_call_and_return_conditional_losses_187105j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_37_layer_call_fn_187110]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_38_layer_call_and_return_conditional_losses_187134j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_38_layer_call_fn_187139]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_39_layer_call_and_return_conditional_losses_187163X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? }
.__inference_activation_39_layer_call_fn_187168K/?,
%?"
 ?
inputs?????????

? "??????????
?
E__inference_conv2d_28_layer_call_and_return_conditional_losses_187033l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
*__inference_conv2d_28_layer_call_fn_187042_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
E__inference_conv2d_29_layer_call_and_return_conditional_losses_187062l)*7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_29_layer_call_fn_187071_)*7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_30_layer_call_and_return_conditional_losses_187091m787?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_30_layer_call_fn_187100`787?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_31_layer_call_and_return_conditional_losses_187120nEF8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_31_layer_call_fn_187129aEF8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_7_layer_call_and_return_conditional_losses_187149]ST0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_7_layer_call_fn_187158PST0?-
&?#
!?
inputs??????????
? "??????????
?
V__inference_global_average_pooling2d_7_layer_call_and_return_conditional_losses_186225?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_7_layer_call_fn_186231wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_186188?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_21_layer_call_fn_186194?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_186200?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_22_layer_call_fn_186206?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_186212?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_23_layer_call_fn_186218?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_14_layer_call_and_return_conditional_losses_186054??P?M
F?C
9?6
random_rotation_7_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
I__inference_sequential_14_layer_call_and_return_conditional_losses_186058?P?M
F?C
9?6
random_rotation_7_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
I__inference_sequential_14_layer_call_and_return_conditional_losses_187007t???<
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
I__inference_sequential_14_layer_call_and_return_conditional_losses_187011p??<
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
.__inference_sequential_14_layer_call_fn_186173x?P?M
F?C
9?6
random_rotation_7_input?????????  
p

 
? " ??????????  ?
.__inference_sequential_14_layer_call_fn_186182tP?M
F?C
9?6
random_rotation_7_input?????????  
p 

 
? " ??????????  ?
.__inference_sequential_14_layer_call_fn_187018g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
.__inference_sequential_14_layer_call_fn_187023c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186450??)*78EFSTL?I
B??
5?2
sequential_14_input?????????  
p

 
? "%?"
?
0?????????

? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186489?
)*78EFSTL?I
B??
5?2
sequential_14_input?????????  
p 

 
? "%?"
?
0?????????

? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_186804v?)*78EFST??<
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
I__inference_sequential_15_layer_call_and_return_conditional_losses_186848t
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
.__inference_sequential_15_layer_call_fn_186558v?)*78EFSTL?I
B??
5?2
sequential_14_input?????????  
p

 
? "??????????
?
.__inference_sequential_15_layer_call_fn_186622t
)*78EFSTL?I
B??
5?2
sequential_14_input?????????  
p 

 
? "??????????
?
.__inference_sequential_15_layer_call_fn_186875i?)*78EFST??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
.__inference_sequential_15_layer_call_fn_186900g
)*78EFST??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_186657?
)*78EFST[?X
? 
Q?N
L
sequential_14_input5?2
sequential_14_input?????????  "=?:
8
activation_39'?$
activation_39?????????
