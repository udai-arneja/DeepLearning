??
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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
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
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_5/gamma
?
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_5/beta
?
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_5/moving_mean
?
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_5/moving_variance
?
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
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
"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_5/gamma/m
?
6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_5/beta/m
?
5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
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
"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_5/gamma/v
?
6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_5/beta/v
?
5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
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
?^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?^
value?^B?^ B?^
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
layer_with_weights-4
layer-12
layer-13
layer-14
layer_with_weights-5
layer-15
layer-16
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
_
layer-0
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
R
'trainable_variables
(	variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
R
1trainable_variables
2	variables
3regularization_losses
4	keras_api
R
5trainable_variables
6	variables
7regularization_losses
8	keras_api
h

9kernel
:bias
;trainable_variables
<	variables
=regularization_losses
>	keras_api
R
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
R
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
?
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
Ltrainable_variables
M	variables
Nregularization_losses
O	keras_api
R
Ptrainable_variables
Q	variables
Rregularization_losses
S	keras_api
h

Tkernel
Ubias
Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api
R
Ztrainable_variables
[	variables
\regularization_losses
]	keras_api
R
^trainable_variables
_	variables
`regularization_losses
a	keras_api
h

bkernel
cbias
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
R
htrainable_variables
i	variables
jregularization_losses
k	keras_api
?
liter

mbeta_1

nbeta_2
	odecay
plearning_ratem?m?+m?,m?9m?:m?Hm?Im?Tm?Um?bm?cm?v?v?+v?,v?9v?:v?Hv?Iv?Tv?Uv?bv?cv?
V
0
1
+2
,3
94
:5
H6
I7
T8
U9
b10
c11
f
0
1
+2
,3
94
:5
H6
I7
J8
K9
T10
U11
b12
c13
 
?
qnon_trainable_variables
trainable_variables
rmetrics
	variables
slayer_metrics
tlayer_regularization_losses

ulayers
regularization_losses
 

v_rng
w	keras_api
 
 
 
?
xnon_trainable_variables
trainable_variables
ymetrics
	variables
zlayer_metrics
{layer_regularization_losses

|layers
regularization_losses
\Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
}non_trainable_variables
trainable_variables
~metrics
 	variables
layer_metrics
 ?layer_regularization_losses
?layers
!regularization_losses
 
 
 
?
?non_trainable_variables
#trainable_variables
?metrics
$	variables
?layer_metrics
 ?layer_regularization_losses
?layers
%regularization_losses
 
 
 
?
?non_trainable_variables
'trainable_variables
?metrics
(	variables
?layer_metrics
 ?layer_regularization_losses
?layers
)regularization_losses
\Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?
?non_trainable_variables
-trainable_variables
?metrics
.	variables
?layer_metrics
 ?layer_regularization_losses
?layers
/regularization_losses
 
 
 
?
?non_trainable_variables
1trainable_variables
?metrics
2	variables
?layer_metrics
 ?layer_regularization_losses
?layers
3regularization_losses
 
 
 
?
?non_trainable_variables
5trainable_variables
?metrics
6	variables
?layer_metrics
 ?layer_regularization_losses
?layers
7regularization_losses
\Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1

90
:1
 
?
?non_trainable_variables
;trainable_variables
?metrics
<	variables
?layer_metrics
 ?layer_regularization_losses
?layers
=regularization_losses
 
 
 
?
?non_trainable_variables
?trainable_variables
?metrics
@	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Aregularization_losses
 
 
 
?
?non_trainable_variables
Ctrainable_variables
?metrics
D	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Eregularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

H0
I1
J2
K3
 
?
?non_trainable_variables
Ltrainable_variables
?metrics
M	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Nregularization_losses
 
 
 
?
?non_trainable_variables
Ptrainable_variables
?metrics
Q	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Rregularization_losses
\Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

T0
U1
 
?
?non_trainable_variables
Vtrainable_variables
?metrics
W	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Xregularization_losses
 
 
 
?
?non_trainable_variables
Ztrainable_variables
?metrics
[	variables
?layer_metrics
 ?layer_regularization_losses
?layers
\regularization_losses
 
 
 
?
?non_trainable_variables
^trainable_variables
?metrics
_	variables
?layer_metrics
 ?layer_regularization_losses
?layers
`regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

b0
c1

b0
c1
 
?
?non_trainable_variables
dtrainable_variables
?metrics
e	variables
?layer_metrics
 ?layer_regularization_losses
?layers
fregularization_losses
 
 
 
?
?non_trainable_variables
htrainable_variables
?metrics
i	variables
?layer_metrics
 ?layer_regularization_losses
?layers
jregularization_losses
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

J0
K1

?0
?1
 
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

?
_state_var
 
 
 
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

J0
K1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
??
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_5/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
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
??
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_5/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_sequential_6_inputPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_6_inputconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_15/kernelconv2d_15/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_618269
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp)Adam/conv2d_12/bias/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp)Adam/conv2d_13/bias/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp)Adam/conv2d_15/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp)Adam/conv2d_12/bias/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp)Adam/conv2d_13/bias/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp)Adam/conv2d_15/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*=
Tin6
422		*
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
__inference__traced_save_619146
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_15/kernelconv2d_15/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_12/kernel/mAdam/conv2d_12/bias/mAdam/conv2d_13/kernel/mAdam/conv2d_13/bias/mAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/conv2d_15/kernel/mAdam/conv2d_15/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d_12/kernel/vAdam/conv2d_12/bias/vAdam/conv2d_13/kernel/vAdam/conv2d_13/bias/vAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/conv2d_15/kernel/vAdam/conv2d_15/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*<
Tin5
321*
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
"__inference__traced_restore_619300Ŗ
?
M
1__inference_max_pooling2d_10_layer_call_fn_617557

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
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6175512
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_617795

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

