ڛ
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
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
: *
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
: *
dtype0
?
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_10/gamma
?
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_10/beta
?
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_10/moving_mean
?
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_10/moving_variance
?
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:@*
dtype0
?
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_26/kernel
~
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_26/bias
n
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_11/gamma
?
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_11/beta
?
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_11/moving_mean
?
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_11/moving_variance
?
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_27/kernel

$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_27/bias
n
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes	
:?*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	?
*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
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
Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_24/kernel/m
?
+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_10/gamma/m
?
7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_10/beta/m
?
6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_25/kernel/m
?
+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_26/kernel/m
?
+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_26/bias/m
|
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_11/gamma/m
?
7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_11/beta/m
?
6Adam/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_27/kernel/m
?
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_27/bias/m
|
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_6/kernel/m
?
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	?
*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:
*
dtype0
?
Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_24/kernel/v
?
+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_10/gamma/v
?
7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_10/beta/v
?
6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_25/kernel/v
?
+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_26/kernel/v
?
+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_26/bias/v
|
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_11/gamma/v
?
7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_11/beta/v
?
6Adam/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_27/kernel/v
?
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_27/bias/v
|
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*&
shared_nameAdam/dense_6/kernel/v
?
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	?
*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?m
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?m
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
layer-11
layer_with_weights-4
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
h

Hkernel
Ibias
Jtrainable_variables
K	variables
Lregularization_losses
M	keras_api
R
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
R
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
?
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
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
learning_ratem? m?.m?/m?:m?;m?Hm?Im?Wm?Xm?cm?dm?qm?rm?v? v?.v?/v?:v?;v?Hv?Iv?Wv?Xv?cv?dv?qv?rv?
f
0
 1
.2
/3
:4
;5
H6
I7
W8
X9
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
H8
I9
W10
X11
Y12
Z13
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
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
ge
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

H0
I1
 
?
?non_trainable_variables
Jtrainable_variables
?metrics
K	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Lregularization_losses
 
 
 
?
?non_trainable_variables
Ntrainable_variables
?metrics
O	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Pregularization_losses
 
 
 
?
?non_trainable_variables
Rtrainable_variables
?metrics
S	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Tregularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

W0
X1

W0
X1
Y2
Z3
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
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
Y2
Z3
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
 
 
 
 
 
 
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
Y0
Z1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
VARIABLE_VALUEAdam/conv2d_24/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_24/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_10/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_25/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_26/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_11/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_11/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_24/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_24/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_10/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_25/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_26/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_11/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_11/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
#serving_default_sequential_12_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_12_inputconv2d_24/kernelconv2d_24/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_25/kernelconv2d_25/biasconv2d_26/kernelconv2d_26/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_27/kernelconv2d_27/biasdense_6/kerneldense_6/bias*
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
GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1083696
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_10/beta/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_11/beta/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_10/beta/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_11/beta/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOpConst*E
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_1084807
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_24/kernelconv2d_24/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_25/kernelconv2d_25/biasconv2d_26/kernelconv2d_26/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_27/kernelconv2d_27/biasdense_6/kerneldense_6/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_24/kernel/mAdam/conv2d_24/bias/m#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/mAdam/conv2d_25/kernel/mAdam/conv2d_25/bias/mAdam/conv2d_26/kernel/mAdam/conv2d_26/bias/m#Adam/batch_normalization_11/gamma/m"Adam/batch_normalization_11/beta/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/v#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/vAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/vAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/v#Adam/batch_normalization_11/gamma/v"Adam/batch_normalization_11/beta/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/v*D
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1084985׶
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1083235

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_activation_31_layer_call_fn_1084369

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
GPU2*0J 8? *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10831492
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
)__inference_dense_6_layer_call_fn_1084601

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
GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_10833512
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
f
J__inference_activation_33_layer_call_and_return_conditional_losses_1084577

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
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1082932

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_13_layer_call_fn_1084041

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
GPU2*0J 8? *S
fNRL
J__inference_sequential_13_layer_call_and_return_conditional_losses_10836062
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
?
?
8__inference_batch_normalization_11_layer_call_fn_1084526

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
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_10829322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1084563

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
f
G__inference_dropout_11_layer_call_and_return_conditional_losses_1083283

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
??
?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083883

inputsI
Esequential_12_random_zoom_6_stateful_uniform_statefuluniform_resource,
(conv2d_24_conv2d_readvariableop_resource-
)conv2d_24_biasadd_readvariableop_resource2
.batch_normalization_10_readvariableop_resource4
0batch_normalization_10_readvariableop_1_resourceC
?batch_normalization_10_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_25_conv2d_readvariableop_resource-
)conv2d_25_biasadd_readvariableop_resource,
(conv2d_26_conv2d_readvariableop_resource-
)conv2d_26_biasadd_readvariableop_resource2
.batch_normalization_11_readvariableop_resource4
0batch_normalization_11_readvariableop_1_resourceC
?batch_normalization_11_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_27_conv2d_readvariableop_resource-
)conv2d_27_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity??%batch_normalization_10/AssignNewValue?'batch_normalization_10/AssignNewValue_1?6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_10/ReadVariableOp?'batch_normalization_10/ReadVariableOp_1?%batch_normalization_11/AssignNewValue?'batch_normalization_11/AssignNewValue_1?6batch_normalization_11/FusedBatchNormV3/ReadVariableOp?8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_11/ReadVariableOp?'batch_normalization_11/ReadVariableOp_1? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?<sequential_12/random_zoom_6/stateful_uniform/StatefulUniform|
!sequential_12/random_zoom_6/ShapeShapeinputs*
T0*
_output_shapes
:2#
!sequential_12/random_zoom_6/Shape?
/sequential_12/random_zoom_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_12/random_zoom_6/strided_slice/stack?
1sequential_12/random_zoom_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_12/random_zoom_6/strided_slice/stack_1?
1sequential_12/random_zoom_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_12/random_zoom_6/strided_slice/stack_2?
)sequential_12/random_zoom_6/strided_sliceStridedSlice*sequential_12/random_zoom_6/Shape:output:08sequential_12/random_zoom_6/strided_slice/stack:output:0:sequential_12/random_zoom_6/strided_slice/stack_1:output:0:sequential_12/random_zoom_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_12/random_zoom_6/strided_slice?
1sequential_12/random_zoom_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential_12/random_zoom_6/strided_slice_1/stack?
3sequential_12/random_zoom_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_12/random_zoom_6/strided_slice_1/stack_1?
3sequential_12/random_zoom_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_12/random_zoom_6/strided_slice_1/stack_2?
+sequential_12/random_zoom_6/strided_slice_1StridedSlice*sequential_12/random_zoom_6/Shape:output:0:sequential_12/random_zoom_6/strided_slice_1/stack:output:0<sequential_12/random_zoom_6/strided_slice_1/stack_1:output:0<sequential_12/random_zoom_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_12/random_zoom_6/strided_slice_1?
 sequential_12/random_zoom_6/CastCast4sequential_12/random_zoom_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 sequential_12/random_zoom_6/Cast?
