??
??
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
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
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_6/gamma
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_6/beta
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
: *
dtype0
?
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_6/moving_mean
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0
?
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_6/moving_variance
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
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
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
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
"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_6/gamma/m
?
6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_6/beta/m
?
5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
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
"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/m
?
6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/m
?
5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
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
"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_6/gamma/v
?
6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_6/beta/v
?
5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
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
"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/v
?
6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/v
?
5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
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
?m
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?l
value?lB?l B?l
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer-13
layer_with_weights-5
layer-14
layer-15
layer-16
layer_with_weights-6
layer-17
layer-18
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
_
layer-0
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
 bias
!trainable_variables
"	variables
#regularization_losses
$	keras_api
R
%trainable_variables
&	variables
'regularization_losses
(	keras_api
R
)trainable_variables
*	variables
+regularization_losses
,	keras_api
?
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2trainable_variables
3	variables
4regularization_losses
5	keras_api
R
6trainable_variables
7	variables
8regularization_losses
9	keras_api
h

:kernel
;bias
<trainable_variables
=	variables
>regularization_losses
?	keras_api
R
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
R
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
?
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
R
Qtrainable_variables
R	variables
Sregularization_losses
T	keras_api
h

Ukernel
Vbias
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
R
[trainable_variables
\	variables
]regularization_losses
^	keras_api
R
_trainable_variables
`	variables
aregularization_losses
b	keras_api
h

ckernel
dbias
etrainable_variables
f	variables
gregularization_losses
h	keras_api
R
itrainable_variables
j	variables
kregularization_losses
l	keras_api
R
mtrainable_variables
n	variables
oregularization_losses
p	keras_api
h

qkernel
rbias
strainable_variables
t	variables
uregularization_losses
v	keras_api
R
wtrainable_variables
x	variables
yregularization_losses
z	keras_api
?
{iter

|beta_1

}beta_2
	~decay
learning_ratem? m?.m?/m?:m?;m?Im?Jm?Um?Vm?cm?dm?qm?rm?v? v?.v?/v?:v?;v?Iv?Jv?Uv?Vv?cv?dv?qv?rv?
f
0
 1
.2
/3
:4
;5
I6
J7
U8
V9
c10
d11
q12
r13
?
0
 1
.2
/3
04
15
:6
;7
I8
J9
K10
L11
U12
V13
c14
d15
q16
r17
 
?
?non_trainable_variables
trainable_variables
?metrics
	variables
?layer_metrics
 ?layer_regularization_losses
?layers
regularization_losses
 

	?_rng
?	keras_api
 
 
 
?
?non_trainable_variables
trainable_variables
?metrics
	variables
?layer_metrics
 ?layer_regularization_losses
?layers
regularization_losses
\Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?
?non_trainable_variables
!trainable_variables
?metrics
"	variables
?layer_metrics
 ?layer_regularization_losses
?layers
#regularization_losses
 
 
 
?
?non_trainable_variables
%trainable_variables
?metrics
&	variables
?layer_metrics
 ?layer_regularization_losses
?layers
'regularization_losses
 
 
 
?
?non_trainable_variables
)trainable_variables
?metrics
*	variables
?layer_metrics
 ?layer_regularization_losses
?layers
+regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
02
13
 
?
?non_trainable_variables
2trainable_variables
?metrics
3	variables
?layer_metrics
 ?layer_regularization_losses
?layers
4regularization_losses
 
 
 
?
?non_trainable_variables
6trainable_variables
?metrics
7	variables
?layer_metrics
 ?layer_regularization_losses
?layers
8regularization_losses
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
?
?non_trainable_variables
<trainable_variables
?metrics
=	variables
?layer_metrics
 ?layer_regularization_losses
?layers
>regularization_losses
 
 
 
?
?non_trainable_variables
@trainable_variables
?metrics
A	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Bregularization_losses
 
 
 
?
?non_trainable_variables
Dtrainable_variables
?metrics
E	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Fregularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

I0
J1

I0
J1
K2
L3
 
?
?non_trainable_variables
Mtrainable_variables
?metrics
N	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Oregularization_losses
 
 
 
?
?non_trainable_variables
Qtrainable_variables
?metrics
R	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Sregularization_losses
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
?
?non_trainable_variables
Wtrainable_variables
?metrics
X	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Yregularization_losses
 
 
 
?
?non_trainable_variables
[trainable_variables
?metrics
\	variables
?layer_metrics
 ?layer_regularization_losses
?layers
]regularization_losses
 
 
 
?
?non_trainable_variables
_trainable_variables
?metrics
`	variables
?layer_metrics
 ?layer_regularization_losses
?layers
aregularization_losses
\Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

c0
d1

c0
d1
 
?
?non_trainable_variables
etrainable_variables
?metrics
f	variables
?layer_metrics
 ?layer_regularization_losses
?layers
gregularization_losses
 
 
 
?
?non_trainable_variables
itrainable_variables
?metrics
j	variables
?layer_metrics
 ?layer_regularization_losses
?layers
kregularization_losses
 
 
 
?
?non_trainable_variables
mtrainable_variables
?metrics
n	variables
?layer_metrics
 ?layer_regularization_losses
?layers
oregularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

q0
r1

q0
r1
 
?
?non_trainable_variables
strainable_variables
?metrics
t	variables
?layer_metrics
 ?layer_regularization_losses
?layers
uregularization_losses
 
 
 
?
?non_trainable_variables
wtrainable_variables
?metrics
x	variables
?layer_metrics
 ?layer_regularization_losses
?layers
yregularization_losses
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

00
11
K2
L3

?0
?1
 
 
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
16
17
18

?
_state_var
 
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

00
11
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

