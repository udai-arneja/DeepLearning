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
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
: *
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
: *
dtype0
?
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
?
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_22/kernel
~
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_22/bias
n
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes	
:?*
dtype0
?
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_23/kernel

$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_23/bias
n
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes	
:?*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	?
*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
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
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/m
?
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/m
?
+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/m
{
)Adam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_22/kernel/m
?
+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_22/bias/m
|
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_23/kernel/m
?
+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_23/bias/m
|
)Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_5/kernel/m
?
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	?
*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/v
?
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/v
?
+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/v
{
)Adam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_22/kernel/v
?
+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_22/bias/v
|
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_23/kernel/v
?
+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_23/bias/v
|
)Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_5/kernel/v
?
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	?
*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
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
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8
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
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
R
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
h

=kernel
>bias
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
R
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
klearning_ratem?m?+m?,m?=m?>m?Om?Pm?]m?^m?v?v?+v?,v?=v?>v?Ov?Pv?]v?^v?
F
0
1
+2
,3
=4
>5
O6
P7
]8
^9
 
F
0
1
+2
,3
=4
>5
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
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
?
?layers
 ?layer_regularization_losses
-	variables
.regularization_losses
/trainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
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
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1
 

=0
>1
?
?layers
 ?layer_regularization_losses
?	variables
@regularization_losses
Atrainable_variables
?metrics
?non_trainable_variables
?layer_metrics
 
 
 
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
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_23/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_23/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
#serving_default_sequential_10_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_10_inputconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_5/kerneldense_5/bias*
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
$__inference_signature_wrapper_922665
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp)Adam/conv2d_21/bias/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp)Adam/conv2d_22/bias/m/Read/ReadVariableOp+Adam/conv2d_23/kernel/m/Read/ReadVariableOp)Adam/conv2d_23/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp)Adam/conv2d_21/bias/v/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp)Adam/conv2d_22/bias/v/Read/ReadVariableOp+Adam/conv2d_23/kernel/v/Read/ReadVariableOp)Adam/conv2d_23/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_923380
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/mAdam/conv2d_22/kernel/mAdam/conv2d_22/bias/mAdam/conv2d_23/kernel/mAdam/conv2d_23/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/vAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/vAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*4
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
"__inference__traced_restore_923510??

?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923017