1sequential_12/random_zoom_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential_12/random_zoom_6/strided_slice_2/stack?
3sequential_12/random_zoom_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_12/random_zoom_6/strided_slice_2/stack_1?
3sequential_12/random_zoom_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_12/random_zoom_6/strided_slice_2/stack_2?
+sequential_12/random_zoom_6/strided_slice_2StridedSlice*sequential_12/random_zoom_6/Shape:output:0:sequential_12/random_zoom_6/strided_slice_2/stack:output:0<sequential_12/random_zoom_6/strided_slice_2/stack_1:output:0<sequential_12/random_zoom_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_12/random_zoom_6/strided_slice_2?
"sequential_12/random_zoom_6/Cast_1Cast4sequential_12/random_zoom_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"sequential_12/random_zoom_6/Cast_1?
4sequential_12/random_zoom_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4sequential_12/random_zoom_6/stateful_uniform/shape/1?
2sequential_12/random_zoom_6/stateful_uniform/shapePack2sequential_12/random_zoom_6/strided_slice:output:0=sequential_12/random_zoom_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:24
2sequential_12/random_zoom_6/stateful_uniform/shape?
0sequential_12/random_zoom_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0sequential_12/random_zoom_6/stateful_uniform/min?
0sequential_12/random_zoom_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0sequential_12/random_zoom_6/stateful_uniform/max?
Fsequential_12/random_zoom_6/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2H
Fsequential_12/random_zoom_6/stateful_uniform/StatefulUniform/algorithm?
<sequential_12/random_zoom_6/stateful_uniform/StatefulUniformStatefulUniformEsequential_12_random_zoom_6_stateful_uniform_statefuluniform_resourceOsequential_12/random_zoom_6/stateful_uniform/StatefulUniform/algorithm:output:0;sequential_12/random_zoom_6/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02>
<sequential_12/random_zoom_6/stateful_uniform/StatefulUniform?
0sequential_12/random_zoom_6/stateful_uniform/subSub9sequential_12/random_zoom_6/stateful_uniform/max:output:09sequential_12/random_zoom_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: 22
0sequential_12/random_zoom_6/stateful_uniform/sub?
0sequential_12/random_zoom_6/stateful_uniform/mulMulEsequential_12/random_zoom_6/stateful_uniform/StatefulUniform:output:04sequential_12/random_zoom_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????22
0sequential_12/random_zoom_6/stateful_uniform/mul?
,sequential_12/random_zoom_6/stateful_uniformAdd4sequential_12/random_zoom_6/stateful_uniform/mul:z:09sequential_12/random_zoom_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_12/random_zoom_6/stateful_uniform?
'sequential_12/random_zoom_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_12/random_zoom_6/concat/axis?
"sequential_12/random_zoom_6/concatConcatV20sequential_12/random_zoom_6/stateful_uniform:z:00sequential_12/random_zoom_6/stateful_uniform:z:00sequential_12/random_zoom_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2$
"sequential_12/random_zoom_6/concat?
-sequential_12/random_zoom_6/zoom_matrix/ShapeShape+sequential_12/random_zoom_6/concat:output:0*
T0*
_output_shapes
:2/
-sequential_12/random_zoom_6/zoom_matrix/Shape?
;sequential_12/random_zoom_6/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;sequential_12/random_zoom_6/zoom_matrix/strided_slice/stack?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice/stack_1?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice/stack_2?
5sequential_12/random_zoom_6/zoom_matrix/strided_sliceStridedSlice6sequential_12/random_zoom_6/zoom_matrix/Shape:output:0Dsequential_12/random_zoom_6/zoom_matrix/strided_slice/stack:output:0Fsequential_12/random_zoom_6/zoom_matrix/strided_slice/stack_1:output:0Fsequential_12/random_zoom_6/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5sequential_12/random_zoom_6/zoom_matrix/strided_slice?
-sequential_12/random_zoom_6/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-sequential_12/random_zoom_6/zoom_matrix/sub/y?
+sequential_12/random_zoom_6/zoom_matrix/subSub&sequential_12/random_zoom_6/Cast_1:y:06sequential_12/random_zoom_6/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2-
+sequential_12/random_zoom_6/zoom_matrix/sub?
1sequential_12/random_zoom_6/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @23
1sequential_12/random_zoom_6/zoom_matrix/truediv/y?
/sequential_12/random_zoom_6/zoom_matrix/truedivRealDiv/sequential_12/random_zoom_6/zoom_matrix/sub:z:0:sequential_12/random_zoom_6/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 21
/sequential_12/random_zoom_6/zoom_matrix/truediv?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack_1?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack_2?
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_1StridedSlice+sequential_12/random_zoom_6/concat:output:0Fsequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack_1:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_1?
/sequential_12/random_zoom_6/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_12/random_zoom_6/zoom_matrix/sub_1/x?
-sequential_12/random_zoom_6/zoom_matrix/sub_1Sub8sequential_12/random_zoom_6/zoom_matrix/sub_1/x:output:0@sequential_12/random_zoom_6/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2/
-sequential_12/random_zoom_6/zoom_matrix/sub_1?
+sequential_12/random_zoom_6/zoom_matrix/mulMul3sequential_12/random_zoom_6/zoom_matrix/truediv:z:01sequential_12/random_zoom_6/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2-
+sequential_12/random_zoom_6/zoom_matrix/mul?
/sequential_12/random_zoom_6/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_12/random_zoom_6/zoom_matrix/sub_2/y?
-sequential_12/random_zoom_6/zoom_matrix/sub_2Sub$sequential_12/random_zoom_6/Cast:y:08sequential_12/random_zoom_6/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2/
-sequential_12/random_zoom_6/zoom_matrix/sub_2?
3sequential_12/random_zoom_6/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @25
3sequential_12/random_zoom_6/zoom_matrix/truediv_1/y?
1sequential_12/random_zoom_6/zoom_matrix/truediv_1RealDiv1sequential_12/random_zoom_6/zoom_matrix/sub_2:z:0<sequential_12/random_zoom_6/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 23
1sequential_12/random_zoom_6/zoom_matrix/truediv_1?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack_1?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack_2?
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_2StridedSlice+sequential_12/random_zoom_6/concat:output:0Fsequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack_1:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_2?
/sequential_12/random_zoom_6/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_12/random_zoom_6/zoom_matrix/sub_3/x?
-sequential_12/random_zoom_6/zoom_matrix/sub_3Sub8sequential_12/random_zoom_6/zoom_matrix/sub_3/x:output:0@sequential_12/random_zoom_6/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-sequential_12/random_zoom_6/zoom_matrix/sub_3?
-sequential_12/random_zoom_6/zoom_matrix/mul_1Mul5sequential_12/random_zoom_6/zoom_matrix/truediv_1:z:01sequential_12/random_zoom_6/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2/
-sequential_12/random_zoom_6/zoom_matrix/mul_1?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack_1?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack_2?
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_3StridedSlice+sequential_12/random_zoom_6/concat:output:0Fsequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack_1:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_3?
3sequential_12/random_zoom_6/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3sequential_12/random_zoom_6/zoom_matrix/zeros/mul/y?
1sequential_12/random_zoom_6/zoom_matrix/zeros/mulMul>sequential_12/random_zoom_6/zoom_matrix/strided_slice:output:0<sequential_12/random_zoom_6/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1sequential_12/random_zoom_6/zoom_matrix/zeros/mul?
4sequential_12/random_zoom_6/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4sequential_12/random_zoom_6/zoom_matrix/zeros/Less/y?
2sequential_12/random_zoom_6/zoom_matrix/zeros/LessLess5sequential_12/random_zoom_6/zoom_matrix/zeros/mul:z:0=sequential_12/random_zoom_6/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2sequential_12/random_zoom_6/zoom_matrix/zeros/Less?
6sequential_12/random_zoom_6/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6sequential_12/random_zoom_6/zoom_matrix/zeros/packed/1?
4sequential_12/random_zoom_6/zoom_matrix/zeros/packedPack>sequential_12/random_zoom_6/zoom_matrix/strided_slice:output:0?sequential_12/random_zoom_6/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4sequential_12/random_zoom_6/zoom_matrix/zeros/packed?
3sequential_12/random_zoom_6/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_12/random_zoom_6/zoom_matrix/zeros/Const?
-sequential_12/random_zoom_6/zoom_matrix/zerosFill=sequential_12/random_zoom_6/zoom_matrix/zeros/packed:output:0<sequential_12/random_zoom_6/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-sequential_12/random_zoom_6/zoom_matrix/zeros?
5sequential_12/random_zoom_6/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_12/random_zoom_6/zoom_matrix/zeros_1/mul/y?
3sequential_12/random_zoom_6/zoom_matrix/zeros_1/mulMul>sequential_12/random_zoom_6/zoom_matrix/strided_slice:output:0>sequential_12/random_zoom_6/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3sequential_12/random_zoom_6/zoom_matrix/zeros_1/mul?
6sequential_12/random_zoom_6/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6sequential_12/random_zoom_6/zoom_matrix/zeros_1/Less/y?
4sequential_12/random_zoom_6/zoom_matrix/zeros_1/LessLess7sequential_12/random_zoom_6/zoom_matrix/zeros_1/mul:z:0?sequential_12/random_zoom_6/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4sequential_12/random_zoom_6/zoom_matrix/zeros_1/Less?
8sequential_12/random_zoom_6/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_12/random_zoom_6/zoom_matrix/zeros_1/packed/1?
6sequential_12/random_zoom_6/zoom_matrix/zeros_1/packedPack>sequential_12/random_zoom_6/zoom_matrix/strided_slice:output:0Asequential_12/random_zoom_6/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6sequential_12/random_zoom_6/zoom_matrix/zeros_1/packed?
5sequential_12/random_zoom_6/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_12/random_zoom_6/zoom_matrix/zeros_1/Const?
/sequential_12/random_zoom_6/zoom_matrix/zeros_1Fill?sequential_12/random_zoom_6/zoom_matrix/zeros_1/packed:output:0>sequential_12/random_zoom_6/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/sequential_12/random_zoom_6/zoom_matrix/zeros_1?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=sequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack_1?
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack_2?
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_4StridedSlice+sequential_12/random_zoom_6/concat:output:0Fsequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack_1:output:0Hsequential_12/random_zoom_6/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_12/random_zoom_6/zoom_matrix/strided_slice_4?
5sequential_12/random_zoom_6/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_12/random_zoom_6/zoom_matrix/zeros_2/mul/y?
3sequential_12/random_zoom_6/zoom_matrix/zeros_2/mulMul>sequential_12/random_zoom_6/zoom_matrix/strided_slice:output:0>sequential_12/random_zoom_6/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3sequential_12/random_zoom_6/zoom_matrix/zeros_2/mul?
6sequential_12/random_zoom_6/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6sequential_12/random_zoom_6/zoom_matrix/zeros_2/Less/y?
4sequential_12/random_zoom_6/zoom_matrix/zeros_2/LessLess7sequential_12/random_zoom_6/zoom_matrix/zeros_2/mul:z:0?sequential_12/random_zoom_6/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4sequential_12/random_zoom_6/zoom_matrix/zeros_2/Less?
8sequential_12/random_zoom_6/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_12/random_zoom_6/zoom_matrix/zeros_2/packed/1?
6sequential_12/random_zoom_6/zoom_matrix/zeros_2/packedPack>sequential_12/random_zoom_6/zoom_matrix/strided_slice:output:0Asequential_12/random_zoom_6/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6sequential_12/random_zoom_6/zoom_matrix/zeros_2/packed?
5sequential_12/random_zoom_6/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_12/random_zoom_6/zoom_matrix/zeros_2/Const?
/sequential_12/random_zoom_6/zoom_matrix/zeros_2Fill?sequential_12/random_zoom_6/zoom_matrix/zeros_2/packed:output:0>sequential_12/random_zoom_6/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/sequential_12/random_zoom_6/zoom_matrix/zeros_2?
3sequential_12/random_zoom_6/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3sequential_12/random_zoom_6/zoom_matrix/concat/axis?
.sequential_12/random_zoom_6/zoom_matrix/concatConcatV2@sequential_12/random_zoom_6/zoom_matrix/strided_slice_3:output:06sequential_12/random_zoom_6/zoom_matrix/zeros:output:0/sequential_12/random_zoom_6/zoom_matrix/mul:z:08sequential_12/random_zoom_6/zoom_matrix/zeros_1:output:0@sequential_12/random_zoom_6/zoom_matrix/strided_slice_4:output:01sequential_12/random_zoom_6/zoom_matrix/mul_1:z:08sequential_12/random_zoom_6/zoom_matrix/zeros_2:output:0<sequential_12/random_zoom_6/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.sequential_12/random_zoom_6/zoom_matrix/concat?
+sequential_12/random_zoom_6/transform/ShapeShapeinputs*
T0*
_output_shapes
:2-
+sequential_12/random_zoom_6/transform/Shape?
9sequential_12/random_zoom_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_12/random_zoom_6/transform/strided_slice/stack?
;sequential_12/random_zoom_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_12/random_zoom_6/transform/strided_slice/stack_1?
;sequential_12/random_zoom_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_12/random_zoom_6/transform/strided_slice/stack_2?
3sequential_12/random_zoom_6/transform/strided_sliceStridedSlice4sequential_12/random_zoom_6/transform/Shape:output:0Bsequential_12/random_zoom_6/transform/strided_slice/stack:output:0Dsequential_12/random_zoom_6/transform/strided_slice/stack_1:output:0Dsequential_12/random_zoom_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:25
3sequential_12/random_zoom_6/transform/strided_slice?
0sequential_12/random_zoom_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_12/random_zoom_6/transform/fill_value?
@sequential_12/random_zoom_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs7sequential_12/random_zoom_6/zoom_matrix/concat:output:0<sequential_12/random_zoom_6/transform/strided_slice:output:09sequential_12/random_zoom_6/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2B
@sequential_12/random_zoom_6/transform/ImageProjectiveTransformV3?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2DUsequential_12/random_zoom_6/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_24/Conv2D?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_24/BiasAdd?
activation_30/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_30/Relu?
max_pooling2d_18/MaxPoolMaxPool activation_30/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_18/MaxPool?
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_10/ReadVariableOp?
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_10/ReadVariableOp_1?
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_18/MaxPool:output:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_10/FusedBatchNormV3?
%batch_normalization_10/AssignNewValueAssignVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource4batch_normalization_10/FusedBatchNormV3:batch_mean:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_10/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_10/AssignNewValue?
'batch_normalization_10/AssignNewValue_1AssignVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_10/FusedBatchNormV3:batch_variance:09^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_10/AssignNewValue_1y
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_10/dropout/Const?
dropout_10/dropout/MulMul+batch_normalization_10/FusedBatchNormV3:y:0!dropout_10/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_10/dropout/Mul?
dropout_10/dropout/ShapeShape+batch_normalization_10/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_10/dropout/Shape?
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype021
/dropout_10/dropout/random_uniform/RandomUniform?
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_10/dropout/GreaterEqual/y?
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2!
dropout_10/dropout/GreaterEqual?
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_10/dropout/Cast?
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_10/dropout/Mul_1?
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_25/Conv2D/ReadVariableOp?
conv2d_25/Conv2DConv2Ddropout_10/dropout/Mul_1:z:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_25/Conv2D?
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp?
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_25/BiasAdd?
activation_31/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_31/Relu?
max_pooling2d_19/MaxPoolMaxPool activation_31/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_19/MaxPool?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_26/Conv2D/ReadVariableOp?
conv2d_26/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_26/Conv2D?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_26/BiasAdd?
activation_32/ReluReluconv2d_26/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_32/Relu?
max_pooling2d_20/MaxPoolMaxPool activation_32/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_20/MaxPool?
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_11/ReadVariableOp?
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_11/ReadVariableOp_1?
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_20/MaxPool:output:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_11/FusedBatchNormV3?
%batch_normalization_11/AssignNewValueAssignVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource4batch_normalization_11/FusedBatchNormV3:batch_mean:07^batch_normalization_11/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_11/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_11/AssignNewValue?
'batch_normalization_11/AssignNewValue_1AssignVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_11/FusedBatchNormV3:batch_variance:09^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_11/AssignNewValue_1y
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_11/dropout/Const?
dropout_11/dropout/MulMul+batch_normalization_11/FusedBatchNormV3:y:0!dropout_11/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_11/dropout/Mul?
dropout_11/dropout/ShapeShape+batch_normalization_11/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_11/dropout/Shape?
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype021
/dropout_11/dropout/random_uniform/RandomUniform?
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_11/dropout/GreaterEqual/y?
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2!
dropout_11/dropout/GreaterEqual?
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_11/dropout/Cast?
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_11/dropout/Mul_1?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_27/Conv2D/ReadVariableOp?
conv2d_27/Conv2DConv2Ddropout_11/dropout/Mul_1:z:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_27/Conv2D?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_27/BiasAdd?
activation_33/ReluReluconv2d_27/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_33/Relu?
1global_average_pooling2d_6/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_6/Mean/reduction_indices?
global_average_pooling2d_6/MeanMean activation_33/Relu:activations:0:global_average_pooling2d_6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_6/Mean?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMul(global_average_pooling2d_6/Mean:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_6/BiasAdd?
activation_34/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_34/Softmax?
IdentityIdentityactivation_34/Softmax:softmax:0&^batch_normalization_10/AssignNewValue(^batch_normalization_10/AssignNewValue_17^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_1&^batch_normalization_11/AssignNewValue(^batch_normalization_11/AssignNewValue_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_1!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp=^sequential_12/random_zoom_6/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::2N
%batch_normalization_10/AssignNewValue%batch_normalization_10/AssignNewValue2R
'batch_normalization_10/AssignNewValue_1'batch_normalization_10/AssignNewValue_12p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12N
%batch_normalization_11/AssignNewValue%batch_normalization_11/AssignNewValue2R
'batch_normalization_11/AssignNewValue_1'batch_normalization_11/AssignNewValue_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2|
<sequential_12/random_zoom_6/stateful_uniform/StatefulUniform<sequential_12/random_zoom_6/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
s
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_1082950

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
?
?
/__inference_sequential_13_layer_call_fn_1083545
sequential_12_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_13_layer_call_and_return_conditional_losses_10835042
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
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_12_input
?Q
?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083606

inputs
conv2d_24_1083551
conv2d_24_1083553"
batch_normalization_10_1083558"
batch_normalization_10_1083560"
batch_normalization_10_1083562"
batch_normalization_10_1083564
conv2d_25_1083568
conv2d_25_1083570
conv2d_26_1083575
conv2d_26_1083577"
batch_normalization_11_1083582"
batch_normalization_11_1083584"
batch_normalization_11_1083586"
batch_normalization_11_1083588
conv2d_27_1083592
conv2d_27_1083594
dense_6_1083599
dense_6_1083601
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?
sequential_12/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826962
sequential_12/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall&sequential_12/PartitionedCall:output:0conv2d_24_1083551conv2d_24_1083553*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_10829852#
!conv2d_24/StatefulPartitionedCall?
activation_30/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10830062
activation_30/PartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_10827052"
 max_pooling2d_18/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0batch_normalization_10_1083558batch_normalization_10_1083560batch_normalization_10_1083562batch_normalization_10_1083564*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_108305220
.batch_normalization_10/StatefulPartitionedCall?
dropout_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_10831052
dropout_10/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0conv2d_25_1083568conv2d_25_1083570*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_10831282#
!conv2d_25/StatefulPartitionedCall?
activation_31/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10831492
activation_31/PartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_10828212"
 max_pooling2d_19/PartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_26_1083575conv2d_26_1083577*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_10831682#
!conv2d_26/StatefulPartitionedCall?
activation_32/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_32_layer_call_and_return_conditional_losses_10831892
activation_32/PartitionedCall?
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_10828332"
 max_pooling2d_20/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0batch_normalization_11_1083582batch_normalization_11_1083584batch_normalization_11_1083586batch_normalization_11_1083588*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_108323520
.batch_normalization_11/StatefulPartitionedCall?
dropout_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_10832882
dropout_11/PartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0conv2d_27_1083592conv2d_27_1083594*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_10833112#
!conv2d_27/StatefulPartitionedCall?
activation_33/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_33_layer_call_and_return_conditional_losses_10833322
activation_33/PartitionedCall?
*global_average_pooling2d_6/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
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
GPU2*0J 8? *`
f[RY
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_10829502,
*global_average_pooling2d_6/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_6/PartitionedCall:output:0dense_6_1083599dense_6_1083601*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_10833512!
dense_6/StatefulPartitionedCall?
activation_34/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_34_layer_call_and_return_conditional_losses_10833722
activation_34/PartitionedCall?
IdentityIdentity&activation_34/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084436

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082579
random_zoom_6_input;
7random_zoom_6_stateful_uniform_statefuluniform_resource
identity??.random_zoom_6/stateful_uniform/StatefulUniformm
random_zoom_6/ShapeShaperandom_zoom_6_input*
T0*
_output_shapes
:2
random_zoom_6/Shape?
!random_zoom_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_6/strided_slice/stack?
#random_zoom_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice/stack_1?
#random_zoom_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice/stack_2?
random_zoom_6/strided_sliceStridedSlicerandom_zoom_6/Shape:output:0*random_zoom_6/strided_slice/stack:output:0,random_zoom_6/strided_slice/stack_1:output:0,random_zoom_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice?
#random_zoom_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice_1/stack?
%random_zoom_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_1/stack_1?
%random_zoom_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_1/stack_2?
random_zoom_6/strided_slice_1StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_1/stack:output:0.random_zoom_6/strided_slice_1/stack_1:output:0.random_zoom_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice_1?
random_zoom_6/CastCast&random_zoom_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_6/Cast?
#random_zoom_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice_2/stack?
%random_zoom_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_2/stack_1?
%random_zoom_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_2/stack_2?
random_zoom_6/strided_slice_2StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_2/stack:output:0.random_zoom_6/strided_slice_2/stack_1:output:0.random_zoom_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice_2?
random_zoom_6/Cast_1Cast&random_zoom_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_6/Cast_1?
&random_zoom_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_6/stateful_uniform/shape/1?
$random_zoom_6/stateful_uniform/shapePack$random_zoom_6/strided_slice:output:0/random_zoom_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_6/stateful_uniform/shape?
"random_zoom_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_6/stateful_uniform/min?
"random_zoom_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_6/stateful_uniform/max?
8random_zoom_6/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_6/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_6/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_6_stateful_uniform_statefuluniform_resourceArandom_zoom_6/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_6/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_6/stateful_uniform/StatefulUniform?
"random_zoom_6/stateful_uniform/subSub+random_zoom_6/stateful_uniform/max:output:0+random_zoom_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_6/stateful_uniform/sub?
"random_zoom_6/stateful_uniform/mulMul7random_zoom_6/stateful_uniform/StatefulUniform:output:0&random_zoom_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_6/stateful_uniform/mul?
random_zoom_6/stateful_uniformAdd&random_zoom_6/stateful_uniform/mul:z:0+random_zoom_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_6/stateful_uniformx
random_zoom_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_6/concat/axis?
random_zoom_6/concatConcatV2"random_zoom_6/stateful_uniform:z:0"random_zoom_6/stateful_uniform:z:0"random_zoom_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_6/concat?
random_zoom_6/zoom_matrix/ShapeShaperandom_zoom_6/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_6/zoom_matrix/Shape?
-random_zoom_6/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_6/zoom_matrix/strided_slice/stack?
/random_zoom_6/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_6/zoom_matrix/strided_slice/stack_1?
/random_zoom_6/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_6/zoom_matrix/strided_slice/stack_2?
'random_zoom_6/zoom_matrix/strided_sliceStridedSlice(random_zoom_6/zoom_matrix/Shape:output:06random_zoom_6/zoom_matrix/strided_slice/stack:output:08random_zoom_6/zoom_matrix/strided_slice/stack_1:output:08random_zoom_6/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_6/zoom_matrix/strided_slice?
random_zoom_6/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_6/zoom_matrix/sub/y?
random_zoom_6/zoom_matrix/subSubrandom_zoom_6/Cast_1:y:0(random_zoom_6/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_6/zoom_matrix/sub?
#random_zoom_6/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_6/zoom_matrix/truediv/y?
!random_zoom_6/zoom_matrix/truedivRealDiv!random_zoom_6/zoom_matrix/sub:z:0,random_zoom_6/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_6/zoom_matrix/truediv?
/random_zoom_6/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_6/zoom_matrix/strided_slice_1/stack?
1random_zoom_6/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_1?
!random_zoom_6/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_1/x?
random_zoom_6/zoom_matrix/sub_1Sub*random_zoom_6/zoom_matrix/sub_1/x:output:02random_zoom_6/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/sub_1?
random_zoom_6/zoom_matrix/mulMul%random_zoom_6/zoom_matrix/truediv:z:0#random_zoom_6/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_6/zoom_matrix/mul?
!random_zoom_6/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_2/y?
random_zoom_6/zoom_matrix/sub_2Subrandom_zoom_6/Cast:y:0*random_zoom_6/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_6/zoom_matrix/sub_2?
%random_zoom_6/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_6/zoom_matrix/truediv_1/y?
#random_zoom_6/zoom_matrix/truediv_1RealDiv#random_zoom_6/zoom_matrix/sub_2:z:0.random_zoom_6/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_6/zoom_matrix/truediv_1?
/random_zoom_6/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_6/zoom_matrix/strided_slice_2/stack?
1random_zoom_6/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_2?
!random_zoom_6/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_3/x?
random_zoom_6/zoom_matrix/sub_3Sub*random_zoom_6/zoom_matrix/sub_3/x:output:02random_zoom_6/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/sub_3?
random_zoom_6/zoom_matrix/mul_1Mul'random_zoom_6/zoom_matrix/truediv_1:z:0#random_zoom_6/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/mul_1?
/random_zoom_6/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_6/zoom_matrix/strided_slice_3/stack?
1random_zoom_6/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_3?
%random_zoom_6/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_6/zoom_matrix/zeros/mul/y?
#random_zoom_6/zoom_matrix/zeros/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:0.random_zoom_6/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_6/zoom_matrix/zeros/mul?
&random_zoom_6/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_6/zoom_matrix/zeros/Less/y?
$random_zoom_6/zoom_matrix/zeros/LessLess'random_zoom_6/zoom_matrix/zeros/mul:z:0/random_zoom_6/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_6/zoom_matrix/zeros/Less?
(random_zoom_6/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_6/zoom_matrix/zeros/packed/1?
&random_zoom_6/zoom_matrix/zeros/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:01random_zoom_6/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_6/zoom_matrix/zeros/packed?
%random_zoom_6/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_6/zoom_matrix/zeros/Const?
random_zoom_6/zoom_matrix/zerosFill/random_zoom_6/zoom_matrix/zeros/packed:output:0.random_zoom_6/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/zeros?
'random_zoom_6/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_6/zoom_matrix/zeros_1/mul/y?
%random_zoom_6/zoom_matrix/zeros_1/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:00random_zoom_6/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_6/zoom_matrix/zeros_1/mul?
(random_zoom_6/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_6/zoom_matrix/zeros_1/Less/y?
&random_zoom_6/zoom_matrix/zeros_1/LessLess)random_zoom_6/zoom_matrix/zeros_1/mul:z:01random_zoom_6/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_6/zoom_matrix/zeros_1/Less?
*random_zoom_6/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_6/zoom_matrix/zeros_1/packed/1?
(random_zoom_6/zoom_matrix/zeros_1/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_6/zoom_matrix/zeros_1/packed?
'random_zoom_6/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_6/zoom_matrix/zeros_1/Const?
!random_zoom_6/zoom_matrix/zeros_1Fill1random_zoom_6/zoom_matrix/zeros_1/packed:output:00random_zoom_6/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_6/zoom_matrix/zeros_1?
/random_zoom_6/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_6/zoom_matrix/strided_slice_4/stack?
1random_zoom_6/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_4?
'random_zoom_6/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_6/zoom_matrix/zeros_2/mul/y?
%random_zoom_6/zoom_matrix/zeros_2/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:00random_zoom_6/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_6/zoom_matrix/zeros_2/mul?
(random_zoom_6/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_6/zoom_matrix/zeros_2/Less/y?
&random_zoom_6/zoom_matrix/zeros_2/LessLess)random_zoom_6/zoom_matrix/zeros_2/mul:z:01random_zoom_6/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_6/zoom_matrix/zeros_2/Less?
*random_zoom_6/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_6/zoom_matrix/zeros_2/packed/1?
(random_zoom_6/zoom_matrix/zeros_2/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_6/zoom_matrix/zeros_2/packed?
'random_zoom_6/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_6/zoom_matrix/zeros_2/Const?
!random_zoom_6/zoom_matrix/zeros_2Fill1random_zoom_6/zoom_matrix/zeros_2/packed:output:00random_zoom_6/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_6/zoom_matrix/zeros_2?
%random_zoom_6/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_6/zoom_matrix/concat/axis?
 random_zoom_6/zoom_matrix/concatConcatV22random_zoom_6/zoom_matrix/strided_slice_3:output:0(random_zoom_6/zoom_matrix/zeros:output:0!random_zoom_6/zoom_matrix/mul:z:0*random_zoom_6/zoom_matrix/zeros_1:output:02random_zoom_6/zoom_matrix/strided_slice_4:output:0#random_zoom_6/zoom_matrix/mul_1:z:0*random_zoom_6/zoom_matrix/zeros_2:output:0.random_zoom_6/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_6/zoom_matrix/concat?
random_zoom_6/transform/ShapeShaperandom_zoom_6_input*
T0*
_output_shapes
:2
random_zoom_6/transform/Shape?
+random_zoom_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_6/transform/strided_slice/stack?
-random_zoom_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_6/transform/strided_slice/stack_1?
-random_zoom_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_6/transform/strided_slice/stack_2?
%random_zoom_6/transform/strided_sliceStridedSlice&random_zoom_6/transform/Shape:output:04random_zoom_6/transform/strided_slice/stack:output:06random_zoom_6/transform/strided_slice/stack_1:output:06random_zoom_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_6/transform/strided_slice?
"random_zoom_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_6/transform/fill_value?
2random_zoom_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_zoom_6_input)random_zoom_6/zoom_matrix/concat:output:0.random_zoom_6/transform/strided_slice:output:0+random_zoom_6/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_6/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_6/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_6/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_6/stateful_uniform/StatefulUniform.random_zoom_6/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:?????????  
-
_user_specified_namerandom_zoom_6_input
?
f
G__inference_dropout_10_layer_call_and_return_conditional_losses_1084325

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
f
J__inference_activation_30_layer_call_and_return_conditional_losses_1083006

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
X
/__inference_sequential_12_layer_call_fn_1082699
random_zoom_6_input
identity?
PartitionedCallPartitionedCallrandom_zoom_6_input*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826962
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
_user_specified_namerandom_zoom_6_input
?	
?
D__inference_dense_6_layer_call_and_return_conditional_losses_1083351

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
f
J__inference_activation_31_layer_call_and_return_conditional_losses_1083149

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
8__inference_batch_normalization_11_layer_call_fn_1084513

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
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_10829012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_20_layer_call_fn_1082839

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_10828332
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
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084205

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
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1083034

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
?
?
+__inference_conv2d_26_layer_call_fn_1084388

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_10831682
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
?
X
<__inference_global_average_pooling2d_6_layer_call_fn_1082956

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
GPU2*0J 8? *`
f[RY
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_10829502
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
?
+__inference_conv2d_25_layer_call_fn_1084359

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_10831282
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
?
?
+__inference_conv2d_24_layer_call_fn_1084175

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_10829852
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
??
?
#__inference__traced_restore_1084985
file_prefix%
!assignvariableop_conv2d_24_kernel%
!assignvariableop_1_conv2d_24_bias3
/assignvariableop_2_batch_normalization_10_gamma2
.assignvariableop_3_batch_normalization_10_beta9
5assignvariableop_4_batch_normalization_10_moving_mean=
9assignvariableop_5_batch_normalization_10_moving_variance'
#assignvariableop_6_conv2d_25_kernel%
!assignvariableop_7_conv2d_25_bias'
#assignvariableop_8_conv2d_26_kernel%
!assignvariableop_9_conv2d_26_bias4
0assignvariableop_10_batch_normalization_11_gamma3
/assignvariableop_11_batch_normalization_11_beta:
6assignvariableop_12_batch_normalization_11_moving_mean>
:assignvariableop_13_batch_normalization_11_moving_variance(
$assignvariableop_14_conv2d_27_kernel&
"assignvariableop_15_conv2d_27_bias&
"assignvariableop_16_dense_6_kernel$
 assignvariableop_17_dense_6_bias!
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
+assignvariableop_28_adam_conv2d_24_kernel_m-
)assignvariableop_29_adam_conv2d_24_bias_m;
7assignvariableop_30_adam_batch_normalization_10_gamma_m:
6assignvariableop_31_adam_batch_normalization_10_beta_m/
+assignvariableop_32_adam_conv2d_25_kernel_m-
)assignvariableop_33_adam_conv2d_25_bias_m/
+assignvariableop_34_adam_conv2d_26_kernel_m-
)assignvariableop_35_adam_conv2d_26_bias_m;
7assignvariableop_36_adam_batch_normalization_11_gamma_m:
6assignvariableop_37_adam_batch_normalization_11_beta_m/
+assignvariableop_38_adam_conv2d_27_kernel_m-
)assignvariableop_39_adam_conv2d_27_bias_m-
)assignvariableop_40_adam_dense_6_kernel_m+
'assignvariableop_41_adam_dense_6_bias_m/
+assignvariableop_42_adam_conv2d_24_kernel_v-
)assignvariableop_43_adam_conv2d_24_bias_v;
7assignvariableop_44_adam_batch_normalization_10_gamma_v:
6assignvariableop_45_adam_batch_normalization_10_beta_v/
+assignvariableop_46_adam_conv2d_25_kernel_v-
)assignvariableop_47_adam_conv2d_25_bias_v/
+assignvariableop_48_adam_conv2d_26_kernel_v-
)assignvariableop_49_adam_conv2d_26_bias_v;
7assignvariableop_50_adam_batch_normalization_11_gamma_v:
6assignvariableop_51_adam_batch_normalization_11_beta_v/
+assignvariableop_52_adam_conv2d_27_kernel_v-
)assignvariableop_53_adam_conv2d_27_bias_v-
)assignvariableop_54_adam_dense_6_kernel_v+
'assignvariableop_55_adam_dense_6_bias_v
identity_57??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*?
value?B?9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_24_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_24_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_10_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_10_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_10_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_10_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_25_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_25_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_26_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_26_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_batch_normalization_11_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_11_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp6assignvariableop_12_batch_normalization_11_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp:assignvariableop_13_batch_normalization_11_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_27_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_27_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_6_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_6_biasIdentity_17:output:0"/device:CPU:0*
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
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_24_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_24_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp7assignvariableop_30_adam_batch_normalization_10_gamma_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_batch_normalization_10_beta_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_25_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_25_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_26_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_26_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp7assignvariableop_36_adam_batch_normalization_11_gamma_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_batch_normalization_11_beta_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_27_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_27_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_6_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_6_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_24_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_conv2d_24_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp7assignvariableop_44_adam_batch_normalization_10_gamma_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_batch_normalization_10_beta_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_25_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_conv2d_25_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_26_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_conv2d_26_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_batch_normalization_11_gamma_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_batch_normalization_11_beta_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_27_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_27_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_6_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_6_bias_vIdentity_55:output:0"/device:CPU:0*
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
Û
?
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082685