K0
L1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
??
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_6/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_7/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_16/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_6/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_7/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_sequential_8_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_8_inputconv2d_16/kernelconv2d_16/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasdense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_773218
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpConst*E
Tin>
<2:		*
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
__inference__traced_save_774329
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_16/kernelconv2d_16/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasdense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_16/kernel/mAdam/conv2d_16/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v*D
Tin=
;29*
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
"__inference__traced_restore_774507Ԩ
?
J
.__inference_activation_24_layer_call_fn_774133

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
I__inference_activation_24_layer_call_and_return_conditional_losses_7728942
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
??
?
H__inference_sequential_8_layer_call_and_return_conditional_losses_772207

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
?

?
$__inference_signature_wrapper_773218
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_7720012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_8_input
?
?
6__inference_batch_normalization_7_layer_call_fn_773955

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7724422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773993

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?U
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_773026

inputs
sequential_8_772968
conv2d_16_772971
conv2d_16_772973 
batch_normalization_6_772978 
batch_normalization_6_772980 
batch_normalization_6_772982 
batch_normalization_6_772984
conv2d_17_772988
conv2d_17_772990 
batch_normalization_7_772995 
batch_normalization_7_772997 
batch_normalization_7_772999 
batch_normalization_7_773001
conv2d_18_773005
conv2d_18_773007
conv2d_19_773012
conv2d_19_773014
dense_4_773019
dense_4_773021
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCallinputssequential_8_772968*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722072&
$sequential_8/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall-sequential_8/StatefulPartitionedCall:output:0conv2d_16_772971conv2d_16_772973*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7725072#
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7725282
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7722272"
 max_pooling2d_12/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0batch_normalization_6_772978batch_normalization_6_772980batch_normalization_6_772982batch_normalization_6_772984*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7725562/
-batch_normalization_6/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7726222#
!dropout_6/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_17_772988conv2d_17_772990*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7726502#
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7726712
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7723432"
 max_pooling2d_13/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0batch_normalization_7_772995batch_normalization_7_772997batch_normalization_7_772999batch_normalization_7_773001*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7726992/
-batch_normalization_7/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
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
E__inference_dropout_7_layer_call_and_return_conditional_losses_7727652#
!dropout_7/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv2d_18_773005conv2d_18_773007*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7727932#
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7728142
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7724592"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_773012conv2d_19_773014*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7728332#
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7728542
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7724722,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_773019dense_4_773021*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7728732!
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7728942
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2F
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
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773929

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_772793

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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_772833

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
I__inference_activation_23_layer_call_and_return_conditional_losses_772854

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
?
?
-__inference_sequential_8_layer_call_fn_772212
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722072
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
??
?
H__inference_sequential_8_layer_call_and_return_conditional_losses_772101
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
?
F
*__inference_dropout_6_layer_call_fn_773862

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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7726272
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
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_772765

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
?
6__inference_batch_normalization_7_layer_call_fn_774019

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7727172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773975

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
W
;__inference_global_average_pooling2d_4_layer_call_fn_772478

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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7724722
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
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773727

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_772650

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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_773688

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
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_772717

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_772556

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?Q
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_772962
sequential_8_input
conv2d_16_772907
conv2d_16_772909 
batch_normalization_6_772914 
batch_normalization_6_772916 
batch_normalization_6_772918 
batch_normalization_6_772920
conv2d_17_772924
conv2d_17_772926 
batch_normalization_7_772931 
batch_normalization_7_772933 
batch_normalization_7_772935 
batch_normalization_7_772937
conv2d_18_772941
conv2d_18_772943
conv2d_19_772948
conv2d_19_772950
dense_4_772955
dense_4_772957
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722182
sequential_8/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall%sequential_8/PartitionedCall:output:0conv2d_16_772907conv2d_16_772909*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7725072#
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7725282
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7722272"
 max_pooling2d_12/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0batch_normalization_6_772914batch_normalization_6_772916batch_normalization_6_772918batch_normalization_6_772920*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7725742/
-batch_normalization_6/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7726272
dropout_6/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_17_772924conv2d_17_772926*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7726502#
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7726712
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7723432"
 max_pooling2d_13/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0batch_normalization_7_772931batch_normalization_7_772933batch_normalization_7_772935batch_normalization_7_772937*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7727172/
-batch_normalization_7/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
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
E__inference_dropout_7_layer_call_and_return_conditional_losses_7727702
dropout_7/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv2d_18_772941conv2d_18_772943*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7727932#
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7728142
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7724592"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_772948conv2d_19_772950*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7728332#
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7728542
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7724722,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_772955dense_4_772957*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7728732!
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7728942
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2F
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
?
?
-__inference_sequential_9_layer_call_fn_773522

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

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_7730262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
q
H__inference_sequential_8_layer_call_and_return_conditional_losses_772105
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
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773911

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

*__inference_conv2d_17_layer_call_fn_773881

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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7726502
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
r
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_772472

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
??
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_773405