inputs;
7random_zoom_5_stateful_uniform_statefuluniform_resource
identity??.random_zoom_5/stateful_uniform/StatefulUniform`
random_zoom_5/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/Shape?
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stack?
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1?
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2?
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice?
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stack?
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1?
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2?
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1?
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast?
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stack?
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1?
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2?
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2?
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1?
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1?
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shape?
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_5/stateful_uniform/min?
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_5/stateful_uniform/max?
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_5/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_5/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_5_stateful_uniform_statefuluniform_resourceArandom_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_5/stateful_uniform/StatefulUniform?
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/sub?
"random_zoom_5/stateful_uniform/mulMul7random_zoom_5/stateful_uniform/StatefulUniform:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_5/stateful_uniform/mul?
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axis?
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_5/concat?
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape?
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stack?
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1?
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2?
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_slice?
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_5/zoom_matrix/sub/y?
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/sub?
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y?
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truediv?
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stack?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1?
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_1/x?
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_1?
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_5/zoom_matrix/mul?
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_2/y?
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2?
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/y?
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1?
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stack?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2?
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_3/x?
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_3?
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/mul_1?
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stack?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3?
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y?
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mul?
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_5/zoom_matrix/zeros/Less/y?
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/Less?
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1?
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packed?
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/Const?
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/zeros?
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/y?
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mul?
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y?
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/Less?
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1?
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packed?
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Const?
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_1?
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stack?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4?
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/y?
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mul?
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y?
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/Less?
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1?
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packed?
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Const?
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_2?
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axis?
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_5/zoom_matrix/concatt
random_zoom_5/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape?
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack?
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1?
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2?
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_slice?
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_value?
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_5/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_5/stateful_uniform/StatefulUniform.random_zoom_5/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
J
.__inference_activation_25_layer_call_fn_923062

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
I__inference_activation_25_layer_call_and_return_conditional_losses_9222232
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
c
*__inference_dropout_8_layer_call_fn_923113

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
E__inference_dropout_8_layer_call_and_return_conditional_losses_9222842
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
?

*__inference_conv2d_23_layer_call_fn_923193

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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9223822
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
?B
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922493
sequential_10_input
conv2d_20_922456
conv2d_20_922458
conv2d_21_922463
conv2d_21_922465
conv2d_22_922471
conv2d_22_922473
conv2d_23_922479
conv2d_23_922481
dense_5_922486
dense_5_922488
identity??!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
sequential_10/PartitionedCallPartitionedCallsequential_10_input*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221212
sequential_10/PartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&sequential_10/PartitionedCall:output:0conv2d_20_922456conv2d_20_922458*
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
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9222022#
!conv2d_20/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
I__inference_activation_25_layer_call_and_return_conditional_losses_9222232
activation_25/PartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9221302"
 max_pooling2d_15/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_922463conv2d_21_922465*
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
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9222422#
!conv2d_21/StatefulPartitionedCall?
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
I__inference_activation_26_layer_call_and_return_conditional_losses_9222632
activation_26/PartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
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
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9221422"
 max_pooling2d_16/PartitionedCall?
dropout_8/PartitionedCallPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
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
E__inference_dropout_8_layer_call_and_return_conditional_losses_9222892
dropout_8/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv2d_22_922471conv2d_22_922473*
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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9223122#
!conv2d_22/StatefulPartitionedCall?
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
I__inference_activation_27_layer_call_and_return_conditional_losses_9223332
activation_27/PartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
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
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9221542"
 max_pooling2d_17/PartitionedCall?
dropout_9/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
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
E__inference_dropout_9_layer_call_and_return_conditional_losses_9223592
dropout_9/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_23_922479conv2d_23_922481*
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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9223822#
!conv2d_23/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
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
I__inference_activation_28_layer_call_and_return_conditional_losses_9224032
activation_28/PartitionedCall?
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9221672,
*global_average_pooling2d_5/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_922486dense_5_922488*
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
C__inference_dense_5_layer_call_and_return_conditional_losses_9224222!
dense_5/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
I__inference_activation_29_layer_call_and_return_conditional_losses_9224432
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_10_input
?
M
1__inference_max_pooling2d_15_layer_call_fn_922136

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
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9221302
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
C__inference_dense_5_layer_call_and_return_conditional_losses_923213

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
?
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_923164

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
??
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_922004
random_zoom_5_input;
7random_zoom_5_stateful_uniform_statefuluniform_resource
identity??.random_zoom_5/stateful_uniform/StatefulUniformm
random_zoom_5/ShapeShaperandom_zoom_5_input*
T0*
_output_shapes
:2
random_zoom_5/Shape?
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stack?
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1?
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2?
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice?
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stack?
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1?
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2?
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1?
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast?
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stack?
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1?
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2?
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2?
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1?
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1?
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shape?
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_5/stateful_uniform/min?
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_5/stateful_uniform/max?
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_5/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_5/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_5_stateful_uniform_statefuluniform_resourceArandom_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_5/stateful_uniform/StatefulUniform?
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/sub?
"random_zoom_5/stateful_uniform/mulMul7random_zoom_5/stateful_uniform/StatefulUniform:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_5/stateful_uniform/mul?
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axis?
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_5/concat?
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape?
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stack?
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1?
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2?
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_slice?
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_5/zoom_matrix/sub/y?
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/sub?
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y?
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truediv?
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stack?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1?
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_1/x?
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_1?
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_5/zoom_matrix/mul?
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_2/y?
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2?
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/y?
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1?
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stack?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2?
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_3/x?
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_3?
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/mul_1?
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stack?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3?
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y?
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mul?
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_5/zoom_matrix/zeros/Less/y?
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/Less?
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1?
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packed?
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/Const?
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/zeros?
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/y?
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mul?
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y?
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/Less?
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1?
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packed?
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Const?
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_1?
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stack?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4?
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/y?
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mul?
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y?
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/Less?
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1?
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packed?
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Const?
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_2?
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axis?
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_5/zoom_matrix/concat?
random_zoom_5/transform/ShapeShaperandom_zoom_5_input*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape?
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack?
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1?
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2?
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_slice?
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_value?
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_zoom_5_input)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_5/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_5/stateful_uniform/StatefulUniform.random_zoom_5/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_5_input
?

*__inference_conv2d_21_layer_call_fn_923081

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
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9222422
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
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_923108

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
?

*__inference_conv2d_22_layer_call_fn_923137

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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9223122
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
?
?
.__inference_sequential_11_layer_call_fn_922918

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
I__inference_sequential_11_layer_call_and_return_conditional_losses_9226072
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
.__inference_activation_26_layer_call_fn_923091

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
I__inference_activation_26_layer_call_and_return_conditional_losses_9222632
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
?
e
I__inference_activation_29_layer_call_and_return_conditional_losses_923227

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
}
(__inference_dense_5_layer_call_fn_923222

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
C__inference_dense_5_layer_call_and_return_conditional_losses_9224222
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
?
e
I__inference_activation_27_layer_call_and_return_conditional_losses_923142

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
I__inference_activation_25_layer_call_and_return_conditional_losses_922223

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
I__inference_activation_26_layer_call_and_return_conditional_losses_922263

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
?
e
I__inference_sequential_10_layer_call_and_return_conditional_losses_922121

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
E__inference_conv2d_21_layer_call_and_return_conditional_losses_922242

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
?G
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922539

inputs
sequential_10_922499
conv2d_20_922502
conv2d_20_922504
conv2d_21_922509
conv2d_21_922511
conv2d_22_922517
conv2d_22_922519
conv2d_23_922525
conv2d_23_922527
dense_5_922532
dense_5_922534
identity??!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallinputssequential_10_922499*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221102'
%sequential_10/StatefulPartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_10/StatefulPartitionedCall:output:0conv2d_20_922502conv2d_20_922504*
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
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9222022#
!conv2d_20/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
I__inference_activation_25_layer_call_and_return_conditional_losses_9222232
activation_25/PartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9221302"
 max_pooling2d_15/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_922509conv2d_21_922511*
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
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9222422#
!conv2d_21/StatefulPartitionedCall?
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
I__inference_activation_26_layer_call_and_return_conditional_losses_9222632
activation_26/PartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
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
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9221422"
 max_pooling2d_16/PartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
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
E__inference_dropout_8_layer_call_and_return_conditional_losses_9222842#
!dropout_8/StatefulPartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv2d_22_922517conv2d_22_922519*
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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9223122#
!conv2d_22/StatefulPartitionedCall?
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
I__inference_activation_27_layer_call_and_return_conditional_losses_9223332
activation_27/PartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
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
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9221542"
 max_pooling2d_17/PartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
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
E__inference_dropout_9_layer_call_and_return_conditional_losses_9223542#
!dropout_9/StatefulPartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_23_922525conv2d_23_922527*
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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9223822#
!conv2d_23/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
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
I__inference_activation_28_layer_call_and_return_conditional_losses_9224032
activation_28/PartitionedCall?
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9221672,
*global_average_pooling2d_5/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_922532dense_5_922534*
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
C__inference_dense_5_layer_call_and_return_conditional_losses_9224222!
dense_5/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
I__inference_activation_29_layer_call_and_return_conditional_losses_9224432
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
.__inference_sequential_11_layer_call_fn_922893

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
I__inference_sequential_11_layer_call_and_return_conditional_losses_9225392
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
֨
?
"__inference__traced_restore_923510
file_prefix%
!assignvariableop_conv2d_20_kernel%
!assignvariableop_1_conv2d_20_bias'
#assignvariableop_2_conv2d_21_kernel%
!assignvariableop_3_conv2d_21_bias'
#assignvariableop_4_conv2d_22_kernel%
!assignvariableop_5_conv2d_22_bias'
#assignvariableop_6_conv2d_23_kernel%
!assignvariableop_7_conv2d_23_bias%
!assignvariableop_8_dense_5_kernel#
assignvariableop_9_dense_5_bias!
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
+assignvariableop_20_adam_conv2d_20_kernel_m-
)assignvariableop_21_adam_conv2d_20_bias_m/
+assignvariableop_22_adam_conv2d_21_kernel_m-
)assignvariableop_23_adam_conv2d_21_bias_m/
+assignvariableop_24_adam_conv2d_22_kernel_m-
)assignvariableop_25_adam_conv2d_22_bias_m/
+assignvariableop_26_adam_conv2d_23_kernel_m-
)assignvariableop_27_adam_conv2d_23_bias_m-
)assignvariableop_28_adam_dense_5_kernel_m+
'assignvariableop_29_adam_dense_5_bias_m/
+assignvariableop_30_adam_conv2d_20_kernel_v-
)assignvariableop_31_adam_conv2d_20_bias_v/
+assignvariableop_32_adam_conv2d_21_kernel_v-
)assignvariableop_33_adam_conv2d_21_bias_v/
+assignvariableop_34_adam_conv2d_22_kernel_v-
)assignvariableop_35_adam_conv2d_22_bias_v/
+assignvariableop_36_adam_conv2d_23_kernel_v-
)assignvariableop_37_adam_conv2d_23_bias_v-
)assignvariableop_38_adam_dense_5_kernel_v+
'assignvariableop_39_adam_dense_5_bias_v
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_22_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_22_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_23_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_5_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_20_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_conv2d_20_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_21_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_conv2d_21_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_22_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_22_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_23_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_23_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_5_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_5_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_20_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_20_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_21_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_21_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_22_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_22_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_23_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_23_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_5_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_5_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
e
I__inference_activation_26_layer_call_and_return_conditional_losses_923086

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
?U
?
__inference__traced_save_923380
file_prefix/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
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
2savev2_adam_conv2d_20_kernel_m_read_readvariableop4
0savev2_adam_conv2d_20_bias_m_read_readvariableop6
2savev2_adam_conv2d_21_kernel_m_read_readvariableop4
0savev2_adam_conv2d_21_bias_m_read_readvariableop6
2savev2_adam_conv2d_22_kernel_m_read_readvariableop4
0savev2_adam_conv2d_22_bias_m_read_readvariableop6
2savev2_adam_conv2d_23_kernel_m_read_readvariableop4
0savev2_adam_conv2d_23_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop6
2savev2_adam_conv2d_21_kernel_v_read_readvariableop4
0savev2_adam_conv2d_21_bias_v_read_readvariableop6
2savev2_adam_conv2d_22_kernel_v_read_readvariableop4
0savev2_adam_conv2d_22_bias_v_read_readvariableop6
2savev2_adam_conv2d_23_kernel_v_read_readvariableop4
0savev2_adam_conv2d_23_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop0savev2_adam_conv2d_21_bias_m_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop0savev2_adam_conv2d_22_bias_m_read_readvariableop2savev2_adam_conv2d_23_kernel_m_read_readvariableop0savev2_adam_conv2d_23_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop0savev2_adam_conv2d_21_bias_v_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop0savev2_adam_conv2d_22_bias_v_read_readvariableop2savev2_adam_conv2d_23_kernel_v_read_readvariableop0savev2_adam_conv2d_23_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
W
.__inference_sequential_10_layer_call_fn_922124
random_zoom_5_input
identity?
PartitionedCallPartitionedCallrandom_zoom_5_input*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221212
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
_user_specified_namerandom_zoom_5_input
?
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_922154

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
M
1__inference_max_pooling2d_17_layer_call_fn_922160

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
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9221542
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
F
*__inference_dropout_9_layer_call_fn_923174

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
E__inference_dropout_9_layer_call_and_return_conditional_losses_9223592
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
?O
?	
!__inference__wrapped_model_921904
sequential_10_input:
6sequential_11_conv2d_20_conv2d_readvariableop_resource;
7sequential_11_conv2d_20_biasadd_readvariableop_resource:
6sequential_11_conv2d_21_conv2d_readvariableop_resource;
7sequential_11_conv2d_21_biasadd_readvariableop_resource:
6sequential_11_conv2d_22_conv2d_readvariableop_resource;
7sequential_11_conv2d_22_biasadd_readvariableop_resource:
6sequential_11_conv2d_23_conv2d_readvariableop_resource;
7sequential_11_conv2d_23_biasadd_readvariableop_resource8
4sequential_11_dense_5_matmul_readvariableop_resource9
5sequential_11_dense_5_biasadd_readvariableop_resource
identity??.sequential_11/conv2d_20/BiasAdd/ReadVariableOp?-sequential_11/conv2d_20/Conv2D/ReadVariableOp?.sequential_11/conv2d_21/BiasAdd/ReadVariableOp?-sequential_11/conv2d_21/Conv2D/ReadVariableOp?.sequential_11/conv2d_22/BiasAdd/ReadVariableOp?-sequential_11/conv2d_22/Conv2D/ReadVariableOp?.sequential_11/conv2d_23/BiasAdd/ReadVariableOp?-sequential_11/conv2d_23/Conv2D/ReadVariableOp?,sequential_11/dense_5/BiasAdd/ReadVariableOp?+sequential_11/dense_5/MatMul/ReadVariableOp?
-sequential_11/conv2d_20/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_11/conv2d_20/Conv2D/ReadVariableOp?
sequential_11/conv2d_20/Conv2DConv2Dsequential_10_input5sequential_11/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2 
sequential_11/conv2d_20/Conv2D?
.sequential_11/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_11/conv2d_20/BiasAdd/ReadVariableOp?
sequential_11/conv2d_20/BiasAddBiasAdd'sequential_11/conv2d_20/Conv2D:output:06sequential_11/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2!
sequential_11/conv2d_20/BiasAdd?
 sequential_11/activation_25/ReluRelu(sequential_11/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2"
 sequential_11/activation_25/Relu?
&sequential_11/max_pooling2d_15/MaxPoolMaxPool.sequential_11/activation_25/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2(
&sequential_11/max_pooling2d_15/MaxPool?
-sequential_11/conv2d_21/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_11/conv2d_21/Conv2D/ReadVariableOp?
sequential_11/conv2d_21/Conv2DConv2D/sequential_11/max_pooling2d_15/MaxPool:output:05sequential_11/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_11/conv2d_21/Conv2D?
.sequential_11/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_11/conv2d_21/BiasAdd/ReadVariableOp?
sequential_11/conv2d_21/BiasAddBiasAdd'sequential_11/conv2d_21/Conv2D:output:06sequential_11/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_11/conv2d_21/BiasAdd?
 sequential_11/activation_26/ReluRelu(sequential_11/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_11/activation_26/Relu?
&sequential_11/max_pooling2d_16/MaxPoolMaxPool.sequential_11/activation_26/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2(
&sequential_11/max_pooling2d_16/MaxPool?
 sequential_11/dropout_8/IdentityIdentity/sequential_11/max_pooling2d_16/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_11/dropout_8/Identity?
-sequential_11/conv2d_22/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_11/conv2d_22/Conv2D/ReadVariableOp?
sequential_11/conv2d_22/Conv2DConv2D)sequential_11/dropout_8/Identity:output:05sequential_11/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2 
sequential_11/conv2d_22/Conv2D?
.sequential_11/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_11/conv2d_22/BiasAdd/ReadVariableOp?
sequential_11/conv2d_22/BiasAddBiasAdd'sequential_11/conv2d_22/Conv2D:output:06sequential_11/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_11/conv2d_22/BiasAdd?
 sequential_11/activation_27/ReluRelu(sequential_11/conv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_11/activation_27/Relu?
&sequential_11/max_pooling2d_17/MaxPoolMaxPool.sequential_11/activation_27/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2(
&sequential_11/max_pooling2d_17/MaxPool?
 sequential_11/dropout_9/IdentityIdentity/sequential_11/max_pooling2d_17/MaxPool:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_11/dropout_9/Identity?
-sequential_11/conv2d_23/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_11/conv2d_23/Conv2D/ReadVariableOp?
sequential_11/conv2d_23/Conv2DConv2D)sequential_11/dropout_9/Identity:output:05sequential_11/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2 
sequential_11/conv2d_23/Conv2D?
.sequential_11/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_11/conv2d_23/BiasAdd/ReadVariableOp?
sequential_11/conv2d_23/BiasAddBiasAdd'sequential_11/conv2d_23/Conv2D:output:06sequential_11/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_11/conv2d_23/BiasAdd?
 sequential_11/activation_28/ReluRelu(sequential_11/conv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_11/activation_28/Relu?
?sequential_11/global_average_pooling2d_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_11/global_average_pooling2d_5/Mean/reduction_indices?
-sequential_11/global_average_pooling2d_5/MeanMean.sequential_11/activation_28/Relu:activations:0Hsequential_11/global_average_pooling2d_5/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_11/global_average_pooling2d_5/Mean?
+sequential_11/dense_5/MatMul/ReadVariableOpReadVariableOp4sequential_11_dense_5_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02-
+sequential_11/dense_5/MatMul/ReadVariableOp?
sequential_11/dense_5/MatMulMatMul6sequential_11/global_average_pooling2d_5/Mean:output:03sequential_11/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_11/dense_5/MatMul?
,sequential_11/dense_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_11_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_11/dense_5/BiasAdd/ReadVariableOp?
sequential_11/dense_5/BiasAddBiasAdd&sequential_11/dense_5/MatMul:product:04sequential_11/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_11/dense_5/BiasAdd?
#sequential_11/activation_29/SoftmaxSoftmax&sequential_11/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2%
#sequential_11/activation_29/Softmax?
IdentityIdentity-sequential_11/activation_29/Softmax:softmax:0/^sequential_11/conv2d_20/BiasAdd/ReadVariableOp.^sequential_11/conv2d_20/Conv2D/ReadVariableOp/^sequential_11/conv2d_21/BiasAdd/ReadVariableOp.^sequential_11/conv2d_21/Conv2D/ReadVariableOp/^sequential_11/conv2d_22/BiasAdd/ReadVariableOp.^sequential_11/conv2d_22/Conv2D/ReadVariableOp/^sequential_11/conv2d_23/BiasAdd/ReadVariableOp.^sequential_11/conv2d_23/Conv2D/ReadVariableOp-^sequential_11/dense_5/BiasAdd/ReadVariableOp,^sequential_11/dense_5/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2`
.sequential_11/conv2d_20/BiasAdd/ReadVariableOp.sequential_11/conv2d_20/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_20/Conv2D/ReadVariableOp-sequential_11/conv2d_20/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_21/BiasAdd/ReadVariableOp.sequential_11/conv2d_21/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_21/Conv2D/ReadVariableOp-sequential_11/conv2d_21/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_22/BiasAdd/ReadVariableOp.sequential_11/conv2d_22/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_22/Conv2D/ReadVariableOp-sequential_11/conv2d_22/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_23/BiasAdd/ReadVariableOp.sequential_11/conv2d_23/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_23/Conv2D/ReadVariableOp-sequential_11/conv2d_23/Conv2D/ReadVariableOp2\
,sequential_11/dense_5/BiasAdd/ReadVariableOp,sequential_11/dense_5/BiasAdd/ReadVariableOp2Z
+sequential_11/dense_5/MatMul/ReadVariableOp+sequential_11/dense_5/MatMul/ReadVariableOp:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_10_input
?	
?
C__inference_dense_5_layer_call_and_return_conditional_losses_922422

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
?
?
.__inference_sequential_10_layer_call_fn_922115
random_zoom_5_input
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_5_inputunknown*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221102
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
_user_specified_namerandom_zoom_5_input
?	
?
E__inference_conv2d_22_layer_call_and_return_conditional_losses_923128

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
I__inference_activation_28_layer_call_and_return_conditional_losses_922403

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
t
.__inference_sequential_10_layer_call_fn_923028

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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221102
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
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_922354

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
?
e
I__inference_sequential_10_layer_call_and_return_conditional_losses_923021

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
?G
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922452
sequential_10_input
sequential_10_922189
conv2d_20_922213
conv2d_20_922215
conv2d_21_922253
conv2d_21_922255
conv2d_22_922323
conv2d_22_922325
conv2d_23_922393
conv2d_23_922395
dense_5_922433
dense_5_922435
identity??!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_8/StatefulPartitionedCall?!dropout_9/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputsequential_10_922189*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221102'
%sequential_10/StatefulPartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_10/StatefulPartitionedCall:output:0conv2d_20_922213conv2d_20_922215*
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
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9222022#
!conv2d_20/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
I__inference_activation_25_layer_call_and_return_conditional_losses_9222232
activation_25/PartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9221302"
 max_pooling2d_15/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_922253conv2d_21_922255*
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
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9222422#
!conv2d_21/StatefulPartitionedCall?
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
I__inference_activation_26_layer_call_and_return_conditional_losses_9222632
activation_26/PartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
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
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9221422"
 max_pooling2d_16/PartitionedCall?
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
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
E__inference_dropout_8_layer_call_and_return_conditional_losses_9222842#
!dropout_8/StatefulPartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv2d_22_922323conv2d_22_922325*
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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9223122#
!conv2d_22/StatefulPartitionedCall?
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
I__inference_activation_27_layer_call_and_return_conditional_losses_9223332
activation_27/PartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
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
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9221542"
 max_pooling2d_17/PartitionedCall?
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
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
E__inference_dropout_9_layer_call_and_return_conditional_losses_9223542#
!dropout_9/StatefulPartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0conv2d_23_922393conv2d_23_922395*
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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9223822#
!conv2d_23/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
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
I__inference_activation_28_layer_call_and_return_conditional_losses_9224032
activation_28/PartitionedCall?
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9221672,
*global_average_pooling2d_5/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_922433dense_5_922435*
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
C__inference_dense_5_layer_call_and_return_conditional_losses_9224222!
dense_5/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
I__inference_activation_29_layer_call_and_return_conditional_losses_9224432
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_10_input
?