inputs;
7random_zoom_6_stateful_uniform_statefuluniform_resource
identity??.random_zoom_6/stateful_uniform/StatefulUniform`
random_zoom_6/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_6/Shape?
!random_zoom_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_6/strided_slice/stack?
#random_zoom_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice/stack_1?
#random_zoom_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice/stack_2?
random_zoom_6/strided_sliceStridedSlicerandom_zoom_6/Shape:output:0*random_zoom_6/strided_slice/stack:output:0,random_zoom_6/strided_slice/stack_1:output:0,random_zoom_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice?
#random_zoom_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice_1/stack?
%random_zoom_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_1/stack_1?
%random_zoom_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_1/stack_2?
random_zoom_6/strided_slice_1StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_1/stack:output:0.random_zoom_6/strided_slice_1/stack_1:output:0.random_zoom_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice_1?
random_zoom_6/CastCast&random_zoom_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_6/Cast?
#random_zoom_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice_2/stack?
%random_zoom_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_2/stack_1?
%random_zoom_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_2/stack_2?
random_zoom_6/strided_slice_2StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_2/stack:output:0.random_zoom_6/strided_slice_2/stack_1:output:0.random_zoom_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice_2?
random_zoom_6/Cast_1Cast&random_zoom_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_6/Cast_1?
&random_zoom_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_6/stateful_uniform/shape/1?
$random_zoom_6/stateful_uniform/shapePack$random_zoom_6/strided_slice:output:0/random_zoom_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_6/stateful_uniform/shape?
"random_zoom_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_6/stateful_uniform/min?
"random_zoom_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_6/stateful_uniform/max?
8random_zoom_6/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_6/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_6/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_6_stateful_uniform_statefuluniform_resourceArandom_zoom_6/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_6/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_6/stateful_uniform/StatefulUniform?
"random_zoom_6/stateful_uniform/subSub+random_zoom_6/stateful_uniform/max:output:0+random_zoom_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_6/stateful_uniform/sub?
"random_zoom_6/stateful_uniform/mulMul7random_zoom_6/stateful_uniform/StatefulUniform:output:0&random_zoom_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_6/stateful_uniform/mul?
random_zoom_6/stateful_uniformAdd&random_zoom_6/stateful_uniform/mul:z:0+random_zoom_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_6/stateful_uniformx
random_zoom_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_6/concat/axis?
random_zoom_6/concatConcatV2"random_zoom_6/stateful_uniform:z:0"random_zoom_6/stateful_uniform:z:0"random_zoom_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_6/concat?
random_zoom_6/zoom_matrix/ShapeShaperandom_zoom_6/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_6/zoom_matrix/Shape?
-random_zoom_6/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_6/zoom_matrix/strided_slice/stack?
/random_zoom_6/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_6/zoom_matrix/strided_slice/stack_1?
/random_zoom_6/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_6/zoom_matrix/strided_slice/stack_2?
'random_zoom_6/zoom_matrix/strided_sliceStridedSlice(random_zoom_6/zoom_matrix/Shape:output:06random_zoom_6/zoom_matrix/strided_slice/stack:output:08random_zoom_6/zoom_matrix/strided_slice/stack_1:output:08random_zoom_6/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_6/zoom_matrix/strided_slice?
random_zoom_6/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_6/zoom_matrix/sub/y?
random_zoom_6/zoom_matrix/subSubrandom_zoom_6/Cast_1:y:0(random_zoom_6/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_6/zoom_matrix/sub?
#random_zoom_6/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_6/zoom_matrix/truediv/y?
!random_zoom_6/zoom_matrix/truedivRealDiv!random_zoom_6/zoom_matrix/sub:z:0,random_zoom_6/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_6/zoom_matrix/truediv?
/random_zoom_6/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_6/zoom_matrix/strided_slice_1/stack?
1random_zoom_6/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_1?
!random_zoom_6/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_1/x?
random_zoom_6/zoom_matrix/sub_1Sub*random_zoom_6/zoom_matrix/sub_1/x:output:02random_zoom_6/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/sub_1?
random_zoom_6/zoom_matrix/mulMul%random_zoom_6/zoom_matrix/truediv:z:0#random_zoom_6/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_6/zoom_matrix/mul?
!random_zoom_6/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_2/y?
random_zoom_6/zoom_matrix/sub_2Subrandom_zoom_6/Cast:y:0*random_zoom_6/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_6/zoom_matrix/sub_2?
%random_zoom_6/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_6/zoom_matrix/truediv_1/y?
#random_zoom_6/zoom_matrix/truediv_1RealDiv#random_zoom_6/zoom_matrix/sub_2:z:0.random_zoom_6/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_6/zoom_matrix/truediv_1?
/random_zoom_6/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_6/zoom_matrix/strided_slice_2/stack?
1random_zoom_6/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_2?
!random_zoom_6/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_3/x?
random_zoom_6/zoom_matrix/sub_3Sub*random_zoom_6/zoom_matrix/sub_3/x:output:02random_zoom_6/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/sub_3?
random_zoom_6/zoom_matrix/mul_1Mul'random_zoom_6/zoom_matrix/truediv_1:z:0#random_zoom_6/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/mul_1?
/random_zoom_6/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_6/zoom_matrix/strided_slice_3/stack?
1random_zoom_6/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_3?
%random_zoom_6/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_6/zoom_matrix/zeros/mul/y?
#random_zoom_6/zoom_matrix/zeros/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:0.random_zoom_6/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_6/zoom_matrix/zeros/mul?
&random_zoom_6/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_6/zoom_matrix/zeros/Less/y?
$random_zoom_6/zoom_matrix/zeros/LessLess'random_zoom_6/zoom_matrix/zeros/mul:z:0/random_zoom_6/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_6/zoom_matrix/zeros/Less?
(random_zoom_6/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_6/zoom_matrix/zeros/packed/1?
&random_zoom_6/zoom_matrix/zeros/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:01random_zoom_6/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_6/zoom_matrix/zeros/packed?
%random_zoom_6/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_6/zoom_matrix/zeros/Const?
random_zoom_6/zoom_matrix/zerosFill/random_zoom_6/zoom_matrix/zeros/packed:output:0.random_zoom_6/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/zeros?
'random_zoom_6/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_6/zoom_matrix/zeros_1/mul/y?
%random_zoom_6/zoom_matrix/zeros_1/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:00random_zoom_6/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_6/zoom_matrix/zeros_1/mul?
(random_zoom_6/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_6/zoom_matrix/zeros_1/Less/y?
&random_zoom_6/zoom_matrix/zeros_1/LessLess)random_zoom_6/zoom_matrix/zeros_1/mul:z:01random_zoom_6/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_6/zoom_matrix/zeros_1/Less?
*random_zoom_6/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_6/zoom_matrix/zeros_1/packed/1?
(random_zoom_6/zoom_matrix/zeros_1/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_6/zoom_matrix/zeros_1/packed?
'random_zoom_6/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_6/zoom_matrix/zeros_1/Const?
!random_zoom_6/zoom_matrix/zeros_1Fill1random_zoom_6/zoom_matrix/zeros_1/packed:output:00random_zoom_6/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_6/zoom_matrix/zeros_1?
/random_zoom_6/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_6/zoom_matrix/strided_slice_4/stack?
1random_zoom_6/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_4?
'random_zoom_6/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_6/zoom_matrix/zeros_2/mul/y?
%random_zoom_6/zoom_matrix/zeros_2/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:00random_zoom_6/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_6/zoom_matrix/zeros_2/mul?
(random_zoom_6/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_6/zoom_matrix/zeros_2/Less/y?
&random_zoom_6/zoom_matrix/zeros_2/LessLess)random_zoom_6/zoom_matrix/zeros_2/mul:z:01random_zoom_6/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_6/zoom_matrix/zeros_2/Less?
*random_zoom_6/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_6/zoom_matrix/zeros_2/packed/1?
(random_zoom_6/zoom_matrix/zeros_2/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_6/zoom_matrix/zeros_2/packed?
'random_zoom_6/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_6/zoom_matrix/zeros_2/Const?
!random_zoom_6/zoom_matrix/zeros_2Fill1random_zoom_6/zoom_matrix/zeros_2/packed:output:00random_zoom_6/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_6/zoom_matrix/zeros_2?
%random_zoom_6/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_6/zoom_matrix/concat/axis?
 random_zoom_6/zoom_matrix/concatConcatV22random_zoom_6/zoom_matrix/strided_slice_3:output:0(random_zoom_6/zoom_matrix/zeros:output:0!random_zoom_6/zoom_matrix/mul:z:0*random_zoom_6/zoom_matrix/zeros_1:output:02random_zoom_6/zoom_matrix/strided_slice_4:output:0#random_zoom_6/zoom_matrix/mul_1:z:0*random_zoom_6/zoom_matrix/zeros_2:output:0.random_zoom_6/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_6/zoom_matrix/concatt
random_zoom_6/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_6/transform/Shape?
+random_zoom_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_6/transform/strided_slice/stack?
-random_zoom_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_6/transform/strided_slice/stack_1?
-random_zoom_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_6/transform/strided_slice/stack_2?
%random_zoom_6/transform/strided_sliceStridedSlice&random_zoom_6/transform/Shape:output:04random_zoom_6/transform/strided_slice/stack:output:06random_zoom_6/transform/strided_slice/stack_1:output:06random_zoom_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_6/transform/strided_slice?
"random_zoom_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_6/transform/fill_value?
2random_zoom_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_6/zoom_matrix/concat:output:0.random_zoom_6/transform/strided_slice:output:0+random_zoom_6/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_6/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_6/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_6/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_6/stateful_uniform/StatefulUniform.random_zoom_6/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
e
G__inference_dropout_11_layer_call_and_return_conditional_losses_1083288

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
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084287

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
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1083217

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
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
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1083696
sequential_12_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_10824792
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
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_12_input
?
K
/__inference_sequential_12_layer_call_fn_1084156

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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826962
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
?
u
/__inference_sequential_12_layer_call_fn_1084151

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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826852
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
?
?
8__inference_batch_normalization_10_layer_call_fn_1084313

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_10830522
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
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084418

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
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
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1084350

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
f
J__inference_activation_32_layer_call_and_return_conditional_losses_1083189

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
?V
?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083504

inputs
sequential_12_1083446
conv2d_24_1083449
conv2d_24_1083451"
batch_normalization_10_1083456"
batch_normalization_10_1083458"
batch_normalization_10_1083460"
batch_normalization_10_1083462
conv2d_25_1083466
conv2d_25_1083468
conv2d_26_1083473
conv2d_26_1083475"
batch_normalization_11_1083480"
batch_normalization_11_1083482"
batch_normalization_11_1083484"
batch_normalization_11_1083486
conv2d_27_1083490
conv2d_27_1083492
dense_6_1083497
dense_6_1083499
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?"dropout_10/StatefulPartitionedCall?"dropout_11/StatefulPartitionedCall?%sequential_12/StatefulPartitionedCall?
%sequential_12/StatefulPartitionedCallStatefulPartitionedCallinputssequential_12_1083446*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826852'
%sequential_12/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall.sequential_12/StatefulPartitionedCall:output:0conv2d_24_1083449conv2d_24_1083451*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_10829852#
!conv2d_24/StatefulPartitionedCall?
activation_30/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10830062
activation_30/PartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_10827052"
 max_pooling2d_18/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0batch_normalization_10_1083456batch_normalization_10_1083458batch_normalization_10_1083460batch_normalization_10_1083462*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_108303420
.batch_normalization_10/StatefulPartitionedCall?
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_10831002$
"dropout_10/StatefulPartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0conv2d_25_1083466conv2d_25_1083468*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_10831282#
!conv2d_25/StatefulPartitionedCall?
activation_31/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10831492
activation_31/PartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_10828212"
 max_pooling2d_19/PartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_26_1083473conv2d_26_1083475*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_10831682#
!conv2d_26/StatefulPartitionedCall?
activation_32/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_32_layer_call_and_return_conditional_losses_10831892
activation_32/PartitionedCall?
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_10828332"
 max_pooling2d_20/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0batch_normalization_11_1083480batch_normalization_11_1083482batch_normalization_11_1083484batch_normalization_11_1083486*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_108321720
.batch_normalization_11/StatefulPartitionedCall?
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_10832832$
"dropout_11/StatefulPartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0conv2d_27_1083490conv2d_27_1083492*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_10833112#
!conv2d_27/StatefulPartitionedCall?
activation_33/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_33_layer_call_and_return_conditional_losses_10833322
activation_33/PartitionedCall?
*global_average_pooling2d_6/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
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
GPU2*0J 8? *`
f[RY
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_10829502,
*global_average_pooling2d_6/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_6/PartitionedCall:output:0dense_6_1083497dense_6_1083499*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_10833512!
dense_6/StatefulPartitionedCall?
activation_34/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_34_layer_call_and_return_conditional_losses_10833722
activation_34/PartitionedCall?
IdentityIdentity&activation_34/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall&^sequential_12/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2N
%sequential_12/StatefulPartitionedCall%sequential_12/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
/__inference_sequential_13_layer_call_fn_1083645
sequential_12_input
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
StatefulPartitionedCallStatefulPartitionedCallsequential_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_13_layer_call_and_return_conditional_losses_10836062
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
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_12_input
?
e
G__inference_dropout_11_layer_call_and_return_conditional_losses_1084543

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
K
/__inference_activation_34_layer_call_fn_1084611

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
GPU2*0J 8? *S
fNRL
J__inference_activation_34_layer_call_and_return_conditional_losses_10833722
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
?
F__inference_conv2d_24_layer_call_and_return_conditional_losses_1084166

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
f
J__inference_activation_30_layer_call_and_return_conditional_losses_1084180

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
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1083128

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
f
J__inference_activation_34_layer_call_and_return_conditional_losses_1083372

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
?
?
8__inference_batch_normalization_11_layer_call_fn_1084462

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
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_10832352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_activation_30_layer_call_fn_1084185

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
GPU2*0J 8? *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10830062
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
f
J__inference_activation_34_layer_call_and_return_conditional_losses_1084606

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
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084269

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
?
f
J__inference_activation_32_layer_call_and_return_conditional_losses_1084393

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
?
/__inference_sequential_13_layer_call_fn_1084000

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
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_13_layer_call_and_return_conditional_losses_10835042
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
Û
?
J__inference_sequential_12_layer_call_and_return_conditional_losses_1084140

inputs;
7random_zoom_6_stateful_uniform_statefuluniform_resource
identity??.random_zoom_6/stateful_uniform/StatefulUniform`
random_zoom_6/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_6/Shape?
!random_zoom_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_6/strided_slice/stack?
#random_zoom_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice/stack_1?
#random_zoom_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice/stack_2?
random_zoom_6/strided_sliceStridedSlicerandom_zoom_6/Shape:output:0*random_zoom_6/strided_slice/stack:output:0,random_zoom_6/strided_slice/stack_1:output:0,random_zoom_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice?
#random_zoom_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice_1/stack?
%random_zoom_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_1/stack_1?
%random_zoom_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_1/stack_2?
random_zoom_6/strided_slice_1StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_1/stack:output:0.random_zoom_6/strided_slice_1/stack_1:output:0.random_zoom_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice_1?
random_zoom_6/CastCast&random_zoom_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_6/Cast?
#random_zoom_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_6/strided_slice_2/stack?
%random_zoom_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_2/stack_1?
%random_zoom_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_6/strided_slice_2/stack_2?
random_zoom_6/strided_slice_2StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_2/stack:output:0.random_zoom_6/strided_slice_2/stack_1:output:0.random_zoom_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_6/strided_slice_2?
random_zoom_6/Cast_1Cast&random_zoom_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_6/Cast_1?
&random_zoom_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_6/stateful_uniform/shape/1?
$random_zoom_6/stateful_uniform/shapePack$random_zoom_6/strided_slice:output:0/random_zoom_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_6/stateful_uniform/shape?
"random_zoom_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_6/stateful_uniform/min?
"random_zoom_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"random_zoom_6/stateful_uniform/max?
8random_zoom_6/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_6/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_6/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_6_stateful_uniform_statefuluniform_resourceArandom_zoom_6/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_6/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_6/stateful_uniform/StatefulUniform?
"random_zoom_6/stateful_uniform/subSub+random_zoom_6/stateful_uniform/max:output:0+random_zoom_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_6/stateful_uniform/sub?
"random_zoom_6/stateful_uniform/mulMul7random_zoom_6/stateful_uniform/StatefulUniform:output:0&random_zoom_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_6/stateful_uniform/mul?
random_zoom_6/stateful_uniformAdd&random_zoom_6/stateful_uniform/mul:z:0+random_zoom_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_6/stateful_uniformx
random_zoom_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_6/concat/axis?
random_zoom_6/concatConcatV2"random_zoom_6/stateful_uniform:z:0"random_zoom_6/stateful_uniform:z:0"random_zoom_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_6/concat?
random_zoom_6/zoom_matrix/ShapeShaperandom_zoom_6/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_6/zoom_matrix/Shape?
-random_zoom_6/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_6/zoom_matrix/strided_slice/stack?
/random_zoom_6/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_6/zoom_matrix/strided_slice/stack_1?
/random_zoom_6/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_6/zoom_matrix/strided_slice/stack_2?
'random_zoom_6/zoom_matrix/strided_sliceStridedSlice(random_zoom_6/zoom_matrix/Shape:output:06random_zoom_6/zoom_matrix/strided_slice/stack:output:08random_zoom_6/zoom_matrix/strided_slice/stack_1:output:08random_zoom_6/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_6/zoom_matrix/strided_slice?
random_zoom_6/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_6/zoom_matrix/sub/y?
random_zoom_6/zoom_matrix/subSubrandom_zoom_6/Cast_1:y:0(random_zoom_6/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_6/zoom_matrix/sub?
#random_zoom_6/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_6/zoom_matrix/truediv/y?
!random_zoom_6/zoom_matrix/truedivRealDiv!random_zoom_6/zoom_matrix/sub:z:0,random_zoom_6/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_6/zoom_matrix/truediv?
/random_zoom_6/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_6/zoom_matrix/strided_slice_1/stack?
1random_zoom_6/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_1?
!random_zoom_6/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_1/x?
random_zoom_6/zoom_matrix/sub_1Sub*random_zoom_6/zoom_matrix/sub_1/x:output:02random_zoom_6/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/sub_1?
random_zoom_6/zoom_matrix/mulMul%random_zoom_6/zoom_matrix/truediv:z:0#random_zoom_6/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_6/zoom_matrix/mul?
!random_zoom_6/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_2/y?
random_zoom_6/zoom_matrix/sub_2Subrandom_zoom_6/Cast:y:0*random_zoom_6/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_6/zoom_matrix/sub_2?
%random_zoom_6/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_6/zoom_matrix/truediv_1/y?
#random_zoom_6/zoom_matrix/truediv_1RealDiv#random_zoom_6/zoom_matrix/sub_2:z:0.random_zoom_6/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_6/zoom_matrix/truediv_1?
/random_zoom_6/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_6/zoom_matrix/strided_slice_2/stack?
1random_zoom_6/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_2?
!random_zoom_6/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_6/zoom_matrix/sub_3/x?
random_zoom_6/zoom_matrix/sub_3Sub*random_zoom_6/zoom_matrix/sub_3/x:output:02random_zoom_6/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/sub_3?
random_zoom_6/zoom_matrix/mul_1Mul'random_zoom_6/zoom_matrix/truediv_1:z:0#random_zoom_6/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/mul_1?
/random_zoom_6/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_6/zoom_matrix/strided_slice_3/stack?
1random_zoom_6/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_3?
%random_zoom_6/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_6/zoom_matrix/zeros/mul/y?
#random_zoom_6/zoom_matrix/zeros/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:0.random_zoom_6/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_6/zoom_matrix/zeros/mul?
&random_zoom_6/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_6/zoom_matrix/zeros/Less/y?
$random_zoom_6/zoom_matrix/zeros/LessLess'random_zoom_6/zoom_matrix/zeros/mul:z:0/random_zoom_6/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_6/zoom_matrix/zeros/Less?
(random_zoom_6/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_6/zoom_matrix/zeros/packed/1?
&random_zoom_6/zoom_matrix/zeros/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:01random_zoom_6/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_6/zoom_matrix/zeros/packed?
%random_zoom_6/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_6/zoom_matrix/zeros/Const?
random_zoom_6/zoom_matrix/zerosFill/random_zoom_6/zoom_matrix/zeros/packed:output:0.random_zoom_6/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_6/zoom_matrix/zeros?
'random_zoom_6/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_6/zoom_matrix/zeros_1/mul/y?
%random_zoom_6/zoom_matrix/zeros_1/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:00random_zoom_6/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_6/zoom_matrix/zeros_1/mul?
(random_zoom_6/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_6/zoom_matrix/zeros_1/Less/y?
&random_zoom_6/zoom_matrix/zeros_1/LessLess)random_zoom_6/zoom_matrix/zeros_1/mul:z:01random_zoom_6/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_6/zoom_matrix/zeros_1/Less?
*random_zoom_6/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_6/zoom_matrix/zeros_1/packed/1?
(random_zoom_6/zoom_matrix/zeros_1/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_6/zoom_matrix/zeros_1/packed?
'random_zoom_6/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_6/zoom_matrix/zeros_1/Const?
!random_zoom_6/zoom_matrix/zeros_1Fill1random_zoom_6/zoom_matrix/zeros_1/packed:output:00random_zoom_6/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_6/zoom_matrix/zeros_1?
/random_zoom_6/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_6/zoom_matrix/strided_slice_4/stack?
1random_zoom_6/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_6/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_6/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_6/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_6/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_6/zoom_matrix/strided_slice_4?
'random_zoom_6/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_6/zoom_matrix/zeros_2/mul/y?
%random_zoom_6/zoom_matrix/zeros_2/mulMul0random_zoom_6/zoom_matrix/strided_slice:output:00random_zoom_6/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_6/zoom_matrix/zeros_2/mul?
(random_zoom_6/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_6/zoom_matrix/zeros_2/Less/y?
&random_zoom_6/zoom_matrix/zeros_2/LessLess)random_zoom_6/zoom_matrix/zeros_2/mul:z:01random_zoom_6/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_6/zoom_matrix/zeros_2/Less?
*random_zoom_6/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_6/zoom_matrix/zeros_2/packed/1?
(random_zoom_6/zoom_matrix/zeros_2/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_6/zoom_matrix/zeros_2/packed?
'random_zoom_6/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_6/zoom_matrix/zeros_2/Const?
!random_zoom_6/zoom_matrix/zeros_2Fill1random_zoom_6/zoom_matrix/zeros_2/packed:output:00random_zoom_6/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_6/zoom_matrix/zeros_2?
%random_zoom_6/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_6/zoom_matrix/concat/axis?
 random_zoom_6/zoom_matrix/concatConcatV22random_zoom_6/zoom_matrix/strided_slice_3:output:0(random_zoom_6/zoom_matrix/zeros:output:0!random_zoom_6/zoom_matrix/mul:z:0*random_zoom_6/zoom_matrix/zeros_1:output:02random_zoom_6/zoom_matrix/strided_slice_4:output:0#random_zoom_6/zoom_matrix/mul_1:z:0*random_zoom_6/zoom_matrix/zeros_2:output:0.random_zoom_6/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_6/zoom_matrix/concatt
random_zoom_6/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_6/transform/Shape?
+random_zoom_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_6/transform/strided_slice/stack?
-random_zoom_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_6/transform/strided_slice/stack_1?
-random_zoom_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_6/transform/strided_slice/stack_2?
%random_zoom_6/transform/strided_sliceStridedSlice&random_zoom_6/transform/Shape:output:04random_zoom_6/transform/strided_slice/stack:output:06random_zoom_6/transform/strided_slice/stack_1:output:06random_zoom_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_6/transform/strided_slice?
"random_zoom_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_6/transform/fill_value?
2random_zoom_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_6/zoom_matrix/concat:output:0.random_zoom_6/transform/strided_slice:output:0+random_zoom_6/transform/fill_value:output:0*/
_output_shapes
:?????????  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_6/transform/ImageProjectiveTransformV3?
IdentityIdentityGrandom_zoom_6/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_6/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????  :2`
.random_zoom_6/stateful_uniform/StatefulUniform.random_zoom_6/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
D__inference_dense_6_layer_call_and_return_conditional_losses_1084592

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
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1082901

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?d
?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083957

inputs,
(conv2d_24_conv2d_readvariableop_resource-
)conv2d_24_biasadd_readvariableop_resource2
.batch_normalization_10_readvariableop_resource4
0batch_normalization_10_readvariableop_1_resourceC
?batch_normalization_10_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_25_conv2d_readvariableop_resource-
)conv2d_25_biasadd_readvariableop_resource,
(conv2d_26_conv2d_readvariableop_resource-
)conv2d_26_biasadd_readvariableop_resource2
.batch_normalization_11_readvariableop_resource4
0batch_normalization_11_readvariableop_1_resourceC
?batch_normalization_11_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_27_conv2d_readvariableop_resource-
)conv2d_27_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identity??6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_10/ReadVariableOp?'batch_normalization_10/ReadVariableOp_1?6batch_normalization_11/FusedBatchNormV3/ReadVariableOp?8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_11/ReadVariableOp?'batch_normalization_11/ReadVariableOp_1? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp? conv2d_25/BiasAdd/ReadVariableOp?conv2d_25/Conv2D/ReadVariableOp? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2Dinputs'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_24/Conv2D?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2
conv2d_24/BiasAdd?
activation_30/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2
activation_30/Relu?
max_pooling2d_18/MaxPoolMaxPool activation_30/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2
max_pooling2d_18/MaxPool?
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_10/ReadVariableOp?
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_10/ReadVariableOp_1?
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_18/MaxPool:output:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2)
'batch_normalization_10/FusedBatchNormV3?
dropout_10/IdentityIdentity+batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
dropout_10/Identity?
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_25/Conv2D/ReadVariableOp?
conv2d_25/Conv2DConv2Ddropout_10/Identity:output:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_25/Conv2D?
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp?
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_25/BiasAdd?
activation_31/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_31/Relu?
max_pooling2d_19/MaxPoolMaxPool activation_31/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_19/MaxPool?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_26/Conv2D/ReadVariableOp?
conv2d_26/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_26/Conv2D?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_26/BiasAdd?
activation_32/ReluReluconv2d_26/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_32/Relu?
max_pooling2d_20/MaxPoolMaxPool activation_32/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2
max_pooling2d_20/MaxPool?
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_11/ReadVariableOp?
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_11/ReadVariableOp_1?
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_20/MaxPool:output:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_11/FusedBatchNormV3?
dropout_11/IdentityIdentity+batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
dropout_11/Identity?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_27/Conv2D/ReadVariableOp?
conv2d_27/Conv2DConv2Ddropout_11/Identity:output:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_27/Conv2D?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_27/BiasAdd?
activation_33/ReluReluconv2d_27/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
activation_33/Relu?
1global_average_pooling2d_6/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_6/Mean/reduction_indices?
global_average_pooling2d_6/MeanMean activation_33/Relu:activations:0:global_average_pooling2d_6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_6/Mean?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMul(global_average_pooling2d_6/Mean:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_6/BiasAdd?
activation_34/SoftmaxSoftmaxdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
activation_34/Softmax?
IdentityIdentityactivation_34/Softmax:softmax:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_1!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1083052

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
?
f
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082696

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
?
?
8__inference_batch_normalization_10_layer_call_fn_1084249

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_10828042
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
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084500

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1082804

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
K
/__inference_activation_33_layer_call_fn_1084582

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
GPU2*0J 8? *S
fNRL
J__inference_activation_33_layer_call_and_return_conditional_losses_10833322
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
f
G__inference_dropout_10_layer_call_and_return_conditional_losses_1083100

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
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1083168

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
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1083311

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
i
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1082705

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
N
2__inference_max_pooling2d_19_layer_call_fn_1082827

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_10828212
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
s
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082583
random_zoom_6_input
identityo
IdentityIdentityrandom_zoom_6_input*
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
_user_specified_namerandom_zoom_6_input
?
?
8__inference_batch_normalization_11_layer_call_fn_1084449

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
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_10832172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_activation_32_layer_call_fn_1084398

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
GPU2*0J 8? *S
fNRL
J__inference_activation_32_layer_call_and_return_conditional_losses_10831892
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
?
i
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_1082833

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
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1084379

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
i
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1082821

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
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1082773

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
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_1083105

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
?s
?
 __inference__traced_save_1084807
file_prefix/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop(
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
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop
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
value?B?9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*?
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop>savev2_adam_batch_normalization_10_gamma_m_read_readvariableop=savev2_adam_batch_normalization_10_beta_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop>savev2_adam_batch_normalization_11_gamma_m_read_readvariableop=savev2_adam_batch_normalization_11_beta_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop>savev2_adam_batch_normalization_10_gamma_v_read_readvariableop=savev2_adam_batch_normalization_10_beta_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop>savev2_adam_batch_normalization_11_gamma_v_read_readvariableop=savev2_adam_batch_normalization_11_beta_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: : : : : : : : @:@:@?:?:?:?:?:?:??:?:	?
:
: : : : : :: : : : : : : : : @:@:@?:?:?:?:??:?:	?
:
: : : : : @:@:@?:?:?:?:??:?:	?
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
:@:-	)
'
_output_shapes
:@?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!
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
:@:-#)
'
_output_shapes
:@?:!$

_output_shapes	
:?:!%

_output_shapes	
:?:!&
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
:@:-1)
'
_output_shapes
:@?:!2