*__inference_conv2d_15_layer_call_fn_618935

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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6179382
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_617680

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
?F
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_618195

inputs
conv2d_12_618150
conv2d_12_618152
conv2d_13_618157
conv2d_13_618159
conv2d_14_618164
conv2d_14_618166 
batch_normalization_5_618171 
batch_normalization_5_618173 
batch_normalization_5_618175 
batch_normalization_5_618177
conv2d_15_618181
conv2d_15_618183
dense_3_618188
dense_3_618190
identity??-batch_normalization_5/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175302
sequential_6/PartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_12_618150conv2d_12_618152*
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6177152#
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6177362
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6175392!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_618157conv2d_13_618159*
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6177552#
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6177762
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
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6175512"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_618164conv2d_14_618166*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6177952#
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6178162
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
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6175632"
 max_pooling2d_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0batch_normalization_5_618171batch_normalization_5_618173batch_normalization_5_618175batch_normalization_5_618177*
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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6178622/
-batch_normalization_5/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
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
E__inference_dropout_5_layer_call_and_return_conditional_losses_6179152
dropout_5/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_15_618181conv2d_15_618183*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6179382#
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6179592
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6176802,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_618188dense_3_618190*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6179782!
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6179992
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????  ::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2F
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
?
$__inference_signature_wrapper_618269
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
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_6173132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????  ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_6_input
?
J
.__inference_activation_15_layer_call_fn_618703

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
I__inference_activation_15_layer_call_and_return_conditional_losses_6177362
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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618845

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
?F
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_618057
sequential_6_input
conv2d_12_618012
conv2d_12_618014
conv2d_13_618019
conv2d_13_618021
conv2d_14_618026
conv2d_14_618028 
batch_normalization_5_618033 
batch_normalization_5_618035 
batch_normalization_5_618037 
batch_normalization_5_618039
conv2d_15_618043
conv2d_15_618045
dense_3_618050
dense_3_618052
identity??-batch_normalization_5/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175302
sequential_6/PartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_12_618012conv2d_12_618014*
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6177152#
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6177362
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6175392!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_618019conv2d_13_618021*
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6177552#
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6177762
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
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6175512"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_618026conv2d_14_618028*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6177952#
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6178162
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
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6175632"
 max_pooling2d_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0batch_normalization_5_618033batch_normalization_5_618035batch_normalization_5_618037batch_normalization_5_618039*
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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6178622/
-batch_normalization_5/StatefulPartitionedCall?
dropout_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
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
E__inference_dropout_5_layer_call_and_return_conditional_losses_6179152
dropout_5/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_15_618043conv2d_15_618045*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6179382#
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6179592
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6176802,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_618050dense_3_618052*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6179782!
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6179992
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????  ::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2F
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
?
?
-__inference_sequential_6_layer_call_fn_617524
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175192
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
J
.__inference_activation_19_layer_call_fn_618974

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
I__inference_activation_19_layer_call_and_return_conditional_losses_6179992
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
W
;__inference_global_average_pooling2d_3_layer_call_fn_617686

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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6176802
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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_617662

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
?
C__inference_dense_3_layer_call_and_return_conditional_losses_618955

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
?
"__inference__traced_restore_619300
file_prefix%
!assignvariableop_conv2d_12_kernel%
!assignvariableop_1_conv2d_12_bias'
#assignvariableop_2_conv2d_13_kernel%
!assignvariableop_3_conv2d_13_bias'
#assignvariableop_4_conv2d_14_kernel%
!assignvariableop_5_conv2d_14_bias2
.assignvariableop_6_batch_normalization_5_gamma1
-assignvariableop_7_batch_normalization_5_beta8
4assignvariableop_8_batch_normalization_5_moving_mean<
8assignvariableop_9_batch_normalization_5_moving_variance(
$assignvariableop_10_conv2d_15_kernel&
"assignvariableop_11_conv2d_15_bias&
"assignvariableop_12_dense_3_kernel$
 assignvariableop_13_dense_3_bias!
assignvariableop_14_adam_iter#
assignvariableop_15_adam_beta_1#
assignvariableop_16_adam_beta_2"
assignvariableop_17_adam_decay*
&assignvariableop_18_adam_learning_rate 
assignvariableop_19_variable
assignvariableop_20_total
assignvariableop_21_count
assignvariableop_22_total_1
assignvariableop_23_count_1/
+assignvariableop_24_adam_conv2d_12_kernel_m-
)assignvariableop_25_adam_conv2d_12_bias_m/
+assignvariableop_26_adam_conv2d_13_kernel_m-
)assignvariableop_27_adam_conv2d_13_bias_m/
+assignvariableop_28_adam_conv2d_14_kernel_m-
)assignvariableop_29_adam_conv2d_14_bias_m:
6assignvariableop_30_adam_batch_normalization_5_gamma_m9
5assignvariableop_31_adam_batch_normalization_5_beta_m/
+assignvariableop_32_adam_conv2d_15_kernel_m-
)assignvariableop_33_adam_conv2d_15_bias_m-
)assignvariableop_34_adam_dense_3_kernel_m+
'assignvariableop_35_adam_dense_3_bias_m/
+assignvariableop_36_adam_conv2d_12_kernel_v-
)assignvariableop_37_adam_conv2d_12_bias_v/
+assignvariableop_38_adam_conv2d_13_kernel_v-
)assignvariableop_39_adam_conv2d_13_bias_v/
+assignvariableop_40_adam_conv2d_14_kernel_v-
)assignvariableop_41_adam_conv2d_14_bias_v:
6assignvariableop_42_adam_batch_normalization_5_gamma_v9
5assignvariableop_43_adam_batch_normalization_5_beta_v/
+assignvariableop_44_adam_conv2d_15_kernel_v-
)assignvariableop_45_adam_conv2d_15_bias_v-
)assignvariableop_46_adam_dense_3_kernel_v+
'assignvariableop_47_adam_dense_3_bias_v
identity_49??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*?
value?B?1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321		2
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
AssignVariableOp_6AssignVariableOp.assignvariableop_6_batch_normalization_5_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp-assignvariableop_7_batch_normalization_5_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp4assignvariableop_8_batch_normalization_5_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp8assignvariableop_9_batch_normalization_5_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_15_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_15_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_variableIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_12_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_12_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_13_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_13_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_14_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_14_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_batch_normalization_5_gamma_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_batch_normalization_5_beta_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_15_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_15_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_3_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_3_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_12_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_12_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_13_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_13_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_conv2d_14_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_conv2d_14_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_batch_normalization_5_gamma_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_batch_normalization_5_beta_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_conv2d_15_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_conv2d_15_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_3_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_3_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_479
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_48?
Identity_49IdentityIdentity_48:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_49"#
identity_49Identity_49:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_47AssignVariableOp_472(
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
*__inference_dropout_5_layer_call_fn_618916

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
E__inference_dropout_5_layer_call_and_return_conditional_losses_6179152
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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618781

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
?
e
I__inference_activation_17_layer_call_and_return_conditional_losses_617816

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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_618926

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
J
.__inference_activation_16_layer_call_fn_618732

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
I__inference_activation_16_layer_call_and_return_conditional_losses_6177762
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
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_617539

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
-__inference_sequential_7_layer_call_fn_618559

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

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6181952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????  ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_9_layer_call_fn_617545

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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6175392
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
?
c
*__inference_dropout_5_layer_call_fn_618911

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
E__inference_dropout_5_layer_call_and_return_conditional_losses_6179102
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
?
e
I__inference_activation_18_layer_call_and_return_conditional_losses_618940

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
?
?
6__inference_batch_normalization_5_layer_call_fn_618889

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6176622
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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_617631

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
?	
?
E__inference_conv2d_12_layer_call_and_return_conditional_losses_617715

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
I__inference_activation_19_layer_call_and_return_conditional_losses_618969

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
??
?
H__inference_sequential_6_layer_call_and_return_conditional_losses_617413
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
?

?
-__inference_sequential_7_layer_call_fn_618526

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

unknown_13
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6181112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:?????????  :::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

*__inference_conv2d_13_layer_call_fn_618722

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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6177552
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
?
M
1__inference_max_pooling2d_11_layer_call_fn_617569

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
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6175632
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
I__inference_activation_19_layer_call_and_return_conditional_losses_617999

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
I__inference_activation_18_layer_call_and_return_conditional_losses_617959

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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_617755

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
?
H__inference_sequential_6_layer_call_and_return_conditional_losses_617519

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
?
?
6__inference_batch_normalization_5_layer_call_fn_618876

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6176312
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
?
J
.__inference_activation_18_layer_call_fn_618945

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
I__inference_activation_18_layer_call_and_return_conditional_losses_6179592
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
-__inference_sequential_6_layer_call_fn_618674

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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175302
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
?
J
.__inference_activation_17_layer_call_fn_618761

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
I__inference_activation_17_layer_call_and_return_conditional_losses_6178162
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
?
6__inference_batch_normalization_5_layer_call_fn_618812

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6178442
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
?	
?
E__inference_conv2d_15_layer_call_and_return_conditional_losses_617938

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
?I
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_618008
sequential_6_input
sequential_6_617702
conv2d_12_617726
conv2d_12_617728
conv2d_13_617766
conv2d_13_617768
conv2d_14_617806
conv2d_14_617808 
batch_normalization_5_617889 
batch_normalization_5_617891 
batch_normalization_5_617893 
batch_normalization_5_617895
conv2d_15_617949
conv2d_15_617951
dense_3_617989
dense_3_617991
identity??-batch_normalization_5/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputsequential_6_617702*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175192&
$sequential_6/StatefulPartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0conv2d_12_617726conv2d_12_617728*
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6177152#
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6177362
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6175392!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_617766conv2d_13_617768*
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6177552#
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6177762
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
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6175512"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_617806conv2d_14_617808*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6177952#
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6178162
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
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6175632"
 max_pooling2d_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0batch_normalization_5_617889batch_normalization_5_617891batch_normalization_5_617893batch_normalization_5_617895*
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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6178442/
-batch_normalization_5/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
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
E__inference_dropout_5_layer_call_and_return_conditional_losses_6179102#
!dropout_5/StatefulPartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_15_617949conv2d_15_617951*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6179382#
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6179592
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6176802,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_617989dense_3_617991*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6179782!
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6179992
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:?????????  :::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2F
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
?d
?
__inference__traced_save_619146
file_prefix/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop/
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
0savev2_adam_conv2d_14_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop4
0savev2_adam_conv2d_15_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop4
0savev2_adam_conv2d_12_bias_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop4
0savev2_adam_conv2d_13_bias_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop6
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*?
value?B?1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop0savev2_adam_conv2d_12_bias_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop0savev2_adam_conv2d_13_bias_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop0savev2_adam_conv2d_15_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop0savev2_adam_conv2d_12_bias_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop0savev2_adam_conv2d_13_bias_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop0savev2_adam_conv2d_15_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes5
321		2
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
?: : : : @:@:@?:?:?:?:?:?:??:?:	?
:
: : : : : :: : : : : : : @:@:@?:?:?:?:??:?:	?
:
: : : @:@:@?:?:?:?:??:?:	?
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
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:! 

_output_shapes	
:?:.!*
(
_output_shapes
:??:!"

_output_shapes	
:?:%#!

_output_shapes
:	?
: $

_output_shapes
:
:,%(
&
_output_shapes
: : &

_output_shapes
: :,'(
&
_output_shapes
: @: (

_output_shapes
:@:-))
'
_output_shapes
:@?:!*

_output_shapes	
:?:!+

_output_shapes	
:?:!,

_output_shapes	
:?:.-*
(
_output_shapes
:??:!.

_output_shapes	
:?:%/!

_output_shapes
:	?
: 0

_output_shapes
:
:1

_output_shapes
: 
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_617978

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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618863

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
-__inference_sequential_7_layer_call_fn_618226
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
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6181952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????  ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_6_input
?

*__inference_conv2d_12_layer_call_fn_618693

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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6177152
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
e
I__inference_activation_17_layer_call_and_return_conditional_losses_618756

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
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_618901

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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_617844

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
?
e
I__inference_activation_15_layer_call_and_return_conditional_losses_617736

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
}
(__inference_dense_3_layer_call_fn_618964

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
C__inference_dense_3_layer_call_and_return_conditional_losses_6179782
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
I__inference_activation_15_layer_call_and_return_conditional_losses_618698

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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618799

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
?	
?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_618742

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
??
?
H__inference_sequential_6_layer_call_and_return_conditional_losses_618658

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
?
d
H__inference_sequential_6_layer_call_and_return_conditional_losses_618662

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
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_617862

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
?I
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_618111

inputs
sequential_6_618063
conv2d_12_618066
conv2d_12_618068
conv2d_13_618073
conv2d_13_618075
conv2d_14_618080
conv2d_14_618082 
batch_normalization_5_618087 
batch_normalization_5_618089 
batch_normalization_5_618091 
batch_normalization_5_618093
conv2d_15_618097
conv2d_15_618099
dense_3_618104
dense_3_618106
identity??-batch_normalization_5/StatefulPartitionedCall?!conv2d_12/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCallinputssequential_6_618063*
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175192&
$sequential_6/StatefulPartitionedCall?
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0conv2d_12_618066conv2d_12_618068*
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_6177152#
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
I__inference_activation_15_layer_call_and_return_conditional_losses_6177362
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_6175392!
max_pooling2d_9/PartitionedCall?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_13_618073conv2d_13_618075*
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_6177552#
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
I__inference_activation_16_layer_call_and_return_conditional_losses_6177762
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
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_6175512"
 max_pooling2d_10/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_14_618080conv2d_14_618082*
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6177952#
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
I__inference_activation_17_layer_call_and_return_conditional_losses_6178162
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
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_6175632"
 max_pooling2d_11/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0batch_normalization_5_618087batch_normalization_5_618089batch_normalization_5_618091batch_normalization_5_618093*
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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6178442/
-batch_normalization_5/StatefulPartitionedCall?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
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
E__inference_dropout_5_layer_call_and_return_conditional_losses_6179102#
!dropout_5/StatefulPartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_15_618097conv2d_15_618099*
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_6179382#
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
I__inference_activation_18_layer_call_and_return_conditional_losses_6179592
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_6176802,
*global_average_pooling2d_3/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_3/PartitionedCall:output:0dense_3_618104dense_3_618106*
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
C__inference_dense_3_layer_call_and_return_conditional_losses_6179782!
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
I__inference_activation_19_layer_call_and_return_conditional_losses_6179992
activation_19/PartitionedCall?
IdentityIdentity&activation_19/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:?????????  :::::::::::::::2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2F
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
?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_618713

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
-__inference_sequential_6_layer_call_fn_618669

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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175192
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
q
H__inference_sequential_6_layer_call_and_return_conditional_losses_617417
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
?
e
I__inference_activation_16_layer_call_and_return_conditional_losses_617776

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
?
e
I__inference_activation_16_layer_call_and_return_conditional_losses_618727

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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_618684

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
?

*__inference_conv2d_14_layer_call_fn_618751

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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_6177952
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
E__inference_dropout_5_layer_call_and_return_conditional_losses_617910

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

?
-__inference_sequential_7_layer_call_fn_618144
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6181112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:?????????  :::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????  
,
_user_specified_namesequential_6_input
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_617551

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
H__inference_sequential_6_layer_call_and_return_conditional_losses_617530

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
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_618906

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
?c
?
!__inference__wrapped_model_617313
sequential_6_input9
5sequential_7_conv2d_12_conv2d_readvariableop_resource:
6sequential_7_conv2d_12_biasadd_readvariableop_resource9
5sequential_7_conv2d_13_conv2d_readvariableop_resource:
6sequential_7_conv2d_13_biasadd_readvariableop_resource9
5sequential_7_conv2d_14_conv2d_readvariableop_resource:
6sequential_7_conv2d_14_biasadd_readvariableop_resource>
:sequential_7_batch_normalization_5_readvariableop_resource@
<sequential_7_batch_normalization_5_readvariableop_1_resourceO
Ksequential_7_batch_normalization_5_fusedbatchnormv3_readvariableop_resourceQ
Msequential_7_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource9
5sequential_7_conv2d_15_conv2d_readvariableop_resource:
6sequential_7_conv2d_15_biasadd_readvariableop_resource7
3sequential_7_dense_3_matmul_readvariableop_resource8
4sequential_7_dense_3_biasadd_readvariableop_resource
identity??Bsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?Dsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?1sequential_7/batch_normalization_5/ReadVariableOp?3sequential_7/batch_normalization_5/ReadVariableOp_1?-sequential_7/conv2d_12/BiasAdd/ReadVariableOp?,sequential_7/conv2d_12/Conv2D/ReadVariableOp?-sequential_7/conv2d_13/BiasAdd/ReadVariableOp?,sequential_7/conv2d_13/Conv2D/ReadVariableOp?-sequential_7/conv2d_14/BiasAdd/ReadVariableOp?,sequential_7/conv2d_14/Conv2D/ReadVariableOp?-sequential_7/conv2d_15/BiasAdd/ReadVariableOp?,sequential_7/conv2d_15/Conv2D/ReadVariableOp?+sequential_7/dense_3/BiasAdd/ReadVariableOp?*sequential_7/dense_3/MatMul/ReadVariableOp?
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
1sequential_7/batch_normalization_5/ReadVariableOpReadVariableOp:sequential_7_batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_7/batch_normalization_5/ReadVariableOp?
3sequential_7/batch_normalization_5/ReadVariableOp_1ReadVariableOp<sequential_7_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_7/batch_normalization_5/ReadVariableOp_1?
Bsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_7_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
Dsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_7_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
3sequential_7/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3.sequential_7/max_pooling2d_11/MaxPool:output:09sequential_7/batch_normalization_5/ReadVariableOp:value:0;sequential_7/batch_normalization_5/ReadVariableOp_1:value:0Jsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_7/batch_normalization_5/FusedBatchNormV3?
sequential_7/dropout_5/IdentityIdentity7sequential_7/batch_normalization_5/FusedBatchNormV3:y:0*
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
"sequential_7/activation_19/Softmax?
IdentityIdentity,sequential_7/activation_19/Softmax:softmax:0C^sequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOpE^sequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12^sequential_7/batch_normalization_5/ReadVariableOp4^sequential_7/batch_normalization_5/ReadVariableOp_1.^sequential_7/conv2d_12/BiasAdd/ReadVariableOp-^sequential_7/conv2d_12/Conv2D/ReadVariableOp.^sequential_7/conv2d_13/BiasAdd/ReadVariableOp-^sequential_7/conv2d_13/Conv2D/ReadVariableOp.^sequential_7/conv2d_14/BiasAdd/ReadVariableOp-^sequential_7/conv2d_14/Conv2D/ReadVariableOp.^sequential_7/conv2d_15/BiasAdd/ReadVariableOp-^sequential_7/conv2d_15/Conv2D/ReadVariableOp,^sequential_7/dense_3/BiasAdd/ReadVariableOp+^sequential_7/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????  ::::::::::::::2?
Bsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOpBsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2?
Dsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Dsequential_7/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12f
1sequential_7/batch_normalization_5/ReadVariableOp1sequential_7/batch_normalization_5/ReadVariableOp2j
3sequential_7/batch_normalization_5/ReadVariableOp_13sequential_7/batch_normalization_5/ReadVariableOp_12^
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
_user_specified_namesequential_6_input
?
V
-__inference_sequential_6_layer_call_fn_617533
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_6175302
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
?O
?

H__inference_sequential_7_layer_call_and_return_conditional_losses_618491

inputs,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource1
-batch_normalization_5_readvariableop_resource3
/batch_normalization_5_readvariableop_1_resourceB
>batch_normalization_5_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?
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
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_5/ReadVariableOp?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_5/ReadVariableOp_1?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_11/MaxPool:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_5/FusedBatchNormV3?
dropout_5/IdentityIdentity*batch_normalization_5/FusedBatchNormV3:y:0*
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
activation_19/Softmax?
IdentityIdentityactivation_19/Softmax:softmax:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:?????????  ::::::::::::::2n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12D
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
?
?
6__inference_batch_normalization_5_layer_call_fn_618825

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
GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_6178622
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
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_617563

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
??
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_618432

inputsH
Dsequential_6_random_zoom_3_stateful_uniform_statefuluniform_resource,
(conv2d_12_conv2d_readvariableop_resource-
)conv2d_12_biasadd_readvariableop_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource1
-batch_normalization_5_readvariableop_resource3
/batch_normalization_5_readvariableop_1_resourceB
>batch_normalization_5_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??$batch_normalization_5/AssignNewValue?&batch_normalization_5/AssignNewValue_1?5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1? conv2d_12/BiasAdd/ReadVariableOp?conv2d_12/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?;sequential_6/random_zoom_3/stateful_uniform/StatefulUniformz
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
max_pooling2d_11/MaxPool?
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_5/ReadVariableOp?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_5/ReadVariableOp_1?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_11/MaxPool:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_5/FusedBatchNormV3?
$batch_normalization_5/AssignNewValueAssignVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource3batch_normalization_5/FusedBatchNormV3:batch_mean:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_5/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_5/AssignNewValue?
&batch_normalization_5/AssignNewValue_1AssignVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_5/FusedBatchNormV3:batch_variance:08^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_5/AssignNewValue_1w
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_5/dropout/Const?
dropout_5/dropout/MulMul*batch_normalization_5/FusedBatchNormV3:y:0 dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_5/dropout/Mul?
dropout_5/dropout/ShapeShape*batch_normalization_5/FusedBatchNormV3:y:0*
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
activation_19/Softmax?
IdentityIdentityactivation_19/Softmax:softmax:0%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp<^sequential_6/random_zoom_3/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:?????????  :::::::::::::::2L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2P
&batch_normalization_5/AssignNewValue_1&batch_normalization_5/AssignNewValue_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12D
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
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_617915

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
sequential_6_inputC
$serving_default_sequential_6_input:0?????????  A
activation_190
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?m
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
layer_with_weights-4
layer-12
layer-13
layer-14
layer_with_weights-5
layer-15
layer-16
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?h
_tf_keras_sequential?h{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_6_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_6_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_sequential?
{"class_name": "Sequential", "name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_3_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?	

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
?
#trainable_variables
$	variables
%regularization_losses
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
'trainable_variables
(	variables
)regularization_losses
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
?
1trainable_variables
2	variables
3regularization_losses
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_16", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
5trainable_variables
6	variables
7regularization_losses
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

9kernel
:bias
;trainable_variables
<	variables
=regularization_losses
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
?
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_17", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
Ltrainable_variables
M	variables
Nregularization_losses
O	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
Ptrainable_variables
Q	variables
Rregularization_losses
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
?	

Tkernel
Ubias
Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
Ztrainable_variables
[	variables
\regularization_losses
]	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_18", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
^trainable_variables
_	variables
`regularization_losses
a	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

bkernel
cbias
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
htrainable_variables
i	variables
jregularization_losses
k	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_19", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
liter

mbeta_1

nbeta_2
	odecay
plearning_ratem?m?+m?,m?9m?:m?Hm?Im?Tm?Um?bm?cm?v?v?+v?,v?9v?:v?Hv?Iv?Tv?Uv?bv?cv?"
	optimizer
v
0
1
+2
,3
94
:5
H6
I7
T8
U9
b10
c11"
trackable_list_wrapper
?
0
1
+2
,3
94
:5
H6
I7
J8
K9
T10
U11
b12
c13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables
trainable_variables
rmetrics
	variables
slayer_metrics
tlayer_regularization_losses

ulayers
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
v_rng
w	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_3", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables
trainable_variables
ymetrics
	variables
zlayer_metrics
{layer_regularization_losses

|layers
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_12/kernel
: 2conv2d_12/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables
trainable_variables
~metrics
 	variables
layer_metrics
 ?layer_regularization_losses
?layers
!regularization_losses
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
#trainable_variables
?metrics
$	variables
?layer_metrics
 ?layer_regularization_losses
?layers
%regularization_losses
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
'trainable_variables
?metrics
(	variables
?layer_metrics
 ?layer_regularization_losses
?layers
)regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_13/kernel
:@2conv2d_13/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
-trainable_variables
?metrics
.	variables
?layer_metrics
 ?layer_regularization_losses
?layers
/regularization_losses
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
1trainable_variables
?metrics
2	variables
?layer_metrics
 ?layer_regularization_losses
?layers
3regularization_losses
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
5trainable_variables
?metrics
6	variables
?layer_metrics
 ?layer_regularization_losses
?layers
7regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_14/kernel
:?2conv2d_14/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
;trainable_variables
?metrics
<	variables
?layer_metrics
 ?layer_regularization_losses
?layers
=regularization_losses
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
?trainable_variables
?metrics
@	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Aregularization_losses
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
Ctrainable_variables
?metrics
D	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_5/gamma
):'?2batch_normalization_5/beta
2:0? (2!batch_normalization_5/moving_mean
6:4? (2%batch_normalization_5/moving_variance
.
H0
I1"
trackable_list_wrapper
<
H0
I1
J2
K3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Ltrainable_variables
?metrics
M	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Nregularization_losses
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
Ptrainable_variables
?metrics
Q	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Rregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_15/kernel
:?2conv2d_15/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
Vtrainable_variables
?metrics
W	variables
?layer_metrics
 ?layer_regularization_losses
?layers
Xregularization_losses
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
Ztrainable_variables
?metrics
[	variables
?layer_metrics
 ?layer_regularization_losses
?layers
\regularization_losses
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
^trainable_variables
?metrics
_	variables
?layer_metrics
 ?layer_regularization_losses
?layers
`regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?
2dense_3/kernel
:
2dense_3/bias
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
dtrainable_variables
?metrics
e	variables
?layer_metrics
 ?layer_regularization_losses
?layers
fregularization_losses
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
htrainable_variables
?metrics
i	variables
?layer_metrics
 ?layer_regularization_losses
?layers
jregularization_losses
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
.
J0
K1"
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
16"
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
0"
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
.
J0
K1"
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
/:- 2Adam/conv2d_12/kernel/m
!: 2Adam/conv2d_12/bias/m
/:- @2Adam/conv2d_13/kernel/m
!:@2Adam/conv2d_13/bias/m
0:.@?2Adam/conv2d_14/kernel/m
": ?2Adam/conv2d_14/bias/m
/:-?2"Adam/batch_normalization_5/gamma/m
.:,?2!Adam/batch_normalization_5/beta/m
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
/:-?2"Adam/batch_normalization_5/gamma/v
.:,?2!Adam/batch_normalization_5/beta/v
1:/??2Adam/conv2d_15/kernel/v
": ?2Adam/conv2d_15/bias/v
&:$	?
2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/v
?2?
H__inference_sequential_7_layer_call_and_return_conditional_losses_618432
H__inference_sequential_7_layer_call_and_return_conditional_losses_618057
H__inference_sequential_7_layer_call_and_return_conditional_losses_618491
H__inference_sequential_7_layer_call_and_return_conditional_losses_618008?
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
!__inference__wrapped_model_617313?
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
?2?
-__inference_sequential_7_layer_call_fn_618226
-__inference_sequential_7_layer_call_fn_618144
-__inference_sequential_7_layer_call_fn_618559
-__inference_sequential_7_layer_call_fn_618526?
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_618658
H__inference_sequential_6_layer_call_and_return_conditional_losses_617413
H__inference_sequential_6_layer_call_and_return_conditional_losses_617417
H__inference_sequential_6_layer_call_and_return_conditional_losses_618662?
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
-__inference_sequential_6_layer_call_fn_618674
-__inference_sequential_6_layer_call_fn_617524
-__inference_sequential_6_layer_call_fn_617533
-__inference_sequential_6_layer_call_fn_618669?
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
E__inference_conv2d_12_layer_call_and_return_conditional_losses_618684?
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
*__inference_conv2d_12_layer_call_fn_618693?
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
I__inference_activation_15_layer_call_and_return_conditional_losses_618698?
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
.__inference_activation_15_layer_call_fn_618703?
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
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_617539?
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
0__inference_max_pooling2d_9_layer_call_fn_617545?
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
E__inference_conv2d_13_layer_call_and_return_conditional_losses_618713?
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
*__inference_conv2d_13_layer_call_fn_618722?
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
I__inference_activation_16_layer_call_and_return_conditional_losses_618727?
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
.__inference_activation_16_layer_call_fn_618732?
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
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_617551?
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
1__inference_max_pooling2d_10_layer_call_fn_617557?
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
E__inference_conv2d_14_layer_call_and_return_conditional_losses_618742?
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
*__inference_conv2d_14_layer_call_fn_618751?
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
I__inference_activation_17_layer_call_and_return_conditional_losses_618756?
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
.__inference_activation_17_layer_call_fn_618761?
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
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_617563?
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
1__inference_max_pooling2d_11_layer_call_fn_617569?
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
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618799
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618863
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618781
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618845?
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
6__inference_batch_normalization_5_layer_call_fn_618812
6__inference_batch_normalization_5_layer_call_fn_618825
6__inference_batch_normalization_5_layer_call_fn_618889
6__inference_batch_normalization_5_layer_call_fn_618876?
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
E__inference_dropout_5_layer_call_and_return_conditional_losses_618906
E__inference_dropout_5_layer_call_and_return_conditional_losses_618901?
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
*__inference_dropout_5_layer_call_fn_618916
*__inference_dropout_5_layer_call_fn_618911?
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
E__inference_conv2d_15_layer_call_and_return_conditional_losses_618926?
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
*__inference_conv2d_15_layer_call_fn_618935?
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
I__inference_activation_18_layer_call_and_return_conditional_losses_618940?
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
.__inference_activation_18_layer_call_fn_618945?
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
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_617680?
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
;__inference_global_average_pooling2d_3_layer_call_fn_617686?
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
C__inference_dense_3_layer_call_and_return_conditional_losses_618955?
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
(__inference_dense_3_layer_call_fn_618964?
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
I__inference_activation_19_layer_call_and_return_conditional_losses_618969?
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
.__inference_activation_19_layer_call_fn_618974?
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
$__inference_signature_wrapper_618269sequential_6_input"?
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
!__inference__wrapped_model_617313?+,9:HIJKTUbcC?@
9?6
4?1
sequential_6_input?????????  
? "=?:
8
activation_19'?$
activation_19?????????
?
I__inference_activation_15_layer_call_and_return_conditional_losses_618698h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
.__inference_activation_15_layer_call_fn_618703[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
I__inference_activation_16_layer_call_and_return_conditional_losses_618727h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_16_layer_call_fn_618732[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_17_layer_call_and_return_conditional_losses_618756j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_17_layer_call_fn_618761]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_18_layer_call_and_return_conditional_losses_618940j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
.__inference_activation_18_layer_call_fn_618945]8?5
.?+
)?&
inputs??????????
? "!????????????
I__inference_activation_19_layer_call_and_return_conditional_losses_618969X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? }
.__inference_activation_19_layer_call_fn_618974K/?,
%?"
 ?
inputs?????????

? "??????????
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618781tHIJK<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618799tHIJK<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618845?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_618863?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_5_layer_call_fn_618812gHIJK<?9
2?/
)?&
inputs??????????
p
? "!????????????
6__inference_batch_normalization_5_layer_call_fn_618825gHIJK<?9
2?/
)?&
inputs??????????
p 
? "!????????????
6__inference_batch_normalization_5_layer_call_fn_618876?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
6__inference_batch_normalization_5_layer_call_fn_618889?HIJKN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
E__inference_conv2d_12_layer_call_and_return_conditional_losses_618684l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
*__inference_conv2d_12_layer_call_fn_618693_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_618713l+,7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_13_layer_call_fn_618722_+,7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_618742m9:7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_14_layer_call_fn_618751`9:7?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_15_layer_call_and_return_conditional_losses_618926nTU8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_15_layer_call_fn_618935aTU8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_3_layer_call_and_return_conditional_losses_618955]bc0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_3_layer_call_fn_618964Pbc0?-
&?#
!?
inputs??????????
? "??????????
?
E__inference_dropout_5_layer_call_and_return_conditional_losses_618901n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
E__inference_dropout_5_layer_call_and_return_conditional_losses_618906n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
*__inference_dropout_5_layer_call_fn_618911a<?9
2?/
)?&
inputs??????????
p
? "!????????????
*__inference_dropout_5_layer_call_fn_618916a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
V__inference_global_average_pooling2d_3_layer_call_and_return_conditional_losses_617680?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_3_layer_call_fn_617686wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_617551?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_10_layer_call_fn_617557?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_617563?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_11_layer_call_fn_617569?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_617539?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_9_layer_call_fn_617545?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_6_layer_call_and_return_conditional_losses_617413??L?I
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_617417}L?I
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_618658t???<
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_618662p??<
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
-__inference_sequential_6_layer_call_fn_617524t?L?I
B??
5?2
random_zoom_3_input?????????  
p

 
? " ??????????  ?
-__inference_sequential_6_layer_call_fn_617533pL?I
B??
5?2
random_zoom_3_input?????????  
p 

 
? " ??????????  ?
-__inference_sequential_6_layer_call_fn_618669g???<
5?2
(?%
inputs?????????  
p

 
? " ??????????  ?
-__inference_sequential_6_layer_call_fn_618674c??<
5?2
(?%
inputs?????????  
p 

 
? " ??????????  ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_618008??+,9:HIJKTUbcK?H
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
H__inference_sequential_7_layer_call_and_return_conditional_losses_618057?+,9:HIJKTUbcK?H
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
H__inference_sequential_7_layer_call_and_return_conditional_losses_618432z?+,9:HIJKTUbc??<
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
H__inference_sequential_7_layer_call_and_return_conditional_losses_618491x+,9:HIJKTUbc??<
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
-__inference_sequential_7_layer_call_fn_618144y?+,9:HIJKTUbcK?H
A?>
4?1
sequential_6_input?????????  
p

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_618226w+,9:HIJKTUbcK?H
A?>
4?1
sequential_6_input?????????  
p 

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_618526m?+,9:HIJKTUbc??<
5?2
(?%
inputs?????????  
p

 
? "??????????
?
-__inference_sequential_7_layer_call_fn_618559k+,9:HIJKTUbc??<
5?2
(?%
inputs?????????  
p 

 
? "??????????
?
$__inference_signature_wrapper_618269?+,9:HIJKTUbcY?V
? 
O?L
J
sequential_6_input4?1
sequential_6_input?????????  "=?:
8
activation_19'?$
activation_19?????????
