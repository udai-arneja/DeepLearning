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
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
: *
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
: *
dtype0
?
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:@*
dtype0
?
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_18/kernel
~
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_18/bias
n
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes	
:?*
dtype0
?
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_19/kernel

$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_19/bias
n
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes	
:?*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	?
*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
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
Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_16/kernel/m
?
+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_16/bias/m
{
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_17/kernel/m
?
+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/m
{
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_18/kernel/m
?
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_18/bias/m
|
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_19/kernel/m
?
+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_19/bias/m
|
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	?
*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_16/kernel/v
?
+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_16/bias/v
{
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_17/kernel/v
?
+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/v
{
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_18/kernel/v
?
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_18/bias/v
|
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_19/kernel/v
?
+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_19/bias/v
|
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	?
*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?T
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?T
value?TB?T B?T
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
	layer-8

layer_with_weights-2

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer_with_weights-4
layer-15
layer-16
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
_
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
R
'	variables
(regularization_losses
)trainable_variables
*	keras_api
R
+	variables
,regularization_losses
-trainable_variables
.	keras_api
h

/kernel
0bias
1	variables
2regularization_losses
3trainable_variables
4	keras_api
R
5	variables
6regularization_losses
7trainable_variables
8	keras_api
R
9	variables
:regularization_losses
;trainable_variables
<	keras_api
R
=	variables
>regularization_losses
?trainable_variables
@	keras_api
h

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
R
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
h

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
R
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
R
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
h

]kernel
^bias
_	variables
`regularization_losses
atrainable_variables
b	keras_api
R
c	variables
dregularization_losses
etrainable_variables
f	keras_api
?
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem?m?/m?0m?Am?Bm?Om?Pm?]m?^m?v?v?/v?0v?Av?Bv?Ov?Pv?]v?^v?
F
0
1
/2
03
A4
B5
O6
P7
]8
^9
 
F
0
1
/2
03
A4
B5
O6
P7
]8
^9
?
llayer_metrics

mlayers
nlayer_regularization_losses
	variables
regularization_losses
ometrics
pnon_trainable_variables
trainable_variables
 

q_rng
r	keras_api
 
 
 
?
slayer_metrics

tlayers
ulayer_regularization_losses
	variables
regularization_losses
vmetrics
wnon_trainable_variables
trainable_variables
\Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

xlayers
ylayer_regularization_losses
	variables
 regularization_losses
!trainable_variables
zmetrics
{non_trainable_variables
|layer_metrics
 
 
 
?

}layers
~layer_regularization_losses
#	variables
$regularization_losses
%trainable_variables
metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
'	variables
(regularization_losses
)trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
+	variables
,regularization_losses
-trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01
 

/0
01
?
?layers
 ?layer_regularization_losses
1	variables
2regularization_losses
3trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
5	variables
6regularization_losses
7trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
9	variables
:regularization_losses
;trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
=	variables
>regularization_losses
?trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
?
?layers
 ?layer_regularization_losses
C	variables
Dregularization_losses
Etrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
G	variables
Hregularization_losses
Itrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
K	variables
Lregularization_losses
Mtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
\Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
 

O0
P1
?
?layers
 ?layer_regularization_losses
Q	variables
Rregularization_losses
Strainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
U	variables
Vregularization_losses
Wtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
Y	variables
Zregularization_losses
[trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

]0
^1
 

]0
^1
?
?layers
 ?layer_regularization_losses
_	variables
`regularization_losses
atrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
?
?layers
 ?layer_regularization_losses
c	variables
dregularization_losses
etrainable_variables
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
~
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
16
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
0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
VARIABLE_VALUEAdam/conv2d_16/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_16/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_sequential_8_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_8_inputconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasdense_4/kerneldense_4/bias*
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
$__inference_signature_wrapper_768686
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_769401
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasdense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_16/kernel/mAdam/conv2d_16/bias/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v*4
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
"__inference__traced_restore_769531
?
M
1__inference_max_pooling2d_13_layer_call_fn_768169

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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7681632
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
.__inference_activation_22_layer_call_fn_769195

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
I__inference_activation_22_layer_call_and_return_conditional_losses_7683842
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
?
d
H__inference_sequential_8_layer_call_and_return_conditional_losses_769042

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
e
I__inference_activation_21_layer_call_and_return_conditional_losses_768314

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
C__inference_dense_4_layer_call_and_return_conditional_losses_768443

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
-__inference_sequential_9_layer_call_fn_768939

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
H__inference_sequential_9_layer_call_and_return_conditional_losses_7686282
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
?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_769064

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
J
.__inference_activation_23_layer_call_fn_769224

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
I__inference_activation_23_layer_call_and_return_conditional_losses_7684242
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

*__inference_conv2d_17_layer_call_fn_769129

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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7682932
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_769120

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
?
-__inference_sequential_9_layer_call_fn_768914

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
H__inference_sequential_9_layer_call_and_return_conditional_losses_7685602
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
I__inference_activation_21_layer_call_and_return_conditional_losses_769134

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
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_768265

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
H__inference_sequential_8_layer_call_and_return_conditional_losses_768029
random_zoom_4_input
identityo
IdentityIdentityrandom_zoom_4_input*
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
_user_specified_namerandom_zoom_4_input
?
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_769151

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
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
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
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

*__inference_conv2d_19_layer_call_fn_769214

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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7684032
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
??
?
H__inference_sequential_8_layer_call_and_return_conditional_losses_769038

inputs;
7random_zoom_4_stateful_uniform_statefuluniform_resource
identity??.random_zoom_4/stateful_uniform/StatefulUniform`
random_zoom_4/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concatt
random_zoom_4/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_4/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
??
?
H__inference_sequential_8_layer_call_and_return_conditional_losses_768131

inputs;
7random_zoom_4_stateful_uniform_statefuluniform_resource
identity??.random_zoom_4/stateful_uniform/StatefulUniform`
random_zoom_4/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concatt
random_zoom_4/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_4/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_768340

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
I
-__inference_sequential_8_layer_call_fn_769054

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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681422
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
??
?
H__inference_sequential_8_layer_call_and_return_conditional_losses_768025
random_zoom_4_input;
7random_zoom_4_stateful_uniform_statefuluniform_resource
identity??.random_zoom_4/stateful_uniform/StatefulUniformm
random_zoom_4/ShapeShaperandom_zoom_4_input*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniformx
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShaperandom_zoom_4_input*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_zoom_4_input)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_4/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_4_input
?	
?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_768223

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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_769205

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
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_769100

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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_768403

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
?
-__inference_sequential_9_layer_call_fn_768585
sequential_8_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
H__inference_sequential_9_layer_call_and_return_conditional_losses_7685602
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
_user_specified_namesequential_8_input
?B
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768514
sequential_8_input
conv2d_16_768477
conv2d_16_768479
conv2d_17_768485
conv2d_17_768487
conv2d_18_768493
conv2d_18_768495
conv2d_19_768500
conv2d_19_768502
dense_4_768507
dense_4_768509
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
sequential_8/PartitionedCallPartitionedCallsequential_8_input*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681422
sequential_8/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall%sequential_8/PartitionedCall:output:0conv2d_16_768477conv2d_16_768479*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7682232#
!conv2d_16/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7682442
activation_20/PartitionedCall?
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7681512"
 max_pooling2d_12/PartitionedCall?
dropout_6/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7682702
dropout_6/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_17_768485conv2d_17_768487*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7682932#
!conv2d_17/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7683142
activation_21/PartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7681632"
 max_pooling2d_13/PartitionedCall?
dropout_7/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_7683402
dropout_7/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv2d_18_768493conv2d_18_768495*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7683632#
!conv2d_18/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7683842
activation_22/PartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7681752"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_768500conv2d_19_768502*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7684032#
!conv2d_19/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7684242
activation_23/PartitionedCall?
*global_average_pooling2d_4/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7681882,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_768507dense_4_768509*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7684432!
dense_4/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7684642
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_8_input
?
e
I__inference_activation_23_layer_call_and_return_conditional_losses_769219

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
W
;__inference_global_average_pooling2d_4_layer_call_fn_768194

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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7681882
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
?
c
*__inference_dropout_7_layer_call_fn_769161

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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_7683352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_769176

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
I__inference_activation_22_layer_call_and_return_conditional_losses_768384

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
?G
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768560

inputs
sequential_8_768520
conv2d_16_768523
conv2d_16_768525
conv2d_17_768531
conv2d_17_768533
conv2d_18_768539
conv2d_18_768541
conv2d_19_768546
conv2d_19_768548
dense_4_768553
dense_4_768555
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCallinputssequential_8_768520*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681312&
$sequential_8/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall-sequential_8/StatefulPartitionedCall:output:0conv2d_16_768523conv2d_16_768525*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7682232#
!conv2d_16/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7682442
activation_20/PartitionedCall?
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7681512"
 max_pooling2d_12/PartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7682652#
!dropout_6/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_17_768531conv2d_17_768533*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7682932#
!conv2d_17/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7683142
activation_21/PartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7681632"
 max_pooling2d_13/PartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_7683352#
!dropout_7/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv2d_18_768539conv2d_18_768541*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7683632#
!conv2d_18/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7683842
activation_22/PartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7681752"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_768546conv2d_19_768548*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7684032#
!conv2d_19/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7684242
activation_23/PartitionedCall?
*global_average_pooling2d_4/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7681882,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_768553dense_4_768555*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7684432!
dense_4/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7684642
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?M
?
!__inference__wrapped_model_767925
sequential_8_input9
5sequential_9_conv2d_16_conv2d_readvariableop_resource:
6sequential_9_conv2d_16_biasadd_readvariableop_resource9
5sequential_9_conv2d_17_conv2d_readvariableop_resource:
6sequential_9_conv2d_17_biasadd_readvariableop_resource9
5sequential_9_conv2d_18_conv2d_readvariableop_resource:
6sequential_9_conv2d_18_biasadd_readvariableop_resource9
5sequential_9_conv2d_19_conv2d_readvariableop_resource:
6sequential_9_conv2d_19_biasadd_readvariableop_resource7
3sequential_9_dense_4_matmul_readvariableop_resource8
4sequential_9_dense_4_biasadd_readvariableop_resource
identity??-sequential_9/conv2d_16/BiasAdd/ReadVariableOp?,sequential_9/conv2d_16/Conv2D/ReadVariableOp?-sequential_9/conv2d_17/BiasAdd/ReadVariableOp?,sequential_9/conv2d_17/Conv2D/ReadVariableOp?-sequential_9/conv2d_18/BiasAdd/ReadVariableOp?,sequential_9/conv2d_18/Conv2D/ReadVariableOp?-sequential_9/conv2d_19/BiasAdd/ReadVariableOp?,sequential_9/conv2d_19/Conv2D/ReadVariableOp?+sequential_9/dense_4/BiasAdd/ReadVariableOp?*sequential_9/dense_4/MatMul/ReadVariableOp?
,sequential_9/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_9/conv2d_16/Conv2D/ReadVariableOp?
sequential_9/conv2d_16/Conv2DConv2Dsequential_8_input4sequential_9/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
sequential_9/conv2d_16/Conv2D?
-sequential_9/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_9/conv2d_16/BiasAdd/ReadVariableOp?
sequential_9/conv2d_16/BiasAddBiasAdd&sequential_9/conv2d_16/Conv2D:output:05sequential_9/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2 
sequential_9/conv2d_16/BiasAdd?
sequential_9/activation_20/ReluRelu'sequential_9/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2!
sequential_9/activation_20/Relu?
%sequential_9/max_pooling2d_12/MaxPoolMaxPool-sequential_9/activation_20/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2'
%sequential_9/max_pooling2d_12/MaxPool?
sequential_9/dropout_6/IdentityIdentity.sequential_9/max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2!
sequential_9/dropout_6/Identity?
,sequential_9/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_9/conv2d_17/Conv2D/ReadVariableOp?
sequential_9/conv2d_17/Conv2DConv2D(sequential_9/dropout_6/Identity:output:04sequential_9/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_9/conv2d_17/Conv2D?
-sequential_9/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_9/conv2d_17/BiasAdd/ReadVariableOp?
sequential_9/conv2d_17/BiasAddBiasAdd&sequential_9/conv2d_17/Conv2D:output:05sequential_9/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
sequential_9/conv2d_17/BiasAdd?
sequential_9/activation_21/ReluRelu'sequential_9/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
sequential_9/activation_21/Relu?
%sequential_9/max_pooling2d_13/MaxPoolMaxPool-sequential_9/activation_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2'
%sequential_9/max_pooling2d_13/MaxPool?
sequential_9/dropout_7/IdentityIdentity.sequential_9/max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2!
sequential_9/dropout_7/Identity?
,sequential_9/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02.
,sequential_9/conv2d_18/Conv2D/ReadVariableOp?
sequential_9/conv2d_18/Conv2DConv2D(sequential_9/dropout_7/Identity:output:04sequential_9/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_9/conv2d_18/Conv2D?
-sequential_9/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_9/conv2d_18/BiasAdd/ReadVariableOp?
sequential_9/conv2d_18/BiasAddBiasAdd&sequential_9/conv2d_18/Conv2D:output:05sequential_9/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_9/conv2d_18/BiasAdd?
sequential_9/activation_22/ReluRelu'sequential_9/conv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
sequential_9/activation_22/Relu?
%sequential_9/max_pooling2d_14/MaxPoolMaxPool-sequential_9/activation_22/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2'
%sequential_9/max_pooling2d_14/MaxPool?
,sequential_9/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_9/conv2d_19/Conv2D/ReadVariableOp?
sequential_9/conv2d_19/Conv2DConv2D.sequential_9/max_pooling2d_14/MaxPool:output:04sequential_9/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_9/conv2d_19/Conv2D?
-sequential_9/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_9/conv2d_19/BiasAdd/ReadVariableOp?
sequential_9/conv2d_19/BiasAddBiasAdd&sequential_9/conv2d_19/Conv2D:output:05sequential_9/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_9/conv2d_19/BiasAdd?
sequential_9/activation_23/ReluRelu'sequential_9/conv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2!
sequential_9/activation_23/Relu?
>sequential_9/global_average_pooling2d_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_9/global_average_pooling2d_4/Mean/reduction_indices?
,sequential_9/global_average_pooling2d_4/MeanMean-sequential_9/activation_23/Relu:activations:0Gsequential_9/global_average_pooling2d_4/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_9/global_average_pooling2d_4/Mean?
*sequential_9/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02,
*sequential_9/dense_4/MatMul/ReadVariableOp?
sequential_9/dense_4/MatMulMatMul5sequential_9/global_average_pooling2d_4/Mean:output:02sequential_9/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_9/dense_4/MatMul?
+sequential_9/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02-
+sequential_9/dense_4/BiasAdd/ReadVariableOp?
sequential_9/dense_4/BiasAddBiasAdd%sequential_9/dense_4/MatMul:product:03sequential_9/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_9/dense_4/BiasAdd?
"sequential_9/activation_24/SoftmaxSoftmax%sequential_9/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2$
"sequential_9/activation_24/Softmax?
IdentityIdentity,sequential_9/activation_24/Softmax:softmax:0.^sequential_9/conv2d_16/BiasAdd/ReadVariableOp-^sequential_9/conv2d_16/Conv2D/ReadVariableOp.^sequential_9/conv2d_17/BiasAdd/ReadVariableOp-^sequential_9/conv2d_17/Conv2D/ReadVariableOp.^sequential_9/conv2d_18/BiasAdd/ReadVariableOp-^sequential_9/conv2d_18/Conv2D/ReadVariableOp.^sequential_9/conv2d_19/BiasAdd/ReadVariableOp-^sequential_9/conv2d_19/Conv2D/ReadVariableOp,^sequential_9/dense_4/BiasAdd/ReadVariableOp+^sequential_9/dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2^
-sequential_9/conv2d_16/BiasAdd/ReadVariableOp-sequential_9/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_16/Conv2D/ReadVariableOp,sequential_9/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_17/BiasAdd/ReadVariableOp-sequential_9/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_17/Conv2D/ReadVariableOp,sequential_9/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_18/BiasAdd/ReadVariableOp-sequential_9/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_18/Conv2D/ReadVariableOp,sequential_9/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_19/BiasAdd/ReadVariableOp-sequential_9/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_19/Conv2D/ReadVariableOp,sequential_9/conv2d_19/Conv2D/ReadVariableOp2Z
+sequential_9/dense_4/BiasAdd/ReadVariableOp+sequential_9/dense_4/BiasAdd/ReadVariableOp2X
*sequential_9/dense_4/MatMul/ReadVariableOp*sequential_9/dense_4/MatMul/ReadVariableOp:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_8_input
?
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_768270

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
֨
?
"__inference__traced_restore_769531
file_prefix%
!assignvariableop_conv2d_16_kernel%
!assignvariableop_1_conv2d_16_bias'
#assignvariableop_2_conv2d_17_kernel%
!assignvariableop_3_conv2d_17_bias'
#assignvariableop_4_conv2d_18_kernel%
!assignvariableop_5_conv2d_18_bias'
#assignvariableop_6_conv2d_19_kernel%
!assignvariableop_7_conv2d_19_bias%
!assignvariableop_8_dense_4_kernel#
assignvariableop_9_dense_4_bias!
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
+assignvariableop_20_adam_conv2d_16_kernel_m-
)assignvariableop_21_adam_conv2d_16_bias_m/
+assignvariableop_22_adam_conv2d_17_kernel_m-
)assignvariableop_23_adam_conv2d_17_bias_m/
+assignvariableop_24_adam_conv2d_18_kernel_m-
)assignvariableop_25_adam_conv2d_18_bias_m/
+assignvariableop_26_adam_conv2d_19_kernel_m-
)assignvariableop_27_adam_conv2d_19_bias_m-
)assignvariableop_28_adam_dense_4_kernel_m+
'assignvariableop_29_adam_dense_4_bias_m/
+assignvariableop_30_adam_conv2d_16_kernel_v-
)assignvariableop_31_adam_conv2d_16_bias_v/
+assignvariableop_32_adam_conv2d_17_kernel_v-
)assignvariableop_33_adam_conv2d_17_bias_v/
+assignvariableop_34_adam_conv2d_18_kernel_v-
)assignvariableop_35_adam_conv2d_18_bias_v/
+assignvariableop_36_adam_conv2d_19_kernel_v-
)assignvariableop_37_adam_conv2d_19_bias_v-
)assignvariableop_38_adam_dense_4_kernel_v+
'assignvariableop_39_adam_dense_4_bias_v
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_16_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_16_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_17_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_17_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_18_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_18_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_19_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_19_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_16_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_conv2d_16_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_17_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_conv2d_17_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_18_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_18_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_19_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_19_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_4_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_4_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_16_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_16_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_17_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_17_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_18_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_18_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_19_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_19_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_4_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_4_bias_vIdentity_39:output:0"/device:CPU:0*
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
F
*__inference_dropout_6_layer_call_fn_769110

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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7682702
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
?	
?
C__inference_dense_4_layer_call_and_return_conditional_losses_769234

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
J
.__inference_activation_24_layer_call_fn_769253

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
I__inference_activation_24_layer_call_and_return_conditional_losses_7684642
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
?	
?
-__inference_sequential_9_layer_call_fn_768651
sequential_8_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
H__inference_sequential_9_layer_call_and_return_conditional_losses_7686282
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
_user_specified_namesequential_8_input
?	
?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_768363

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
?
?
-__inference_sequential_8_layer_call_fn_768136
random_zoom_4_input
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_4_inputunknown*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681312
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
_user_specified_namerandom_zoom_4_input
?	
?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_768293

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
I__inference_activation_20_layer_call_and_return_conditional_losses_769078

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
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_768335

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
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
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
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
H__inference_sequential_8_layer_call_and_return_conditional_losses_768142

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
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_769095

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
?
h
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_768163

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
s
-__inference_sequential_8_layer_call_fn_769049

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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681312
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
I__inference_activation_22_layer_call_and_return_conditional_losses_769190

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
??
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768841