_output_shapes	
:?:!3

_output_shapes	
:?:!4
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
?V
?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083381
sequential_12_input
sequential_12_1082972
conv2d_24_1082996
conv2d_24_1082998"
batch_normalization_10_1083079"
batch_normalization_10_1083081"
batch_normalization_10_1083083"
batch_normalization_10_1083085
conv2d_25_1083139
conv2d_25_1083141
conv2d_26_1083179
conv2d_26_1083181"
batch_normalization_11_1083262"
batch_normalization_11_1083264"
batch_normalization_11_1083266"
batch_normalization_11_1083268
conv2d_27_1083322
conv2d_27_1083324
dense_6_1083362
dense_6_1083364
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?"dropout_10/StatefulPartitionedCall?"dropout_11/StatefulPartitionedCall?%sequential_12/StatefulPartitionedCall?
%sequential_12/StatefulPartitionedCallStatefulPartitionedCallsequential_12_inputsequential_12_1082972*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826852'
%sequential_12/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall.sequential_12/StatefulPartitionedCall:output:0conv2d_24_1082996conv2d_24_1082998*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_10829852#
!conv2d_24/StatefulPartitionedCall?
activation_30/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10830062
activation_30/PartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_10827052"
 max_pooling2d_18/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0batch_normalization_10_1083079batch_normalization_10_1083081batch_normalization_10_1083083batch_normalization_10_1083085*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_108303420
