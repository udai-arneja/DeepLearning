÷
ñ
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
¾
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
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8ÚÁ

conv2d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_48/kernel
}
$conv2d_48/kernel/Read/ReadVariableOpReadVariableOpconv2d_48/kernel*&
_output_shapes
: *
dtype0
t
conv2d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_48/bias
m
"conv2d_48/bias/Read/ReadVariableOpReadVariableOpconv2d_48/bias*
_output_shapes
: *
dtype0

conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_49/kernel
}
$conv2d_49/kernel/Read/ReadVariableOpReadVariableOpconv2d_49/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_49/bias
m
"conv2d_49/bias/Read/ReadVariableOpReadVariableOpconv2d_49/bias*
_output_shapes
:@*
dtype0

conv2d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_50/kernel
~
$conv2d_50/kernel/Read/ReadVariableOpReadVariableOpconv2d_50/kernel*'
_output_shapes
:@*
dtype0
u
conv2d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_50/bias
n
"conv2d_50/bias/Read/ReadVariableOpReadVariableOpconv2d_50/bias*
_output_shapes	
:*
dtype0

conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_51/kernel

$conv2d_51/kernel/Read/ReadVariableOpReadVariableOpconv2d_51/kernel*(
_output_shapes
:*
dtype0
u
conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_51/bias
n
"conv2d_51/bias/Read/ReadVariableOpReadVariableOpconv2d_51/bias*
_output_shapes	
:*
dtype0
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	
*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
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

Adam/conv2d_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_48/kernel/m

+Adam/conv2d_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_48/bias/m
{
)Adam/conv2d_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_49/kernel/m

+Adam/conv2d_49/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_49/bias/m
{
)Adam/conv2d_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_50/kernel/m

+Adam/conv2d_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_50/bias/m
|
)Adam/conv2d_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_51/kernel/m

+Adam/conv2d_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_51/bias/m
|
)Adam/conv2d_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes
:	
*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_48/kernel/v

+Adam/conv2d_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_48/bias/v
{
)Adam/conv2d_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_49/kernel/v

+Adam/conv2d_49/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_49/bias/v
{
)Adam/conv2d_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_50/kernel/v

+Adam/conv2d_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_50/bias/v
|
)Adam/conv2d_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_51/kernel/v

+Adam/conv2d_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_51/bias/v
|
)Adam/conv2d_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes
:	
*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
P
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÄO
valueºOB·O B°O
»
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

]iter

^beta_1