inputsH
Dsequential_8_random_zoom_4_stateful_uniform_statefuluniform_resource,
(conv2d_16_conv2d_readvariableop_resource-
)conv2d_16_biasadd_readvariableop_resource,
(conv2d_17_conv2d_readvariableop_resource-
)conv2d_17_biasadd_readvariableop_resource,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource,
(conv2d_19_conv2d_readvariableop_resource-
)conv2d_19_biasadd_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity?? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?;sequential_8/random_zoom_4/stateful_uniform/StatefulUniformz
 sequential_8/random_zoom_4/ShapeShapeinputs*
T0*
_output_shapes
:2"
 sequential_8/random_zoom_4/Shape?
.sequential_8/random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_8/random_zoom_4/strided_slice/stack?
0sequential_8/random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_8/random_zoom_4/strided_slice/stack_1?
0sequential_8/random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_8/random_zoom_4/strided_slice/stack_2?
(sequential_8/random_zoom_4/strided_sliceStridedSlice)sequential_8/random_zoom_4/Shape:output:07sequential_8/random_zoom_4/strided_slice/stack:output:09sequential_8/random_zoom_4/strided_slice/stack_1:output:09sequential_8/random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_8/random_zoom_4/strided_slice?
0sequential_8/random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_8/random_zoom_4/strided_slice_1/stack?
2sequential_8/random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_8/random_zoom_4/strided_slice_1/stack_1?
2sequential_8/random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_8/random_zoom_4/strided_slice_1/stack_2?
*sequential_8/random_zoom_4/strided_slice_1StridedSlice)sequential_8/random_zoom_4/Shape:output:09sequential_8/random_zoom_4/strided_slice_1/stack:output:0;sequential_8/random_zoom_4/strided_slice_1/stack_1:output:0;sequential_8/random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_8/random_zoom_4/strided_slice_1?
sequential_8/random_zoom_4/CastCast3sequential_8/random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_8/random_zoom_4/Cast?
0sequential_8/random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_8/random_zoom_4/strided_slice_2/stack?
2sequential_8/random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_8/random_zoom_4/strided_slice_2/stack_1?
2sequential_8/random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_8/random_zoom_4/strided_slice_2/stack_2?
*sequential_8/random_zoom_4/strided_slice_2StridedSlice)sequential_8/random_zoom_4/Shape:output:09sequential_8/random_zoom_4/strided_slice_2/stack:output:0;sequential_8/random_zoom_4/strided_slice_2/stack_1:output:0;sequential_8/random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_8/random_zoom_4/strided_slice_2?
!sequential_8/random_zoom_4/Cast_1Cast3sequential_8/random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_8/random_zoom_4/Cast_1?
3sequential_8/random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_8/random_zoom_4/stateful_uniform/shape/1?
1sequential_8/random_zoom_4/stateful_uniform/shapePack1sequential_8/random_zoom_4/strided_slice:output:0<sequential_8/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_8/random_zoom_4/stateful_uniform/shape?
/sequential_8/random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_8/random_zoom_4/stateful_uniform/min?
/sequential_8/random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_8/random_zoom_4/stateful_uniform/max?
Esequential_8/random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2G
Esequential_8/random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
;sequential_8/random_zoom_4/stateful_uniform/StatefulUniformStatefulUniformDsequential_8_random_zoom_4_stateful_uniform_statefuluniform_resourceNsequential_8/random_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0:sequential_8/random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02=
;sequential_8/random_zoom_4/stateful_uniform/StatefulUniform?
/sequential_8/random_zoom_4/stateful_uniform/subSub8sequential_8/random_zoom_4/stateful_uniform/max:output:08sequential_8/random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 21
/sequential_8/random_zoom_4/stateful_uniform/sub?
/sequential_8/random_zoom_4/stateful_uniform/mulMulDsequential_8/random_zoom_4/stateful_uniform/StatefulUniform:output:03sequential_8/random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????21
/sequential_8/random_zoom_4/stateful_uniform/mul?
+sequential_8/random_zoom_4/stateful_uniformAdd3sequential_8/random_zoom_4/stateful_uniform/mul:z:08sequential_8/random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2-
+sequential_8/random_zoom_4/stateful_uniform?
&sequential_8/random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_8/random_zoom_4/concat/axis?
!sequential_8/random_zoom_4/concatConcatV2/sequential_8/random_zoom_4/stateful_uniform:z:0/sequential_8/random_zoom_4/stateful_uniform:z:0/sequential_8/random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!sequential_8/random_zoom_4/concat?
,sequential_8/random_zoom_4/zoom_matrix/ShapeShape*sequential_8/random_zoom_4/concat:output:0*
T0*
_output_shapes
:2.
,sequential_8/random_zoom_4/zoom_matrix/Shape?
:sequential_8/random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_8/random_zoom_4/zoom_matrix/strided_slice/stack?
<sequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_1?
<sequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_2?
4sequential_8/random_zoom_4/zoom_matrix/strided_sliceStridedSlice5sequential_8/random_zoom_4/zoom_matrix/Shape:output:0Csequential_8/random_zoom_4/zoom_matrix/strided_slice/stack:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_1:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential_8/random_zoom_4/zoom_matrix/strided_slice?
,sequential_8/random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_8/random_zoom_4/zoom_matrix/sub/y?
*sequential_8/random_zoom_4/zoom_matrix/subSub%sequential_8/random_zoom_4/Cast_1:y:05sequential_8/random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2,
*sequential_8/random_zoom_4/zoom_matrix/sub?
0sequential_8/random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_8/random_zoom_4/zoom_matrix/truediv/y?
.sequential_8/random_zoom_4/zoom_matrix/truedivRealDiv.sequential_8/random_zoom_4/zoom_matrix/sub:z:09sequential_8/random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 20
.sequential_8/random_zoom_4/zoom_matrix/truediv?
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_1StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_1?
.sequential_8/random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_8/random_zoom_4/zoom_matrix/sub_1/x?
,sequential_8/random_zoom_4/zoom_matrix/sub_1Sub7sequential_8/random_zoom_4/zoom_matrix/sub_1/x:output:0?sequential_8/random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_8/random_zoom_4/zoom_matrix/sub_1?
*sequential_8/random_zoom_4/zoom_matrix/mulMul2sequential_8/random_zoom_4/zoom_matrix/truediv:z:00sequential_8/random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2,
*sequential_8/random_zoom_4/zoom_matrix/mul?
.sequential_8/random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_8/random_zoom_4/zoom_matrix/sub_2/y?
,sequential_8/random_zoom_4/zoom_matrix/sub_2Sub#sequential_8/random_zoom_4/Cast:y:07sequential_8/random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2.
,sequential_8/random_zoom_4/zoom_matrix/sub_2?
2sequential_8/random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @24
2sequential_8/random_zoom_4/zoom_matrix/truediv_1/y?
0sequential_8/random_zoom_4/zoom_matrix/truediv_1RealDiv0sequential_8/random_zoom_4/zoom_matrix/sub_2:z:0;sequential_8/random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 22
0sequential_8/random_zoom_4/zoom_matrix/truediv_1?
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_2StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_2?
.sequential_8/random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_8/random_zoom_4/zoom_matrix/sub_3/x?
,sequential_8/random_zoom_4/zoom_matrix/sub_3Sub7sequential_8/random_zoom_4/zoom_matrix/sub_3/x:output:0?sequential_8/random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_8/random_zoom_4/zoom_matrix/sub_3?
,sequential_8/random_zoom_4/zoom_matrix/mul_1Mul4sequential_8/random_zoom_4/zoom_matrix/truediv_1:z:00sequential_8/random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2.
,sequential_8/random_zoom_4/zoom_matrix/mul_1?
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_3StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_3?
2sequential_8/random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_8/random_zoom_4/zoom_matrix/zeros/mul/y?
0sequential_8/random_zoom_4/zoom_matrix/zeros/mulMul=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0;sequential_8/random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_8/random_zoom_4/zoom_matrix/zeros/mul?
3sequential_8/random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3sequential_8/random_zoom_4/zoom_matrix/zeros/Less/y?
1sequential_8/random_zoom_4/zoom_matrix/zeros/LessLess4sequential_8/random_zoom_4/zoom_matrix/zeros/mul:z:0<sequential_8/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_8/random_zoom_4/zoom_matrix/zeros/Less?
5sequential_8/random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_8/random_zoom_4/zoom_matrix/zeros/packed/1?
3sequential_8/random_zoom_4/zoom_matrix/zeros/packedPack=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0>sequential_8/random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_8/random_zoom_4/zoom_matrix/zeros/packed?
2sequential_8/random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_8/random_zoom_4/zoom_matrix/zeros/Const?
,sequential_8/random_zoom_4/zoom_matrix/zerosFill<sequential_8/random_zoom_4/zoom_matrix/zeros/packed:output:0;sequential_8/random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_8/random_zoom_4/zoom_matrix/zeros?
4sequential_8/random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_8/random_zoom_4/zoom_matrix/zeros_1/mul/y?
2sequential_8/random_zoom_4/zoom_matrix/zeros_1/mulMul=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0=sequential_8/random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_8/random_zoom_4/zoom_matrix/zeros_1/mul?
5sequential_8/random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_8/random_zoom_4/zoom_matrix/zeros_1/Less/y?
3sequential_8/random_zoom_4/zoom_matrix/zeros_1/LessLess6sequential_8/random_zoom_4/zoom_matrix/zeros_1/mul:z:0>sequential_8/random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_8/random_zoom_4/zoom_matrix/zeros_1/Less?
7sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed/1?
5sequential_8/random_zoom_4/zoom_matrix/zeros_1/packedPack=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0@sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed?
4sequential_8/random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_8/random_zoom_4/zoom_matrix/zeros_1/Const?
.sequential_8/random_zoom_4/zoom_matrix/zeros_1Fill>sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed:output:0=sequential_8/random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_8/random_zoom_4/zoom_matrix/zeros_1?
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_4StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_4?
4sequential_8/random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_8/random_zoom_4/zoom_matrix/zeros_2/mul/y?
2sequential_8/random_zoom_4/zoom_matrix/zeros_2/mulMul=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0=sequential_8/random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_8/random_zoom_4/zoom_matrix/zeros_2/mul?
5sequential_8/random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_8/random_zoom_4/zoom_matrix/zeros_2/Less/y?
3sequential_8/random_zoom_4/zoom_matrix/zeros_2/LessLess6sequential_8/random_zoom_4/zoom_matrix/zeros_2/mul:z:0>sequential_8/random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_8/random_zoom_4/zoom_matrix/zeros_2/Less?
7sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed/1?
5sequential_8/random_zoom_4/zoom_matrix/zeros_2/packedPack=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0@sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed?
4sequential_8/random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_8/random_zoom_4/zoom_matrix/zeros_2/Const?
.sequential_8/random_zoom_4/zoom_matrix/zeros_2Fill>sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed:output:0=sequential_8/random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_8/random_zoom_4/zoom_matrix/zeros_2?
2sequential_8/random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_8/random_zoom_4/zoom_matrix/concat/axis?
-sequential_8/random_zoom_4/zoom_matrix/concatConcatV2?sequential_8/random_zoom_4/zoom_matrix/strided_slice_3:output:05sequential_8/random_zoom_4/zoom_matrix/zeros:output:0.sequential_8/random_zoom_4/zoom_matrix/mul:z:07sequential_8/random_zoom_4/zoom_matrix/zeros_1:output:0?sequential_8/random_zoom_4/zoom_matrix/strided_slice_4:output:00sequential_8/random_zoom_4/zoom_matrix/mul_1:z:07sequential_8/random_zoom_4/zoom_matrix/zeros_2:output:0;sequential_8/random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2/
-sequential_8/random_zoom_4/zoom_matrix/concat?
*sequential_8/random_zoom_4/transform/ShapeShapeinputs*
T0*
_output_shapes
:2,
*sequential_8/random_zoom_4/transform/Shape?
8sequential_8/random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_8/random_zoom_4/transform/strided_slice/stack?
:sequential_8/random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_8/random_zoom_4/transform/strided_slice/stack_1?
:sequential_8/random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_8/random_zoom_4/transform/strided_slice/stack_2?
2sequential_8/random_zoom_4/transform/strided_sliceStridedSlice3sequential_8/random_zoom_4/transform/Shape:output:0Asequential_8/random_zoom_4/transform/strided_slice/stack:output:0Csequential_8/random_zoom_4/transform/strided_slice/stack_1:output:0Csequential_8/random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:24
2sequential_8/random_zoom_4/transform/strided_slice?
/sequential_8/random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_8/random_zoom_4/transform/fill_value?
?sequential_8/random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs6sequential_8/random_zoom_4/zoom_matrix/concat:output:0;sequential_8/random_zoom_4/transform/strided_slice:output:08sequential_8/random_zoom_4/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2A
?sequential_8/random_zoom_4/transform/ImageProjectiveTransformV3?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2DTsequential_8/random_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_16/BiasAdd?
activation_20/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_20/Relu?
max_pooling2d_12/MaxPoolMaxPool activation_20/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_12/MaxPoolw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_6/dropout/Const?
dropout_6/dropout/MulMul!max_pooling2d_12/MaxPool:output:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_6/dropout/Mul?
dropout_6/dropout/ShapeShape!max_pooling2d_12/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_6/dropout/Mul_1?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2Ddropout_6/dropout/Mul_1:z:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_17/BiasAdd?
activation_21/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_21/Relu?
max_pooling2d_13/MaxPoolMaxPool activation_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_13/MaxPoolw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_7/dropout/Const?
dropout_7/dropout/MulMul!max_pooling2d_13/MaxPool:output:0 dropout_7/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_7/dropout/Mul?
dropout_7/dropout/ShapeShape!max_pooling2d_13/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_7/dropout/Mul_1?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2Ddropout_7/dropout/Mul_1:z:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_18/BiasAdd?
activation_22/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_22/Relu?
max_pooling2d_14/MaxPoolMaxPool activation_22/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_14/MaxPool?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_19/Conv2D/ReadVariableOp?
conv2d_19/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_19/Conv2D?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_19/BiasAdd?
activation_23/ReluReluconv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_23/Relu?
1global_average_pooling2d_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_4/Mean/reduction_indices?
global_average_pooling2d_4/MeanMean activation_23/Relu:activations:0:global_average_pooling2d_4/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_4/Mean?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMul(global_average_pooling2d_4/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/BiasAdd?
activation_24/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_24/Softmax?
IdentityIdentityactivation_24/Softmax:softmax:0!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp<^sequential_8/random_zoom_4/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2z
;sequential_8/random_zoom_4/stateful_uniform/StatefulUniform;sequential_8/random_zoom_4/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

*__inference_conv2d_18_layer_call_fn_769185

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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7683632
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
?

*__inference_conv2d_16_layer_call_fn_769073

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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7682232
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
V
-__inference_sequential_8_layer_call_fn_768145
random_zoom_4_input
identity?
PartitionedCallPartitionedCallrandom_zoom_4_input*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681422
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
_user_specified_namerandom_zoom_4_input
?
?
$__inference_signature_wrapper_768686
sequential_8_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_7679252
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
_user_specified_namesequential_8_input
?
e
I__inference_activation_23_layer_call_and_return_conditional_losses_768424

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
?
h
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_768175

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
c
*__inference_dropout_6_layer_call_fn_769105

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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7682652
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
?
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_769156

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_20_layer_call_and_return_conditional_losses_768244

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
M
1__inference_max_pooling2d_12_layer_call_fn_768157

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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7681512
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
?G
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768473
sequential_8_input
sequential_8_768210
conv2d_16_768234
conv2d_16_768236
conv2d_17_768304
conv2d_17_768306
conv2d_18_768374
conv2d_18_768376
conv2d_19_768414
conv2d_19_768416
dense_4_768454
dense_4_768456
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputsequential_8_768210*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681312&
$sequential_8/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall-sequential_8/StatefulPartitionedCall:output:0conv2d_16_768234conv2d_16_768236*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7682232#
!conv2d_16/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7682442
activation_20/PartitionedCall?
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7681512"
 max_pooling2d_12/PartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7682652#
!dropout_6/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_17_768304conv2d_17_768306*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7682932#
!conv2d_17/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7683142
activation_21/PartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7681632"
 max_pooling2d_13/PartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_7683352#
!dropout_7/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv2d_18_768374conv2d_18_768376*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7683632#
!conv2d_18/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7683842
activation_22/PartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7681752"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_768414conv2d_19_768416*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7684032#
!conv2d_19/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7684242
activation_23/PartitionedCall?
*global_average_pooling2d_4/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7681882,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_768454dense_4_768456*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7684432!
dense_4/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7684642
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_8_input
?
e
I__inference_activation_24_layer_call_and_return_conditional_losses_769248

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
M
1__inference_max_pooling2d_14_layer_call_fn_768181

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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7681752
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
?
e
I__inference_activation_24_layer_call_and_return_conditional_losses_768464

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
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768887

inputs,
(conv2d_16_conv2d_readvariableop_resource-
)conv2d_16_biasadd_readvariableop_resource,
(conv2d_17_conv2d_readvariableop_resource-
)conv2d_17_biasadd_readvariableop_resource,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource,
(conv2d_19_conv2d_readvariableop_resource-
)conv2d_19_biasadd_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity?? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2Dinputs'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_16/BiasAdd?
activation_20/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_20/Relu?
max_pooling2d_12/MaxPoolMaxPool activation_20/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_12/MaxPool?
dropout_6/IdentityIdentity!max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2
dropout_6/Identity?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2Ddropout_6/Identity:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_17/BiasAdd?
activation_21/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_21/Relu?
max_pooling2d_13/MaxPoolMaxPool activation_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_13/MaxPool?
dropout_7/IdentityIdentity!max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_7/Identity?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2Ddropout_7/Identity:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_18/BiasAdd?
activation_22/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_22/Relu?
max_pooling2d_14/MaxPoolMaxPool activation_22/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_14/MaxPool?
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_19/Conv2D/ReadVariableOp?
conv2d_19/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_19/Conv2D?
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp?
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_19/BiasAdd?
activation_23/ReluReluconv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_23/Relu?
1global_average_pooling2d_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_4/Mean/reduction_indices?
global_average_pooling2d_4/MeanMean activation_23/Relu:activations:0:global_average_pooling2d_4/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_4/Mean?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMul(global_average_pooling2d_4/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/BiasAdd?
activation_24/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_24/Softmax?
IdentityIdentityactivation_24/Softmax:softmax:0!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_768151

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
}
(__inference_dense_4_layer_call_fn_769243

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
C__inference_dense_4_layer_call_and_return_conditional_losses_7684432
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
J
.__inference_activation_21_layer_call_fn_769139

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
I__inference_activation_21_layer_call_and_return_conditional_losses_7683142
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
F
*__inference_dropout_7_layer_call_fn_769166

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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_7683402
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?U
?
__inference__traced_save_769401
file_prefix/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
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
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?B
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768628

inputs
conv2d_16_768591
conv2d_16_768593
conv2d_17_768599
conv2d_17_768601
conv2d_18_768607
conv2d_18_768609
conv2d_19_768614
conv2d_19_768616
dense_4_768621
dense_4_768623
identity??!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
sequential_8/PartitionedCallPartitionedCallinputs*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7681422
sequential_8/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall%sequential_8/PartitionedCall:output:0conv2d_16_768591conv2d_16_768593*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7682232#
!conv2d_16/StatefulPartitionedCall?
activation_20/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7682442
activation_20/PartitionedCall?
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_20/PartitionedCall:output:0*
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7681512"
 max_pooling2d_12/PartitionedCall?
dropout_6/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7682702
dropout_6/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_17_768599conv2d_17_768601*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7682932#
!conv2d_17/StatefulPartitionedCall?
activation_21/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7683142
activation_21/PartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_21/PartitionedCall:output:0*
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7681632"
 max_pooling2d_13/PartitionedCall?
dropout_7/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_7683402
dropout_7/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv2d_18_768607conv2d_18_768609*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7683632#
!conv2d_18/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7683842
activation_22/PartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_22/PartitionedCall:output:0*
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7681752"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_768614conv2d_19_768616*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7684032#
!conv2d_19/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7684242
activation_23/PartitionedCall?
*global_average_pooling2d_4/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7681882,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_768621dense_4_768623*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7684432!
dense_4/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7684642
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
J
.__inference_activation_20_layer_call_fn_769083

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
I__inference_activation_20_layer_call_and_return_conditional_losses_7682442
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
?
r
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_768188

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
sequential_8_inputC
$serving_default_sequential_8_input:0?????????  A
activation_240
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?f
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
	layer-8

layer_with_weights-2

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer_with_weights-4
layer-15
layer-16
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?b
_tf_keras_sequential?a{"class_name": "Sequential", "name": "sequential_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_8_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_8_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#	variables
$regularization_losses
%trainable_variables
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
'	variables
(regularization_losses
)trainable_variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
+	variables
,regularization_losses
-trainable_variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

/kernel
0bias
1	variables
2regularization_losses
3trainable_variables
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

]kernel
^bias
_	variables
`regularization_losses
atrainable_variables
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
c	variables
dregularization_losses
etrainable_variables
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem?m?/m?0m?Am?Bm?Om?Pm?]m?^m?v?v?/v?0v?Av?Bv?Ov?Pv?]v?^v?"
	optimizer
f
0
1
/2
03
A4
B5
O6
P7
]8
^9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
/2
03
A4
B5
O6
P7
]8
^9"
trackable_list_wrapper
?
llayer_metrics

mlayers
nlayer_regularization_losses
	variables
regularization_losses
ometrics
pnon_trainable_variables
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
q_rng
r	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
slayer_metrics

tlayers
ulayer_regularization_losses
	variables
regularization_losses
vmetrics
wnon_trainable_variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_16/kernel
: 2conv2d_16/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

xlayers
ylayer_regularization_losses
	variables
 regularization_losses
!trainable_variables
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
#	variables
$regularization_losses
%trainable_variables
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
'	variables
(regularization_losses
)trainable_variables
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
+	variables
,regularization_losses
-trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_17/kernel
:@2conv2d_17/bias
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
1	variables
2regularization_losses
3trainable_variables
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
5	variables
6regularization_losses
7trainable_variables
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
9	variables
:regularization_losses
;trainable_variables
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
=	variables
>regularization_losses
?trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_18/kernel
:?2conv2d_18/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
C	variables
Dregularization_losses
Etrainable_variables
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
G	variables
Hregularization_losses
Itrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
K	variables
Lregularization_losses
Mtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_19/kernel
:?2conv2d_19/bias
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
Q	variables
Rregularization_losses
Strainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
U	variables
Vregularization_losses
Wtrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
Y	variables
Zregularization_losses
[trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_4/kernel
:
2dense_4/bias
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
_	variables
`regularization_losses
atrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
c	variables
dregularization_losses
etrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
?__call__
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
15
16"
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
0"
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
/:- 2Adam/conv2d_16/kernel/m
!: 2Adam/conv2d_16/bias/m
/:- @2Adam/conv2d_17/kernel/m
!:@2Adam/conv2d_17/bias/m
0:.@?2Adam/conv2d_18/kernel/m
": ?2Adam/conv2d_18/bias/m
1:/??2Adam/conv2d_19/kernel/m
": ?2Adam/conv2d_19/bias/m
&:$	?
2Adam/dense_4/kernel/m
:
2Adam/dense_4/bias/m
/:- 2Adam/conv2d_16/kernel/v
!: 2Adam/conv2d_16/bias/v
/:- @2Adam/conv2d_17/kernel/v
!:@2Adam/conv2d_17/bias/v
0:.@?2Adam/conv2d_18/kernel/v
": ?2Adam/conv2d_18/bias/v
1:/??2Adam/conv2d_19/kernel/v
": ?2Adam/conv2d_19/bias/v
&:$	?
2Adam/dense_4/kernel/v
:
2Adam/dense_4/bias/v
?2?
-__inference_sequential_9_layer_call_fn_768914
-__inference_sequential_9_layer_call_fn_768651
-__inference_sequential_9_layer_call_fn_768585
-__inference_sequential_9_layer_call_fn_768939?
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
!__inference__wrapped_model_767925?
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
sequential_8_input?????????  
?2?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768514
H__inference_sequential_9_layer_call_and_return_conditional_losses_768841
H__inference_sequential_9_layer_call_and_return_conditional_losses_768473
H__inference_sequential_9_layer_call_and_return_conditional_losses_768887?
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
-__inference_sequential_8_layer_call_fn_769054
-__inference_sequential_8_layer_call_fn_768136
-__inference_sequential_8_layer_call_fn_769049
-__inference_sequential_8_layer_call_fn_768145?
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_769042
H__inference_sequential_8_layer_call_and_return_conditional_losses_769038
H__inference_sequential_8_layer_call_and_return_conditional_losses_768025
H__inference_sequential_8_layer_call_and_return_conditional_losses_768029?
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
*__inference_conv2d_16_layer_call_fn_769073?
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_769064?
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
.__inference_activation_20_layer_call_fn_769083?
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
I__inference_activation_20_layer_call_and_return_conditional_losses_769078?
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
1__inference_max_pooling2d_12_layer_call_fn_768157?
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_768151?
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
*__inference_dropout_6_layer_call_fn_769105
*__inference_dropout_6_layer_call_fn_769110?
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_769100
E__inference_dropout_6_layer_call_and_return_conditional_losses_769095?
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
*__inference_conv2d_17_layer_call_fn_769129?
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_769120?
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
.__inference_activation_21_layer_call_fn_769139?
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
I__inference_activation_21_layer_call_and_return_conditional_losses_769134?
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
1__inference_max_pooling2d_13_layer_call_fn_768169?
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_768163?
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
*__inference_dropout_7_layer_call_fn_769161
*__inference_dropout_7_layer_call_fn_769166?
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
E__inference_dropout_7_layer_call_and_return_conditional_losses_769151
E__inference_dropout_7_layer_call_and_return_conditional_losses_769156?
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
*__inference_conv2d_18_layer_call_fn_769185?
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_769176?
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
.__inference_activation_22_layer_call_fn_769195?
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
I__inference_activation_22_layer_call_and_return_conditional_losses_769190?
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
1__inference_max_pooling2d_14_layer_call_fn_768181?
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_768175?
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
*__inference_conv2d_19_layer_call_fn_769214?
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_769205?
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
.__inference_activation_23_layer_call_fn_769224?
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
I__inference_activation_23_layer_call_and_return_conditional_losses_769219?
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
;__inference_global_average_pooling2d_4_layer_call_fn_768194?
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_768188?
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
(__inference_dense_4_layer_call_fn_769243?
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
C__inference_dense_4_layer_call_and_return_conditional_losses_769234?
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
.__inference_activation_24_layer_call_fn_769253?
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
I__inference_activation_24_layer_call_and_return_conditional_losses_769248?
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
$__inference_signature_wrapper_768686sequential_8_input"?
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
!__inference__wrapped_model_767925?
/0ABOP]^C?@
9?6
4?1
sequential_8_input?????????  
? "=?:
8
activation_24'?$
activation_24?????????
?
I__inference_activation_20_layer_call_and_return_conditional_losses_769078h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
.__inference_activation_20_layer_call_fn_769083[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
I__inference_activation_21_layer_call_and_return_conditional_losses_769134h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_21_layer_call_fn_769139[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_22_layer_call_and_return_conditional_losses_769190j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_22_layer_call_fn_769195]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_23_layer_call_and_return_conditional_losses_769219j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_23_layer_call_fn_769224]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_24_layer_call_and_return_conditional_losses_769248X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? }
.__inference_activation_24_layer_call_fn_769253K/?,
%?"
 ?
inputs?????????

? "??????????
?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_769064l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
*__inference_conv2d_16_layer_call_fn_769073_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_769120l/07?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_17_layer_call_fn_769129_/07?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_769176mAB7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_18_layer_call_fn_769185`AB7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_19_layer_call_and_return_conditional_losses_769205nOP8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_19_layer_call_fn_769214aOP8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_4_layer_call_and_return_conditional_losses_769234]]^0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_4_layer_call_fn_769243P]^0?-
&?#
!?
inputs??????????
? "??????????
?
E__inference_dropout_6_layer_call_and_return_conditional_losses_769095l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
E__inference_dropout_6_layer_call_and_return_conditional_losses_769100l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
*__inference_dropout_6_layer_call_fn_769105_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
*__inference_dropout_6_layer_call_fn_769110_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
E__inference_dropout_7_layer_call_and_return_conditional_losses_769151l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
E__inference_dropout_7_layer_call_and_return_conditional_losses_769156l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
*__inference_dropout_7_layer_call_fn_769161_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
*__inference_dropout_7_layer_call_fn_769166_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_768188?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_4_layer_call_fn_768194wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_768151?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_12_layer_call_fn_768157?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_768163?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_13_layer_call_fn_768169?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_768175?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_14_layer_call_fn_768181?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_8_layer_call_and_return_conditional_losses_768025??L?I
B??
5?2
random_zoom_4_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_8_layer_call_and_return_conditional_losses_768029}L?I
B??
5?2
random_zoom_4_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
H__inference_sequential_8_layer_call_and_return_conditional_losses_769038t???<
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_769042p??<
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
-__inference_sequential_8_layer_call_fn_768136t?L?I
B??
5?2
random_zoom_4_input?????????  
p

 
? " ??????????  ?
-__inference_sequential_8_layer_call_fn_768145pL?I
B??
5?2
random_zoom_4_input?????????  
p 

 
? " ??????????  ?
-__inference_sequential_8_layer_call_fn_769049g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
-__inference_sequential_8_layer_call_fn_769054c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768473??/0ABOP]^K?H
A?>
4?1
sequential_8_input?????????  
p

 
? "%?"
?
0?????????

? ?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768514?
/0ABOP]^K?H
A?>
4?1
sequential_8_input?????????  
p 

 
? "%?"
?
0?????????

? ?
H__inference_sequential_9_layer_call_and_return_conditional_losses_768841v?/0ABOP]^??<
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
H__inference_sequential_9_layer_call_and_return_conditional_losses_768887t
/0ABOP]^??<
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
-__inference_sequential_9_layer_call_fn_768585u?/0ABOP]^K?H
A?>
4?1
sequential_8_input?????????  
p

 
? "??????????
?
-__inference_sequential_9_layer_call_fn_768651s
/0ABOP]^K?H
A?>
4?1
sequential_8_input?????????  
p 

 
? "??????????
?
-__inference_sequential_9_layer_call_fn_768914i?/0ABOP]^??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
-__inference_sequential_9_layer_call_fn_768939g
/0ABOP]^??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_768686?
/0ABOP]^Y?V
? 
O?L
J
sequential_8_input4?1
sequential_8_input?????????  "=?:
8
activation_24'?$
activation_24?????????