inputsH
Dsequential_8_random_zoom_4_stateful_uniform_statefuluniform_resource,
(conv2d_16_conv2d_readvariableop_resource-
)conv2d_16_biasadd_readvariableop_resource1
-batch_normalization_6_readvariableop_resource3
/batch_normalization_6_readvariableop_1_resourceB
>batch_normalization_6_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_17_conv2d_readvariableop_resource-
)conv2d_17_biasadd_readvariableop_resource1
-batch_normalization_7_readvariableop_resource3
/batch_normalization_7_readvariableop_1_resourceB
>batch_normalization_7_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource,
(conv2d_19_conv2d_readvariableop_resource-
)conv2d_19_biasadd_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity??$batch_normalization_6/AssignNewValue?&batch_normalization_6/AssignNewValue_1?5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?$batch_normalization_7/AssignNewValue?&batch_normalization_7/AssignNewValue_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?;sequential_8/random_zoom_4/stateful_uniform/StatefulUniformz
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
max_pooling2d_12/MaxPool?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_12/MaxPool:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_6/FusedBatchNormV3?
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_6/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValue?
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_6/AssignNewValue_1w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_6/dropout/Const?
dropout_6/dropout/MulMul*batch_normalization_6/FusedBatchNormV3:y:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_6/dropout/Mul?
dropout_6/dropout/ShapeShape*batch_normalization_6/FusedBatchNormV3:y:0*
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
max_pooling2d_13/MaxPool?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_13/MaxPool:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_7/FusedBatchNormV3?
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_7/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_7/AssignNewValue?
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_7/AssignNewValue_1w
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_7/dropout/Const?
dropout_7/dropout/MulMul*batch_normalization_7/FusedBatchNormV3:y:0 dropout_7/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_7/dropout/Mul?
dropout_7/dropout/ShapeShape*batch_normalization_7/FusedBatchNormV3:y:0*
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
activation_24/Softmax?
IdentityIdentityactivation_24/Softmax:softmax:0%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp<^sequential_8/random_zoom_4/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12D
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
?
h
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_772227

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
?
H__inference_sequential_8_layer_call_and_return_conditional_losses_773662

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
?
?
6__inference_batch_normalization_7_layer_call_fn_773942

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7724112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_772411

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_773847

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
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_772627

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
?
d
H__inference_sequential_8_layer_call_and_return_conditional_losses_773666

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
?U
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_772903
sequential_8_input
sequential_8_772494
conv2d_16_772518
conv2d_16_772520 
batch_normalization_6_772601 
batch_normalization_6_772603 
batch_normalization_6_772605 
batch_normalization_6_772607
conv2d_17_772661
conv2d_17_772663 
batch_normalization_7_772744 
batch_normalization_7_772746 
batch_normalization_7_772748 
batch_normalization_7_772750
conv2d_18_772804
conv2d_18_772806
conv2d_19_772844
conv2d_19_772846
dense_4_772884
dense_4_772886
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputsequential_8_772494*
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722072&
$sequential_8/StatefulPartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall-sequential_8/StatefulPartitionedCall:output:0conv2d_16_772518conv2d_16_772520*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7725072#
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7725282
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7722272"
 max_pooling2d_12/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0batch_normalization_6_772601batch_normalization_6_772603batch_normalization_6_772605batch_normalization_6_772607*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7725562/
-batch_normalization_6/StatefulPartitionedCall?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7726222#
!dropout_6/StatefulPartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv2d_17_772661conv2d_17_772663*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7726502#
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7726712
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7723432"
 max_pooling2d_13/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0batch_normalization_7_772744batch_normalization_7_772746batch_normalization_7_772748batch_normalization_7_772750*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7726992/