*__inference_conv2d_20_layer_call_fn_923052

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
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9222022
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

?
I__inference_sequential_10_layer_call_and_return_conditional_losses_922110

inputs;
7random_zoom_5_stateful_uniform_statefuluniform_resource
identity??.random_zoom_5/stateful_uniform/StatefulUniform`
random_zoom_5/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/Shape?
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stack?
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1?
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2?
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice?
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stack?
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1?
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2?
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1?
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast?
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stack?
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1?
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2?
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2?
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1?
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1?
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shape?
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_5/stateful_uniform/min?
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_5/stateful_uniform/max?
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_5/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_5/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_5_stateful_uniform_statefuluniform_resourceArandom_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_5/stateful_uniform/StatefulUniform?
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/sub?
"random_zoom_5/stateful_uniform/mulMul7random_zoom_5/stateful_uniform/StatefulUniform:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_5/stateful_uniform/mul?
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axis?
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_5/concat?
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape?
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stack?
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1?
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2?
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_slice?
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_5/zoom_matrix/sub/y?
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/sub?
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y?
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truediv?
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stack?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1?
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_1/x?
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_1?
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_5/zoom_matrix/mul?
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_2/y?
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2?
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/y?
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1?
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stack?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2?
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_5/zoom_matrix/sub_3/x?
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/sub_3?
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/mul_1?
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stack?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3?
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y?
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mul?
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_5/zoom_matrix/zeros/Less/y?
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/Less?
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1?
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packed?
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/Const?
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_5/zoom_matrix/zeros?
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/y?
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mul?
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y?
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/Less?
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1?
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packed?
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Const?
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_1?
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stack?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4?
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/y?
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mul?
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y?
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/Less?
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1?
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packed?
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Const?
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_5/zoom_matrix/zeros_2?
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axis?
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_5/zoom_matrix/concatt
random_zoom_5/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape?
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack?
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1?
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2?
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_slice?
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_value?
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_5/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_5/stateful_uniform/StatefulUniform.random_zoom_5/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_20_layer_call_and_return_conditional_losses_923043

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
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_922284

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
ʊ
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922820

inputsI
Esequential_10_random_zoom_5_stateful_uniform_statefuluniform_resource,
(conv2d_20_conv2d_readvariableop_resource-
)conv2d_20_biasadd_readvariableop_resource,
(conv2d_21_conv2d_readvariableop_resource-
)conv2d_21_biasadd_readvariableop_resource,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identity?? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?<sequential_10/random_zoom_5/stateful_uniform/StatefulUniform|
!sequential_10/random_zoom_5/ShapeShapeinputs*
T0*
_output_shapes
:2#
!sequential_10/random_zoom_5/Shape?
/sequential_10/random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_10/random_zoom_5/strided_slice/stack?
1sequential_10/random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice/stack_1?
1sequential_10/random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice/stack_2?
)sequential_10/random_zoom_5/strided_sliceStridedSlice*sequential_10/random_zoom_5/Shape:output:08sequential_10/random_zoom_5/strided_slice/stack:output:0:sequential_10/random_zoom_5/strided_slice/stack_1:output:0:sequential_10/random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_10/random_zoom_5/strided_slice?
1sequential_10/random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice_1/stack?
3sequential_10/random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_1/stack_1?
3sequential_10/random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_1/stack_2?
+sequential_10/random_zoom_5/strided_slice_1StridedSlice*sequential_10/random_zoom_5/Shape:output:0:sequential_10/random_zoom_5/strided_slice_1/stack:output:0<sequential_10/random_zoom_5/strided_slice_1/stack_1:output:0<sequential_10/random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_10/random_zoom_5/strided_slice_1?
 sequential_10/random_zoom_5/CastCast4sequential_10/random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 sequential_10/random_zoom_5/Cast?
1sequential_10/random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice_2/stack?
3sequential_10/random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_2/stack_1?
3sequential_10/random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_2/stack_2?
+sequential_10/random_zoom_5/strided_slice_2StridedSlice*sequential_10/random_zoom_5/Shape:output:0:sequential_10/random_zoom_5/strided_slice_2/stack:output:0<sequential_10/random_zoom_5/strided_slice_2/stack_1:output:0<sequential_10/random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_10/random_zoom_5/strided_slice_2?
"sequential_10/random_zoom_5/Cast_1Cast4sequential_10/random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"sequential_10/random_zoom_5/Cast_1?
4sequential_10/random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4sequential_10/random_zoom_5/stateful_uniform/shape/1?
2sequential_10/random_zoom_5/stateful_uniform/shapePack2sequential_10/random_zoom_5/strided_slice:output:0=sequential_10/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:24
2sequential_10/random_zoom_5/stateful_uniform/shape?
0sequential_10/random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0sequential_10/random_zoom_5/stateful_uniform/min?
0sequential_10/random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0sequential_10/random_zoom_5/stateful_uniform/max?
Fsequential_10/random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2H
Fsequential_10/random_zoom_5/stateful_uniform/StatefulUniform/algorithm?
<sequential_10/random_zoom_5/stateful_uniform/StatefulUniformStatefulUniformEsequential_10_random_zoom_5_stateful_uniform_statefuluniform_resourceOsequential_10/random_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0;sequential_10/random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02>
<sequential_10/random_zoom_5/stateful_uniform/StatefulUniform?
0sequential_10/random_zoom_5/stateful_uniform/subSub9sequential_10/random_zoom_5/stateful_uniform/max:output:09sequential_10/random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 22
0sequential_10/random_zoom_5/stateful_uniform/sub?
0sequential_10/random_zoom_5/stateful_uniform/mulMulEsequential_10/random_zoom_5/stateful_uniform/StatefulUniform:output:04sequential_10/random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????22
0sequential_10/random_zoom_5/stateful_uniform/mul?
,sequential_10/random_zoom_5/stateful_uniformAdd4sequential_10/random_zoom_5/stateful_uniform/mul:z:09sequential_10/random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_10/random_zoom_5/stateful_uniform?
'sequential_10/random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_10/random_zoom_5/concat/axis?
"sequential_10/random_zoom_5/concatConcatV20sequential_10/random_zoom_5/stateful_uniform:z:00sequential_10/random_zoom_5/stateful_uniform:z:00sequential_10/random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2$
"sequential_10/random_zoom_5/concat?
-sequential_10/random_zoom_5/zoom_matrix/ShapeShape+sequential_10/random_zoom_5/concat:output:0*
T0*
_output_shapes
:2/
-sequential_10/random_zoom_5/zoom_matrix/Shape?
;sequential_10/random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_1?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_2?
5sequential_10/random_zoom_5/zoom_matrix/strided_sliceStridedSlice6sequential_10/random_zoom_5/zoom_matrix/Shape:output:0Dsequential_10/random_zoom_5/zoom_matrix/strided_slice/stack:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_1:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5sequential_10/random_zoom_5/zoom_matrix/strided_slice?
-sequential_10/random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-sequential_10/random_zoom_5/zoom_matrix/sub/y?
+sequential_10/random_zoom_5/zoom_matrix/subSub&sequential_10/random_zoom_5/Cast_1:y:06sequential_10/random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2-
+sequential_10/random_zoom_5/zoom_matrix/sub?
1sequential_10/random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @23
1sequential_10/random_zoom_5/zoom_matrix/truediv/y?
/sequential_10/random_zoom_5/zoom_matrix/truedivRealDiv/sequential_10/random_zoom_5/zoom_matrix/sub:z:0:sequential_10/random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 21
/sequential_10/random_zoom_5/zoom_matrix/truediv?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_1?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_2?
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_1StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_1?
/sequential_10/random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_10/random_zoom_5/zoom_matrix/sub_1/x?
-sequential_10/random_zoom_5/zoom_matrix/sub_1Sub8sequential_10/random_zoom_5/zoom_matrix/sub_1/x:output:0@sequential_10/random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2/
-sequential_10/random_zoom_5/zoom_matrix/sub_1?
+sequential_10/random_zoom_5/zoom_matrix/mulMul3sequential_10/random_zoom_5/zoom_matrix/truediv:z:01sequential_10/random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2-
+sequential_10/random_zoom_5/zoom_matrix/mul?
/sequential_10/random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_10/random_zoom_5/zoom_matrix/sub_2/y?
-sequential_10/random_zoom_5/zoom_matrix/sub_2Sub$sequential_10/random_zoom_5/Cast:y:08sequential_10/random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2/
-sequential_10/random_zoom_5/zoom_matrix/sub_2?
3sequential_10/random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @25
3sequential_10/random_zoom_5/zoom_matrix/truediv_1/y?
1sequential_10/random_zoom_5/zoom_matrix/truediv_1RealDiv1sequential_10/random_zoom_5/zoom_matrix/sub_2:z:0<sequential_10/random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 23
1sequential_10/random_zoom_5/zoom_matrix/truediv_1?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_1?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_2?
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_2StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_2?
/sequential_10/random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_10/random_zoom_5/zoom_matrix/sub_3/x?
-sequential_10/random_zoom_5/zoom_matrix/sub_3Sub8sequential_10/random_zoom_5/zoom_matrix/sub_3/x:output:0@sequential_10/random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-sequential_10/random_zoom_5/zoom_matrix/sub_3?
-sequential_10/random_zoom_5/zoom_matrix/mul_1Mul5sequential_10/random_zoom_5/zoom_matrix/truediv_1:z:01sequential_10/random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2/
-sequential_10/random_zoom_5/zoom_matrix/mul_1?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_1?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_2?
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_3StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_3?
3sequential_10/random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3sequential_10/random_zoom_5/zoom_matrix/zeros/mul/y?
1sequential_10/random_zoom_5/zoom_matrix/zeros/mulMul>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0<sequential_10/random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1sequential_10/random_zoom_5/zoom_matrix/zeros/mul?
4sequential_10/random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4sequential_10/random_zoom_5/zoom_matrix/zeros/Less/y?
2sequential_10/random_zoom_5/zoom_matrix/zeros/LessLess5sequential_10/random_zoom_5/zoom_matrix/zeros/mul:z:0=sequential_10/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2sequential_10/random_zoom_5/zoom_matrix/zeros/Less?
6sequential_10/random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6sequential_10/random_zoom_5/zoom_matrix/zeros/packed/1?
4sequential_10/random_zoom_5/zoom_matrix/zeros/packedPack>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0?sequential_10/random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4sequential_10/random_zoom_5/zoom_matrix/zeros/packed?
3sequential_10/random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_10/random_zoom_5/zoom_matrix/zeros/Const?
-sequential_10/random_zoom_5/zoom_matrix/zerosFill=sequential_10/random_zoom_5/zoom_matrix/zeros/packed:output:0<sequential_10/random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-sequential_10/random_zoom_5/zoom_matrix/zeros?
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul/y?
3sequential_10/random_zoom_5/zoom_matrix/zeros_1/mulMul>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul?
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/Less/y?
4sequential_10/random_zoom_5/zoom_matrix/zeros_1/LessLess7sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul:z:0?sequential_10/random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4sequential_10/random_zoom_5/zoom_matrix/zeros_1/Less?
8sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed/1?
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/packedPack>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0Asequential_10/random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed?
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/Const?
/sequential_10/random_zoom_5/zoom_matrix/zeros_1Fill?sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/sequential_10/random_zoom_5/zoom_matrix/zeros_1?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_1?
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_2?
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_4StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_4?
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul/y?
3sequential_10/random_zoom_5/zoom_matrix/zeros_2/mulMul>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul?
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/Less/y?
4sequential_10/random_zoom_5/zoom_matrix/zeros_2/LessLess7sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul:z:0?sequential_10/random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4sequential_10/random_zoom_5/zoom_matrix/zeros_2/Less?
8sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed/1?
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/packedPack>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0Asequential_10/random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed?
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/Const?
/sequential_10/random_zoom_5/zoom_matrix/zeros_2Fill?sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/sequential_10/random_zoom_5/zoom_matrix/zeros_2?
3sequential_10/random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3sequential_10/random_zoom_5/zoom_matrix/concat/axis?
.sequential_10/random_zoom_5/zoom_matrix/concatConcatV2@sequential_10/random_zoom_5/zoom_matrix/strided_slice_3:output:06sequential_10/random_zoom_5/zoom_matrix/zeros:output:0/sequential_10/random_zoom_5/zoom_matrix/mul:z:08sequential_10/random_zoom_5/zoom_matrix/zeros_1:output:0@sequential_10/random_zoom_5/zoom_matrix/strided_slice_4:output:01sequential_10/random_zoom_5/zoom_matrix/mul_1:z:08sequential_10/random_zoom_5/zoom_matrix/zeros_2:output:0<sequential_10/random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.sequential_10/random_zoom_5/zoom_matrix/concat?
+sequential_10/random_zoom_5/transform/ShapeShapeinputs*
T0*
_output_shapes
:2-
+sequential_10/random_zoom_5/transform/Shape?
9sequential_10/random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_10/random_zoom_5/transform/strided_slice/stack?
;sequential_10/random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_10/random_zoom_5/transform/strided_slice/stack_1?
;sequential_10/random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_10/random_zoom_5/transform/strided_slice/stack_2?
3sequential_10/random_zoom_5/transform/strided_sliceStridedSlice4sequential_10/random_zoom_5/transform/Shape:output:0Bsequential_10/random_zoom_5/transform/strided_slice/stack:output:0Dsequential_10/random_zoom_5/transform/strided_slice/stack_1:output:0Dsequential_10/random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:25
3sequential_10/random_zoom_5/transform/strided_slice?
0sequential_10/random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_10/random_zoom_5/transform/fill_value?
@sequential_10/random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs7sequential_10/random_zoom_5/zoom_matrix/concat:output:0<sequential_10/random_zoom_5/transform/strided_slice:output:09sequential_10/random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2B
@sequential_10/random_zoom_5/transform/ImageProjectiveTransformV3?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2DUsequential_10/random_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_20/BiasAdd?
activation_25/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_25/Relu?
max_pooling2d_15/MaxPoolMaxPool activation_25/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_15/MaxPool?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_21/BiasAdd?
activation_26/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_26/Relu?
max_pooling2d_16/MaxPoolMaxPool activation_26/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_16/MaxPoolw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_8/dropout/Const?
dropout_8/dropout/MulMul!max_pooling2d_16/MaxPool:output:0 dropout_8/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_8/dropout/Mul?
dropout_8/dropout/ShapeShape!max_pooling2d_16/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype020
.dropout_8/dropout/random_uniform/RandomUniform?
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_8/dropout/GreaterEqual/y?
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2 
dropout_8/dropout/GreaterEqual?
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_8/dropout/Cast?
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_8/dropout/Mul_1?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2Ddropout_8/dropout/Mul_1:z:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_22/BiasAdd?
activation_27/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_27/Relu?
max_pooling2d_17/MaxPoolMaxPool activation_27/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_17/MaxPoolw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_9/dropout/Const?
dropout_9/dropout/MulMul!max_pooling2d_17/MaxPool:output:0 dropout_9/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_9/dropout/Mul?
dropout_9/dropout/ShapeShape!max_pooling2d_17/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_9/dropout/random_uniform/RandomUniform?
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_9/dropout/GreaterEqual/y?
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_9/dropout/GreaterEqual?
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_9/dropout/Cast?
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_9/dropout/Mul_1?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_23/Conv2D/ReadVariableOp?
conv2d_23/Conv2DConv2Ddropout_9/dropout/Mul_1:z:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_23/Conv2D?
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp?
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_23/BiasAdd?
activation_28/ReluReluconv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_28/Relu?
1global_average_pooling2d_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_5/Mean/reduction_indices?
global_average_pooling2d_5/MeanMean activation_28/Relu:activations:0:global_average_pooling2d_5/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_5/Mean?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMul(global_average_pooling2d_5/Mean:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_5/BiasAdd?
activation_29/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_29/Softmax?
IdentityIdentityactivation_29/Softmax:softmax:0!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp=^sequential_10/random_zoom_5/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:?????????  :::::::::::2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2|
<sequential_10/random_zoom_5/stateful_uniform/StatefulUniform<sequential_10/random_zoom_5/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_21_layer_call_and_return_conditional_losses_923072

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
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_922142

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
*__inference_dropout_9_layer_call_fn_923169

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
E__inference_dropout_9_layer_call_and_return_conditional_losses_9223542
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
.__inference_activation_29_layer_call_fn_923232

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
I__inference_activation_29_layer_call_and_return_conditional_losses_9224432
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
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922866

inputs,
(conv2d_20_conv2d_readvariableop_resource-
)conv2d_20_biasadd_readvariableop_resource,
(conv2d_21_conv2d_readvariableop_resource-
)conv2d_21_biasadd_readvariableop_resource,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identity?? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2Dinputs'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_20/BiasAdd?
activation_25/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_25/Relu?
max_pooling2d_15/MaxPoolMaxPool activation_25/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_15/MaxPool?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_21/BiasAdd?
activation_26/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_26/Relu?
max_pooling2d_16/MaxPoolMaxPool activation_26/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_16/MaxPool?
dropout_8/IdentityIdentity!max_pooling2d_16/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_8/Identity?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2Ddropout_8/Identity:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_22/BiasAdd?
activation_27/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_27/Relu?
max_pooling2d_17/MaxPoolMaxPool activation_27/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_17/MaxPool?
dropout_9/IdentityIdentity!max_pooling2d_17/MaxPool:output:0*
T0*0
_output_shapes
:??????????2
dropout_9/Identity?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_23/Conv2D/ReadVariableOp?
conv2d_23/Conv2DConv2Ddropout_9/Identity:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_23/Conv2D?
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp?
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_23/BiasAdd?
activation_28/ReluReluconv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_28/Relu?
1global_average_pooling2d_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_5/Mean/reduction_indices?
global_average_pooling2d_5/MeanMean activation_28/Relu:activations:0:global_average_pooling2d_5/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_5/Mean?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMul(global_average_pooling2d_5/Mean:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_5/BiasAdd?
activation_29/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_29/Softmax?
IdentityIdentityactivation_29/Softmax:softmax:0!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_923159

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
?
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_922289

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
J
.__inference_activation_28_layer_call_fn_923203

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
I__inference_activation_28_layer_call_and_return_conditional_losses_9224032
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
F
*__inference_dropout_8_layer_call_fn_923118

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
E__inference_dropout_8_layer_call_and_return_conditional_losses_9222892
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
?
J
.__inference_activation_27_layer_call_fn_923147

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
I__inference_activation_27_layer_call_and_return_conditional_losses_9223332
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
W
;__inference_global_average_pooling2d_5_layer_call_fn_922173

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
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9221672
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
?
.__inference_sequential_11_layer_call_fn_922630
sequential_10_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_9226072
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
_user_specified_namesequential_10_input
?	
?
E__inference_conv2d_23_layer_call_and_return_conditional_losses_922382

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
E__inference_dropout_9_layer_call_and_return_conditional_losses_922359

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
?
J
.__inference_sequential_10_layer_call_fn_923033

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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221212
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
e
I__inference_activation_28_layer_call_and_return_conditional_losses_923198

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
I__inference_activation_25_layer_call_and_return_conditional_losses_923057

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
E__inference_conv2d_20_layer_call_and_return_conditional_losses_922202

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
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_923103

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
?
r
I__inference_sequential_10_layer_call_and_return_conditional_losses_922008
random_zoom_5_input
identityo
IdentityIdentityrandom_zoom_5_input*
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
_user_specified_namerandom_zoom_5_input
?
r
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_922167

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
?
?
$__inference_signature_wrapper_922665
sequential_10_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_9219042
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
_user_specified_namesequential_10_input
?
M
1__inference_max_pooling2d_16_layer_call_fn_922148

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
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9221422
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
?B
?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922607

inputs
conv2d_20_922570
conv2d_20_922572
conv2d_21_922577
conv2d_21_922579
conv2d_22_922585
conv2d_22_922587
conv2d_23_922593
conv2d_23_922595
dense_5_922600
dense_5_922602
identity??!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall?!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
sequential_10/PartitionedCallPartitionedCallinputs*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_9221212
sequential_10/PartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&sequential_10/PartitionedCall:output:0conv2d_20_922570conv2d_20_922572*
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
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9222022#
!conv2d_20/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
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
I__inference_activation_25_layer_call_and_return_conditional_losses_9222232
activation_25/PartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9221302"
 max_pooling2d_15/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_922577conv2d_21_922579*
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
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9222422#
!conv2d_21/StatefulPartitionedCall?
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
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
I__inference_activation_26_layer_call_and_return_conditional_losses_9222632
activation_26/PartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
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
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9221422"
 max_pooling2d_16/PartitionedCall?
dropout_8/PartitionedCallPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
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
E__inference_dropout_8_layer_call_and_return_conditional_losses_9222892
dropout_8/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv2d_22_922585conv2d_22_922587*
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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9223122#
!conv2d_22/StatefulPartitionedCall?
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
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
I__inference_activation_27_layer_call_and_return_conditional_losses_9223332
activation_27/PartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
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
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9221542"
 max_pooling2d_17/PartitionedCall?
dropout_9/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
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
E__inference_dropout_9_layer_call_and_return_conditional_losses_9223592
dropout_9/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0conv2d_23_922593conv2d_23_922595*
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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9223822#
!conv2d_23/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
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
I__inference_activation_28_layer_call_and_return_conditional_losses_9224032
activation_28/PartitionedCall?
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
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
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9221672,
*global_average_pooling2d_5/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_922600dense_5_922602*
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
C__inference_dense_5_layer_call_and_return_conditional_losses_9224222!
dense_5/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
I__inference_activation_29_layer_call_and_return_conditional_losses_9224432
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????  ::::::::::2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
e
I__inference_activation_29_layer_call_and_return_conditional_losses_922443

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
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_922130

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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_923184

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
I__inference_activation_27_layer_call_and_return_conditional_losses_922333

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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_922312

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
?
.__inference_sequential_11_layer_call_fn_922564
sequential_10_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_9225392
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
_user_specified_namesequential_10_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
[
sequential_10_inputD
%serving_default_sequential_10_input:0?????????  A
activation_290
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?f
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8
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
_tf_keras_sequential?a{"class_name": "Sequential", "name": "sequential_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_11", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_10_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_11", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_10_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#	variables
$regularization_losses
%trainable_variables
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
'	variables
(regularization_losses
)trainable_variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
1	variables
2regularization_losses
3trainable_variables
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

=kernel
>bias
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

]kernel
^bias
_	variables
`regularization_losses
atrainable_variables
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
c	variables
dregularization_losses
etrainable_variables
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
giter