_beta_2
	`decay
alearning_ratemÀmÁ)mÂ*mÃ7mÄ8mÅEmÆFmÇSmÈTmÉvÊvË)vÌ*vÍ7vÎ8vÏEvÐFvÑSvÒTvÓ
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
­
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
­
	variables

ilayers
jnon_trainable_variables
trainable_variables
regularization_losses
klayer_regularization_losses
lmetrics
mlayer_metrics
\Z
VARIABLE_VALUEconv2d_48/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_48/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
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
­
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
­
%	variables

xlayers
ynon_trainable_variables
&trainable_variables
'regularization_losses
zlayer_regularization_losses
{metrics
|layer_metrics
\Z
VARIABLE_VALUEconv2d_49/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_49/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
¯
+	variables

}layers
~non_trainable_variables
,trainable_variables
-regularization_losses
layer_regularization_losses
metrics
layer_metrics
 
 
 
²
/	variables
layers
non_trainable_variables
0trainable_variables
1regularization_losses
 layer_regularization_losses
metrics
layer_metrics
 
 
 
²
3	variables
layers
non_trainable_variables
4trainable_variables
5regularization_losses
 layer_regularization_losses
metrics
layer_metrics
\Z
VARIABLE_VALUEconv2d_50/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_50/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
²
9	variables
layers
non_trainable_variables
:trainable_variables
;regularization_losses
 layer_regularization_losses
metrics
layer_metrics
 
 
 
²
=	variables
layers
non_trainable_variables
>trainable_variables
?regularization_losses
 layer_regularization_losses
metrics
layer_metrics
 
 
 
²
A	variables
layers
non_trainable_variables
Btrainable_variables
Cregularization_losses
 layer_regularization_losses
metrics
layer_metrics
\Z
VARIABLE_VALUEconv2d_51/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_51/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

E0
F1
 
²
G	variables
layers
non_trainable_variables
Htrainable_variables
Iregularization_losses
 layer_regularization_losses
metrics
layer_metrics
 
 
 
²
K	variables
 layers
¡non_trainable_variables
Ltrainable_variables
Mregularization_losses
 ¢layer_regularization_losses
£metrics
¤layer_metrics
 
 
 
²
O	variables
¥layers
¦non_trainable_variables
Ptrainable_variables
Qregularization_losses
 §layer_regularization_losses
¨metrics
©layer_metrics
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

S0
T1
 
²
U	variables
ªlayers
«non_trainable_variables
Vtrainable_variables
Wregularization_losses
 ¬layer_regularization_losses
­metrics
®layer_metrics
 
 
 
²
Y	variables
¯layers
°non_trainable_variables
Ztrainable_variables
[regularization_losses
 ±layer_regularization_losses
²metrics
³layer_metrics
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
´0
µ1
 

¶
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

·total

¸count
¹	variables
º	keras_api
I

»total

¼count
½
_fn_kwargs
¾	variables
¿	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

·0
¸1

¹	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

»0
¼1

¾	variables
}
VARIABLE_VALUEAdam/conv2d_48/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_48/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_49/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_49/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_50/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_50/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_51/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_51/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_48/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_48/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_49/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_49/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_50/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_50/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_51/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_51/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

#serving_default_sequential_26_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ  
ý
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_26_inputconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasdense_12/kerneldense_12/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
$__inference_signature_wrapper_342325
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ù
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_48/kernel/Read/ReadVariableOp"conv2d_48/bias/Read/ReadVariableOp$conv2d_49/kernel/Read/ReadVariableOp"conv2d_49/bias/Read/ReadVariableOp$conv2d_50/kernel/Read/ReadVariableOp"conv2d_50/bias/Read/ReadVariableOp$conv2d_51/kernel/Read/ReadVariableOp"conv2d_51/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_48/kernel/m/Read/ReadVariableOp)Adam/conv2d_48/bias/m/Read/ReadVariableOp+Adam/conv2d_49/kernel/m/Read/ReadVariableOp)Adam/conv2d_49/bias/m/Read/ReadVariableOp+Adam/conv2d_50/kernel/m/Read/ReadVariableOp)Adam/conv2d_50/bias/m/Read/ReadVariableOp+Adam/conv2d_51/kernel/m/Read/ReadVariableOp)Adam/conv2d_51/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp+Adam/conv2d_48/kernel/v/Read/ReadVariableOp)Adam/conv2d_48/bias/v/Read/ReadVariableOp+Adam/conv2d_49/kernel/v/Read/ReadVariableOp)Adam/conv2d_49/bias/v/Read/ReadVariableOp+Adam/conv2d_50/kernel/v/Read/ReadVariableOp)Adam/conv2d_50/bias/v/Read/ReadVariableOp+Adam/conv2d_51/kernel/v/Read/ReadVariableOp)Adam/conv2d_51/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOpConst*5
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_342984
´
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasdense_12/kerneldense_12/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_48/kernel/mAdam/conv2d_48/bias/mAdam/conv2d_49/kernel/mAdam/conv2d_49/bias/mAdam/conv2d_50/kernel/mAdam/conv2d_50/bias/mAdam/conv2d_51/kernel/mAdam/conv2d_51/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/conv2d_48/kernel/vAdam/conv2d_48/bias/vAdam/conv2d_49/kernel/vAdam/conv2d_49/bias/vAdam/conv2d_50/kernel/vAdam/conv2d_50/bias/vAdam/conv2d_51/kernel/vAdam/conv2d_51/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/v*4
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_343114î
ÀL
	
!__inference__wrapped_model_341614
sequential_26_input:
6sequential_27_conv2d_48_conv2d_readvariableop_resource;
7sequential_27_conv2d_48_biasadd_readvariableop_resource:
6sequential_27_conv2d_49_conv2d_readvariableop_resource;
7sequential_27_conv2d_49_biasadd_readvariableop_resource:
6sequential_27_conv2d_50_conv2d_readvariableop_resource;
7sequential_27_conv2d_50_biasadd_readvariableop_resource:
6sequential_27_conv2d_51_conv2d_readvariableop_resource;
7sequential_27_conv2d_51_biasadd_readvariableop_resource9
5sequential_27_dense_12_matmul_readvariableop_resource:
6sequential_27_dense_12_biasadd_readvariableop_resource
identity¢.sequential_27/conv2d_48/BiasAdd/ReadVariableOp¢-sequential_27/conv2d_48/Conv2D/ReadVariableOp¢.sequential_27/conv2d_49/BiasAdd/ReadVariableOp¢-sequential_27/conv2d_49/Conv2D/ReadVariableOp¢.sequential_27/conv2d_50/BiasAdd/ReadVariableOp¢-sequential_27/conv2d_50/Conv2D/ReadVariableOp¢.sequential_27/conv2d_51/BiasAdd/ReadVariableOp¢-sequential_27/conv2d_51/Conv2D/ReadVariableOp¢-sequential_27/dense_12/BiasAdd/ReadVariableOp¢,sequential_27/dense_12/MatMul/ReadVariableOpÝ
-sequential_27/conv2d_48/Conv2D/ReadVariableOpReadVariableOp6sequential_27_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_27/conv2d_48/Conv2D/ReadVariableOpø
sequential_27/conv2d_48/Conv2DConv2Dsequential_26_input5sequential_27/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides
2 
sequential_27/conv2d_48/Conv2DÔ
.sequential_27/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_27/conv2d_48/BiasAdd/ReadVariableOpè
sequential_27/conv2d_48/BiasAddBiasAdd'sequential_27/conv2d_48/Conv2D:output:06sequential_27/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2!
sequential_27/conv2d_48/BiasAdd°
 sequential_27/activation_60/ReluRelu(sequential_27/conv2d_48/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2"
 sequential_27/activation_60/Relu÷
&sequential_27/max_pooling2d_36/MaxPoolMaxPool.sequential_27/activation_60/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides
2(
&sequential_27/max_pooling2d_36/MaxPoolÝ
-sequential_27/conv2d_49/Conv2D/ReadVariableOpReadVariableOp6sequential_27_conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_27/conv2d_49/Conv2D/ReadVariableOp
sequential_27/conv2d_49/Conv2DConv2D/sequential_27/max_pooling2d_36/MaxPool:output:05sequential_27/conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2 
sequential_27/conv2d_49/Conv2DÔ
.sequential_27/conv2d_49/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_27/conv2d_49/BiasAdd/ReadVariableOpè
sequential_27/conv2d_49/BiasAddBiasAdd'sequential_27/conv2d_49/Conv2D:output:06sequential_27/conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_27/conv2d_49/BiasAdd°
 sequential_27/activation_61/ReluRelu(sequential_27/conv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 sequential_27/activation_61/Relu÷
&sequential_27/max_pooling2d_37/MaxPoolMaxPool.sequential_27/activation_61/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2(
&sequential_27/max_pooling2d_37/MaxPoolÞ
-sequential_27/conv2d_50/Conv2D/ReadVariableOpReadVariableOp6sequential_27_conv2d_50_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02/
-sequential_27/conv2d_50/Conv2D/ReadVariableOp
sequential_27/conv2d_50/Conv2DConv2D/sequential_27/max_pooling2d_37/MaxPool:output:05sequential_27/conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_27/conv2d_50/Conv2DÕ
.sequential_27/conv2d_50/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_conv2d_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_27/conv2d_50/BiasAdd/ReadVariableOpé
sequential_27/conv2d_50/BiasAddBiasAdd'sequential_27/conv2d_50/Conv2D:output:06sequential_27/conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_27/conv2d_50/BiasAdd±
 sequential_27/activation_62/ReluRelu(sequential_27/conv2d_50/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_27/activation_62/Reluø
&sequential_27/max_pooling2d_38/MaxPoolMaxPool.sequential_27/activation_62/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2(
&sequential_27/max_pooling2d_38/MaxPoolß
-sequential_27/conv2d_51/Conv2D/ReadVariableOpReadVariableOp6sequential_27_conv2d_51_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02/
-sequential_27/conv2d_51/Conv2D/ReadVariableOp
sequential_27/conv2d_51/Conv2DConv2D/sequential_27/max_pooling2d_38/MaxPool:output:05sequential_27/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential_27/conv2d_51/Conv2DÕ
.sequential_27/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_27/conv2d_51/BiasAdd/ReadVariableOpé
sequential_27/conv2d_51/BiasAddBiasAdd'sequential_27/conv2d_51/Conv2D:output:06sequential_27/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_27/conv2d_51/BiasAdd±
 sequential_27/activation_63/ReluRelu(sequential_27/conv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_27/activation_63/ReluÕ
@sequential_27/global_average_pooling2d_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_27/global_average_pooling2d_12/Mean/reduction_indices
.sequential_27/global_average_pooling2d_12/MeanMean.sequential_27/activation_63/Relu:activations:0Isequential_27/global_average_pooling2d_12/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_27/global_average_pooling2d_12/MeanÓ
,sequential_27/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_12_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02.
,sequential_27/dense_12/MatMul/ReadVariableOpé
sequential_27/dense_12/MatMulMatMul7sequential_27/global_average_pooling2d_12/Mean:output:04sequential_27/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_27/dense_12/MatMulÑ
-sequential_27/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-sequential_27/dense_12/BiasAdd/ReadVariableOpÝ
sequential_27/dense_12/BiasAddBiasAdd'sequential_27/dense_12/MatMul:product:05sequential_27/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
sequential_27/dense_12/BiasAdd°
#sequential_27/activation_64/SoftmaxSoftmax'sequential_27/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2%
#sequential_27/activation_64/Softmaxä
IdentityIdentity-sequential_27/activation_64/Softmax:softmax:0/^sequential_27/conv2d_48/BiasAdd/ReadVariableOp.^sequential_27/conv2d_48/Conv2D/ReadVariableOp/^sequential_27/conv2d_49/BiasAdd/ReadVariableOp.^sequential_27/conv2d_49/Conv2D/ReadVariableOp/^sequential_27/conv2d_50/BiasAdd/ReadVariableOp.^sequential_27/conv2d_50/Conv2D/ReadVariableOp/^sequential_27/conv2d_51/BiasAdd/ReadVariableOp.^sequential_27/conv2d_51/Conv2D/ReadVariableOp.^sequential_27/dense_12/BiasAdd/ReadVariableOp-^sequential_27/dense_12/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ  ::::::::::2`
.sequential_27/conv2d_48/BiasAdd/ReadVariableOp.sequential_27/conv2d_48/BiasAdd/ReadVariableOp2^
-sequential_27/conv2d_48/Conv2D/ReadVariableOp-sequential_27/conv2d_48/Conv2D/ReadVariableOp2`
.sequential_27/conv2d_49/BiasAdd/ReadVariableOp.sequential_27/conv2d_49/BiasAdd/ReadVariableOp2^
-sequential_27/conv2d_49/Conv2D/ReadVariableOp-sequential_27/conv2d_49/Conv2D/ReadVariableOp2`
.sequential_27/conv2d_50/BiasAdd/ReadVariableOp.sequential_27/conv2d_50/BiasAdd/ReadVariableOp2^
-sequential_27/conv2d_50/Conv2D/ReadVariableOp-sequential_27/conv2d_50/Conv2D/ReadVariableOp2`
.sequential_27/conv2d_51/BiasAdd/ReadVariableOp.sequential_27/conv2d_51/BiasAdd/ReadVariableOp2^
-sequential_27/conv2d_51/Conv2D/ReadVariableOp-sequential_27/conv2d_51/Conv2D/ReadVariableOp2^
-sequential_27/dense_12/BiasAdd/ReadVariableOp-sequential_27/dense_12/BiasAdd/ReadVariableOp2\
,sequential_27/dense_12/MatMul/ReadVariableOp,sequential_27/dense_12/MatMul/ReadVariableOp:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-
_user_specified_namesequential_26_input
ð	
Þ
E__inference_conv2d_50_layer_call_and_return_conditional_losses_342759

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
²
M
1__inference_max_pooling2d_38_layer_call_fn_341886

inputs
identityð
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_3418802
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
J
.__inference_activation_60_layer_call_fn_342720

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_3419492
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ   :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
 
_user_specified_nameinputs
¿>
Ä
I__inference_sequential_27_layer_call_and_return_conditional_losses_342118
sequential_26_input
sequential_26_341915
conv2d_48_341939
conv2d_48_341941
conv2d_49_341979
conv2d_49_341981
conv2d_50_342019
conv2d_50_342021
conv2d_51_342059
conv2d_51_342061
dense_12_342099
dense_12_342101
identity¢!conv2d_48/StatefulPartitionedCall¢!conv2d_49/StatefulPartitionedCall¢!conv2d_50/StatefulPartitionedCall¢!conv2d_51/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢%sequential_26/StatefulPartitionedCallª
%sequential_26/StatefulPartitionedCallStatefulPartitionedCallsequential_26_inputsequential_26_341915*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418362'
%sequential_26/StatefulPartitionedCallÌ
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall.sequential_26/StatefulPartitionedCall:output:0conv2d_48_341939conv2d_48_341941*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_3419282#
!conv2d_48/StatefulPartitionedCall
activation_60/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_3419492
activation_60/PartitionedCall
 max_pooling2d_36/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_3418562"
 max_pooling2d_36/PartitionedCallÇ
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_49_341979conv2d_49_341981*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_3419682#
!conv2d_49/StatefulPartitionedCall
activation_61/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_3419892
activation_61/PartitionedCall
 max_pooling2d_37/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_3418682"
 max_pooling2d_37/PartitionedCallÈ
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_50_342019conv2d_50_342021*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_50_layer_call_and_return_conditional_losses_3420082#
!conv2d_50/StatefulPartitionedCall
activation_62/PartitionedCallPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_62_layer_call_and_return_conditional_losses_3420292
activation_62/PartitionedCall
 max_pooling2d_38/PartitionedCallPartitionedCall&activation_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_3418802"
 max_pooling2d_38/PartitionedCallÈ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_51_342059conv2d_51_342061*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_3420482#
!conv2d_51/StatefulPartitionedCall
activation_63/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_63_layer_call_and_return_conditional_losses_3420692
activation_63/PartitionedCall±
+global_average_pooling2d_12/PartitionedCallPartitionedCall&activation_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_3418932-
+global_average_pooling2d_12/PartitionedCallÅ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_12/PartitionedCall:output:0dense_12_342099dense_12_342101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_3420882"
 dense_12/StatefulPartitionedCall
activation_64/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_3421092
activation_64/PartitionedCallÕ
IdentityIdentity&activation_64/PartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall&^sequential_26/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ  :::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%sequential_26/StatefulPartitionedCall%sequential_26/StatefulPartitionedCall:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-
_user_specified_namesequential_26_input


*__inference_conv2d_48_layer_call_fn_342710

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_3419282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¿
e
I__inference_activation_64_layer_call_and_return_conditional_losses_342831

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
«º
à
I__inference_sequential_26_layer_call_and_return_conditional_losses_341836

inputs@
<random_rotation_13_stateful_uniform_statefuluniform_resource
identity¢3random_rotation_13/stateful_uniform/StatefulUniformj
random_rotation_13/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_13/Shape
&random_rotation_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_13/strided_slice/stack
(random_rotation_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice/stack_1
(random_rotation_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice/stack_2Ô
 random_rotation_13/strided_sliceStridedSlice!random_rotation_13/Shape:output:0/random_rotation_13/strided_slice/stack:output:01random_rotation_13/strided_slice/stack_1:output:01random_rotation_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_13/strided_slice
(random_rotation_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice_1/stack¢
*random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_1/stack_1¢
*random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_1/stack_2Þ
"random_rotation_13/strided_slice_1StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_1/stack:output:03random_rotation_13/strided_slice_1/stack_1:output:03random_rotation_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_13/strided_slice_1
random_rotation_13/CastCast+random_rotation_13/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_13/Cast
(random_rotation_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice_2/stack¢
*random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_2/stack_1¢
*random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_2/stack_2Þ
"random_rotation_13/strided_slice_2StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_2/stack:output:03random_rotation_13/strided_slice_2/stack_1:output:03random_rotation_13/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_13/strided_slice_2
random_rotation_13/Cast_1Cast+random_rotation_13/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_13/Cast_1·
)random_rotation_13/stateful_uniform/shapePack)random_rotation_13/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_13/stateful_uniform/shape
'random_rotation_13/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2)
'random_rotation_13/stateful_uniform/min
'random_rotation_13/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2)
'random_rotation_13/stateful_uniform/maxÀ
=random_rotation_13/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2?
=random_rotation_13/stateful_uniform/StatefulUniform/algorithmï
3random_rotation_13/stateful_uniform/StatefulUniformStatefulUniform<random_rotation_13_stateful_uniform_statefuluniform_resourceFrandom_rotation_13/stateful_uniform/StatefulUniform/algorithm:output:02random_rotation_13/stateful_uniform/shape:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shape_dtype025
3random_rotation_13/stateful_uniform/StatefulUniformÞ
'random_rotation_13/stateful_uniform/subSub0random_rotation_13/stateful_uniform/max:output:00random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_13/stateful_uniform/subò
'random_rotation_13/stateful_uniform/mulMul<random_rotation_13/stateful_uniform/StatefulUniform:output:0+random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_13/stateful_uniform/mulÞ
#random_rotation_13/stateful_uniformAdd+random_rotation_13/stateful_uniform/mul:z:00random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#random_rotation_13/stateful_uniform
(random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(random_rotation_13/rotation_matrix/sub/yÊ
&random_rotation_13/rotation_matrix/subSubrandom_rotation_13/Cast_1:y:01random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_13/rotation_matrix/sub®
&random_rotation_13/rotation_matrix/CosCos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/Cos
*random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_1/yÐ
(random_rotation_13/rotation_matrix/sub_1Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_1ß
&random_rotation_13/rotation_matrix/mulMul*random_rotation_13/rotation_matrix/Cos:y:0,random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/mul®
&random_rotation_13/rotation_matrix/SinSin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/Sin
*random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_2/yÎ
(random_rotation_13/rotation_matrix/sub_2Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_2ã
(random_rotation_13/rotation_matrix/mul_1Mul*random_rotation_13/rotation_matrix/Sin:y:0,random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_1ã
(random_rotation_13/rotation_matrix/sub_3Sub*random_rotation_13/rotation_matrix/mul:z:0,random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_3ã
(random_rotation_13/rotation_matrix/sub_4Sub*random_rotation_13/rotation_matrix/sub:z:0,random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_4¡
,random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_13/rotation_matrix/truediv/yö
*random_rotation_13/rotation_matrix/truedivRealDiv,random_rotation_13/rotation_matrix/sub_4:z:05random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_rotation_13/rotation_matrix/truediv
*random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_5/yÎ
(random_rotation_13/rotation_matrix/sub_5Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_5²
(random_rotation_13/rotation_matrix/Sin_1Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_1
*random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_6/yÐ
(random_rotation_13/rotation_matrix/sub_6Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_6å
(random_rotation_13/rotation_matrix/mul_2Mul,random_rotation_13/rotation_matrix/Sin_1:y:0,random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_2²
(random_rotation_13/rotation_matrix/Cos_1Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_1
*random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_7/yÎ
(random_rotation_13/rotation_matrix/sub_7Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_7å
(random_rotation_13/rotation_matrix/mul_3Mul,random_rotation_13/rotation_matrix/Cos_1:y:0,random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_3ã
&random_rotation_13/rotation_matrix/addAddV2,random_rotation_13/rotation_matrix/mul_2:z:0,random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/addã
(random_rotation_13/rotation_matrix/sub_8Sub,random_rotation_13/rotation_matrix/sub_5:z:0*random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_8¥
.random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_13/rotation_matrix/truediv_1/yü
,random_rotation_13/rotation_matrix/truediv_1RealDiv,random_rotation_13/rotation_matrix/sub_8:z:07random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_rotation_13/rotation_matrix/truediv_1«
(random_rotation_13/rotation_matrix/ShapeShape'random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_13/rotation_matrix/Shapeº
6random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_13/rotation_matrix/strided_slice/stack¾
8random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_13/rotation_matrix/strided_slice/stack_1¾
8random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_13/rotation_matrix/strided_slice/stack_2´
0random_rotation_13/rotation_matrix/strided_sliceStridedSlice1random_rotation_13/rotation_matrix/Shape:output:0?random_rotation_13/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_13/rotation_matrix/strided_slice²
(random_rotation_13/rotation_matrix/Cos_2Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_2Å
8random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_1/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_1StridedSlice,random_rotation_13/rotation_matrix/Cos_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_1²
(random_rotation_13/rotation_matrix/Sin_2Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_2Å
8random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_2/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_2StridedSlice,random_rotation_13/rotation_matrix/Sin_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_2Æ
&random_rotation_13/rotation_matrix/NegNeg;random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/NegÅ
8random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_3/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2ë
2random_rotation_13/rotation_matrix/strided_slice_3StridedSlice.random_rotation_13/rotation_matrix/truediv:z:0Arandom_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_3²
(random_rotation_13/rotation_matrix/Sin_3Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_3Å
8random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_4/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_4StridedSlice,random_rotation_13/rotation_matrix/Sin_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_4²
(random_rotation_13/rotation_matrix/Cos_3Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_3Å
8random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_5/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_5StridedSlice,random_rotation_13/rotation_matrix/Cos_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_5Å
8random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_6/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2í
2random_rotation_13/rotation_matrix/strided_slice_6StridedSlice0random_rotation_13/rotation_matrix/truediv_1:z:0Arandom_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_6¢
.random_rotation_13/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_13/rotation_matrix/zeros/mul/yø
,random_rotation_13/rotation_matrix/zeros/mulMul9random_rotation_13/rotation_matrix/strided_slice:output:07random_rotation_13/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_13/rotation_matrix/zeros/mul¥
/random_rotation_13/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è21
/random_rotation_13/rotation_matrix/zeros/Less/yó
-random_rotation_13/rotation_matrix/zeros/LessLess0random_rotation_13/rotation_matrix/zeros/mul:z:08random_rotation_13/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_13/rotation_matrix/zeros/Less¨
1random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_13/rotation_matrix/zeros/packed/1
/random_rotation_13/rotation_matrix/zeros/packedPack9random_rotation_13/rotation_matrix/strided_slice:output:0:random_rotation_13/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_13/rotation_matrix/zeros/packed¥
.random_rotation_13/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_13/rotation_matrix/zeros/Const
(random_rotation_13/rotation_matrix/zerosFill8random_rotation_13/rotation_matrix/zeros/packed:output:07random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/zeros¢
.random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_13/rotation_matrix/concat/axisæ
)random_rotation_13/rotation_matrix/concatConcatV2;random_rotation_13/rotation_matrix/strided_slice_1:output:0*random_rotation_13/rotation_matrix/Neg:y:0;random_rotation_13/rotation_matrix/strided_slice_3:output:0;random_rotation_13/rotation_matrix/strided_slice_4:output:0;random_rotation_13/rotation_matrix/strided_slice_5:output:0;random_rotation_13/rotation_matrix/strided_slice_6:output:01random_rotation_13/rotation_matrix/zeros:output:07random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_13/rotation_matrix/concat~
"random_rotation_13/transform/ShapeShapeinputs*
T0*
_output_shapes
:2$
"random_rotation_13/transform/Shape®
0random_rotation_13/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_13/transform/strided_slice/stack²
2random_rotation_13/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_13/transform/strided_slice/stack_1²
2random_rotation_13/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_13/transform/strided_slice/stack_2ü
*random_rotation_13/transform/strided_sliceStridedSlice+random_rotation_13/transform/Shape:output:09random_rotation_13/transform/strided_slice/stack:output:0;random_rotation_13/transform/strided_slice/stack_1:output:0;random_rotation_13/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_13/transform/strided_slice
'random_rotation_13/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_13/transform/fill_value¦
7random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs2random_rotation_13/rotation_matrix/concat:output:03random_rotation_13/transform/strided_slice:output:00random_rotation_13/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_13/transform/ImageProjectiveTransformV3Þ
IdentityIdentityLrandom_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:04^random_rotation_13/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  :2j
3random_rotation_13/stateful_uniform/StatefulUniform3random_rotation_13/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Û
e
I__inference_activation_63_layer_call_and_return_conditional_losses_342069

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ
\
.__inference_sequential_26_layer_call_fn_341850
random_rotation_13_input
identityä
PartitionedCallPartitionedCallrandom_rotation_13_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418472
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :i e
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
2
_user_specified_namerandom_rotation_13_input
²
M
1__inference_max_pooling2d_37_layer_call_fn_341874

inputs
identityð
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_3418682
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
J
.__inference_sequential_26_layer_call_fn_342691

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418472
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ë	
Þ
E__inference_conv2d_49_layer_call_and_return_conditional_losses_341968

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
×
e
I__inference_activation_60_layer_call_and_return_conditional_losses_341949

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ   :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
 
_user_specified_nameinputs


.__inference_sequential_26_layer_call_fn_341841
random_rotation_13_input
unknown
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallrandom_rotation_13_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  :22
StatefulPartitionedCallStatefulPartitionedCall:i e
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
2
_user_specified_namerandom_rotation_13_input
æ
t
.__inference_sequential_26_layer_call_fn_342686

inputs
unknown
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  :22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ó
e
I__inference_sequential_26_layer_call_and_return_conditional_losses_342679

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
£<
õ
I__inference_sequential_27_layer_call_and_return_conditional_losses_342267

inputs
conv2d_48_342232
conv2d_48_342234
conv2d_49_342239
conv2d_49_342241
conv2d_50_342246
conv2d_50_342248
conv2d_51_342253
conv2d_51_342255
dense_12_342260
dense_12_342262
identity¢!conv2d_48/StatefulPartitionedCall¢!conv2d_49/StatefulPartitionedCall¢!conv2d_50/StatefulPartitionedCall¢!conv2d_51/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCallî
sequential_26/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418472
sequential_26/PartitionedCallÄ
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall&sequential_26/PartitionedCall:output:0conv2d_48_342232conv2d_48_342234*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_3419282#
!conv2d_48/StatefulPartitionedCall
activation_60/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_3419492
activation_60/PartitionedCall
 max_pooling2d_36/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_3418562"
 max_pooling2d_36/PartitionedCallÇ
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_49_342239conv2d_49_342241*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_3419682#
!conv2d_49/StatefulPartitionedCall
activation_61/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_3419892
activation_61/PartitionedCall
 max_pooling2d_37/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_3418682"
 max_pooling2d_37/PartitionedCallÈ
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_50_342246conv2d_50_342248*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_50_layer_call_and_return_conditional_losses_3420082#
!conv2d_50/StatefulPartitionedCall
activation_62/PartitionedCallPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_62_layer_call_and_return_conditional_losses_3420292
activation_62/PartitionedCall
 max_pooling2d_38/PartitionedCallPartitionedCall&activation_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_3418802"
 max_pooling2d_38/PartitionedCallÈ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_51_342253conv2d_51_342255*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_3420482#
!conv2d_51/StatefulPartitionedCall
activation_63/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_63_layer_call_and_return_conditional_losses_3420692
activation_63/PartitionedCall±
+global_average_pooling2d_12/PartitionedCallPartitionedCall&activation_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_3418932-
+global_average_pooling2d_12/PartitionedCallÅ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_12/PartitionedCall:output:0dense_12_342260dense_12_342262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_3420882"
 dense_12/StatefulPartitionedCall
activation_64/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_3421092
activation_64/PartitionedCall­
IdentityIdentity&activation_64/PartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ  ::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ó	
Þ
E__inference_conv2d_51_layer_call_and_return_conditional_losses_342788

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_341868

inputs
identity¬
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
>
·
I__inference_sequential_27_layer_call_and_return_conditional_losses_342201

inputs
sequential_26_342163
conv2d_48_342166
conv2d_48_342168
conv2d_49_342173
conv2d_49_342175
conv2d_50_342180
conv2d_50_342182
conv2d_51_342187
conv2d_51_342189
dense_12_342194
dense_12_342196
identity¢!conv2d_48/StatefulPartitionedCall¢!conv2d_49/StatefulPartitionedCall¢!conv2d_50/StatefulPartitionedCall¢!conv2d_51/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢%sequential_26/StatefulPartitionedCall
%sequential_26/StatefulPartitionedCallStatefulPartitionedCallinputssequential_26_342163*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418362'
%sequential_26/StatefulPartitionedCallÌ
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall.sequential_26/StatefulPartitionedCall:output:0conv2d_48_342166conv2d_48_342168*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_3419282#
!conv2d_48/StatefulPartitionedCall
activation_60/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_3419492
activation_60/PartitionedCall
 max_pooling2d_36/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_3418562"
 max_pooling2d_36/PartitionedCallÇ
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_49_342173conv2d_49_342175*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_3419682#
!conv2d_49/StatefulPartitionedCall
activation_61/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_3419892
activation_61/PartitionedCall
 max_pooling2d_37/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_3418682"
 max_pooling2d_37/PartitionedCallÈ
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_50_342180conv2d_50_342182*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_50_layer_call_and_return_conditional_losses_3420082#
!conv2d_50/StatefulPartitionedCall
activation_62/PartitionedCallPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_62_layer_call_and_return_conditional_losses_3420292
activation_62/PartitionedCall
 max_pooling2d_38/PartitionedCallPartitionedCall&activation_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_3418802"
 max_pooling2d_38/PartitionedCallÈ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_51_342187conv2d_51_342189*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_3420482#
!conv2d_51/StatefulPartitionedCall
activation_63/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_63_layer_call_and_return_conditional_losses_3420692
activation_63/PartitionedCall±
+global_average_pooling2d_12/PartitionedCallPartitionedCall&activation_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_3418932-
+global_average_pooling2d_12/PartitionedCallÅ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_12/PartitionedCall:output:0dense_12_342194dense_12_342196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_3420882"
 dense_12/StatefulPartitionedCall
activation_64/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_3421092
activation_64/PartitionedCallÕ
IdentityIdentity&activation_64/PartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall&^sequential_26/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ  :::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%sequential_26/StatefulPartitionedCall%sequential_26/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
<

I__inference_sequential_27_layer_call_and_return_conditional_losses_342516

inputs,
(conv2d_48_conv2d_readvariableop_resource-
)conv2d_48_biasadd_readvariableop_resource,
(conv2d_49_conv2d_readvariableop_resource-
)conv2d_49_biasadd_readvariableop_resource,
(conv2d_50_conv2d_readvariableop_resource-
)conv2d_50_biasadd_readvariableop_resource,
(conv2d_51_conv2d_readvariableop_resource-
)conv2d_51_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource
identity¢ conv2d_48/BiasAdd/ReadVariableOp¢conv2d_48/Conv2D/ReadVariableOp¢ conv2d_49/BiasAdd/ReadVariableOp¢conv2d_49/Conv2D/ReadVariableOp¢ conv2d_50/BiasAdd/ReadVariableOp¢conv2d_50/Conv2D/ReadVariableOp¢ conv2d_51/BiasAdd/ReadVariableOp¢conv2d_51/Conv2D/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp³
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_48/Conv2D/ReadVariableOpÁ
conv2d_48/Conv2DConv2Dinputs'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides
2
conv2d_48/Conv2Dª
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_48/BiasAdd/ReadVariableOp°
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2
conv2d_48/BiasAdd
activation_60/ReluReluconv2d_48/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2
activation_60/ReluÍ
max_pooling2d_36/MaxPoolMaxPool activation_60/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_36/MaxPool³
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_49/Conv2D/ReadVariableOpÜ
conv2d_49/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_49/Conv2Dª
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_49/BiasAdd/ReadVariableOp°
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_49/BiasAdd
activation_61/ReluReluconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
activation_61/ReluÍ
max_pooling2d_37/MaxPoolMaxPool activation_61/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_37/MaxPool´
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_50/Conv2D/ReadVariableOpÝ
conv2d_50/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_50/Conv2D«
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_50/BiasAdd/ReadVariableOp±
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_50/BiasAdd
activation_62/ReluReluconv2d_50/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_62/ReluÎ
max_pooling2d_38/MaxPoolMaxPool activation_62/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2
max_pooling2d_38/MaxPoolµ
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_51/Conv2D/ReadVariableOpÝ
conv2d_51/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_51/Conv2D«
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_51/BiasAdd/ReadVariableOp±
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_51/BiasAdd
activation_63/ReluReluconv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_63/Relu¹
2global_average_pooling2d_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      24
2global_average_pooling2d_12/Mean/reduction_indicesÞ
 global_average_pooling2d_12/MeanMean activation_63/Relu:activations:0;global_average_pooling2d_12/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 global_average_pooling2d_12/Mean©
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_12/MatMul/ReadVariableOp±
dense_12/MatMulMatMul)global_average_pooling2d_12/Mean:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_12/BiasAdd
activation_64/SoftmaxSoftmaxdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
activation_64/SoftmaxÊ
IdentityIdentityactivation_64/Softmax:softmax:0!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ  ::::::::::2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Û
e
I__inference_activation_62_layer_call_and_return_conditional_losses_342773

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
þ
$__inference_signature_wrapper_342325
sequential_26_input
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
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallsequential_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
!__inference__wrapped_model_3416142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-
_user_specified_namesequential_26_input

h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_341856

inputs
identity¬
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

J
.__inference_activation_64_layer_call_fn_342836

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_3421092
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ë	
Þ
E__inference_conv2d_49_layer_call_and_return_conditional_losses_342730

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Û
e
I__inference_activation_63_layer_call_and_return_conditional_losses_342802

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
e
I__inference_activation_60_layer_call_and_return_conditional_losses_342715

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ   :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
 
_user_specified_nameinputs
	
Ý
D__inference_dense_12_layer_call_and_return_conditional_losses_342088

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
e
I__inference_sequential_26_layer_call_and_return_conditional_losses_341847

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
×
e
I__inference_activation_61_layer_call_and_return_conditional_losses_341989

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¿
J
.__inference_activation_61_layer_call_fn_342749

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_3419892
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ã
J
.__inference_activation_63_layer_call_fn_342807

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_63_layer_call_and_return_conditional_losses_3420692
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
e
I__inference_activation_62_layer_call_and_return_conditional_losses_342029

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡	

.__inference_sequential_27_layer_call_fn_342290
sequential_26_input
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
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallsequential_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_3422672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-
_user_specified_namesequential_26_input


*__inference_conv2d_49_layer_call_fn_342739

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_3419682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
²
M
1__inference_max_pooling2d_36_layer_call_fn_341862

inputs
identityð
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_3418562
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó	
Þ
E__inference_conv2d_51_layer_call_and_return_conditional_losses_342048

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
e
I__inference_activation_61_layer_call_and_return_conditional_losses_342744

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


*__inference_conv2d_50_layer_call_fn_342768

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_50_layer_call_and_return_conditional_losses_3420082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

X
<__inference_global_average_pooling2d_12_layer_call_fn_341899

inputs
identityá
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_3418932
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
J
.__inference_activation_62_layer_call_fn_342778

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_62_layer_call_and_return_conditional_losses_3420292
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë	
Þ
E__inference_conv2d_48_layer_call_and_return_conditional_losses_341928

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
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
:ÿÿÿÿÿÿÿÿÿ   2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¥
¢
I__inference_sequential_27_layer_call_and_return_conditional_losses_342472

inputsN
Jsequential_26_random_rotation_13_stateful_uniform_statefuluniform_resource,
(conv2d_48_conv2d_readvariableop_resource-
)conv2d_48_biasadd_readvariableop_resource,
(conv2d_49_conv2d_readvariableop_resource-
)conv2d_49_biasadd_readvariableop_resource,
(conv2d_50_conv2d_readvariableop_resource-
)conv2d_50_biasadd_readvariableop_resource,
(conv2d_51_conv2d_readvariableop_resource-
)conv2d_51_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource
identity¢ conv2d_48/BiasAdd/ReadVariableOp¢conv2d_48/Conv2D/ReadVariableOp¢ conv2d_49/BiasAdd/ReadVariableOp¢conv2d_49/Conv2D/ReadVariableOp¢ conv2d_50/BiasAdd/ReadVariableOp¢conv2d_50/Conv2D/ReadVariableOp¢ conv2d_51/BiasAdd/ReadVariableOp¢conv2d_51/Conv2D/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢Asequential_26/random_rotation_13/stateful_uniform/StatefulUniform
&sequential_26/random_rotation_13/ShapeShapeinputs*
T0*
_output_shapes
:2(
&sequential_26/random_rotation_13/Shape¶
4sequential_26/random_rotation_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_26/random_rotation_13/strided_slice/stackº
6sequential_26/random_rotation_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_26/random_rotation_13/strided_slice/stack_1º
6sequential_26/random_rotation_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_26/random_rotation_13/strided_slice/stack_2¨
.sequential_26/random_rotation_13/strided_sliceStridedSlice/sequential_26/random_rotation_13/Shape:output:0=sequential_26/random_rotation_13/strided_slice/stack:output:0?sequential_26/random_rotation_13/strided_slice/stack_1:output:0?sequential_26/random_rotation_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_26/random_rotation_13/strided_sliceº
6sequential_26/random_rotation_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_26/random_rotation_13/strided_slice_1/stack¾
8sequential_26/random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_26/random_rotation_13/strided_slice_1/stack_1¾
8sequential_26/random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_26/random_rotation_13/strided_slice_1/stack_2²
0sequential_26/random_rotation_13/strided_slice_1StridedSlice/sequential_26/random_rotation_13/Shape:output:0?sequential_26/random_rotation_13/strided_slice_1/stack:output:0Asequential_26/random_rotation_13/strided_slice_1/stack_1:output:0Asequential_26/random_rotation_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_26/random_rotation_13/strided_slice_1Á
%sequential_26/random_rotation_13/CastCast9sequential_26/random_rotation_13/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_26/random_rotation_13/Castº
6sequential_26/random_rotation_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_26/random_rotation_13/strided_slice_2/stack¾
8sequential_26/random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_26/random_rotation_13/strided_slice_2/stack_1¾
8sequential_26/random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_26/random_rotation_13/strided_slice_2/stack_2²
0sequential_26/random_rotation_13/strided_slice_2StridedSlice/sequential_26/random_rotation_13/Shape:output:0?sequential_26/random_rotation_13/strided_slice_2/stack:output:0Asequential_26/random_rotation_13/strided_slice_2/stack_1:output:0Asequential_26/random_rotation_13/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_26/random_rotation_13/strided_slice_2Å
'sequential_26/random_rotation_13/Cast_1Cast9sequential_26/random_rotation_13/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'sequential_26/random_rotation_13/Cast_1á
7sequential_26/random_rotation_13/stateful_uniform/shapePack7sequential_26/random_rotation_13/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7sequential_26/random_rotation_13/stateful_uniform/shape³
5sequential_26/random_rotation_13/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿27
5sequential_26/random_rotation_13/stateful_uniform/min³
5sequential_26/random_rotation_13/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?27
5sequential_26/random_rotation_13/stateful_uniform/maxÜ
Ksequential_26/random_rotation_13/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2M
Ksequential_26/random_rotation_13/stateful_uniform/StatefulUniform/algorithmµ
Asequential_26/random_rotation_13/stateful_uniform/StatefulUniformStatefulUniformJsequential_26_random_rotation_13_stateful_uniform_statefuluniform_resourceTsequential_26/random_rotation_13/stateful_uniform/StatefulUniform/algorithm:output:0@sequential_26/random_rotation_13/stateful_uniform/shape:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shape_dtype02C
Asequential_26/random_rotation_13/stateful_uniform/StatefulUniform
5sequential_26/random_rotation_13/stateful_uniform/subSub>sequential_26/random_rotation_13/stateful_uniform/max:output:0>sequential_26/random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: 27
5sequential_26/random_rotation_13/stateful_uniform/subª
5sequential_26/random_rotation_13/stateful_uniform/mulMulJsequential_26/random_rotation_13/stateful_uniform/StatefulUniform:output:09sequential_26/random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_26/random_rotation_13/stateful_uniform/mul
1sequential_26/random_rotation_13/stateful_uniformAdd9sequential_26/random_rotation_13/stateful_uniform/mul:z:0>sequential_26/random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_26/random_rotation_13/stateful_uniformµ
6sequential_26/random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_26/random_rotation_13/rotation_matrix/sub/y
4sequential_26/random_rotation_13/rotation_matrix/subSub+sequential_26/random_rotation_13/Cast_1:y:0?sequential_26/random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 26
4sequential_26/random_rotation_13/rotation_matrix/subØ
4sequential_26/random_rotation_13/rotation_matrix/CosCos5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_26/random_rotation_13/rotation_matrix/Cos¹
8sequential_26/random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_26/random_rotation_13/rotation_matrix/sub_1/y
6sequential_26/random_rotation_13/rotation_matrix/sub_1Sub+sequential_26/random_rotation_13/Cast_1:y:0Asequential_26/random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 28
6sequential_26/random_rotation_13/rotation_matrix/sub_1
4sequential_26/random_rotation_13/rotation_matrix/mulMul8sequential_26/random_rotation_13/rotation_matrix/Cos:y:0:sequential_26/random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_26/random_rotation_13/rotation_matrix/mulØ
4sequential_26/random_rotation_13/rotation_matrix/SinSin5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_26/random_rotation_13/rotation_matrix/Sin¹
8sequential_26/random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_26/random_rotation_13/rotation_matrix/sub_2/y
6sequential_26/random_rotation_13/rotation_matrix/sub_2Sub)sequential_26/random_rotation_13/Cast:y:0Asequential_26/random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 28
6sequential_26/random_rotation_13/rotation_matrix/sub_2
6sequential_26/random_rotation_13/rotation_matrix/mul_1Mul8sequential_26/random_rotation_13/rotation_matrix/Sin:y:0:sequential_26/random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/mul_1
6sequential_26/random_rotation_13/rotation_matrix/sub_3Sub8sequential_26/random_rotation_13/rotation_matrix/mul:z:0:sequential_26/random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/sub_3
6sequential_26/random_rotation_13/rotation_matrix/sub_4Sub8sequential_26/random_rotation_13/rotation_matrix/sub:z:0:sequential_26/random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/sub_4½
:sequential_26/random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_26/random_rotation_13/rotation_matrix/truediv/y®
8sequential_26/random_rotation_13/rotation_matrix/truedivRealDiv:sequential_26/random_rotation_13/rotation_matrix/sub_4:z:0Csequential_26/random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_26/random_rotation_13/rotation_matrix/truediv¹
8sequential_26/random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_26/random_rotation_13/rotation_matrix/sub_5/y
6sequential_26/random_rotation_13/rotation_matrix/sub_5Sub)sequential_26/random_rotation_13/Cast:y:0Asequential_26/random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 28
6sequential_26/random_rotation_13/rotation_matrix/sub_5Ü
6sequential_26/random_rotation_13/rotation_matrix/Sin_1Sin5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/Sin_1¹
8sequential_26/random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_26/random_rotation_13/rotation_matrix/sub_6/y
6sequential_26/random_rotation_13/rotation_matrix/sub_6Sub+sequential_26/random_rotation_13/Cast_1:y:0Asequential_26/random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 28
6sequential_26/random_rotation_13/rotation_matrix/sub_6
6sequential_26/random_rotation_13/rotation_matrix/mul_2Mul:sequential_26/random_rotation_13/rotation_matrix/Sin_1:y:0:sequential_26/random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/mul_2Ü
6sequential_26/random_rotation_13/rotation_matrix/Cos_1Cos5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/Cos_1¹
8sequential_26/random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_26/random_rotation_13/rotation_matrix/sub_7/y
6sequential_26/random_rotation_13/rotation_matrix/sub_7Sub)sequential_26/random_rotation_13/Cast:y:0Asequential_26/random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 28
6sequential_26/random_rotation_13/rotation_matrix/sub_7
6sequential_26/random_rotation_13/rotation_matrix/mul_3Mul:sequential_26/random_rotation_13/rotation_matrix/Cos_1:y:0:sequential_26/random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/mul_3
4sequential_26/random_rotation_13/rotation_matrix/addAddV2:sequential_26/random_rotation_13/rotation_matrix/mul_2:z:0:sequential_26/random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_26/random_rotation_13/rotation_matrix/add
6sequential_26/random_rotation_13/rotation_matrix/sub_8Sub:sequential_26/random_rotation_13/rotation_matrix/sub_5:z:08sequential_26/random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/sub_8Á
<sequential_26/random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2>
<sequential_26/random_rotation_13/rotation_matrix/truediv_1/y´
:sequential_26/random_rotation_13/rotation_matrix/truediv_1RealDiv:sequential_26/random_rotation_13/rotation_matrix/sub_8:z:0Esequential_26/random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:sequential_26/random_rotation_13/rotation_matrix/truediv_1Õ
6sequential_26/random_rotation_13/rotation_matrix/ShapeShape5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:28
6sequential_26/random_rotation_13/rotation_matrix/ShapeÖ
Dsequential_26/random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential_26/random_rotation_13/rotation_matrix/strided_slice/stackÚ
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice/stack_1Ú
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice/stack_2
>sequential_26/random_rotation_13/rotation_matrix/strided_sliceStridedSlice?sequential_26/random_rotation_13/rotation_matrix/Shape:output:0Msequential_26/random_rotation_13/rotation_matrix/strided_slice/stack:output:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2@
>sequential_26/random_rotation_13/rotation_matrix/strided_sliceÜ
6sequential_26/random_rotation_13/rotation_matrix/Cos_2Cos5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/Cos_2á
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stackå
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stack_1å
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stack_2½
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_1StridedSlice:sequential_26/random_rotation_13/rotation_matrix/Cos_2:y:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_1Ü
6sequential_26/random_rotation_13/rotation_matrix/Sin_2Sin5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/Sin_2á
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stackå
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stack_1å
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stack_2½
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_2StridedSlice:sequential_26/random_rotation_13/rotation_matrix/Sin_2:y:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_2ð
4sequential_26/random_rotation_13/rotation_matrix/NegNegIsequential_26/random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_26/random_rotation_13/rotation_matrix/Negá
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stackå
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stack_1å
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stack_2¿
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_3StridedSlice<sequential_26/random_rotation_13/rotation_matrix/truediv:z:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_3Ü
6sequential_26/random_rotation_13/rotation_matrix/Sin_3Sin5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/Sin_3á
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stackå
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stack_1å
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stack_2½
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_4StridedSlice:sequential_26/random_rotation_13/rotation_matrix/Sin_3:y:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_4Ü
6sequential_26/random_rotation_13/rotation_matrix/Cos_3Cos5sequential_26/random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/Cos_3á
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stackå
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stack_1å
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stack_2½
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_5StridedSlice:sequential_26/random_rotation_13/rotation_matrix/Cos_3:y:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_5á
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stackå
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stack_1å
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stack_2Á
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_6StridedSlice>sequential_26/random_rotation_13/rotation_matrix/truediv_1:z:0Osequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Qsequential_26/random_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_26/random_rotation_13/rotation_matrix/strided_slice_6¾
<sequential_26/random_rotation_13/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_26/random_rotation_13/rotation_matrix/zeros/mul/y°
:sequential_26/random_rotation_13/rotation_matrix/zeros/mulMulGsequential_26/random_rotation_13/rotation_matrix/strided_slice:output:0Esequential_26/random_rotation_13/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2<
:sequential_26/random_rotation_13/rotation_matrix/zeros/mulÁ
=sequential_26/random_rotation_13/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2?
=sequential_26/random_rotation_13/rotation_matrix/zeros/Less/y«
;sequential_26/random_rotation_13/rotation_matrix/zeros/LessLess>sequential_26/random_rotation_13/rotation_matrix/zeros/mul:z:0Fsequential_26/random_rotation_13/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2=
;sequential_26/random_rotation_13/rotation_matrix/zeros/LessÄ
?sequential_26/random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_26/random_rotation_13/rotation_matrix/zeros/packed/1Ç
=sequential_26/random_rotation_13/rotation_matrix/zeros/packedPackGsequential_26/random_rotation_13/rotation_matrix/strided_slice:output:0Hsequential_26/random_rotation_13/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2?
=sequential_26/random_rotation_13/rotation_matrix/zeros/packedÁ
<sequential_26/random_rotation_13/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2>
<sequential_26/random_rotation_13/rotation_matrix/zeros/Const¹
6sequential_26/random_rotation_13/rotation_matrix/zerosFillFsequential_26/random_rotation_13/rotation_matrix/zeros/packed:output:0Esequential_26/random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_26/random_rotation_13/rotation_matrix/zeros¾
<sequential_26/random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_26/random_rotation_13/rotation_matrix/concat/axisò
7sequential_26/random_rotation_13/rotation_matrix/concatConcatV2Isequential_26/random_rotation_13/rotation_matrix/strided_slice_1:output:08sequential_26/random_rotation_13/rotation_matrix/Neg:y:0Isequential_26/random_rotation_13/rotation_matrix/strided_slice_3:output:0Isequential_26/random_rotation_13/rotation_matrix/strided_slice_4:output:0Isequential_26/random_rotation_13/rotation_matrix/strided_slice_5:output:0Isequential_26/random_rotation_13/rotation_matrix/strided_slice_6:output:0?sequential_26/random_rotation_13/rotation_matrix/zeros:output:0Esequential_26/random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_26/random_rotation_13/rotation_matrix/concat
0sequential_26/random_rotation_13/transform/ShapeShapeinputs*
T0*
_output_shapes
:22
0sequential_26/random_rotation_13/transform/ShapeÊ
>sequential_26/random_rotation_13/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_26/random_rotation_13/transform/strided_slice/stackÎ
@sequential_26/random_rotation_13/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_26/random_rotation_13/transform/strided_slice/stack_1Î
@sequential_26/random_rotation_13/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_26/random_rotation_13/transform/strided_slice/stack_2Ð
8sequential_26/random_rotation_13/transform/strided_sliceStridedSlice9sequential_26/random_rotation_13/transform/Shape:output:0Gsequential_26/random_rotation_13/transform/strided_slice/stack:output:0Isequential_26/random_rotation_13/transform/strided_slice/stack_1:output:0Isequential_26/random_rotation_13/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2:
8sequential_26/random_rotation_13/transform/strided_slice³
5sequential_26/random_rotation_13/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_26/random_rotation_13/transform/fill_valueì
Esequential_26/random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs@sequential_26/random_rotation_13/rotation_matrix/concat:output:0Asequential_26/random_rotation_13/transform/strided_slice:output:0>sequential_26/random_rotation_13/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2G
Esequential_26/random_rotation_13/transform/ImageProjectiveTransformV3³
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_48/Conv2D/ReadVariableOp
conv2d_48/Conv2DConv2DZsequential_26/random_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
paddingSAME*
strides
2
conv2d_48/Conv2Dª
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_48/BiasAdd/ReadVariableOp°
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2
conv2d_48/BiasAdd
activation_60/ReluReluconv2d_48/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2
activation_60/ReluÍ
max_pooling2d_36/MaxPoolMaxPool activation_60/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_36/MaxPool³
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_49/Conv2D/ReadVariableOpÜ
conv2d_49/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_49/Conv2Dª
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_49/BiasAdd/ReadVariableOp°
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_49/BiasAdd
activation_61/ReluReluconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
activation_61/ReluÍ
max_pooling2d_37/MaxPoolMaxPool activation_61/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_37/MaxPool´
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_50/Conv2D/ReadVariableOpÝ
conv2d_50/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_50/Conv2D«
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_50/BiasAdd/ReadVariableOp±
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_50/BiasAdd
activation_62/ReluReluconv2d_50/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_62/ReluÎ
max_pooling2d_38/MaxPoolMaxPool activation_62/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2
max_pooling2d_38/MaxPoolµ
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_51/Conv2D/ReadVariableOpÝ
conv2d_51/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_51/Conv2D«
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv2d_51/BiasAdd/ReadVariableOp±
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_51/BiasAdd
activation_63/ReluReluconv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_63/Relu¹
2global_average_pooling2d_12/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      24
2global_average_pooling2d_12/Mean/reduction_indicesÞ
 global_average_pooling2d_12/MeanMean activation_63/Relu:activations:0;global_average_pooling2d_12/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 global_average_pooling2d_12/Mean©
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_12/MatMul/ReadVariableOp±
dense_12/MatMulMatMul)global_average_pooling2d_12/Mean:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_12/BiasAdd
activation_64/SoftmaxSoftmaxdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
activation_64/Softmax
IdentityIdentityactivation_64/Softmax:softmax:0!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOpB^sequential_26/random_rotation_13/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ  :::::::::::2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2
Asequential_26/random_rotation_13/stateful_uniform/StatefulUniformAsequential_26/random_rotation_13/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
«º
à
I__inference_sequential_26_layer_call_and_return_conditional_losses_342675

inputs@
<random_rotation_13_stateful_uniform_statefuluniform_resource
identity¢3random_rotation_13/stateful_uniform/StatefulUniformj
random_rotation_13/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation_13/Shape
&random_rotation_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_13/strided_slice/stack
(random_rotation_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice/stack_1
(random_rotation_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice/stack_2Ô
 random_rotation_13/strided_sliceStridedSlice!random_rotation_13/Shape:output:0/random_rotation_13/strided_slice/stack:output:01random_rotation_13/strided_slice/stack_1:output:01random_rotation_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_13/strided_slice
(random_rotation_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice_1/stack¢
*random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_1/stack_1¢
*random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_1/stack_2Þ
"random_rotation_13/strided_slice_1StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_1/stack:output:03random_rotation_13/strided_slice_1/stack_1:output:03random_rotation_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_13/strided_slice_1
random_rotation_13/CastCast+random_rotation_13/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_13/Cast
(random_rotation_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice_2/stack¢
*random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_2/stack_1¢
*random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_2/stack_2Þ
"random_rotation_13/strided_slice_2StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_2/stack:output:03random_rotation_13/strided_slice_2/stack_1:output:03random_rotation_13/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_13/strided_slice_2
random_rotation_13/Cast_1Cast+random_rotation_13/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_13/Cast_1·
)random_rotation_13/stateful_uniform/shapePack)random_rotation_13/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_13/stateful_uniform/shape
'random_rotation_13/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2)
'random_rotation_13/stateful_uniform/min
'random_rotation_13/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2)
'random_rotation_13/stateful_uniform/maxÀ
=random_rotation_13/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2?
=random_rotation_13/stateful_uniform/StatefulUniform/algorithmï
3random_rotation_13/stateful_uniform/StatefulUniformStatefulUniform<random_rotation_13_stateful_uniform_statefuluniform_resourceFrandom_rotation_13/stateful_uniform/StatefulUniform/algorithm:output:02random_rotation_13/stateful_uniform/shape:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shape_dtype025
3random_rotation_13/stateful_uniform/StatefulUniformÞ
'random_rotation_13/stateful_uniform/subSub0random_rotation_13/stateful_uniform/max:output:00random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_13/stateful_uniform/subò
'random_rotation_13/stateful_uniform/mulMul<random_rotation_13/stateful_uniform/StatefulUniform:output:0+random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_13/stateful_uniform/mulÞ
#random_rotation_13/stateful_uniformAdd+random_rotation_13/stateful_uniform/mul:z:00random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#random_rotation_13/stateful_uniform
(random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(random_rotation_13/rotation_matrix/sub/yÊ
&random_rotation_13/rotation_matrix/subSubrandom_rotation_13/Cast_1:y:01random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_13/rotation_matrix/sub®
&random_rotation_13/rotation_matrix/CosCos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/Cos
*random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_1/yÐ
(random_rotation_13/rotation_matrix/sub_1Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_1ß
&random_rotation_13/rotation_matrix/mulMul*random_rotation_13/rotation_matrix/Cos:y:0,random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/mul®
&random_rotation_13/rotation_matrix/SinSin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/Sin
*random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_2/yÎ
(random_rotation_13/rotation_matrix/sub_2Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_2ã
(random_rotation_13/rotation_matrix/mul_1Mul*random_rotation_13/rotation_matrix/Sin:y:0,random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_1ã
(random_rotation_13/rotation_matrix/sub_3Sub*random_rotation_13/rotation_matrix/mul:z:0,random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_3ã
(random_rotation_13/rotation_matrix/sub_4Sub*random_rotation_13/rotation_matrix/sub:z:0,random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_4¡
,random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_13/rotation_matrix/truediv/yö
*random_rotation_13/rotation_matrix/truedivRealDiv,random_rotation_13/rotation_matrix/sub_4:z:05random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_rotation_13/rotation_matrix/truediv
*random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_5/yÎ
(random_rotation_13/rotation_matrix/sub_5Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_5²
(random_rotation_13/rotation_matrix/Sin_1Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_1
*random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_6/yÐ
(random_rotation_13/rotation_matrix/sub_6Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_6å
(random_rotation_13/rotation_matrix/mul_2Mul,random_rotation_13/rotation_matrix/Sin_1:y:0,random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_2²
(random_rotation_13/rotation_matrix/Cos_1Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_1
*random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_7/yÎ
(random_rotation_13/rotation_matrix/sub_7Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_7å
(random_rotation_13/rotation_matrix/mul_3Mul,random_rotation_13/rotation_matrix/Cos_1:y:0,random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_3ã
&random_rotation_13/rotation_matrix/addAddV2,random_rotation_13/rotation_matrix/mul_2:z:0,random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/addã
(random_rotation_13/rotation_matrix/sub_8Sub,random_rotation_13/rotation_matrix/sub_5:z:0*random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_8¥
.random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_13/rotation_matrix/truediv_1/yü
,random_rotation_13/rotation_matrix/truediv_1RealDiv,random_rotation_13/rotation_matrix/sub_8:z:07random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_rotation_13/rotation_matrix/truediv_1«
(random_rotation_13/rotation_matrix/ShapeShape'random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_13/rotation_matrix/Shapeº
6random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_13/rotation_matrix/strided_slice/stack¾
8random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_13/rotation_matrix/strided_slice/stack_1¾
8random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_13/rotation_matrix/strided_slice/stack_2´
0random_rotation_13/rotation_matrix/strided_sliceStridedSlice1random_rotation_13/rotation_matrix/Shape:output:0?random_rotation_13/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_13/rotation_matrix/strided_slice²
(random_rotation_13/rotation_matrix/Cos_2Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_2Å
8random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_1/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_1StridedSlice,random_rotation_13/rotation_matrix/Cos_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_1²
(random_rotation_13/rotation_matrix/Sin_2Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_2Å
8random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_2/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_2StridedSlice,random_rotation_13/rotation_matrix/Sin_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_2Æ
&random_rotation_13/rotation_matrix/NegNeg;random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/NegÅ
8random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_3/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2ë
2random_rotation_13/rotation_matrix/strided_slice_3StridedSlice.random_rotation_13/rotation_matrix/truediv:z:0Arandom_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_3²
(random_rotation_13/rotation_matrix/Sin_3Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_3Å
8random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_4/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_4StridedSlice,random_rotation_13/rotation_matrix/Sin_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_4²
(random_rotation_13/rotation_matrix/Cos_3Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_3Å
8random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_5/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_5StridedSlice,random_rotation_13/rotation_matrix/Cos_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_5Å
8random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_6/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2í
2random_rotation_13/rotation_matrix/strided_slice_6StridedSlice0random_rotation_13/rotation_matrix/truediv_1:z:0Arandom_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_6¢
.random_rotation_13/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_13/rotation_matrix/zeros/mul/yø
,random_rotation_13/rotation_matrix/zeros/mulMul9random_rotation_13/rotation_matrix/strided_slice:output:07random_rotation_13/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_13/rotation_matrix/zeros/mul¥
/random_rotation_13/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è21
/random_rotation_13/rotation_matrix/zeros/Less/yó
-random_rotation_13/rotation_matrix/zeros/LessLess0random_rotation_13/rotation_matrix/zeros/mul:z:08random_rotation_13/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_13/rotation_matrix/zeros/Less¨
1random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_13/rotation_matrix/zeros/packed/1
/random_rotation_13/rotation_matrix/zeros/packedPack9random_rotation_13/rotation_matrix/strided_slice:output:0:random_rotation_13/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_13/rotation_matrix/zeros/packed¥
.random_rotation_13/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_13/rotation_matrix/zeros/Const
(random_rotation_13/rotation_matrix/zerosFill8random_rotation_13/rotation_matrix/zeros/packed:output:07random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/zeros¢
.random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_13/rotation_matrix/concat/axisæ
)random_rotation_13/rotation_matrix/concatConcatV2;random_rotation_13/rotation_matrix/strided_slice_1:output:0*random_rotation_13/rotation_matrix/Neg:y:0;random_rotation_13/rotation_matrix/strided_slice_3:output:0;random_rotation_13/rotation_matrix/strided_slice_4:output:0;random_rotation_13/rotation_matrix/strided_slice_5:output:0;random_rotation_13/rotation_matrix/strided_slice_6:output:01random_rotation_13/rotation_matrix/zeros:output:07random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_13/rotation_matrix/concat~
"random_rotation_13/transform/ShapeShapeinputs*
T0*
_output_shapes
:2$
"random_rotation_13/transform/Shape®
0random_rotation_13/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_13/transform/strided_slice/stack²
2random_rotation_13/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_13/transform/strided_slice/stack_1²
2random_rotation_13/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_13/transform/strided_slice/stack_2ü
*random_rotation_13/transform/strided_sliceStridedSlice+random_rotation_13/transform/Shape:output:09random_rotation_13/transform/strided_slice/stack:output:0;random_rotation_13/transform/strided_slice/stack_1:output:0;random_rotation_13/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_13/transform/strided_slice
'random_rotation_13/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_13/transform/fill_value¦
7random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs2random_rotation_13/rotation_matrix/concat:output:03random_rotation_13/transform/strided_slice:output:00random_rotation_13/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_13/transform/ImageProjectiveTransformV3Þ
IdentityIdentityLrandom_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:04^random_rotation_13/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  :2j
3random_rotation_13/stateful_uniform/StatefulUniform3random_rotation_13/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¿
e
I__inference_activation_64_layer_call_and_return_conditional_losses_342109

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


*__inference_conv2d_51_layer_call_fn_342797

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_3420482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
s
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_341893

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
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
ò
I__inference_sequential_26_layer_call_and_return_conditional_losses_341722
random_rotation_13_input@
<random_rotation_13_stateful_uniform_statefuluniform_resource
identity¢3random_rotation_13/stateful_uniform/StatefulUniform|
random_rotation_13/ShapeShaperandom_rotation_13_input*
T0*
_output_shapes
:2
random_rotation_13/Shape
&random_rotation_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_13/strided_slice/stack
(random_rotation_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice/stack_1
(random_rotation_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice/stack_2Ô
 random_rotation_13/strided_sliceStridedSlice!random_rotation_13/Shape:output:0/random_rotation_13/strided_slice/stack:output:01random_rotation_13/strided_slice/stack_1:output:01random_rotation_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_13/strided_slice
(random_rotation_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice_1/stack¢
*random_rotation_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_1/stack_1¢
*random_rotation_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_1/stack_2Þ
"random_rotation_13/strided_slice_1StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_1/stack:output:03random_rotation_13/strided_slice_1/stack_1:output:03random_rotation_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_13/strided_slice_1
random_rotation_13/CastCast+random_rotation_13/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_13/Cast
(random_rotation_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_13/strided_slice_2/stack¢
*random_rotation_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_2/stack_1¢
*random_rotation_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_13/strided_slice_2/stack_2Þ
"random_rotation_13/strided_slice_2StridedSlice!random_rotation_13/Shape:output:01random_rotation_13/strided_slice_2/stack:output:03random_rotation_13/strided_slice_2/stack_1:output:03random_rotation_13/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_13/strided_slice_2
random_rotation_13/Cast_1Cast+random_rotation_13/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_13/Cast_1·
)random_rotation_13/stateful_uniform/shapePack)random_rotation_13/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_13/stateful_uniform/shape
'random_rotation_13/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2)
'random_rotation_13/stateful_uniform/min
'random_rotation_13/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2)
'random_rotation_13/stateful_uniform/maxÀ
=random_rotation_13/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2?
=random_rotation_13/stateful_uniform/StatefulUniform/algorithmï
3random_rotation_13/stateful_uniform/StatefulUniformStatefulUniform<random_rotation_13_stateful_uniform_statefuluniform_resourceFrandom_rotation_13/stateful_uniform/StatefulUniform/algorithm:output:02random_rotation_13/stateful_uniform/shape:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shape_dtype025
3random_rotation_13/stateful_uniform/StatefulUniformÞ
'random_rotation_13/stateful_uniform/subSub0random_rotation_13/stateful_uniform/max:output:00random_rotation_13/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_13/stateful_uniform/subò
'random_rotation_13/stateful_uniform/mulMul<random_rotation_13/stateful_uniform/StatefulUniform:output:0+random_rotation_13/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_13/stateful_uniform/mulÞ
#random_rotation_13/stateful_uniformAdd+random_rotation_13/stateful_uniform/mul:z:00random_rotation_13/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#random_rotation_13/stateful_uniform
(random_rotation_13/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(random_rotation_13/rotation_matrix/sub/yÊ
&random_rotation_13/rotation_matrix/subSubrandom_rotation_13/Cast_1:y:01random_rotation_13/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_13/rotation_matrix/sub®
&random_rotation_13/rotation_matrix/CosCos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/Cos
*random_rotation_13/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_1/yÐ
(random_rotation_13/rotation_matrix/sub_1Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_1ß
&random_rotation_13/rotation_matrix/mulMul*random_rotation_13/rotation_matrix/Cos:y:0,random_rotation_13/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/mul®
&random_rotation_13/rotation_matrix/SinSin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/Sin
*random_rotation_13/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_2/yÎ
(random_rotation_13/rotation_matrix/sub_2Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_2ã
(random_rotation_13/rotation_matrix/mul_1Mul*random_rotation_13/rotation_matrix/Sin:y:0,random_rotation_13/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_1ã
(random_rotation_13/rotation_matrix/sub_3Sub*random_rotation_13/rotation_matrix/mul:z:0,random_rotation_13/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_3ã
(random_rotation_13/rotation_matrix/sub_4Sub*random_rotation_13/rotation_matrix/sub:z:0,random_rotation_13/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_4¡
,random_rotation_13/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_13/rotation_matrix/truediv/yö
*random_rotation_13/rotation_matrix/truedivRealDiv,random_rotation_13/rotation_matrix/sub_4:z:05random_rotation_13/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_rotation_13/rotation_matrix/truediv
*random_rotation_13/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_5/yÎ
(random_rotation_13/rotation_matrix/sub_5Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_5²
(random_rotation_13/rotation_matrix/Sin_1Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_1
*random_rotation_13/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_6/yÐ
(random_rotation_13/rotation_matrix/sub_6Subrandom_rotation_13/Cast_1:y:03random_rotation_13/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_6å
(random_rotation_13/rotation_matrix/mul_2Mul,random_rotation_13/rotation_matrix/Sin_1:y:0,random_rotation_13/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_2²
(random_rotation_13/rotation_matrix/Cos_1Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_1
*random_rotation_13/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_13/rotation_matrix/sub_7/yÎ
(random_rotation_13/rotation_matrix/sub_7Subrandom_rotation_13/Cast:y:03random_rotation_13/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_13/rotation_matrix/sub_7å
(random_rotation_13/rotation_matrix/mul_3Mul,random_rotation_13/rotation_matrix/Cos_1:y:0,random_rotation_13/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/mul_3ã
&random_rotation_13/rotation_matrix/addAddV2,random_rotation_13/rotation_matrix/mul_2:z:0,random_rotation_13/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/addã
(random_rotation_13/rotation_matrix/sub_8Sub,random_rotation_13/rotation_matrix/sub_5:z:0*random_rotation_13/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/sub_8¥
.random_rotation_13/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_13/rotation_matrix/truediv_1/yü
,random_rotation_13/rotation_matrix/truediv_1RealDiv,random_rotation_13/rotation_matrix/sub_8:z:07random_rotation_13/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_rotation_13/rotation_matrix/truediv_1«
(random_rotation_13/rotation_matrix/ShapeShape'random_rotation_13/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_13/rotation_matrix/Shapeº
6random_rotation_13/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_13/rotation_matrix/strided_slice/stack¾
8random_rotation_13/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_13/rotation_matrix/strided_slice/stack_1¾
8random_rotation_13/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_13/rotation_matrix/strided_slice/stack_2´
0random_rotation_13/rotation_matrix/strided_sliceStridedSlice1random_rotation_13/rotation_matrix/Shape:output:0?random_rotation_13/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_13/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_13/rotation_matrix/strided_slice²
(random_rotation_13/rotation_matrix/Cos_2Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_2Å
8random_rotation_13/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_1/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_1/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_1/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_1StridedSlice,random_rotation_13/rotation_matrix/Cos_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_1²
(random_rotation_13/rotation_matrix/Sin_2Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_2Å
8random_rotation_13/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_2/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_2/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_2/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_2StridedSlice,random_rotation_13/rotation_matrix/Sin_2:y:0Arandom_rotation_13/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_2Æ
&random_rotation_13/rotation_matrix/NegNeg;random_rotation_13/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_13/rotation_matrix/NegÅ
8random_rotation_13/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_3/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_3/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_3/stack_2ë
2random_rotation_13/rotation_matrix/strided_slice_3StridedSlice.random_rotation_13/rotation_matrix/truediv:z:0Arandom_rotation_13/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_3²
(random_rotation_13/rotation_matrix/Sin_3Sin'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Sin_3Å
8random_rotation_13/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_4/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_4/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_4/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_4StridedSlice,random_rotation_13/rotation_matrix/Sin_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_4²
(random_rotation_13/rotation_matrix/Cos_3Cos'random_rotation_13/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/Cos_3Å
8random_rotation_13/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_5/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_5/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_5/stack_2é
2random_rotation_13/rotation_matrix/strided_slice_5StridedSlice,random_rotation_13/rotation_matrix/Cos_3:y:0Arandom_rotation_13/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_5Å
8random_rotation_13/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_13/rotation_matrix/strided_slice_6/stackÉ
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_13/rotation_matrix/strided_slice_6/stack_1É
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_13/rotation_matrix/strided_slice_6/stack_2í
2random_rotation_13/rotation_matrix/strided_slice_6StridedSlice0random_rotation_13/rotation_matrix/truediv_1:z:0Arandom_rotation_13/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_13/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_13/rotation_matrix/strided_slice_6¢
.random_rotation_13/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_13/rotation_matrix/zeros/mul/yø
,random_rotation_13/rotation_matrix/zeros/mulMul9random_rotation_13/rotation_matrix/strided_slice:output:07random_rotation_13/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_13/rotation_matrix/zeros/mul¥
/random_rotation_13/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è21
/random_rotation_13/rotation_matrix/zeros/Less/yó
-random_rotation_13/rotation_matrix/zeros/LessLess0random_rotation_13/rotation_matrix/zeros/mul:z:08random_rotation_13/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_13/rotation_matrix/zeros/Less¨
1random_rotation_13/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_13/rotation_matrix/zeros/packed/1
/random_rotation_13/rotation_matrix/zeros/packedPack9random_rotation_13/rotation_matrix/strided_slice:output:0:random_rotation_13/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_13/rotation_matrix/zeros/packed¥
.random_rotation_13/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_13/rotation_matrix/zeros/Const
(random_rotation_13/rotation_matrix/zerosFill8random_rotation_13/rotation_matrix/zeros/packed:output:07random_rotation_13/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_13/rotation_matrix/zeros¢
.random_rotation_13/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_13/rotation_matrix/concat/axisæ
)random_rotation_13/rotation_matrix/concatConcatV2;random_rotation_13/rotation_matrix/strided_slice_1:output:0*random_rotation_13/rotation_matrix/Neg:y:0;random_rotation_13/rotation_matrix/strided_slice_3:output:0;random_rotation_13/rotation_matrix/strided_slice_4:output:0;random_rotation_13/rotation_matrix/strided_slice_5:output:0;random_rotation_13/rotation_matrix/strided_slice_6:output:01random_rotation_13/rotation_matrix/zeros:output:07random_rotation_13/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_13/rotation_matrix/concat
"random_rotation_13/transform/ShapeShaperandom_rotation_13_input*
T0*
_output_shapes
:2$
"random_rotation_13/transform/Shape®
0random_rotation_13/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_13/transform/strided_slice/stack²
2random_rotation_13/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_13/transform/strided_slice/stack_1²
2random_rotation_13/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_13/transform/strided_slice/stack_2ü
*random_rotation_13/transform/strided_sliceStridedSlice+random_rotation_13/transform/Shape:output:09random_rotation_13/transform/strided_slice/stack:output:0;random_rotation_13/transform/strided_slice/stack_1:output:0;random_rotation_13/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_13/transform/strided_slice
'random_rotation_13/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_13/transform/fill_value¸
7random_rotation_13/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_rotation_13_input2random_rotation_13/rotation_matrix/concat:output:03random_rotation_13/transform/strided_slice:output:00random_rotation_13/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_13/transform/ImageProjectiveTransformV3Þ
IdentityIdentityLrandom_rotation_13/transform/ImageProjectiveTransformV3:transformed_images:04^random_rotation_13/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  :2j
3random_rotation_13/stateful_uniform/StatefulUniform3random_rotation_13/stateful_uniform/StatefulUniform:i e
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
2
_user_specified_namerandom_rotation_13_input
ð	
Þ
E__inference_conv2d_50_layer_call_and_return_conditional_losses_342008

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
©
w
I__inference_sequential_26_layer_call_and_return_conditional_losses_341726
random_rotation_13_input
identityt
IdentityIdentityrandom_rotation_13_input*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :i e
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
2
_user_specified_namerandom_rotation_13_input
á
~
)__inference_dense_12_layer_call_fn_342826

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_3420882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_341880

inputs
identity¬
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ý
D__inference_dense_12_layer_call_and_return_conditional_losses_342817

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë	
Þ
E__inference_conv2d_48_layer_call_and_return_conditional_losses_342701

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *
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
:ÿÿÿÿÿÿÿÿÿ   2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
À	

.__inference_sequential_27_layer_call_fn_342226
sequential_26_input
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
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallsequential_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_3422012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ  :::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-
_user_specified_namesequential_26_input
	

.__inference_sequential_27_layer_call_fn_342543

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
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_3422012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ  :::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ú
û
.__inference_sequential_27_layer_call_fn_342568

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
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_3422672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ  ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ê<

I__inference_sequential_27_layer_call_and_return_conditional_losses_342157
sequential_26_input
conv2d_48_342122
conv2d_48_342124
conv2d_49_342129
conv2d_49_342131
conv2d_50_342136
conv2d_50_342138
conv2d_51_342143
conv2d_51_342145
dense_12_342150
dense_12_342152
identity¢!conv2d_48/StatefulPartitionedCall¢!conv2d_49/StatefulPartitionedCall¢!conv2d_50/StatefulPartitionedCall¢!conv2d_51/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCallû
sequential_26/PartitionedCallPartitionedCallsequential_26_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_3418472
sequential_26/PartitionedCallÄ
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall&sequential_26/PartitionedCall:output:0conv2d_48_342122conv2d_48_342124*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_3419282#
!conv2d_48/StatefulPartitionedCall
activation_60/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_3419492
activation_60/PartitionedCall
 max_pooling2d_36/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_3418562"
 max_pooling2d_36/PartitionedCallÇ
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_49_342129conv2d_49_342131*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_3419682#
!conv2d_49/StatefulPartitionedCall
activation_61/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_3419892
activation_61/PartitionedCall
 max_pooling2d_37/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_3418682"
 max_pooling2d_37/PartitionedCallÈ
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_50_342136conv2d_50_342138*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_50_layer_call_and_return_conditional_losses_3420082#
!conv2d_50/StatefulPartitionedCall
activation_62/PartitionedCallPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_62_layer_call_and_return_conditional_losses_3420292
activation_62/PartitionedCall
 max_pooling2d_38/PartitionedCallPartitionedCall&activation_62/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_3418802"
 max_pooling2d_38/PartitionedCallÈ
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_51_342143conv2d_51_342145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_3420482#
!conv2d_51/StatefulPartitionedCall
activation_63/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_63_layer_call_and_return_conditional_losses_3420692
activation_63/PartitionedCall±
+global_average_pooling2d_12/PartitionedCallPartitionedCall&activation_63/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_3418932-
+global_average_pooling2d_12/PartitionedCallÅ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_12/PartitionedCall:output:0dense_12_342150dense_12_342152*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_3420882"
 dense_12/StatefulPartitionedCall
activation_64/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_64_layer_call_and_return_conditional_losses_3421092
activation_64/PartitionedCall­
IdentityIdentity&activation_64/PartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ  ::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-
_user_specified_namesequential_26_input
¹U
·
__inference__traced_save_342984
file_prefix/
+savev2_conv2d_48_kernel_read_readvariableop-
)savev2_conv2d_48_bias_read_readvariableop/
+savev2_conv2d_49_kernel_read_readvariableop-
)savev2_conv2d_49_bias_read_readvariableop/
+savev2_conv2d_50_kernel_read_readvariableop-
)savev2_conv2d_50_bias_read_readvariableop/
+savev2_conv2d_51_kernel_read_readvariableop-
)savev2_conv2d_51_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop(
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
2savev2_adam_conv2d_48_kernel_m_read_readvariableop4
0savev2_adam_conv2d_48_bias_m_read_readvariableop6
2savev2_adam_conv2d_49_kernel_m_read_readvariableop4
0savev2_adam_conv2d_49_bias_m_read_readvariableop6
2savev2_adam_conv2d_50_kernel_m_read_readvariableop4
0savev2_adam_conv2d_50_bias_m_read_readvariableop6
2savev2_adam_conv2d_51_kernel_m_read_readvariableop4
0savev2_adam_conv2d_51_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop6
2savev2_adam_conv2d_48_kernel_v_read_readvariableop4
0savev2_adam_conv2d_48_bias_v_read_readvariableop6
2savev2_adam_conv2d_49_kernel_v_read_readvariableop4
0savev2_adam_conv2d_49_bias_v_read_readvariableop6
2savev2_adam_conv2d_50_kernel_v_read_readvariableop4
0savev2_adam_conv2d_50_bias_v_read_readvariableop6
2savev2_adam_conv2d_51_kernel_v_read_readvariableop4
0savev2_adam_conv2d_51_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¼
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Î
valueÄBÁ)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÚ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_48_kernel_read_readvariableop)savev2_conv2d_48_bias_read_readvariableop+savev2_conv2d_49_kernel_read_readvariableop)savev2_conv2d_49_bias_read_readvariableop+savev2_conv2d_50_kernel_read_readvariableop)savev2_conv2d_50_bias_read_readvariableop+savev2_conv2d_51_kernel_read_readvariableop)savev2_conv2d_51_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_48_kernel_m_read_readvariableop0savev2_adam_conv2d_48_bias_m_read_readvariableop2savev2_adam_conv2d_49_kernel_m_read_readvariableop0savev2_adam_conv2d_49_bias_m_read_readvariableop2savev2_adam_conv2d_50_kernel_m_read_readvariableop0savev2_adam_conv2d_50_bias_m_read_readvariableop2savev2_adam_conv2d_51_kernel_m_read_readvariableop0savev2_adam_conv2d_51_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop2savev2_adam_conv2d_48_kernel_v_read_readvariableop0savev2_adam_conv2d_48_bias_v_read_readvariableop2savev2_adam_conv2d_49_kernel_v_read_readvariableop0savev2_adam_conv2d_49_bias_v_read_readvariableop2savev2_adam_conv2d_50_kernel_v_read_readvariableop0savev2_adam_conv2d_50_bias_v_read_readvariableop2savev2_adam_conv2d_51_kernel_v_read_readvariableop0savev2_adam_conv2d_51_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)		2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*
_input_shapes
þ: : : : @:@:@::::	
:
: : : : : :: : : : : : : @:@:@::::	
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
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::%!

_output_shapes
:	
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
:@:!$

_output_shapes	
::.%*
(
_output_shapes
::!&

_output_shapes	
::%'!

_output_shapes
:	
: (

_output_shapes
:
:)

_output_shapes
: 
â¨
Ô
"__inference__traced_restore_343114
file_prefix%
!assignvariableop_conv2d_48_kernel%
!assignvariableop_1_conv2d_48_bias'
#assignvariableop_2_conv2d_49_kernel%
!assignvariableop_3_conv2d_49_bias'
#assignvariableop_4_conv2d_50_kernel%
!assignvariableop_5_conv2d_50_bias'
#assignvariableop_6_conv2d_51_kernel%
!assignvariableop_7_conv2d_51_bias&
"assignvariableop_8_dense_12_kernel$
 assignvariableop_9_dense_12_bias!
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
+assignvariableop_20_adam_conv2d_48_kernel_m-
)assignvariableop_21_adam_conv2d_48_bias_m/
+assignvariableop_22_adam_conv2d_49_kernel_m-
)assignvariableop_23_adam_conv2d_49_bias_m/
+assignvariableop_24_adam_conv2d_50_kernel_m-
)assignvariableop_25_adam_conv2d_50_bias_m/
+assignvariableop_26_adam_conv2d_51_kernel_m-
)assignvariableop_27_adam_conv2d_51_bias_m.
*assignvariableop_28_adam_dense_12_kernel_m,
(assignvariableop_29_adam_dense_12_bias_m/
+assignvariableop_30_adam_conv2d_48_kernel_v-
)assignvariableop_31_adam_conv2d_48_bias_v/
+assignvariableop_32_adam_conv2d_49_kernel_v-
)assignvariableop_33_adam_conv2d_49_bias_v/
+assignvariableop_34_adam_conv2d_50_kernel_v-
)assignvariableop_35_adam_conv2d_50_bias_v/
+assignvariableop_36_adam_conv2d_51_kernel_v-
)assignvariableop_37_adam_conv2d_51_bias_v.
*assignvariableop_38_adam_dense_12_kernel_v,
(assignvariableop_39_adam_dense_12_bias_v
identity_41¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Â
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Î
valueÄBÁ)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesà
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesû
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*º
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_49_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_49_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_50_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_50_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_51_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_51_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_12_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_12_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¥
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¦
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15¤
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¡
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20³
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_48_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21±
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_conv2d_48_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22³
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_49_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23±
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_conv2d_49_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24³
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_50_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25±
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_50_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26³
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_51_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27±
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_51_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28²
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_12_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29°
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_12_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30³
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_48_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31±
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_48_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32³
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_49_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33±
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_49_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34³
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_50_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35±
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_50_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36³
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_51_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37±
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_51_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38²
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_dense_12_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39°
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_dense_12_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_399
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÎ
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_40Á
Identity_41IdentityIdentity_40:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_41"#
identity_41Identity_41:output:0*·
_input_shapes¥
¢: ::::::::::::::::::::::::::::::::::::::::2$
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
_user_specified_namefile_prefix"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ð
serving_default¼
[
sequential_26_inputD
%serving_default_sequential_26_input:0ÿÿÿÿÿÿÿÿÿ  A
activation_640
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:õ³
Áa
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
Ô_default_save_signature
Õ__call__
+Ö&call_and_return_all_conditional_losses"©]
_tf_keras_sequential]{"class_name": "Sequential", "name": "sequential_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_26_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_13_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_13", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_48", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_60", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_36", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_61", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_50", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_62", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_63", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_12", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_64", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_27", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_26_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_13_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_13", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_48", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_60", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_36", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_61", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_50", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_62", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_63", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_12", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_64", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ö
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses"Ø

_tf_keras_sequential¹
{"class_name": "Sequential", "name": "sequential_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_13_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_13", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_13_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_13", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
ö	

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
Ù__call__
+Ú&call_and_return_all_conditional_losses"Ï
_tf_keras_layerµ{"class_name": "Conv2D", "name": "conv2d_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_48", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
Ù
!	variables
"trainable_variables
#regularization_losses
$	keras_api
Û__call__
+Ü&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_60", "trainable": true, "dtype": "float32", "activation": "relu"}}

%	variables
&trainable_variables
'regularization_losses
(	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses"ñ
_tf_keras_layer×{"class_name": "MaxPooling2D", "name": "max_pooling2d_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_36", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ø	

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
ß__call__
+à&call_and_return_all_conditional_losses"Ñ
_tf_keras_layer·{"class_name": "Conv2D", "name": "conv2d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
Ù
/	variables
0trainable_variables
1regularization_losses
2	keras_api
á__call__
+â&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_61", "trainable": true, "dtype": "float32", "activation": "relu"}}

3	variables
4trainable_variables
5regularization_losses
6	keras_api
ã__call__
+ä&call_and_return_all_conditional_losses"ñ
_tf_keras_layer×{"class_name": "MaxPooling2D", "name": "max_pooling2d_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
÷	

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
å__call__
+æ&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Conv2D", "name": "conv2d_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_50", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
Ù
=	variables
>trainable_variables
?regularization_losses
@	keras_api
ç__call__
+è&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_62", "trainable": true, "dtype": "float32", "activation": "relu"}}

A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
é__call__
+ê&call_and_return_all_conditional_losses"ñ
_tf_keras_layer×{"class_name": "MaxPooling2D", "name": "max_pooling2d_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ù	

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
ë__call__
+ì&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_51", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
Ù
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
í__call__
+î&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_63", "trainable": true, "dtype": "float32", "activation": "relu"}}

O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
ï__call__
+ð&call_and_return_all_conditional_losses"
_tf_keras_layerð{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_12", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ø

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses"Ñ
_tf_keras_layer·{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
Ü
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
ó__call__
+ô&call_and_return_all_conditional_losses"Ë
_tf_keras_layer±{"class_name": "Activation", "name": "activation_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_64", "trainable": true, "dtype": "float32", "activation": "softmax"}}

]iter

^beta_1

_beta_2
	`decay