-batch_normalization_7/StatefulPartitionedCall?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
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
E__inference_dropout_7_layer_call_and_return_conditional_losses_7727652#
!dropout_7/StatefulPartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv2d_18_772804conv2d_18_772806*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7727932#
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7728142
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7724592"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_772844conv2d_19_772846*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7728332#
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7728542
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7724722,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_772884dense_4_772886*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7728732!
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7728942
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2F
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
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_774036

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
?
6__inference_batch_normalization_7_layer_call_fn_774006

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7726992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_22_layer_call_and_return_conditional_losses_774070

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
?
M
1__inference_max_pooling2d_14_layer_call_fn_772465

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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7724592
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
C__inference_dense_4_layer_call_and_return_conditional_losses_772873

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
-__inference_sequential_9_layer_call_fn_773563

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

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_7731282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_772326

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_7_layer_call_fn_774046

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
E__inference_dropout_7_layer_call_and_return_conditional_losses_7727702
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
.__inference_activation_23_layer_call_fn_774104

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
I__inference_activation_23_layer_call_and_return_conditional_losses_7728542
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
-__inference_sequential_8_layer_call_fn_773678

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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722182
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
?{
?
!__inference__wrapped_model_772001
sequential_8_input9
5sequential_9_conv2d_16_conv2d_readvariableop_resource:
6sequential_9_conv2d_16_biasadd_readvariableop_resource>
:sequential_9_batch_normalization_6_readvariableop_resource@
<sequential_9_batch_normalization_6_readvariableop_1_resourceO
Ksequential_9_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceQ
Msequential_9_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource9
5sequential_9_conv2d_17_conv2d_readvariableop_resource:
6sequential_9_conv2d_17_biasadd_readvariableop_resource>
:sequential_9_batch_normalization_7_readvariableop_resource@
<sequential_9_batch_normalization_7_readvariableop_1_resourceO
Ksequential_9_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceQ
Msequential_9_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource9
5sequential_9_conv2d_18_conv2d_readvariableop_resource:
6sequential_9_conv2d_18_biasadd_readvariableop_resource9
5sequential_9_conv2d_19_conv2d_readvariableop_resource:
6sequential_9_conv2d_19_biasadd_readvariableop_resource7
3sequential_9_dense_4_matmul_readvariableop_resource8
4sequential_9_dense_4_biasadd_readvariableop_resource
identity??Bsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Dsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?1sequential_9/batch_normalization_6/ReadVariableOp?3sequential_9/batch_normalization_6/ReadVariableOp_1?Bsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Dsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?1sequential_9/batch_normalization_7/ReadVariableOp?3sequential_9/batch_normalization_7/ReadVariableOp_1?-sequential_9/conv2d_16/BiasAdd/ReadVariableOp?,sequential_9/conv2d_16/Conv2D/ReadVariableOp?-sequential_9/conv2d_17/BiasAdd/ReadVariableOp?,sequential_9/conv2d_17/Conv2D/ReadVariableOp?-sequential_9/conv2d_18/BiasAdd/ReadVariableOp?,sequential_9/conv2d_18/Conv2D/ReadVariableOp?-sequential_9/conv2d_19/BiasAdd/ReadVariableOp?,sequential_9/conv2d_19/Conv2D/ReadVariableOp?+sequential_9/dense_4/BiasAdd/ReadVariableOp?*sequential_9/dense_4/MatMul/ReadVariableOp?
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
1sequential_9/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_9_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype023
1sequential_9/batch_normalization_6/ReadVariableOp?
3sequential_9/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_9_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_9/batch_normalization_6/ReadVariableOp_1?
Bsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_9_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02D
Bsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Dsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_9_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
3sequential_9/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3.sequential_9/max_pooling2d_12/MaxPool:output:09sequential_9/batch_normalization_6/ReadVariableOp:value:0;sequential_9/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 25
3sequential_9/batch_normalization_6/FusedBatchNormV3?
sequential_9/dropout_6/IdentityIdentity7sequential_9/batch_normalization_6/FusedBatchNormV3:y:0*
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
1sequential_9/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_9_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_9/batch_normalization_7/ReadVariableOp?
3sequential_9/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_9_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_9/batch_normalization_7/ReadVariableOp_1?
Bsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_9_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Dsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_9_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
3sequential_9/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3.sequential_9/max_pooling2d_13/MaxPool:output:09sequential_9/batch_normalization_7/ReadVariableOp:value:0;sequential_9/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 25
3sequential_9/batch_normalization_7/FusedBatchNormV3?
sequential_9/dropout_7/IdentityIdentity7sequential_9/batch_normalization_7/FusedBatchNormV3:y:0*
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
"sequential_9/activation_24/Softmax?
IdentityIdentity,sequential_9/activation_24/Softmax:softmax:0C^sequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_9/batch_normalization_6/ReadVariableOp4^sequential_9/batch_normalization_6/ReadVariableOp_1C^sequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_9/batch_normalization_7/ReadVariableOp4^sequential_9/batch_normalization_7/ReadVariableOp_1.^sequential_9/conv2d_16/BiasAdd/ReadVariableOp-^sequential_9/conv2d_16/Conv2D/ReadVariableOp.^sequential_9/conv2d_17/BiasAdd/ReadVariableOp-^sequential_9/conv2d_17/Conv2D/ReadVariableOp.^sequential_9/conv2d_18/BiasAdd/ReadVariableOp-^sequential_9/conv2d_18/Conv2D/ReadVariableOp.^sequential_9/conv2d_19/BiasAdd/ReadVariableOp-^sequential_9/conv2d_19/Conv2D/ReadVariableOp,^sequential_9/dense_4/BiasAdd/ReadVariableOp+^sequential_9/dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2?
Bsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Dsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_9/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12f
1sequential_9/batch_normalization_6/ReadVariableOp1sequential_9/batch_normalization_6/ReadVariableOp2j
3sequential_9/batch_normalization_6/ReadVariableOp_13sequential_9/batch_normalization_6/ReadVariableOp_12?
Bsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Dsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_9/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_9/batch_normalization_7/ReadVariableOp1sequential_9/batch_normalization_7/ReadVariableOp2j
3sequential_9/batch_normalization_7/ReadVariableOp_13sequential_9/batch_normalization_7/ReadVariableOp_12^
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
e
I__inference_activation_20_layer_call_and_return_conditional_losses_772528

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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_773872

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
??
?
"__inference__traced_restore_774507
file_prefix%
!assignvariableop_conv2d_16_kernel%
!assignvariableop_1_conv2d_16_bias2
.assignvariableop_2_batch_normalization_6_gamma1
-assignvariableop_3_batch_normalization_6_beta8
4assignvariableop_4_batch_normalization_6_moving_mean<
8assignvariableop_5_batch_normalization_6_moving_variance'
#assignvariableop_6_conv2d_17_kernel%
!assignvariableop_7_conv2d_17_bias2
.assignvariableop_8_batch_normalization_7_gamma1
-assignvariableop_9_batch_normalization_7_beta9
5assignvariableop_10_batch_normalization_7_moving_mean=
9assignvariableop_11_batch_normalization_7_moving_variance(
$assignvariableop_12_conv2d_18_kernel&
"assignvariableop_13_conv2d_18_bias(
$assignvariableop_14_conv2d_19_kernel&
"assignvariableop_15_conv2d_19_bias&
"assignvariableop_16_dense_4_kernel$
 assignvariableop_17_dense_4_bias!
assignvariableop_18_adam_iter#
assignvariableop_19_adam_beta_1#
assignvariableop_20_adam_beta_2"
assignvariableop_21_adam_decay*
&assignvariableop_22_adam_learning_rate 
assignvariableop_23_variable
assignvariableop_24_total
assignvariableop_25_count
assignvariableop_26_total_1
assignvariableop_27_count_1/
+assignvariableop_28_adam_conv2d_16_kernel_m-
)assignvariableop_29_adam_conv2d_16_bias_m:
6assignvariableop_30_adam_batch_normalization_6_gamma_m9
5assignvariableop_31_adam_batch_normalization_6_beta_m/
+assignvariableop_32_adam_conv2d_17_kernel_m-
)assignvariableop_33_adam_conv2d_17_bias_m:
6assignvariableop_34_adam_batch_normalization_7_gamma_m9
5assignvariableop_35_adam_batch_normalization_7_beta_m/
+assignvariableop_36_adam_conv2d_18_kernel_m-
)assignvariableop_37_adam_conv2d_18_bias_m/
+assignvariableop_38_adam_conv2d_19_kernel_m-
)assignvariableop_39_adam_conv2d_19_bias_m-
)assignvariableop_40_adam_dense_4_kernel_m+
'assignvariableop_41_adam_dense_4_bias_m/
+assignvariableop_42_adam_conv2d_16_kernel_v-
)assignvariableop_43_adam_conv2d_16_bias_v:
6assignvariableop_44_adam_batch_normalization_6_gamma_v9
5assignvariableop_45_adam_batch_normalization_6_beta_v/
+assignvariableop_46_adam_conv2d_17_kernel_v-
)assignvariableop_47_adam_conv2d_17_bias_v:
6assignvariableop_48_adam_batch_normalization_7_gamma_v9
5assignvariableop_49_adam_batch_normalization_7_beta_v/
+assignvariableop_50_adam_conv2d_18_kernel_v-
)assignvariableop_51_adam_conv2d_18_bias_v/
+assignvariableop_52_adam_conv2d_19_kernel_v-
)assignvariableop_53_adam_conv2d_19_bias_v-
)assignvariableop_54_adam_dense_4_kernel_v+
'assignvariableop_55_adam_dense_4_bias_v
identity_57??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*?
value?B?9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*?
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::*G
dtypes=
;29		2
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
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_6_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_6_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_6_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_6_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_17_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_17_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_7_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_7_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_7_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_7_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_18_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_18_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_19_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_19_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_4_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_4_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_variableIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_16_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_16_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_batch_normalization_6_gamma_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_batch_normalization_6_beta_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_17_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_17_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_batch_normalization_7_gamma_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp5assignvariableop_35_adam_batch_normalization_7_beta_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_18_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_18_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_19_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_19_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_4_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_4_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_16_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_conv2d_16_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_6_gamma_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_batch_normalization_6_beta_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_17_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_conv2d_17_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_7_gamma_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_batch_normalization_7_beta_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_18_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_conv2d_18_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_19_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_19_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_4_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_4_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_559
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_56Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_56?