hbeta_1

ibeta_2
	jdecay
klearning_ratem?m?+m?,m?=m?>m?Om?Pm?]m?^m?v?v?+v?,v?=v?>v?Ov?Pv?]v?^v?"
	optimizer
f
0
1
+2
,3
=4
>5
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
+2
,3
=4
>5
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
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
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
*:( 2conv2d_20/kernel
: 2conv2d_20/bias
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
*:( @2conv2d_21/kernel
:@2conv2d_21/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
-	variables
.regularization_losses
/trainable_variables
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
+:)@?2conv2d_22/kernel
:?2conv2d_22/bias
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
?	variables
@regularization_losses
Atrainable_variables
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
,:*??2conv2d_23/kernel
:?2conv2d_23/bias
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
2dense_5/kernel
:
2dense_5/bias
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
/:- 2Adam/conv2d_20/kernel/m
!: 2Adam/conv2d_20/bias/m
/:- @2Adam/conv2d_21/kernel/m
!:@2Adam/conv2d_21/bias/m
0:.@?2Adam/conv2d_22/kernel/m
": ?2Adam/conv2d_22/bias/m
1:/??2Adam/conv2d_23/kernel/m
": ?2Adam/conv2d_23/bias/m
&:$	?
2Adam/dense_5/kernel/m
:
2Adam/dense_5/bias/m
/:- 2Adam/conv2d_20/kernel/v
!: 2Adam/conv2d_20/bias/v
/:- @2Adam/conv2d_21/kernel/v
!:@2Adam/conv2d_21/bias/v
0:.@?2Adam/conv2d_22/kernel/v
": ?2Adam/conv2d_22/bias/v
1:/??2Adam/conv2d_23/kernel/v
": ?2Adam/conv2d_23/bias/v
&:$	?
2Adam/dense_5/kernel/v
:
2Adam/dense_5/bias/v
?2?
.__inference_sequential_11_layer_call_fn_922630
.__inference_sequential_11_layer_call_fn_922918
.__inference_sequential_11_layer_call_fn_922564
.__inference_sequential_11_layer_call_fn_922893?
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
!__inference__wrapped_model_921904?
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
sequential_10_input?????????  
?2?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922452
I__inference_sequential_11_layer_call_and_return_conditional_losses_922820
I__inference_sequential_11_layer_call_and_return_conditional_losses_922866
I__inference_sequential_11_layer_call_and_return_conditional_losses_922493?
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
.__inference_sequential_10_layer_call_fn_923033
.__inference_sequential_10_layer_call_fn_922115
.__inference_sequential_10_layer_call_fn_922124
.__inference_sequential_10_layer_call_fn_923028?
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_923017
I__inference_sequential_10_layer_call_and_return_conditional_losses_923021
I__inference_sequential_10_layer_call_and_return_conditional_losses_922008
I__inference_sequential_10_layer_call_and_return_conditional_losses_922004?
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
*__inference_conv2d_20_layer_call_fn_923052?
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
E__inference_conv2d_20_layer_call_and_return_conditional_losses_923043?
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
.__inference_activation_25_layer_call_fn_923062?
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
I__inference_activation_25_layer_call_and_return_conditional_losses_923057?
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
1__inference_max_pooling2d_15_layer_call_fn_922136?
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
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_922130?
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
*__inference_conv2d_21_layer_call_fn_923081?
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
E__inference_conv2d_21_layer_call_and_return_conditional_losses_923072?
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
.__inference_activation_26_layer_call_fn_923091?
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
I__inference_activation_26_layer_call_and_return_conditional_losses_923086?
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
1__inference_max_pooling2d_16_layer_call_fn_922148?
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
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_922142?
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
*__inference_dropout_8_layer_call_fn_923118
*__inference_dropout_8_layer_call_fn_923113?
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
E__inference_dropout_8_layer_call_and_return_conditional_losses_923108
E__inference_dropout_8_layer_call_and_return_conditional_losses_923103?
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
*__inference_conv2d_22_layer_call_fn_923137?
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
E__inference_conv2d_22_layer_call_and_return_conditional_losses_923128?
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
.__inference_activation_27_layer_call_fn_923147?
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
I__inference_activation_27_layer_call_and_return_conditional_losses_923142?
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
1__inference_max_pooling2d_17_layer_call_fn_922160?
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
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_922154?
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
*__inference_dropout_9_layer_call_fn_923169
*__inference_dropout_9_layer_call_fn_923174?
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
E__inference_dropout_9_layer_call_and_return_conditional_losses_923159
E__inference_dropout_9_layer_call_and_return_conditional_losses_923164?
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
*__inference_conv2d_23_layer_call_fn_923193?
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
E__inference_conv2d_23_layer_call_and_return_conditional_losses_923184?
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
.__inference_activation_28_layer_call_fn_923203?
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
I__inference_activation_28_layer_call_and_return_conditional_losses_923198?
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
;__inference_global_average_pooling2d_5_layer_call_fn_922173?
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
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_922167?
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
(__inference_dense_5_layer_call_fn_923222?
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
C__inference_dense_5_layer_call_and_return_conditional_losses_923213?
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
.__inference_activation_29_layer_call_fn_923232?
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
I__inference_activation_29_layer_call_and_return_conditional_losses_923227?
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
$__inference_signature_wrapper_922665sequential_10_input"?
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
!__inference__wrapped_model_921904?
+,=>OP]^D?A
:?7
5?2
sequential_10_input?????????  
? "=?:
8
activation_29'?$
activation_29?????????
?
I__inference_activation_25_layer_call_and_return_conditional_losses_923057h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
.__inference_activation_25_layer_call_fn_923062[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
I__inference_activation_26_layer_call_and_return_conditional_losses_923086h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_26_layer_call_fn_923091[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_27_layer_call_and_return_conditional_losses_923142j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_27_layer_call_fn_923147]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_28_layer_call_and_return_conditional_losses_923198j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_28_layer_call_fn_923203]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_29_layer_call_and_return_conditional_losses_923227X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? }
.__inference_activation_29_layer_call_fn_923232K/?,
%?"
 ?