.batch_normalization_10/StatefulPartitionedCall?
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_10831002$
"dropout_10/StatefulPartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0conv2d_25_1083139conv2d_25_1083141*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_10831282#
!conv2d_25/StatefulPartitionedCall?
activation_31/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10831492
activation_31/PartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_10828212"
 max_pooling2d_19/PartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_26_1083179conv2d_26_1083181*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_10831682#
!conv2d_26/StatefulPartitionedCall?
activation_32/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_32_layer_call_and_return_conditional_losses_10831892
activation_32/PartitionedCall?
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_10828332"
 max_pooling2d_20/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0batch_normalization_11_1083262batch_normalization_11_1083264batch_normalization_11_1083266batch_normalization_11_1083268*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_108321720
.batch_normalization_11/StatefulPartitionedCall?
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_10832832$
"dropout_11/StatefulPartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0conv2d_27_1083322conv2d_27_1083324*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_10833112#
!conv2d_27/StatefulPartitionedCall?
activation_33/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_33_layer_call_and_return_conditional_losses_10833322
activation_33/PartitionedCall?
*global_average_pooling2d_6/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
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
GPU2*0J 8? *`
f[RY
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_10829502,
*global_average_pooling2d_6/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_6/PartitionedCall:output:0dense_6_1083362dense_6_1083364*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_10833512!
dense_6/StatefulPartitionedCall?
activation_34/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_34_layer_call_and_return_conditional_losses_10833722
activation_34/PartitionedCall?
IdentityIdentity&activation_34/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall&^sequential_12/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:?????????  :::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2N
%sequential_12/StatefulPartitionedCall%sequential_12/StatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_12_input
?
f
G__inference_dropout_11_layer_call_and_return_conditional_losses_1084538

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
?}
?
"__inference__wrapped_model_1082479
sequential_12_input:
6sequential_13_conv2d_24_conv2d_readvariableop_resource;
7sequential_13_conv2d_24_biasadd_readvariableop_resource@
<sequential_13_batch_normalization_10_readvariableop_resourceB
>sequential_13_batch_normalization_10_readvariableop_1_resourceQ
Msequential_13_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceS
Osequential_13_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:
6sequential_13_conv2d_25_conv2d_readvariableop_resource;
7sequential_13_conv2d_25_biasadd_readvariableop_resource:
6sequential_13_conv2d_26_conv2d_readvariableop_resource;
7sequential_13_conv2d_26_biasadd_readvariableop_resource@
<sequential_13_batch_normalization_11_readvariableop_resourceB
>sequential_13_batch_normalization_11_readvariableop_1_resourceQ
Msequential_13_batch_normalization_11_fusedbatchnormv3_readvariableop_resourceS
Osequential_13_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:
6sequential_13_conv2d_27_conv2d_readvariableop_resource;
7sequential_13_conv2d_27_biasadd_readvariableop_resource8
4sequential_13_dense_6_matmul_readvariableop_resource9
5sequential_13_dense_6_biasadd_readvariableop_resource
identity??Dsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Fsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?3sequential_13/batch_normalization_10/ReadVariableOp?5sequential_13/batch_normalization_10/ReadVariableOp_1?Dsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Fsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?3sequential_13/batch_normalization_11/ReadVariableOp?5sequential_13/batch_normalization_11/ReadVariableOp_1?.sequential_13/conv2d_24/BiasAdd/ReadVariableOp?-sequential_13/conv2d_24/Conv2D/ReadVariableOp?.sequential_13/conv2d_25/BiasAdd/ReadVariableOp?-sequential_13/conv2d_25/Conv2D/ReadVariableOp?.sequential_13/conv2d_26/BiasAdd/ReadVariableOp?-sequential_13/conv2d_26/Conv2D/ReadVariableOp?.sequential_13/conv2d_27/BiasAdd/ReadVariableOp?-sequential_13/conv2d_27/Conv2D/ReadVariableOp?,sequential_13/dense_6/BiasAdd/ReadVariableOp?+sequential_13/dense_6/MatMul/ReadVariableOp?
-sequential_13/conv2d_24/Conv2D/ReadVariableOpReadVariableOp6sequential_13_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_13/conv2d_24/Conv2D/ReadVariableOp?
sequential_13/conv2d_24/Conv2DConv2Dsequential_12_input5sequential_13/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2 
sequential_13/conv2d_24/Conv2D?
.sequential_13/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp7sequential_13_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_13/conv2d_24/BiasAdd/ReadVariableOp?
sequential_13/conv2d_24/BiasAddBiasAdd'sequential_13/conv2d_24/Conv2D:output:06sequential_13/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   2!
sequential_13/conv2d_24/BiasAdd?
 sequential_13/activation_30/ReluRelu(sequential_13/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   2"
 sequential_13/activation_30/Relu?
&sequential_13/max_pooling2d_18/MaxPoolMaxPool.sequential_13/activation_30/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
2(
&sequential_13/max_pooling2d_18/MaxPool?
3sequential_13/batch_normalization_10/ReadVariableOpReadVariableOp<sequential_13_batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_13/batch_normalization_10/ReadVariableOp?
5sequential_13/batch_normalization_10/ReadVariableOp_1ReadVariableOp>sequential_13_batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_13/batch_normalization_10/ReadVariableOp_1?
Dsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_13_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Fsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_13_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
5sequential_13/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3/sequential_13/max_pooling2d_18/MaxPool:output:0;sequential_13/batch_normalization_10/ReadVariableOp:value:0=sequential_13/batch_normalization_10/ReadVariableOp_1:value:0Lsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 27
5sequential_13/batch_normalization_10/FusedBatchNormV3?
!sequential_13/dropout_10/IdentityIdentity9sequential_13/batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2#
!sequential_13/dropout_10/Identity?
-sequential_13/conv2d_25/Conv2D/ReadVariableOpReadVariableOp6sequential_13_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_13/conv2d_25/Conv2D/ReadVariableOp?
sequential_13/conv2d_25/Conv2DConv2D*sequential_13/dropout_10/Identity:output:05sequential_13/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_13/conv2d_25/Conv2D?
.sequential_13/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp7sequential_13_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_13/conv2d_25/BiasAdd/ReadVariableOp?
sequential_13/conv2d_25/BiasAddBiasAdd'sequential_13/conv2d_25/Conv2D:output:06sequential_13/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_13/conv2d_25/BiasAdd?
 sequential_13/activation_31/ReluRelu(sequential_13/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_13/activation_31/Relu?
&sequential_13/max_pooling2d_19/MaxPoolMaxPool.sequential_13/activation_31/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingSAME*
strides
2(
&sequential_13/max_pooling2d_19/MaxPool?
-sequential_13/conv2d_26/Conv2D/ReadVariableOpReadVariableOp6sequential_13_conv2d_26_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_13/conv2d_26/Conv2D/ReadVariableOp?
sequential_13/conv2d_26/Conv2DConv2D/sequential_13/max_pooling2d_19/MaxPool:output:05sequential_13/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2 
sequential_13/conv2d_26/Conv2D?
.sequential_13/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp7sequential_13_conv2d_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_13/conv2d_26/BiasAdd/ReadVariableOp?
sequential_13/conv2d_26/BiasAddBiasAdd'sequential_13/conv2d_26/Conv2D:output:06sequential_13/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_13/conv2d_26/BiasAdd?
 sequential_13/activation_32/ReluRelu(sequential_13/conv2d_26/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_13/activation_32/Relu?
&sequential_13/max_pooling2d_20/MaxPoolMaxPool.sequential_13/activation_32/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingSAME*
strides
2(
&sequential_13/max_pooling2d_20/MaxPool?
3sequential_13/batch_normalization_11/ReadVariableOpReadVariableOp<sequential_13_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype025
3sequential_13/batch_normalization_11/ReadVariableOp?
5sequential_13/batch_normalization_11/ReadVariableOp_1ReadVariableOp>sequential_13_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype027
5sequential_13/batch_normalization_11/ReadVariableOp_1?
Dsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_13_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Fsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_13_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
5sequential_13/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3/sequential_13/max_pooling2d_20/MaxPool:output:0;sequential_13/batch_normalization_11/ReadVariableOp:value:0=sequential_13/batch_normalization_11/ReadVariableOp_1:value:0Lsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 27
5sequential_13/batch_normalization_11/FusedBatchNormV3?
!sequential_13/dropout_11/IdentityIdentity9sequential_13/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2#
!sequential_13/dropout_11/Identity?
-sequential_13/conv2d_27/Conv2D/ReadVariableOpReadVariableOp6sequential_13_conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_13/conv2d_27/Conv2D/ReadVariableOp?
sequential_13/conv2d_27/Conv2DConv2D*sequential_13/dropout_11/Identity:output:05sequential_13/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2 
sequential_13/conv2d_27/Conv2D?
.sequential_13/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp7sequential_13_conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_13/conv2d_27/BiasAdd/ReadVariableOp?
sequential_13/conv2d_27/BiasAddBiasAdd'sequential_13/conv2d_27/Conv2D:output:06sequential_13/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_13/conv2d_27/BiasAdd?
 sequential_13/activation_33/ReluRelu(sequential_13/conv2d_27/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_13/activation_33/Relu?
?sequential_13/global_average_pooling2d_6/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_13/global_average_pooling2d_6/Mean/reduction_indices?
-sequential_13/global_average_pooling2d_6/MeanMean.sequential_13/activation_33/Relu:activations:0Hsequential_13/global_average_pooling2d_6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_13/global_average_pooling2d_6/Mean?
+sequential_13/dense_6/MatMul/ReadVariableOpReadVariableOp4sequential_13_dense_6_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02-
+sequential_13/dense_6/MatMul/ReadVariableOp?
sequential_13/dense_6/MatMulMatMul6sequential_13/global_average_pooling2d_6/Mean:output:03sequential_13/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_13/dense_6/MatMul?
,sequential_13/dense_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_13_dense_6_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_13/dense_6/BiasAdd/ReadVariableOp?
sequential_13/dense_6/BiasAddBiasAdd&sequential_13/dense_6/MatMul:product:04sequential_13/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential_13/dense_6/BiasAdd?
#sequential_13/activation_34/SoftmaxSoftmax&sequential_13/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2%
#sequential_13/activation_34/Softmax?
IdentityIdentity-sequential_13/activation_34/Softmax:softmax:0E^sequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOpG^sequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_14^sequential_13/batch_normalization_10/ReadVariableOp6^sequential_13/batch_normalization_10/ReadVariableOp_1E^sequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOpG^sequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_14^sequential_13/batch_normalization_11/ReadVariableOp6^sequential_13/batch_normalization_11/ReadVariableOp_1/^sequential_13/conv2d_24/BiasAdd/ReadVariableOp.^sequential_13/conv2d_24/Conv2D/ReadVariableOp/^sequential_13/conv2d_25/BiasAdd/ReadVariableOp.^sequential_13/conv2d_25/Conv2D/ReadVariableOp/^sequential_13/conv2d_26/BiasAdd/ReadVariableOp.^sequential_13/conv2d_26/Conv2D/ReadVariableOp/^sequential_13/conv2d_27/BiasAdd/ReadVariableOp.^sequential_13/conv2d_27/Conv2D/ReadVariableOp-^sequential_13/dense_6/BiasAdd/ReadVariableOp,^sequential_13/dense_6/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2?
Dsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOpDsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Fsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Fsequential_13/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12j
3sequential_13/batch_normalization_10/ReadVariableOp3sequential_13/batch_normalization_10/ReadVariableOp2n
5sequential_13/batch_normalization_10/ReadVariableOp_15sequential_13/batch_normalization_10/ReadVariableOp_12?
Dsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOpDsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Fsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Fsequential_13/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12j
3sequential_13/batch_normalization_11/ReadVariableOp3sequential_13/batch_normalization_11/ReadVariableOp2n
5sequential_13/batch_normalization_11/ReadVariableOp_15sequential_13/batch_normalization_11/ReadVariableOp_12`
.sequential_13/conv2d_24/BiasAdd/ReadVariableOp.sequential_13/conv2d_24/BiasAdd/ReadVariableOp2^
-sequential_13/conv2d_24/Conv2D/ReadVariableOp-sequential_13/conv2d_24/Conv2D/ReadVariableOp2`
.sequential_13/conv2d_25/BiasAdd/ReadVariableOp.sequential_13/conv2d_25/BiasAdd/ReadVariableOp2^
-sequential_13/conv2d_25/Conv2D/ReadVariableOp-sequential_13/conv2d_25/Conv2D/ReadVariableOp2`
.sequential_13/conv2d_26/BiasAdd/ReadVariableOp.sequential_13/conv2d_26/BiasAdd/ReadVariableOp2^
-sequential_13/conv2d_26/Conv2D/ReadVariableOp-sequential_13/conv2d_26/Conv2D/ReadVariableOp2`
.sequential_13/conv2d_27/BiasAdd/ReadVariableOp.sequential_13/conv2d_27/BiasAdd/ReadVariableOp2^
-sequential_13/conv2d_27/Conv2D/ReadVariableOp-sequential_13/conv2d_27/Conv2D/ReadVariableOp2\
,sequential_13/dense_6/BiasAdd/ReadVariableOp,sequential_13/dense_6/BiasAdd/ReadVariableOp2Z
+sequential_13/dense_6/MatMul/ReadVariableOp+sequential_13/dense_6/MatMul/ReadVariableOp:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_12_input
?
f
J__inference_sequential_12_layer_call_and_return_conditional_losses_1084144

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
?
e
,__inference_dropout_10_layer_call_fn_1084335

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
GPU2*0J 8? *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_10831002
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
?
N
2__inference_max_pooling2d_18_layer_call_fn_1082711

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_10827052
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
?
?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084482

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_11_layer_call_fn_1084548

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
GPU2*0J 8? *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_10832832
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
?
?
/__inference_sequential_12_layer_call_fn_1082690
random_zoom_6_input
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_6_inputunknown*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826852
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
_user_specified_namerandom_zoom_6_input
?	
?
F__inference_conv2d_24_layer_call_and_return_conditional_losses_1082985

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
8__inference_batch_normalization_10_layer_call_fn_1084236

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_10827732
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1084330

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
?Q
?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083440
sequential_12_input
conv2d_24_1083385
conv2d_24_1083387"
batch_normalization_10_1083392"
batch_normalization_10_1083394"
batch_normalization_10_1083396"
batch_normalization_10_1083398
conv2d_25_1083402
conv2d_25_1083404
conv2d_26_1083409
conv2d_26_1083411"
batch_normalization_11_1083416"
batch_normalization_11_1083418"
batch_normalization_11_1083420"
batch_normalization_11_1083422
conv2d_27_1083426
conv2d_27_1083428
dense_6_1083433
dense_6_1083435
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall?!conv2d_25/StatefulPartitionedCall?!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?
sequential_12/PartitionedCallPartitionedCallsequential_12_input*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_10826962
sequential_12/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall&sequential_12/PartitionedCall:output:0conv2d_24_1083385conv2d_24_1083387*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_10829852#
!conv2d_24/StatefulPartitionedCall?
activation_30/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_30_layer_call_and_return_conditional_losses_10830062
activation_30/PartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall&activation_30/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_10827052"
 max_pooling2d_18/PartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0batch_normalization_10_1083392batch_normalization_10_1083394batch_normalization_10_1083396batch_normalization_10_1083398*
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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_108305220
.batch_normalization_10/StatefulPartitionedCall?
dropout_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_10831052
dropout_10/PartitionedCall?
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0conv2d_25_1083402conv2d_25_1083404*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_10831282#
!conv2d_25/StatefulPartitionedCall?
activation_31/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_31_layer_call_and_return_conditional_losses_10831492
activation_31/PartitionedCall?
 max_pooling2d_19/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_10828212"
 max_pooling2d_19/PartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_26_1083409conv2d_26_1083411*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_10831682#
!conv2d_26/StatefulPartitionedCall?
activation_32/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_32_layer_call_and_return_conditional_losses_10831892
activation_32/PartitionedCall?
 max_pooling2d_20/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_10828332"
 max_pooling2d_20/PartitionedCall?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0batch_normalization_11_1083416batch_normalization_11_1083418batch_normalization_11_1083420batch_normalization_11_1083422*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_108323520
.batch_normalization_11/StatefulPartitionedCall?
dropout_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_10832882
dropout_11/PartitionedCall?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0conv2d_27_1083426conv2d_27_1083428*
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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_10833112#
!conv2d_27/StatefulPartitionedCall?
activation_33/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_33_layer_call_and_return_conditional_losses_10833322
activation_33/PartitionedCall?
*global_average_pooling2d_6/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
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
GPU2*0J 8? *`
f[RY
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_10829502,
*global_average_pooling2d_6/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_6/PartitionedCall:output:0dense_6_1083433dense_6_1083435*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_10833512!
dense_6/StatefulPartitionedCall?
activation_34/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_activation_34_layer_call_and_return_conditional_losses_10833722
activation_34/PartitionedCall?
IdentityIdentity&activation_34/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:?????????  ::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:d `
/
_output_shapes
:?????????  
-
_user_specified_namesequential_12_input
?
?
+__inference_conv2d_27_layer_call_fn_1084572

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
GPU2*0J 8? *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_10833112
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
?
?
8__inference_batch_normalization_10_layer_call_fn_1084300

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
GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_10830342
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
H
,__inference_dropout_10_layer_call_fn_1084340

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
GPU2*0J 8? *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_10831052
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
?
f
J__inference_activation_31_layer_call_and_return_conditional_losses_1084364

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
?
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084223

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
?
f
J__inference_activation_33_layer_call_and_return_conditional_losses_1083332

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
H
,__inference_dropout_11_layer_call_fn_1084553

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
GPU2*0J 8? *P
fKRI
G__inference_dropout_11_layer_call_and_return_conditional_losses_10832882
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
sequential_12_inputD
%serving_default_sequential_12_input:0?????????  A
activation_340
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
layer-11
layer_with_weights-4
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
_tf_keras_sequential?s{"class_name": "Sequential", "name": "sequential_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_13", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_12_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_6_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_6", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_30", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_31", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_19", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_32", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_20", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_33", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_34", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_13", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_12_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_6_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_6", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_30", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_31", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_19", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_32", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_20", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_33", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_34", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_6_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_6", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_6_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_6", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
 bias
!trainable_variables
"	variables
#regularization_losses
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
%trainable_variables
&	variables
'regularization_losses
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_30", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
)trainable_variables
*	variables
+regularization_losses
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
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
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
6trainable_variables
7	variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

:kernel
;bias
<trainable_variables
=	variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_31", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_19", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Hkernel
Ibias
Jtrainable_variables
K	variables
Lregularization_losses
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_32", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_20", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[trainable_variables
\	variables
]regularization_losses
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
_trainable_variables
`	variables
aregularization_losses
b	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

ckernel
dbias
etrainable_variables
f	variables
gregularization_losses
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
itrainable_variables
j	variables
kregularization_losses
l	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_33", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
mtrainable_variables
n	variables
oregularization_losses
p	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

qkernel
rbias
strainable_variables
t	variables
uregularization_losses
v	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
wtrainable_variables
x	variables
yregularization_losses
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_34", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
{iter

|beta_1

}beta_2
	~decay
learning_ratem? m?.m?/m?:m?;m?Hm?Im?Wm?Xm?cm?dm?qm?rm?v? v?.v?/v?:v?;v?Hv?Iv?Wv?Xv?cv?dv?qv?rv?"
	optimizer
?
0
 1
.2
/3
:4
;5
H6
I7
W8
X9
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
H8
I9
W10
X11
Y12
Z13
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
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_6", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
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
*:( 2conv2d_24/kernel
: 2conv2d_24/bias
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
*:( 2batch_normalization_10/gamma
):' 2batch_normalization_10/beta
2:0  (2"batch_normalization_10/moving_mean
6:4  (2&batch_normalization_10/moving_variance
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
*:( @2conv2d_25/kernel
:@2conv2d_25/bias
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
+:)@?2conv2d_26/kernel
:?2conv2d_26/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Jtrainable_variables
?metrics
K	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Lregularization_losses
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
Ntrainable_variables
?metrics
O	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Pregularization_losses
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
Rtrainable_variables
?metrics
S	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_11/gamma
*:(?2batch_normalization_11/beta
3:1? (2"batch_normalization_11/moving_mean
7:5? (2&batch_normalization_11/moving_variance
.
W0
X1"
trackable_list_wrapper
<
W0
X1
Y2
Z3"
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
,:*??2conv2d_27/kernel
:?2conv2d_27/bias
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
2dense_6/kernel
:
2dense_6/bias
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
Y2
Z3"
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
Y0
Z1"
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
/:- 2Adam/conv2d_24/kernel/m
!: 2Adam/conv2d_24/bias/m
/:- 2#Adam/batch_normalization_10/gamma/m
.:, 2"Adam/batch_normalization_10/beta/m
/:- @2Adam/conv2d_25/kernel/m
!:@2Adam/conv2d_25/bias/m
0:.@?2Adam/conv2d_26/kernel/m
": ?2Adam/conv2d_26/bias/m
0:.?2#Adam/batch_normalization_11/gamma/m
/:-?2"Adam/batch_normalization_11/beta/m
1:/??2Adam/conv2d_27/kernel/m
": ?2Adam/conv2d_27/bias/m
&:$	?
2Adam/dense_6/kernel/m
:
2Adam/dense_6/bias/m
/:- 2Adam/conv2d_24/kernel/v
!: 2Adam/conv2d_24/bias/v
/:- 2#Adam/batch_normalization_10/gamma/v
.:, 2"Adam/batch_normalization_10/beta/v
/:- @2Adam/conv2d_25/kernel/v
!:@2Adam/conv2d_25/bias/v
0:.@?2Adam/conv2d_26/kernel/v
": ?2Adam/conv2d_26/bias/v
0:.?2#Adam/batch_normalization_11/gamma/v
/:-?2"Adam/batch_normalization_11/beta/v
1:/??2Adam/conv2d_27/kernel/v
": ?2Adam/conv2d_27/bias/v
&:$	?
2Adam/dense_6/kernel/v
:
2Adam/dense_6/bias/v
?2?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083957
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083440
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083883
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083381?
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
"__inference__wrapped_model_1082479?
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
sequential_12_input?????????  
?2?
/__inference_sequential_13_layer_call_fn_1083545
/__inference_sequential_13_layer_call_fn_1084000
/__inference_sequential_13_layer_call_fn_1083645
/__inference_sequential_13_layer_call_fn_1084041?
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
J__inference_sequential_12_layer_call_and_return_conditional_losses_1084140
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082579
J__inference_sequential_12_layer_call_and_return_conditional_losses_1084144
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082583?
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
/__inference_sequential_12_layer_call_fn_1084151
/__inference_sequential_12_layer_call_fn_1082690
/__inference_sequential_12_layer_call_fn_1082699
/__inference_sequential_12_layer_call_fn_1084156?
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
F__inference_conv2d_24_layer_call_and_return_conditional_losses_1084166?
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
+__inference_conv2d_24_layer_call_fn_1084175?
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
J__inference_activation_30_layer_call_and_return_conditional_losses_1084180?
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
/__inference_activation_30_layer_call_fn_1084185?
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
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1082705?
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
2__inference_max_pooling2d_18_layer_call_fn_1082711?
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
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084223
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084205
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084269
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084287?
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
8__inference_batch_normalization_10_layer_call_fn_1084249
8__inference_batch_normalization_10_layer_call_fn_1084300
8__inference_batch_normalization_10_layer_call_fn_1084236
8__inference_batch_normalization_10_layer_call_fn_1084313?
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
G__inference_dropout_10_layer_call_and_return_conditional_losses_1084330
G__inference_dropout_10_layer_call_and_return_conditional_losses_1084325?
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
,__inference_dropout_10_layer_call_fn_1084335
,__inference_dropout_10_layer_call_fn_1084340?
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
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1084350?
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
+__inference_conv2d_25_layer_call_fn_1084359?
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
J__inference_activation_31_layer_call_and_return_conditional_losses_1084364?
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
/__inference_activation_31_layer_call_fn_1084369?
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
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1082821?
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
2__inference_max_pooling2d_19_layer_call_fn_1082827?
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
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1084379?
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
+__inference_conv2d_26_layer_call_fn_1084388?
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
J__inference_activation_32_layer_call_and_return_conditional_losses_1084393?
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
/__inference_activation_32_layer_call_fn_1084398?
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
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_1082833?
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
2__inference_max_pooling2d_20_layer_call_fn_1082839?
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
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084418
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084500
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084482
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084436?
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
8__inference_batch_normalization_11_layer_call_fn_1084449
8__inference_batch_normalization_11_layer_call_fn_1084526
8__inference_batch_normalization_11_layer_call_fn_1084513
8__inference_batch_normalization_11_layer_call_fn_1084462?
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
G__inference_dropout_11_layer_call_and_return_conditional_losses_1084543
G__inference_dropout_11_layer_call_and_return_conditional_losses_1084538?
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
,__inference_dropout_11_layer_call_fn_1084548
,__inference_dropout_11_layer_call_fn_1084553?
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
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1084563?
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
+__inference_conv2d_27_layer_call_fn_1084572?
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
J__inference_activation_33_layer_call_and_return_conditional_losses_1084577?
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
/__inference_activation_33_layer_call_fn_1084582?
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
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_1082950?
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
<__inference_global_average_pooling2d_6_layer_call_fn_1082956?
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
D__inference_dense_6_layer_call_and_return_conditional_losses_1084592?
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
)__inference_dense_6_layer_call_fn_1084601?
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
J__inference_activation_34_layer_call_and_return_conditional_losses_1084606?
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
/__inference_activation_34_layer_call_fn_1084611?
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
%__inference_signature_wrapper_1083696sequential_12_input"?
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
"__inference__wrapped_model_1082479? ./01:;HIWXYZcdqrD?A
:?7
5?2
sequential_12_input?????????  
? "=?:
8
activation_34'?$
activation_34?????????
?
J__inference_activation_30_layer_call_and_return_conditional_losses_1084180h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
/__inference_activation_30_layer_call_fn_1084185[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
J__inference_activation_31_layer_call_and_return_conditional_losses_1084364h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
/__inference_activation_31_layer_call_fn_1084369[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
J__inference_activation_32_layer_call_and_return_conditional_losses_1084393j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
/__inference_activation_32_layer_call_fn_1084398]8?5
.?+
)?&
inputs??????????
? "!????????????
J__inference_activation_33_layer_call_and_return_conditional_losses_1084577j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
/__inference_activation_33_layer_call_fn_1084582]8?5
.?+
)?&
inputs??????????
? "!????????????
J__inference_activation_34_layer_call_and_return_conditional_losses_1084606X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? ~
/__inference_activation_34_layer_call_fn_1084611K/?,
%?"
 ?
inputs?????????

? "??????????
?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084205?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084223?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084269r./01;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
S__inference_batch_normalization_10_layer_call_and_return_conditional_losses_1084287r./01;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
8__inference_batch_normalization_10_layer_call_fn_1084236?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_10_layer_call_fn_1084249?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_10_layer_call_fn_1084300e./01;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
8__inference_batch_normalization_10_layer_call_fn_1084313e./01;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084418tWXYZ<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084436tWXYZ<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084482?WXYZN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_11_layer_call_and_return_conditional_losses_1084500?WXYZN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
8__inference_batch_normalization_11_layer_call_fn_1084449gWXYZ<?9
2?/
)?&
inputs??????????
p
? "!????????????
8__inference_batch_normalization_11_layer_call_fn_1084462gWXYZ<?9
2?/
)?&
inputs??????????
p 
? "!????????????
8__inference_batch_normalization_11_layer_call_fn_1084513?WXYZN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_11_layer_call_fn_1084526?WXYZN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
F__inference_conv2d_24_layer_call_and_return_conditional_losses_1084166l 7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
+__inference_conv2d_24_layer_call_fn_1084175_ 7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1084350l:;7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_25_layer_call_fn_1084359_:;7?4
-?*
(?%
inputs????????? 
? " ??????????@?
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1084379mHI7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_26_layer_call_fn_1084388`HI7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1084563ncd8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_27_layer_call_fn_1084572acd8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_dense_6_layer_call_and_return_conditional_losses_1084592]qr0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? }
)__inference_dense_6_layer_call_fn_1084601Pqr0?-
&?#
!?
inputs??????????
? "??????????
?
G__inference_dropout_10_layer_call_and_return_conditional_losses_1084325l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
G__inference_dropout_10_layer_call_and_return_conditional_losses_1084330l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
,__inference_dropout_10_layer_call_fn_1084335_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
,__inference_dropout_10_layer_call_fn_1084340_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
G__inference_dropout_11_layer_call_and_return_conditional_losses_1084538n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
G__inference_dropout_11_layer_call_and_return_conditional_losses_1084543n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
,__inference_dropout_11_layer_call_fn_1084548a<?9
2?/
)?&
inputs??????????
p
? "!????????????
,__inference_dropout_11_layer_call_fn_1084553a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
W__inference_global_average_pooling2d_6_layer_call_and_return_conditional_losses_1082950?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
<__inference_global_average_pooling2d_6_layer_call_fn_1082956wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1082705?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_18_layer_call_fn_1082711?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1082821?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_19_layer_call_fn_1082827?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_1082833?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_20_layer_call_fn_1082839?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082579??L?I
B??
5?2
random_zoom_6_input?????????  
p

 
? "-?*
#? 
0?????????  
? ?
J__inference_sequential_12_layer_call_and_return_conditional_losses_1082583}L?I
B??
5?2
random_zoom_6_input?????????  
p 

 
? "-?*
#? 
0?????????  
? ?
J__inference_sequential_12_layer_call_and_return_conditional_losses_1084140t???<
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
J__inference_sequential_12_layer_call_and_return_conditional_losses_1084144p??<
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
/__inference_sequential_12_layer_call_fn_1082690t?L?I
B??
5?2
random_zoom_6_input?????????  
p

 
? " ??????????  ?
/__inference_sequential_12_layer_call_fn_1082699pL?I
B??
5?2
random_zoom_6_input?????????  
p 

 
? " ??????????  ?
/__inference_sequential_12_layer_call_fn_1084151g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
/__inference_sequential_12_layer_call_fn_1084156c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083381?? ./01:;HIWXYZcdqrL?I
B??
5?2
sequential_12_input?????????  
p

 
? "%?"
?
0?????????

? ?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083440? ./01:;HIWXYZcdqrL?I
B??
5?2
sequential_12_input?????????  
p 

 
? "%?"
?
0?????????

? ?
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083883~? ./01:;HIWXYZcdqr??<
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
J__inference_sequential_13_layer_call_and_return_conditional_losses_1083957| ./01:;HIWXYZcdqr??<
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
/__inference_sequential_13_layer_call_fn_1083545~? ./01:;HIWXYZcdqrL?I
B??
5?2
sequential_12_input?????????  
p

 
? "??????????
?
/__inference_sequential_13_layer_call_fn_1083645| ./01:;HIWXYZcdqrL?I
B??
5?2
sequential_12_input?????????  
p 

 
? "??????????
?
/__inference_sequential_13_layer_call_fn_1084000q? ./01:;HIWXYZcdqr??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
/__inference_sequential_13_layer_call_fn_1084041o ./01:;HIWXYZcdqr??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
%__inference_signature_wrapper_1083696? ./01:;HIWXYZcdqr[?X
? 
Q?N
L
sequential_12_input5?2
sequential_12_input?????????  "=?:
8
activation_34'?$
activation_34?????????