Identity_57IdentityIdentity_56:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_57"#
identity_57Identity_57:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552(
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
.__inference_activation_22_layer_call_fn_774075

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
I__inference_activation_22_layer_call_and_return_conditional_losses_7728142
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
?

*__inference_conv2d_19_layer_call_fn_774094

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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7728332
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
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_772295

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_773852

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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_774085

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
}
(__inference_dense_4_layer_call_fn_774123

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
C__inference_dense_4_layer_call_and_return_conditional_losses_7728732
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
I__inference_activation_24_layer_call_and_return_conditional_losses_774128

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
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773745

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_13_layer_call_fn_772349

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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7723432
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
6__inference_batch_normalization_6_layer_call_fn_773822

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7725562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_21_layer_call_and_return_conditional_losses_773886

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
h
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_772343

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
?
d
H__inference_sequential_8_layer_call_and_return_conditional_losses_772218

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
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773791

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
J
.__inference_activation_21_layer_call_fn_773891

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
I__inference_activation_21_layer_call_and_return_conditional_losses_7726712
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
?s
?
__inference__traced_save_774329
file_prefix/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop/
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
0savev2_adam_conv2d_16_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop6
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*?
value?B?9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*?
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *G
dtypes=
;29		2
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
?: : : : : : : : @:@:@:@:@:@:@?:?:??:?:	?
:
: : : : : :: : : : : : : : : @:@:@:@:@?:?:??:?:	?
:
: : : : : @:@:@:@:@?:?:??:?:	?
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
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:
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
: :

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :  

_output_shapes
: :,!(
&
_output_shapes
: @: "

_output_shapes
:@: #

_output_shapes
:@: $
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
:,+(
&
_output_shapes
: : ,

_output_shapes
: : -

_output_shapes
: : .

_output_shapes
: :,/(
&
_output_shapes
: @: 0

_output_shapes
:@: 1

_output_shapes
:@: 2

_output_shapes
:@:-3)
'
_output_shapes
:@?:!4

_output_shapes	
:?:.5*
(
_output_shapes
:??:!6

_output_shapes	
:?:%7!

_output_shapes
:	?
: 8

_output_shapes
:
:9

_output_shapes
: 
?
?
-__inference_sequential_9_layer_call_fn_773167
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_7731282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_8_input
?
e
I__inference_activation_23_layer_call_and_return_conditional_losses_774099

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
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_772770

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
I__inference_activation_20_layer_call_and_return_conditional_losses_773702

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
s
-__inference_sequential_8_layer_call_fn_773673

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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722072
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
?
-__inference_sequential_9_layer_call_fn_773067
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_7730262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_8_input
?

*__inference_conv2d_16_layer_call_fn_773697

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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7725072
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
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_772699

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_22_layer_call_and_return_conditional_losses_772814

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
h
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_772459

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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_774056

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
?
?
6__inference_batch_normalization_6_layer_call_fn_773758

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7722952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_21_layer_call_and_return_conditional_losses_772671

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
.__inference_activation_20_layer_call_fn_773707

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
I__inference_activation_20_layer_call_and_return_conditional_losses_7725282
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
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_772442

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_12_layer_call_fn_772233

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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7722272
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_772622

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
e
I__inference_activation_24_layer_call_and_return_conditional_losses_772894

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
c
*__inference_dropout_6_layer_call_fn_773857

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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7726222
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
?P
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_773128

inputs
conv2d_16_773073
conv2d_16_773075 
batch_normalization_6_773080 
batch_normalization_6_773082 
batch_normalization_6_773084 
batch_normalization_6_773086
conv2d_17_773090
conv2d_17_773092 
batch_normalization_7_773097 
batch_normalization_7_773099 
batch_normalization_7_773101 
batch_normalization_7_773103
conv2d_18_773107
conv2d_18_773109
conv2d_19_773114
conv2d_19_773116
dense_4_773121
dense_4_773123
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?!conv2d_19/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722182
sequential_8/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall%sequential_8/PartitionedCall:output:0conv2d_16_773073conv2d_16_773075*
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_7725072#
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
I__inference_activation_20_layer_call_and_return_conditional_losses_7725282
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_7722272"
 max_pooling2d_12/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0batch_normalization_6_773080batch_normalization_6_773082batch_normalization_6_773084batch_normalization_6_773086*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7725742/
-batch_normalization_6/StatefulPartitionedCall?
dropout_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_7726272
dropout_6/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv2d_17_773090conv2d_17_773092*
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_7726502#
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
I__inference_activation_21_layer_call_and_return_conditional_losses_7726712
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_7723432"
 max_pooling2d_13/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0batch_normalization_7_773097batch_normalization_7_773099batch_normalization_7_773101batch_normalization_7_773103*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_7727172/
-batch_normalization_7/StatefulPartitionedCall?
dropout_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
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
E__inference_dropout_7_layer_call_and_return_conditional_losses_7727702
dropout_7/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv2d_18_773107conv2d_18_773109*
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7727932#
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
I__inference_activation_22_layer_call_and_return_conditional_losses_7728142
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_7724592"
 max_pooling2d_14/PartitionedCall?
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_19_773114conv2d_19_773116*
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_7728332#
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
I__inference_activation_23_layer_call_and_return_conditional_losses_7728542
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_7724722,
*global_average_pooling2d_4/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0dense_4_773121dense_4_773123*
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
C__inference_dense_4_layer_call_and_return_conditional_losses_7728732!
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
I__inference_activation_24_layer_call_and_return_conditional_losses_7728942
activation_24/PartitionedCall?
IdentityIdentity&activation_24/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_774031

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
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_772574

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_772507

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
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773809

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

*__inference_conv2d_18_layer_call_fn_774065

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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_7727932
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
6__inference_batch_normalization_6_layer_call_fn_773771

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7723262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_773835

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_7725742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
V
-__inference_sequential_8_layer_call_fn_772221
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_7722182
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
?c
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_773479

inputs,
(conv2d_16_conv2d_readvariableop_resource-
)conv2d_16_biasadd_readvariableop_resource1
-batch_normalization_6_readvariableop_resource3
/batch_normalization_6_readvariableop_1_resourceB
>batch_normalization_6_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_17_conv2d_readvariableop_resource-
)conv2d_17_biasadd_readvariableop_resource1
-batch_normalization_7_readvariableop_resource3
/batch_normalization_7_readvariableop_1_resourceB
>batch_normalization_7_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource,
(conv2d_19_conv2d_readvariableop_resource-
)conv2d_19_biasadd_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity??5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp? conv2d_19/BiasAdd/ReadVariableOp?conv2d_19/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?
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
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_12/MaxPool:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2(
&batch_normalization_6/FusedBatchNormV3?
dropout_6/IdentityIdentity*batch_normalization_6/FusedBatchNormV3:y:0*
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
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_13/MaxPool:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2(
&batch_normalization_7/FusedBatchNormV3?
dropout_7/IdentityIdentity*batch_normalization_7/FusedBatchNormV3:y:0*
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
activation_24/Softmax?
IdentityIdentityactivation_24/Softmax:softmax:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12D
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
?
c
*__inference_dropout_7_layer_call_fn_774041

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
E__inference_dropout_7_layer_call_and_return_conditional_losses_7727652
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
C__inference_dense_4_layer_call_and_return_conditional_losses_774114

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
tensorflow/serving/predict:??
?x
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer-13
layer_with_weights-5
layer-14
layer-15
layer-16
layer_with_weights-6
layer-17
layer-18
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?s
_tf_keras_sequential?s{"class_name": "Sequential", "name": "sequential_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_8_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_8_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_4_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
 bias
!trainable_variables
"	variables
#regularization_losses
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
%trainable_variables
&	variables
'regularization_losses
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_20", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
)trainable_variables
*	variables
+regularization_losses
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2trainable_variables
3	variables
4regularization_losses
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
6trainable_variables
7	variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

:kernel
;bias
<trainable_variables
=	variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_21", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
Qtrainable_variables
R	variables
Sregularization_losses
T	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

Ukernel
Vbias
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
[trainable_variables
\	variables
]regularization_losses
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
_trainable_variables
`	variables
aregularization_losses
b	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

ckernel
dbias
etrainable_variables
f	variables
gregularization_losses
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
itrainable_variables
j	variables
kregularization_losses
l	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
mtrainable_variables
n	variables
oregularization_losses
p	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

qkernel
rbias
strainable_variables
t	variables
uregularization_losses
v	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
wtrainable_variables
x	variables
yregularization_losses
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
{iter

|beta_1

}beta_2
	~decay
learning_ratem? m?.m?/m?:m?;m?Im?Jm?Um?Vm?cm?dm?qm?rm?v? v?.v?/v?:v?;v?Iv?Jv?Uv?Vv?cv?dv?qv?rv?"
	optimizer
?
0
 1
.2
/3
:4
;5
I6
J7
U8
V9
c10
d11
q12
r13"
trackable_list_wrapper
?
0
 1
.2
/3
04
15
:6
;7
I8
J9
K10
L11
U12
V13
c14
d15
q16
r17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
trainable_variables
?metrics
	variables
?layer_metrics
 ?layer_regularization_losses
?layers
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
trainable_variables
?metrics
	variables
?layer_metrics
 ?layer_regularization_losses
?layers
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_16/kernel
: 2conv2d_16/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
!trainable_variables
?metrics
"	variables
?layer_metrics
 ?layer_regularization_losses
?layers
#regularization_losses
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
?non_trainable_variables
%trainable_variables
?metrics
&	variables
?layer_metrics
 ?layer_regularization_losses
?layers
'regularization_losses
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
?non_trainable_variables
)trainable_variables
?metrics
*	variables
?layer_metrics
 ?layer_regularization_losses
?layers
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_6/gamma
(:& 2batch_normalization_6/beta
1:/  (2!batch_normalization_6/moving_mean
5:3  (2%batch_normalization_6/moving_variance
.
.0
/1"
trackable_list_wrapper
<
.0
/1
02
13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
2trainable_variables
?metrics
3	variables
?layer_metrics
 ?layer_regularization_losses
?layers
4regularization_losses
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
?non_trainable_variables
6trainable_variables
?metrics
7	variables
?layer_metrics
 ?layer_regularization_losses
?layers
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_17/kernel
:@2conv2d_17/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
<trainable_variables
?metrics
=	variables
?layer_metrics
 ?layer_regularization_losses
?layers
>regularization_losses
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
?non_trainable_variables
@trainable_variables
?metrics
A	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Bregularization_losses
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
?non_trainable_variables
Dtrainable_variables
?metrics
E	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_7/gamma
(:&@2batch_normalization_7/beta
1:/@ (2!batch_normalization_7/moving_mean
5:3@ (2%batch_normalization_7/moving_variance
.
I0
J1"
trackable_list_wrapper
<
I0
J1
K2
L3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Mtrainable_variables
?metrics
N	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Oregularization_losses
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
?non_trainable_variables
Qtrainable_variables
?metrics
R	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_18/kernel
:?2conv2d_18/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Wtrainable_variables
?metrics
X	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Yregularization_losses
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
?non_trainable_variables
[trainable_variables
?metrics
\	variables
?layer_metrics
 ?layer_regularization_losses
?layers
]regularization_losses
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
?non_trainable_variables
_trainable_variables
?metrics
`	variables
?layer_metrics
 ?layer_regularization_losses
?layers
aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_19/kernel
:?2conv2d_19/bias
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
etrainable_variables
?metrics
f	variables
?layer_metrics
 ?layer_regularization_losses
?layers
gregularization_losses
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
?non_trainable_variables
itrainable_variables
?metrics
j	variables
?layer_metrics
 ?layer_regularization_losses
?layers
kregularization_losses
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
?non_trainable_variables
mtrainable_variables
?metrics
n	variables
?layer_metrics
 ?layer_regularization_losses
?layers
oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_4/kernel
:
2dense_4/bias
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
strainable_variables
?metrics
t	variables
?layer_metrics
 ?layer_regularization_losses
?layers
uregularization_losses
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
?non_trainable_variables
wtrainable_variables
?metrics
x	variables
?layer_metrics
 ?layer_regularization_losses
?layers
yregularization_losses
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
<
00
11
K2
L3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
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
14
15
16
17
18"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
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
.
00
11"
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
.
K0
L1"
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
.:, 2"Adam/batch_normalization_6/gamma/m
-:+ 2!Adam/batch_normalization_6/beta/m
/:- @2Adam/conv2d_17/kernel/m
!:@2Adam/conv2d_17/bias/m
.:,@2"Adam/batch_normalization_7/gamma/m
-:+@2!Adam/batch_normalization_7/beta/m
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
.:, 2"Adam/batch_normalization_6/gamma/v
-:+ 2!Adam/batch_normalization_6/beta/v
/:- @2Adam/conv2d_17/kernel/v
!:@2Adam/conv2d_17/bias/v
.:,@2"Adam/batch_normalization_7/gamma/v
-:+@2!Adam/batch_normalization_7/beta/v
0:.@?2Adam/conv2d_18/kernel/v
": ?2Adam/conv2d_18/bias/v
1:/??2Adam/conv2d_19/kernel/v
": ?2Adam/conv2d_19/bias/v
&:$	?
2Adam/dense_4/kernel/v
:
2Adam/dense_4/bias/v
?2?
H__inference_sequential_9_layer_call_and_return_conditional_losses_773405
H__inference_sequential_9_layer_call_and_return_conditional_losses_772903
H__inference_sequential_9_layer_call_and_return_conditional_losses_773479
H__inference_sequential_9_layer_call_and_return_conditional_losses_772962?
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
!__inference__wrapped_model_772001?
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
?2?
-__inference_sequential_9_layer_call_fn_773167
-__inference_sequential_9_layer_call_fn_773522
-__inference_sequential_9_layer_call_fn_773067
-__inference_sequential_9_layer_call_fn_773563?
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_772105
H__inference_sequential_8_layer_call_and_return_conditional_losses_773662
H__inference_sequential_8_layer_call_and_return_conditional_losses_773666
H__inference_sequential_8_layer_call_and_return_conditional_losses_772101?
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
-__inference_sequential_8_layer_call_fn_773678
-__inference_sequential_8_layer_call_fn_772212
-__inference_sequential_8_layer_call_fn_773673
-__inference_sequential_8_layer_call_fn_772221?
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
E__inference_conv2d_16_layer_call_and_return_conditional_losses_773688?
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
*__inference_conv2d_16_layer_call_fn_773697?
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
I__inference_activation_20_layer_call_and_return_conditional_losses_773702?
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
.__inference_activation_20_layer_call_fn_773707?
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
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_772227?
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
1__inference_max_pooling2d_12_layer_call_fn_772233?
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
?2?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773745
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773809
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773791
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773727?
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
?2?
6__inference_batch_normalization_6_layer_call_fn_773822
6__inference_batch_normalization_6_layer_call_fn_773771
6__inference_batch_normalization_6_layer_call_fn_773835
6__inference_batch_normalization_6_layer_call_fn_773758?
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
E__inference_dropout_6_layer_call_and_return_conditional_losses_773847
E__inference_dropout_6_layer_call_and_return_conditional_losses_773852?
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
*__inference_dropout_6_layer_call_fn_773862
*__inference_dropout_6_layer_call_fn_773857?
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
E__inference_conv2d_17_layer_call_and_return_conditional_losses_773872?
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
*__inference_conv2d_17_layer_call_fn_773881?
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
I__inference_activation_21_layer_call_and_return_conditional_losses_773886?
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
.__inference_activation_21_layer_call_fn_773891?
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
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_772343?
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
1__inference_max_pooling2d_13_layer_call_fn_772349?
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
?2?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773911
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773929
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773993
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773975?
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
?2?
6__inference_batch_normalization_7_layer_call_fn_774019
6__inference_batch_normalization_7_layer_call_fn_773955
6__inference_batch_normalization_7_layer_call_fn_773942
6__inference_batch_normalization_7_layer_call_fn_774006?
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
E__inference_dropout_7_layer_call_and_return_conditional_losses_774031
E__inference_dropout_7_layer_call_and_return_conditional_losses_774036?
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
*__inference_dropout_7_layer_call_fn_774041
*__inference_dropout_7_layer_call_fn_774046?
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
E__inference_conv2d_18_layer_call_and_return_conditional_losses_774056?
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
*__inference_conv2d_18_layer_call_fn_774065?
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
I__inference_activation_22_layer_call_and_return_conditional_losses_774070?
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
.__inference_activation_22_layer_call_fn_774075?
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
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_772459?
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
1__inference_max_pooling2d_14_layer_call_fn_772465?
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
E__inference_conv2d_19_layer_call_and_return_conditional_losses_774085?
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
*__inference_conv2d_19_layer_call_fn_774094?
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
I__inference_activation_23_layer_call_and_return_conditional_losses_774099?
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
.__inference_activation_23_layer_call_fn_774104?
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
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_772472?
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
;__inference_global_average_pooling2d_4_layer_call_fn_772478?
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
C__inference_dense_4_layer_call_and_return_conditional_losses_774114?
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
(__inference_dense_4_layer_call_fn_774123?
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
I__inference_activation_24_layer_call_and_return_conditional_losses_774128?
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
.__inference_activation_24_layer_call_fn_774133?
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
$__inference_signature_wrapper_773218sequential_8_input"?
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
!__inference__wrapped_model_772001? ./01:;IJKLUVcdqrC?@
9?6
4?1
sequential_8_input?????????  
? "=?:
8
activation_24'?$
activation_24?????????
?
I__inference_activation_20_layer_call_and_return_conditional_losses_773702h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
.__inference_activation_20_layer_call_fn_773707[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
I__inference_activation_21_layer_call_and_return_conditional_losses_773886h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_21_layer_call_fn_773891[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_22_layer_call_and_return_conditional_losses_774070j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_22_layer_call_fn_774075]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_23_layer_call_and_return_conditional_losses_774099j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_23_layer_call_fn_774104]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_24_layer_call_and_return_conditional_losses_774128X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? }
.__inference_activation_24_layer_call_fn_774133K/?,
%?"
 ?
inputs?????????

? "??????????
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773727?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773745?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773791r./01;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_773809r./01;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
6__inference_batch_normalization_6_layer_call_fn_773758?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
6__inference_batch_normalization_6_layer_call_fn_773771?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
6__inference_batch_normalization_6_layer_call_fn_773822e./01;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
6__inference_batch_normalization_6_layer_call_fn_773835e./01;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773911?IJKLM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773929?IJKLM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773975rIJKL;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_773993rIJKL;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
6__inference_batch_normalization_7_layer_call_fn_773942?IJKLM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
6__inference_batch_normalization_7_layer_call_fn_773955?IJKLM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
6__inference_batch_normalization_7_layer_call_fn_774006eIJKL;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
6__inference_batch_normalization_7_layer_call_fn_774019eIJKL;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_773688l 7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
*__inference_conv2d_16_layer_call_fn_773697_ 7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_773872l:;7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_17_layer_call_fn_773881_:;7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_774056mUV7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_18_layer_call_fn_774065`UV7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_19_layer_call_and_return_conditional_losses_774085ncd8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_19_layer_call_fn_774094acd8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_4_layer_call_and_return_conditional_losses_774114]qr0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_4_layer_call_fn_774123Pqr0?-
&?#
!?
inputs??????????
? "??????????
?
E__inference_dropout_6_layer_call_and_return_conditional_losses_773847l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
E__inference_dropout_6_layer_call_and_return_conditional_losses_773852l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
*__inference_dropout_6_layer_call_fn_773857_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
*__inference_dropout_6_layer_call_fn_773862_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
E__inference_dropout_7_layer_call_and_return_conditional_losses_774031l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
E__inference_dropout_7_layer_call_and_return_conditional_losses_774036l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
*__inference_dropout_7_layer_call_fn_774041_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
*__inference_dropout_7_layer_call_fn_774046_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
V__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_772472?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_4_layer_call_fn_772478wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
L__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_772227?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_12_layer_call_fn_772233?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_772343?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_13_layer_call_fn_772349?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_772459?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_14_layer_call_fn_772465?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_8_layer_call_and_return_conditional_losses_772101??L?I
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_772105}L?I
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_773662t???<
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
H__inference_sequential_8_layer_call_and_return_conditional_losses_773666p??<
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
-__inference_sequential_8_layer_call_fn_772212t?L?I
B??
5?2
random_zoom_4_input?????????  
p

 
? " ??????????  ?
-__inference_sequential_8_layer_call_fn_772221pL?I
B??
5?2
random_zoom_4_input?????????  
p 

 
? " ??????????  ?
-__inference_sequential_8_layer_call_fn_773673g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
-__inference_sequential_8_layer_call_fn_773678c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
H__inference_sequential_9_layer_call_and_return_conditional_losses_772903?? ./01:;IJKLUVcdqrK?H
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
H__inference_sequential_9_layer_call_and_return_conditional_losses_772962? ./01:;IJKLUVcdqrK?H
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
H__inference_sequential_9_layer_call_and_return_conditional_losses_773405~? ./01:;IJKLUVcdqr??<
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
H__inference_sequential_9_layer_call_and_return_conditional_losses_773479| ./01:;IJKLUVcdqr??<
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
-__inference_sequential_9_layer_call_fn_773067}? ./01:;IJKLUVcdqrK?H
A?>
4?1
sequential_8_input?????????  
p

 
? "??????????
?
-__inference_sequential_9_layer_call_fn_773167{ ./01:;IJKLUVcdqrK?H
A?>
4?1
sequential_8_input?????????  
p 

 
? "??????????
?
-__inference_sequential_9_layer_call_fn_773522q? ./01:;IJKLUVcdqr??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
-__inference_sequential_9_layer_call_fn_773563o ./01:;IJKLUVcdqr??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_773218? ./01:;IJKLUVcdqrY?V
? 
O?L
J
sequential_8_input4?1
sequential_8_input?????????  "=?:
8
activation_24'?$
activation_24?????????