inputs?????????

? "??????????
?
E__inference_conv2d_20_layer_call_and_return_conditional_losses_923043l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
*__inference_conv2d_20_layer_call_fn_923052_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
E__inference_conv2d_21_layer_call_and_return_conditional_losses_923072l+,7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_21_layer_call_fn_923081_+,7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_22_layer_call_and_return_conditional_losses_923128m=>7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_22_layer_call_fn_923137`=>7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_23_layer_call_and_return_conditional_losses_923184nOP8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_23_layer_call_fn_923193aOP8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_5_layer_call_and_return_conditional_losses_923213]]^0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_5_layer_call_fn_923222P]^0?-
&?#
!?
inputs??????????
? "??????????
?
E__inference_dropout_8_layer_call_and_return_conditional_losses_923103l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
E__inference_dropout_8_layer_call_and_return_conditional_losses_923108l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
*__inference_dropout_8_layer_call_fn_923113_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
*__inference_dropout_8_layer_call_fn_923118_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
E__inference_dropout_9_layer_call_and_return_conditional_losses_923159n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
E__inference_dropout_9_layer_call_and_return_conditional_losses_923164n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
*__inference_dropout_9_layer_call_fn_923169a<?9
2?/
)?&
inputs??????????
p
? "!????????????
*__inference_dropout_9_layer_call_fn_923174a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_922167?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_5_layer_call_fn_922173wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_922130?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_15_layer_call_fn_922136?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_922142?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_16_layer_call_fn_922148?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_922154?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_17_layer_call_fn_922160?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_10_layer_call_and_return_conditional_losses_922004??L?I
B??
5?2
random_zoom_5_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_922008}L?I
B??
5?2
random_zoom_5_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923017t???<
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_923021p??<
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
.__inference_sequential_10_layer_call_fn_922115t?L?I
B??
5?2
random_zoom_5_input?????????  
p

 
? " ??????????  ?
.__inference_sequential_10_layer_call_fn_922124pL?I
B??
5?2
random_zoom_5_input?????????  
p 

 
? " ??????????  ?
.__inference_sequential_10_layer_call_fn_923028g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
.__inference_sequential_10_layer_call_fn_923033c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922452??+,=>OP]^L?I
B??
5?2
sequential_10_input?????????  
p

 
? "%?"
?
0?????????

? ?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922493?
+,=>OP]^L?I
B??
5?2
sequential_10_input?????????  
p 

 
? "%?"
?
0?????????

? ?
I__inference_sequential_11_layer_call_and_return_conditional_losses_922820v?+,=>OP]^??<
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
I__inference_sequential_11_layer_call_and_return_conditional_losses_922866t
+,=>OP]^??<
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
.__inference_sequential_11_layer_call_fn_922564v?+,=>OP]^L?I
B??
5?2
sequential_10_input?????????  
p

 
? "??????????
?
.__inference_sequential_11_layer_call_fn_922630t
+,=>OP]^L?I
B??
5?2
sequential_10_input?????????  
p 

 
? "??????????
?
.__inference_sequential_11_layer_call_fn_922893i?+,=>OP]^??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
.__inference_sequential_11_layer_call_fn_922918g
+,=>OP]^??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_922665?
+,=>OP]^[?X
? 
Q?N
L
sequential_10_input5?2
sequential_10_input?????????  "=?:
8
activation_29'?$
activation_29?????????