alearning_ratemÀmÁ)mÂ*mÃ7mÄ8mÅEmÆFmÇSmÈTmÉvÊvË)vÌ*vÍ7vÎ8vÏEvÐFvÑSvÒTvÓ"
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
Î
	variables

blayers
cnon_trainable_variables
trainable_variables
regularization_losses
dlayer_regularization_losses
emetrics
flayer_metrics
Õ__call__
Ô_default_save_signature
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
-
õserving_default"
signature_map
¿
g_rng
h	keras_api"£
_tf_keras_layer{"class_name": "RandomRotation", "name": "random_rotation_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_13", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
	variables

ilayers
jnon_trainable_variables
trainable_variables
regularization_losses
klayer_regularization_losses
lmetrics
mlayer_metrics
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_48/kernel
: 2conv2d_48/bias
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
°
	variables

nlayers
onon_trainable_variables
trainable_variables
regularization_losses
player_regularization_losses
qmetrics
rlayer_metrics
Ù__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
!	variables

slayers
tnon_trainable_variables
"trainable_variables
#regularization_losses
ulayer_regularization_losses
vmetrics
wlayer_metrics
Û__call__
+Ü&call_and_return_all_conditional_losses
'Ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
%	variables

xlayers
ynon_trainable_variables
&trainable_variables
'regularization_losses
zlayer_regularization_losses
{metrics
|layer_metrics
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_49/kernel
:@2conv2d_49/bias
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
²
+	variables

}layers
~non_trainable_variables
,trainable_variables
-regularization_losses
layer_regularization_losses
metrics
layer_metrics
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
/	variables
layers
non_trainable_variables
0trainable_variables
1regularization_losses
 layer_regularization_losses
metrics
layer_metrics
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
3	variables
layers
non_trainable_variables
4trainable_variables
5regularization_losses
 layer_regularization_losses
metrics
layer_metrics
ã__call__
+ä&call_and_return_all_conditional_losses
'ä"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_50/kernel
:2conv2d_50/bias
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
µ
9	variables
layers
non_trainable_variables
:trainable_variables
;regularization_losses
 layer_regularization_losses
metrics
layer_metrics
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
=	variables
layers
non_trainable_variables
>trainable_variables
?regularization_losses
 layer_regularization_losses
metrics
layer_metrics
ç__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
A	variables
layers
non_trainable_variables
Btrainable_variables
Cregularization_losses
 layer_regularization_losses
metrics
layer_metrics
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_51/kernel
:2conv2d_51/bias
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
µ
G	variables
layers
non_trainable_variables
Htrainable_variables
Iregularization_losses
 layer_regularization_losses
metrics
layer_metrics
ë__call__
+ì&call_and_return_all_conditional_losses
'ì"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
K	variables
 layers
¡non_trainable_variables
Ltrainable_variables
Mregularization_losses
 ¢layer_regularization_losses
£metrics
¤layer_metrics
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
O	variables
¥layers
¦non_trainable_variables
Ptrainable_variables
Qregularization_losses
 §layer_regularization_losses
¨metrics
©layer_metrics
ï__call__
+ð&call_and_return_all_conditional_losses
'ð"call_and_return_conditional_losses"
_generic_user_object
": 	
2dense_12/kernel
:
2dense_12/bias
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
µ
U	variables
ªlayers
«non_trainable_variables
Vtrainable_variables
Wregularization_losses
 ¬layer_regularization_losses
­metrics
®layer_metrics
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Y	variables
¯layers
°non_trainable_variables
Ztrainable_variables
[regularization_losses
 ±layer_regularization_losses
²metrics
³layer_metrics
ó__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
´0
µ1"
trackable_list_wrapper
 "
trackable_dict_wrapper
/
¶
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
¿

·total

¸count
¹	variables
º	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


»total

¼count
½
_fn_kwargs
¾	variables
¿	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:	2Variable
:  (2total
:  (2count
0
·0
¸1"
trackable_list_wrapper
.
¹	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
»0
¼1"
trackable_list_wrapper
.
¾	variables"
_generic_user_object
/:- 2Adam/conv2d_48/kernel/m
!: 2Adam/conv2d_48/bias/m
/:- @2Adam/conv2d_49/kernel/m
!:@2Adam/conv2d_49/bias/m
0:.@2Adam/conv2d_50/kernel/m
": 2Adam/conv2d_50/bias/m
1:/2Adam/conv2d_51/kernel/m
": 2Adam/conv2d_51/bias/m
':%	
2Adam/dense_12/kernel/m
 :
2Adam/dense_12/bias/m
/:- 2Adam/conv2d_48/kernel/v
!: 2Adam/conv2d_48/bias/v
/:- @2Adam/conv2d_49/kernel/v
!:@2Adam/conv2d_49/bias/v
0:.@2Adam/conv2d_50/kernel/v
": 2Adam/conv2d_50/bias/v
1:/2Adam/conv2d_51/kernel/v
": 2Adam/conv2d_51/bias/v
':%	
2Adam/dense_12/kernel/v
 :
2Adam/dense_12/bias/v
ó2ð
!__inference__wrapped_model_341614Ê
²
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
annotationsª *:¢7
52
sequential_26_inputÿÿÿÿÿÿÿÿÿ  
2
.__inference_sequential_27_layer_call_fn_342226
.__inference_sequential_27_layer_call_fn_342568
.__inference_sequential_27_layer_call_fn_342290
.__inference_sequential_27_layer_call_fn_342543À
·²³
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
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_27_layer_call_and_return_conditional_losses_342516
I__inference_sequential_27_layer_call_and_return_conditional_losses_342472
I__inference_sequential_27_layer_call_and_return_conditional_losses_342118
I__inference_sequential_27_layer_call_and_return_conditional_losses_342157À
·²³
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
kwonlydefaultsª 
annotationsª *
 
2
.__inference_sequential_26_layer_call_fn_341850
.__inference_sequential_26_layer_call_fn_342686
.__inference_sequential_26_layer_call_fn_342691
.__inference_sequential_26_layer_call_fn_341841À
·²³
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
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_26_layer_call_and_return_conditional_losses_342679
I__inference_sequential_26_layer_call_and_return_conditional_losses_341722
I__inference_sequential_26_layer_call_and_return_conditional_losses_341726
I__inference_sequential_26_layer_call_and_return_conditional_losses_342675À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_conv2d_48_layer_call_fn_342710¢
²
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
annotationsª *
 
ï2ì
E__inference_conv2d_48_layer_call_and_return_conditional_losses_342701¢
²
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
annotationsª *
 
Ø2Õ
.__inference_activation_60_layer_call_fn_342720¢
²
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
annotationsª *
 
ó2ð
I__inference_activation_60_layer_call_and_return_conditional_losses_342715¢
²
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
annotationsª *
 
2
1__inference_max_pooling2d_36_layer_call_fn_341862à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
´2±
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_341856à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ô2Ñ
*__inference_conv2d_49_layer_call_fn_342739¢
²
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
annotationsª *
 
ï2ì
E__inference_conv2d_49_layer_call_and_return_conditional_losses_342730¢
²
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
annotationsª *
 
Ø2Õ
.__inference_activation_61_layer_call_fn_342749¢
²
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
annotationsª *
 
ó2ð
I__inference_activation_61_layer_call_and_return_conditional_losses_342744¢
²
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
annotationsª *
 
2
1__inference_max_pooling2d_37_layer_call_fn_341874à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
´2±
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_341868à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ô2Ñ
*__inference_conv2d_50_layer_call_fn_342768¢
²
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
annotationsª *
 
ï2ì
E__inference_conv2d_50_layer_call_and_return_conditional_losses_342759¢
²
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
annotationsª *
 
Ø2Õ
.__inference_activation_62_layer_call_fn_342778¢
²
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
annotationsª *
 
ó2ð
I__inference_activation_62_layer_call_and_return_conditional_losses_342773¢
²
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
annotationsª *
 
2
1__inference_max_pooling2d_38_layer_call_fn_341886à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
´2±
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_341880à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ô2Ñ
*__inference_conv2d_51_layer_call_fn_342797¢
²
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
annotationsª *
 
ï2ì
E__inference_conv2d_51_layer_call_and_return_conditional_losses_342788¢
²
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
annotationsª *
 
Ø2Õ
.__inference_activation_63_layer_call_fn_342807¢
²
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
annotationsª *
 
ó2ð
I__inference_activation_63_layer_call_and_return_conditional_losses_342802¢
²
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
annotationsª *
 
¤2¡
<__inference_global_average_pooling2d_12_layer_call_fn_341899à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¿2¼
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_341893à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ó2Ð
)__inference_dense_12_layer_call_fn_342826¢
²
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
annotationsª *
 
î2ë
D__inference_dense_12_layer_call_and_return_conditional_losses_342817¢
²
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
annotationsª *
 
Ø2Õ
.__inference_activation_64_layer_call_fn_342836¢
²
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
annotationsª *
 
ó2ð
I__inference_activation_64_layer_call_and_return_conditional_losses_342831¢
²
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
annotationsª *
 
×BÔ
$__inference_signature_wrapper_342325sequential_26_input"
²
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
annotationsª *
 ·
!__inference__wrapped_model_341614
)*78EFSTD¢A
:¢7
52
sequential_26_inputÿÿÿÿÿÿÿÿÿ  
ª "=ª:
8
activation_64'$
activation_64ÿÿÿÿÿÿÿÿÿ
µ
I__inference_activation_60_layer_call_and_return_conditional_losses_342715h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ   
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ   
 
.__inference_activation_60_layer_call_fn_342720[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ   
ª " ÿÿÿÿÿÿÿÿÿ   µ
I__inference_activation_61_layer_call_and_return_conditional_losses_342744h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
.__inference_activation_61_layer_call_fn_342749[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@·
I__inference_activation_62_layer_call_and_return_conditional_losses_342773j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_activation_62_layer_call_fn_342778]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ·
I__inference_activation_63_layer_call_and_return_conditional_losses_342802j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_activation_63_layer_call_fn_342807]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¥
I__inference_activation_64_layer_call_and_return_conditional_losses_342831X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 }
.__inference_activation_64_layer_call_fn_342836K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ
µ
E__inference_conv2d_48_layer_call_and_return_conditional_losses_342701l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ  
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ   
 
*__inference_conv2d_48_layer_call_fn_342710_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ  
ª " ÿÿÿÿÿÿÿÿÿ   µ
E__inference_conv2d_49_layer_call_and_return_conditional_losses_342730l)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
*__inference_conv2d_49_layer_call_fn_342739_)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ@¶
E__inference_conv2d_50_layer_call_and_return_conditional_losses_342759m787¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_50_layer_call_fn_342768`787¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "!ÿÿÿÿÿÿÿÿÿ·
E__inference_conv2d_51_layer_call_and_return_conditional_losses_342788nEF8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_51_layer_call_fn_342797aEF8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_12_layer_call_and_return_conditional_losses_342817]ST0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 }
)__inference_dense_12_layer_call_fn_342826PST0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
à
W__inference_global_average_pooling2d_12_layer_call_and_return_conditional_losses_341893R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ·
<__inference_global_average_pooling2d_12_layer_call_fn_341899wR¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_341856R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_36_layer_call_fn_341862R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_341868R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_37_layer_call_fn_341874R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_341880R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_38_layer_call_fn_341886R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
I__inference_sequential_26_layer_call_and_return_conditional_losses_341722¶Q¢N
G¢D
:7
random_rotation_13_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ  
 Ð
I__inference_sequential_26_layer_call_and_return_conditional_losses_341726Q¢N
G¢D
:7
random_rotation_13_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ  
 Á
I__inference_sequential_26_layer_call_and_return_conditional_losses_342675t¶?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ  
 ½
I__inference_sequential_26_layer_call_and_return_conditional_losses_342679p?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ  
 «
.__inference_sequential_26_layer_call_fn_341841y¶Q¢N
G¢D
:7
random_rotation_13_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª " ÿÿÿÿÿÿÿÿÿ  §
.__inference_sequential_26_layer_call_fn_341850uQ¢N
G¢D
:7
random_rotation_13_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª " ÿÿÿÿÿÿÿÿÿ  
.__inference_sequential_26_layer_call_fn_342686g¶?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª " ÿÿÿÿÿÿÿÿÿ  
.__inference_sequential_26_layer_call_fn_342691c?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª " ÿÿÿÿÿÿÿÿÿ  Ñ
I__inference_sequential_27_layer_call_and_return_conditional_losses_342118¶)*78EFSTL¢I
B¢?
52
sequential_26_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ï
I__inference_sequential_27_layer_call_and_return_conditional_losses_342157
)*78EFSTL¢I
B¢?
52
sequential_26_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ã
I__inference_sequential_27_layer_call_and_return_conditional_losses_342472v¶)*78EFST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Á
I__inference_sequential_27_layer_call_and_return_conditional_losses_342516t
)*78EFST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¨
.__inference_sequential_27_layer_call_fn_342226v¶)*78EFSTL¢I
B¢?
52
sequential_26_inputÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ
¦
.__inference_sequential_27_layer_call_fn_342290t
)*78EFSTL¢I
B¢?
52
sequential_26_inputÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_27_layer_call_fn_342543i¶)*78EFST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_27_layer_call_fn_342568g
)*78EFST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
Ñ
$__inference_signature_wrapper_342325¨
)*78EFST[¢X
¢ 
QªN
L
sequential_26_input52
sequential_26_inputÿÿÿÿÿÿÿÿÿ  "=ª:
8
activation_64'$
activation_64ÿÿÿÿÿÿÿÿÿ
