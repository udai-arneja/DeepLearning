Ф‘
Шо
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
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
ъ
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
epsilonfloat%Ј—8"&
exponential_avg_factorfloat%  А?";
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
В
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
Н
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
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Њ
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
executor_typestring И
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.1-0-g85c8b2a817f8р¶
Д
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
Д
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
О
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_8/gamma
З
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:@*
dtype0
М
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_8/beta
Е
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:@*
dtype0
Ъ
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_8/moving_mean
У
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:@*
dtype0
Ґ
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_8/moving_variance
Ы
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:@*
dtype0
Е
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_22/kernel
~
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*'
_output_shapes
:@А*
dtype0
u
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_22/bias
n
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes	
:А*
dtype0
П
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_9/gamma
И
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:А*
dtype0
Н
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namebatch_normalization_9/beta
Ж
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:А*
dtype0
Ы
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!batch_normalization_9/moving_mean
Ф
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:А*
dtype0
£
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%batch_normalization_9/moving_variance
Ь
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:А*
dtype0
Ж
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_23/kernel

$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_23/bias
n
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes	
:А*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	А
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
Т
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/m
Л
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
: *
dtype0
В
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
Т
Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/m
Л
+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
: @*
dtype0
В
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
Ь
"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_8/gamma/m
Х
6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes
:@*
dtype0
Ъ
!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_8/beta/m
У
5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes
:@*
dtype0
У
Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_22/kernel/m
М
+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*'
_output_shapes
:@А*
dtype0
Г
Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_22/bias/m
|
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_9/gamma/m
Ц
6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/m*
_output_shapes	
:А*
dtype0
Ы
!Adam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_9/beta/m
Ф
5Adam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_23/kernel/m
Н
+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_23/bias/m
|
)Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*&
shared_nameAdam/dense_5/kernel/m
А
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	А
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
Т
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/v
Л
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
: *
dtype0
В
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
Т
Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/v
Л
+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
: @*
dtype0
В
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
Ь
"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_8/gamma/v
Х
6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes
:@*
dtype0
Ъ
!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_8/beta/v
У
5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes
:@*
dtype0
У
Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_22/kernel/v
М
+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*'
_output_shapes
:@А*
dtype0
Г
Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_22/bias/v
|
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_9/gamma/v
Ц
6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/v*
_output_shapes	
:А*
dtype0
Ы
!Adam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_9/beta/v
Ф
5Adam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_23/kernel/v
Н
+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_23/bias/v
|
)Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*&
shared_nameAdam/dense_5/kernel/v
А
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	А
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
“h
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Нh
valueГhBАh Bщg
Л
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
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
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
Ч
9axis
	:gamma
;beta
<moving_mean
=moving_variance
>	variables
?regularization_losses
@trainable_variables
A	keras_api
h

Bkernel
Cbias
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
R
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
R
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
Ч
Paxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
h

Ykernel
Zbias
[	variables
\regularization_losses
]trainable_variables
^	keras_api
R
_	variables
`regularization_losses
atrainable_variables
b	keras_api
R
c	variables
dregularization_losses
etrainable_variables
f	keras_api
h

gkernel
hbias
i	variables
jregularization_losses
ktrainable_variables
l	keras_api
R
m	variables
nregularization_losses
otrainable_variables
p	keras_api
Ў
qiter

rbeta_1

sbeta_2
	tdecay
ulearning_ratemёmя+mа,mб:mв;mгBmдCmеQmжRmзYmиZmйgmкhmлvмvн+vо,vп:vр;vсBvтCvуQvфRvхYvцZvчgvшhvщ
Ж
0
1
+2
,3
:4
;5
<6
=7
B8
C9
Q10
R11
S12
T13
Y14
Z15
g16
h17
 
f
0
1
+2
,3
:4
;5
B6
C7
Q8
R9
Y10
Z11
g12
h13
≠
vlayer_regularization_losses
	variables
wlayer_metrics
xmetrics
ynon_trainable_variables

zlayers
regularization_losses
trainable_variables
 

{_rng
|	keras_api
 
 
 
ѓ
}layer_regularization_losses
	variables
~layer_metrics
metrics
Аnon_trainable_variables
Бlayers
regularization_losses
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
≤
 Вlayer_regularization_losses
	variables
Гlayer_metrics
Дmetrics
Еnon_trainable_variables
Жlayers
 regularization_losses
!trainable_variables
 
 
 
≤
 Зlayer_regularization_losses
#	variables
Иlayer_metrics
Йmetrics
Кnon_trainable_variables
Лlayers
$regularization_losses
%trainable_variables
 
 
 
≤
 Мlayer_regularization_losses
'	variables
Нlayer_metrics
Оmetrics
Пnon_trainable_variables
Рlayers
(regularization_losses
)trainable_variables
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
≤
 Сlayer_regularization_losses
-	variables
Тlayer_metrics
Уmetrics
Фnon_trainable_variables
Хlayers
.regularization_losses
/trainable_variables
 
 
 
≤
 Цlayer_regularization_losses
1	variables
Чlayer_metrics
Шmetrics
Щnon_trainable_variables
Ъlayers
2regularization_losses
3trainable_variables
 
 
 
≤
 Ыlayer_regularization_losses
5	variables
Ьlayer_metrics
Эmetrics
Юnon_trainable_variables
Яlayers
6regularization_losses
7trainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
<2
=3
 

:0
;1
≤
 †layer_regularization_losses
>	variables
°layer_metrics
Ґmetrics
£non_trainable_variables
§layers
?regularization_losses
@trainable_variables
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
 

B0
C1
≤
 •layer_regularization_losses
D	variables
¶layer_metrics
Іmetrics
®non_trainable_variables
©layers
Eregularization_losses
Ftrainable_variables
 
 
 
≤
 ™layer_regularization_losses
H	variables
Ђlayer_metrics
ђmetrics
≠non_trainable_variables
Ѓlayers
Iregularization_losses
Jtrainable_variables
 
 
 
≤
 ѓlayer_regularization_losses
L	variables
∞layer_metrics
±metrics
≤non_trainable_variables
≥layers
Mregularization_losses
Ntrainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

Q0
R1
S2
T3
 

Q0
R1
≤
 іlayer_regularization_losses
U	variables
µlayer_metrics
ґmetrics
Јnon_trainable_variables
Єlayers
Vregularization_losses
Wtrainable_variables
\Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

Y0
Z1
 

Y0
Z1
≤
 єlayer_regularization_losses
[	variables
Їlayer_metrics
їmetrics
Љnon_trainable_variables
љlayers
\regularization_losses
]trainable_variables
 
 
 
≤
 Њlayer_regularization_losses
_	variables
њlayer_metrics
јmetrics
Ѕnon_trainable_variables
¬layers
`regularization_losses
atrainable_variables
 
 
 
≤
 √layer_regularization_losses
c	variables
ƒlayer_metrics
≈metrics
∆non_trainable_variables
«layers
dregularization_losses
etrainable_variables
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

g0
h1
 

g0
h1
≤
 »layer_regularization_losses
i	variables
…layer_metrics
 metrics
Ћnon_trainable_variables
ћlayers
jregularization_losses
ktrainable_variables
 
 
 
≤
 Ќlayer_regularization_losses
m	variables
ќlayer_metrics
ѕmetrics
–non_trainable_variables
—layers
nregularization_losses
otrainable_variables
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

“0
”1

<0
=1
S2
T3
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
‘
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

<0
=1
 
 
 
 
 
 
 
 
 
 
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
S0
T1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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

’total

÷count
„	variables
Ў	keras_api
I

ўtotal

Џcount
џ
_fn_kwargs
№	variables
Ё	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

’0
÷1

„	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

ў0
Џ1

№	variables
}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE!Adam/batch_normalization_9/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_23/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE"Adam/batch_normalization_9/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE!Adam/batch_normalization_9/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_23/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ц
#serving_default_sequential_10_inputPlaceholder*/
_output_shapes
:€€€€€€€€€  *
dtype0*$
shape:€€€€€€€€€  
С
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_10_inputconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_22/kernelconv2d_22/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_23/kernelconv2d_23/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_927399
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
≈
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp)Adam/conv2d_21/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp)Adam/conv2d_22/bias/m/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_9/beta/m/Read/ReadVariableOp+Adam/conv2d_23/kernel/m/Read/ReadVariableOp)Adam/conv2d_23/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp)Adam/conv2d_21/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp)Adam/conv2d_22/bias/v/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_9/beta/v/Read/ReadVariableOp+Adam/conv2d_23/kernel/v/Read/ReadVariableOp)Adam/conv2d_23/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*E
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_928438
а
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_22/kernelconv2d_22/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_23/kernelconv2d_23/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariabletotalcounttotal_1count_1Adam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/conv2d_22/kernel/mAdam/conv2d_22/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/mAdam/conv2d_23/kernel/mAdam/conv2d_23/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/vAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*D
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_928616°†
л	
ё
E__inference_conv2d_21_layer_call_and_return_conditional_losses_926794

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Е
Ш
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_926843

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ѓ
З
.__inference_sequential_11_layer_call_fn_927348
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_9273092
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namesequential_10_input
√
J
.__inference_activation_27_layer_call_fn_928056

inputs
identity”
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_27_layer_call_and_return_conditional_losses_9269282
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
э

э
$__inference_signature_wrapper_927399
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_9262482
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namesequential_10_input
Ъ
r
I__inference_sequential_10_layer_call_and_return_conditional_losses_926352
random_zoom_5_input
identityo
IdentityIdentityrandom_zoom_5_input*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€  :d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namerandom_zoom_5_input
Б

*__inference_conv2d_20_layer_call_fn_927860

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9267542
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€  ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
≤
M
1__inference_max_pooling2d_16_layer_call_fn_926492

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9264862
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ґa
т
I__inference_sequential_11_layer_call_and_return_conditional_losses_927642

inputs,
(conv2d_20_conv2d_readvariableop_resource-
)conv2d_20_biasadd_readvariableop_resource,
(conv2d_21_conv2d_readvariableop_resource-
)conv2d_21_biasadd_readvariableop_resource1
-batch_normalization_8_readvariableop_resource3
/batch_normalization_8_readvariableop_1_resourceB
>batch_normalization_8_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource1
-batch_normalization_9_readvariableop_resource3
/batch_normalization_9_readvariableop_1_resourceB
>batch_normalization_9_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identityИҐ5batch_normalization_8/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_8/ReadVariableOpҐ&batch_normalization_8/ReadVariableOp_1Ґ5batch_normalization_9/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_9/ReadVariableOpҐ&batch_normalization_9/ReadVariableOp_1Ґ conv2d_20/BiasAdd/ReadVariableOpҐconv2d_20/Conv2D/ReadVariableOpҐ conv2d_21/BiasAdd/ReadVariableOpҐconv2d_21/Conv2D/ReadVariableOpҐ conv2d_22/BiasAdd/ReadVariableOpҐconv2d_22/Conv2D/ReadVariableOpҐ conv2d_23/BiasAdd/ReadVariableOpҐconv2d_23/Conv2D/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOp≥
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_20/Conv2D/ReadVariableOpЅ
conv2d_20/Conv2DConv2Dinputs'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
conv2d_20/Conv2D™
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp∞
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2
conv2d_20/BiasAddЖ
activation_25/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2
activation_25/ReluЌ
max_pooling2d_15/MaxPoolMaxPool activation_25/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_15/MaxPool≥
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp№
conv2d_21/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_21/Conv2D™
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp∞
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_21/BiasAddЖ
activation_26/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
activation_26/ReluЌ
max_pooling2d_16/MaxPoolMaxPool activation_26/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_16/MaxPoolґ
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_8/ReadVariableOpЉ
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_8/ReadVariableOp_1й
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpп
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1й
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_16/MaxPool:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_8/FusedBatchNormV3і
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_22/Conv2D/ReadVariableOpж
conv2d_22/Conv2DConv2D*batch_normalization_8/FusedBatchNormV3:y:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_22/Conv2DЂ
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp±
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_22/BiasAddЗ
activation_27/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
activation_27/Reluќ
max_pooling2d_17/MaxPoolMaxPool activation_27/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_17/MaxPoolЈ
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_9/ReadVariableOpљ
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_9/ReadVariableOp_1к
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpр
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1о
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_17/MaxPool:output:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( 2(
&batch_normalization_9/FusedBatchNormV3µ
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_23/Conv2D/ReadVariableOpж
conv2d_23/Conv2DConv2D*batch_normalization_9/FusedBatchNormV3:y:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_23/Conv2DЂ
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp±
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_23/BiasAddЗ
activation_28/ReluReluconv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
activation_28/ReluЈ
1global_average_pooling2d_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_5/Mean/reduction_indicesџ
global_average_pooling2d_5/MeanMean activation_28/Relu:activations:0:global_average_pooling2d_5/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
global_average_pooling2d_5/Mean¶
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
dense_5/MatMul/ReadVariableOp≠
dense_5/MatMulMatMul(global_average_pooling2d_5/Mean:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/BiasAddЕ
activation_29/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
activation_29/Softmaxћ
IdentityIdentityactivation_29/Softmax:softmax:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€  ::::::::::::::::::2n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12D
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
:€€€€€€€€€  
 
_user_specified_nameinputs
¬Ы
÷
I__inference_sequential_10_layer_call_and_return_conditional_losses_927825

inputs;
7random_zoom_5_stateful_uniform_statefuluniform_resource
identityИҐ.random_zoom_5/stateful_uniform/StatefulUniform`
random_zoom_5/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/ShapeР
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stackФ
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1Ф
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2ґ
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_sliceФ
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stackШ
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1Ш
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2ј
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1И
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/CastФ
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stackШ
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1Ш
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2ј
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2М
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1Т
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1ў
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shapeН
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"random_zoom_5/stateful_uniform/minН
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"random_zoom_5/stateful_uniform/maxґ
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmЏ
.random_zoom_5/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_5_stateful_uniform_statefuluniform_resourceArandom_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:€€€€€€€€€*
shape_dtype020
.random_zoom_5/stateful_uniform/StatefulUniform 
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/subв
"random_zoom_5/stateful_uniform/mulMul7random_zoom_5/stateful_uniform/StatefulUniform:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"random_zoom_5/stateful_uniform/mulќ
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axisя
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom_5/concatП
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape®
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stackђ
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1ђ
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2ю
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_sliceЗ
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2!
random_zoom_5/zoom_matrix/sub/y™
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/subП
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y√
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truedivЈ
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stackї
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1Л
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_1/xџ
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/sub_1√
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom_5/zoom_matrix/mulЛ
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_2/yЃ
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2У
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/yЋ
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1Ј
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stackї
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2Л
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_3/xџ
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/sub_3…
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/mul_1Ј
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stackї
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3Р
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y‘
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mulУ
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&random_zoom_5/zoom_matrix/zeros/Less/yѕ
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/LessЦ
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1л
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packedУ
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/ConstЁ
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/zerosФ
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/yЏ
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mulЧ
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y„
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/LessЪ
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1с
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packedЧ
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Constе
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!random_zoom_5/zoom_matrix/zeros_1Ј
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stackї
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4Ф
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/yЏ
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mulЧ
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y„
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/LessЪ
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1с
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packedЧ
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Constе
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!random_zoom_5/zoom_matrix/zeros_2Р
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axisн
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2"
 random_zoom_5/zoom_matrix/concatt
random_zoom_5/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape§
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack®
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1®
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2ё
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_sliceН
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_valueЙ
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:€€€€€€€€€  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3‘
IdentityIdentityGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_5/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€  :2`
.random_zoom_5/stateful_uniform/StatefulUniform.random_zoom_5/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
л	
ё
E__inference_conv2d_20_layer_call_and_return_conditional_losses_927851

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
О
Б
.__inference_sequential_10_layer_call_fn_926459
random_zoom_5_input
unknown
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallrandom_zoom_5_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264542
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€  :22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namerandom_zoom_5_input
ё
©
6__inference_batch_normalization_9_layer_call_fn_928184

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9269742
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬Ы
÷
I__inference_sequential_10_layer_call_and_return_conditional_losses_926454

inputs;
7random_zoom_5_stateful_uniform_statefuluniform_resource
identityИҐ.random_zoom_5/stateful_uniform/StatefulUniform`
random_zoom_5/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/ShapeР
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stackФ
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1Ф
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2ґ
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_sliceФ
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stackШ
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1Ш
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2ј
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1И
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/CastФ
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stackШ
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1Ш
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2ј
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2М
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1Т
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1ў
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shapeН
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"random_zoom_5/stateful_uniform/minН
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"random_zoom_5/stateful_uniform/maxґ
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmЏ
.random_zoom_5/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_5_stateful_uniform_statefuluniform_resourceArandom_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:€€€€€€€€€*
shape_dtype020
.random_zoom_5/stateful_uniform/StatefulUniform 
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/subв
"random_zoom_5/stateful_uniform/mulMul7random_zoom_5/stateful_uniform/StatefulUniform:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"random_zoom_5/stateful_uniform/mulќ
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axisя
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom_5/concatП
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape®
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stackђ
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1ђ
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2ю
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_sliceЗ
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2!
random_zoom_5/zoom_matrix/sub/y™
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/subП
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y√
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truedivЈ
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stackї
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1Л
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_1/xџ
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/sub_1√
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom_5/zoom_matrix/mulЛ
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_2/yЃ
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2У
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/yЋ
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1Ј
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stackї
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2Л
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_3/xџ
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/sub_3…
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/mul_1Ј
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stackї
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3Р
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y‘
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mulУ
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&random_zoom_5/zoom_matrix/zeros/Less/yѕ
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/LessЦ
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1л
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packedУ
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/ConstЁ
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/zerosФ
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/yЏ
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mulЧ
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y„
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/LessЪ
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1с
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packedЧ
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Constе
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!random_zoom_5/zoom_matrix/zeros_1Ј
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stackї
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4Ф
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/yЏ
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mulЧ
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y„
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/LessЪ
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1с
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packedЧ
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Constе
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!random_zoom_5/zoom_matrix/zeros_2Р
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axisн
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2"
 random_zoom_5/zoom_matrix/concatt
random_zoom_5/transform/ShapeShapeinputs*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape§
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack®
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1®
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2ё
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_sliceН
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_valueЙ
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:€€€€€€€€€  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3‘
IdentityIdentityGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_5/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€  :2`
.random_zoom_5/stateful_uniform/StatefulUniform.random_zoom_5/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Љ
r
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_926719

inputs
identityБ
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
СK
п
I__inference_sequential_11_layer_call_and_return_conditional_losses_927147
sequential_10_input
conv2d_20_927094
conv2d_20_927096
conv2d_21_927101
conv2d_21_927103 
batch_normalization_8_927108 
batch_normalization_8_927110 
batch_normalization_8_927112 
batch_normalization_8_927114
conv2d_22_927117
conv2d_22_927119 
batch_normalization_9_927124 
batch_normalization_9_927126 
batch_normalization_9_927128 
batch_normalization_9_927130
conv2d_23_927133
conv2d_23_927135
dense_5_927140
dense_5_927142
identityИҐ-batch_normalization_8/StatefulPartitionedCallҐ-batch_normalization_9/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallы
sequential_10/PartitionedCallPartitionedCallsequential_10_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264652
sequential_10/PartitionedCallƒ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&sequential_10/PartitionedCall:output:0conv2d_20_927094conv2d_20_927096*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9267542#
!conv2d_20/StatefulPartitionedCallТ
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_25_layer_call_and_return_conditional_losses_9267752
activation_25/PartitionedCallЧ
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9264742"
 max_pooling2d_15/PartitionedCall«
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_927101conv2d_21_927103*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9267942#
!conv2d_21/StatefulPartitionedCallТ
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_9268152
activation_26/PartitionedCallЧ
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9264862"
 max_pooling2d_16/PartitionedCall√
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0batch_normalization_8_927108batch_normalization_8_927110batch_normalization_8_927112batch_normalization_8_927114*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9268612/
-batch_normalization_8/StatefulPartitionedCall’
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_22_927117conv2d_22_927119*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9269072#
!conv2d_22/StatefulPartitionedCallУ
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_27_layer_call_and_return_conditional_losses_9269282
activation_27/PartitionedCallШ
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9266022"
 max_pooling2d_17/PartitionedCallƒ
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0batch_normalization_9_927124batch_normalization_9_927126batch_normalization_9_927128batch_normalization_9_927130*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9269742/
-batch_normalization_9/StatefulPartitionedCall’
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_23_927133conv2d_23_927135*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9270202#
!conv2d_23/StatefulPartitionedCallУ
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_28_layer_call_and_return_conditional_losses_9270412
activation_28/PartitionedCallЃ
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *_
fZRX
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9267192,
*global_average_pooling2d_5/PartitionedCallњ
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_927140dense_5_927142*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_9270602!
dense_5/StatefulPartitionedCallИ
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_29_layer_call_and_return_conditional_losses_9270812
activation_29/PartitionedCallМ
IdentityIdentity&activation_29/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€  ::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namesequential_10_input
Ґ
©
6__inference_batch_normalization_8_layer_call_fn_927963

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9265852
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
њ
J
.__inference_sequential_10_layer_call_fn_927841

inputs
identity“
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€  :W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Ў
©
6__inference_batch_normalization_8_layer_call_fn_928014

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9268432
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
џ
e
I__inference_activation_28_layer_call_and_return_conditional_losses_928208

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„
e
I__inference_activation_26_layer_call_and_return_conditional_losses_927894

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
кJ
в
I__inference_sequential_11_layer_call_and_return_conditional_losses_927309

inputs
conv2d_20_927256
conv2d_20_927258
conv2d_21_927263
conv2d_21_927265 
batch_normalization_8_927270 
batch_normalization_8_927272 
batch_normalization_8_927274 
batch_normalization_8_927276
conv2d_22_927279
conv2d_22_927281 
batch_normalization_9_927286 
batch_normalization_9_927288 
batch_normalization_9_927290 
batch_normalization_9_927292
conv2d_23_927295
conv2d_23_927297
dense_5_927302
dense_5_927304
identityИҐ-batch_normalization_8/StatefulPartitionedCallҐ-batch_normalization_9/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallо
sequential_10/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264652
sequential_10/PartitionedCallƒ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&sequential_10/PartitionedCall:output:0conv2d_20_927256conv2d_20_927258*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9267542#
!conv2d_20/StatefulPartitionedCallТ
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_25_layer_call_and_return_conditional_losses_9267752
activation_25/PartitionedCallЧ
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9264742"
 max_pooling2d_15/PartitionedCall«
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_927263conv2d_21_927265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9267942#
!conv2d_21/StatefulPartitionedCallТ
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_9268152
activation_26/PartitionedCallЧ
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9264862"
 max_pooling2d_16/PartitionedCall√
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0batch_normalization_8_927270batch_normalization_8_927272batch_normalization_8_927274batch_normalization_8_927276*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9268612/
-batch_normalization_8/StatefulPartitionedCall’
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_22_927279conv2d_22_927281*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9269072#
!conv2d_22/StatefulPartitionedCallУ
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_27_layer_call_and_return_conditional_losses_9269282
activation_27/PartitionedCallШ
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9266022"
 max_pooling2d_17/PartitionedCallƒ
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0batch_normalization_9_927286batch_normalization_9_927288batch_normalization_9_927290batch_normalization_9_927292*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9269742/
-batch_normalization_9/StatefulPartitionedCall’
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_23_927295conv2d_23_927297*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9270202#
!conv2d_23/StatefulPartitionedCallУ
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_28_layer_call_and_return_conditional_losses_9270412
activation_28/PartitionedCallЃ
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *_
fZRX
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9267192,
*global_average_pooling2d_5/PartitionedCallњ
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_927302dense_5_927304*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_9270602!
dense_5/StatefulPartitionedCallИ
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_29_layer_call_and_return_conditional_losses_9270812
activation_29/PartitionedCallМ
IdentityIdentity&activation_29/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€  ::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Ѕ
ф
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927937

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
р	
ё
E__inference_conv2d_22_layer_call_and_return_conditional_losses_928037

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
¬≠
Ь
I__inference_sequential_11_layer_call_and_return_conditional_losses_927570

inputsI
Esequential_10_random_zoom_5_stateful_uniform_statefuluniform_resource,
(conv2d_20_conv2d_readvariableop_resource-
)conv2d_20_biasadd_readvariableop_resource,
(conv2d_21_conv2d_readvariableop_resource-
)conv2d_21_biasadd_readvariableop_resource1
-batch_normalization_8_readvariableop_resource3
/batch_normalization_8_readvariableop_1_resourceB
>batch_normalization_8_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource1
-batch_normalization_9_readvariableop_resource3
/batch_normalization_9_readvariableop_1_resourceB
>batch_normalization_9_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identityИҐ$batch_normalization_8/AssignNewValueҐ&batch_normalization_8/AssignNewValue_1Ґ5batch_normalization_8/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_8/ReadVariableOpҐ&batch_normalization_8/ReadVariableOp_1Ґ$batch_normalization_9/AssignNewValueҐ&batch_normalization_9/AssignNewValue_1Ґ5batch_normalization_9/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_9/ReadVariableOpҐ&batch_normalization_9/ReadVariableOp_1Ґ conv2d_20/BiasAdd/ReadVariableOpҐconv2d_20/Conv2D/ReadVariableOpҐ conv2d_21/BiasAdd/ReadVariableOpҐconv2d_21/Conv2D/ReadVariableOpҐ conv2d_22/BiasAdd/ReadVariableOpҐconv2d_22/Conv2D/ReadVariableOpҐ conv2d_23/BiasAdd/ReadVariableOpҐconv2d_23/Conv2D/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐ<sequential_10/random_zoom_5/stateful_uniform/StatefulUniform|
!sequential_10/random_zoom_5/ShapeShapeinputs*
T0*
_output_shapes
:2#
!sequential_10/random_zoom_5/Shapeђ
/sequential_10/random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_10/random_zoom_5/strided_slice/stack∞
1sequential_10/random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice/stack_1∞
1sequential_10/random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice/stack_2К
)sequential_10/random_zoom_5/strided_sliceStridedSlice*sequential_10/random_zoom_5/Shape:output:08sequential_10/random_zoom_5/strided_slice/stack:output:0:sequential_10/random_zoom_5/strided_slice/stack_1:output:0:sequential_10/random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_10/random_zoom_5/strided_slice∞
1sequential_10/random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice_1/stackі
3sequential_10/random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_1/stack_1і
3sequential_10/random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_1/stack_2Ф
+sequential_10/random_zoom_5/strided_slice_1StridedSlice*sequential_10/random_zoom_5/Shape:output:0:sequential_10/random_zoom_5/strided_slice_1/stack:output:0<sequential_10/random_zoom_5/strided_slice_1/stack_1:output:0<sequential_10/random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_10/random_zoom_5/strided_slice_1≤
 sequential_10/random_zoom_5/CastCast4sequential_10/random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 sequential_10/random_zoom_5/Cast∞
1sequential_10/random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential_10/random_zoom_5/strided_slice_2/stackі
3sequential_10/random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_2/stack_1і
3sequential_10/random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_10/random_zoom_5/strided_slice_2/stack_2Ф
+sequential_10/random_zoom_5/strided_slice_2StridedSlice*sequential_10/random_zoom_5/Shape:output:0:sequential_10/random_zoom_5/strided_slice_2/stack:output:0<sequential_10/random_zoom_5/strided_slice_2/stack_1:output:0<sequential_10/random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_10/random_zoom_5/strided_slice_2ґ
"sequential_10/random_zoom_5/Cast_1Cast4sequential_10/random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"sequential_10/random_zoom_5/Cast_1Ѓ
4sequential_10/random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4sequential_10/random_zoom_5/stateful_uniform/shape/1С
2sequential_10/random_zoom_5/stateful_uniform/shapePack2sequential_10/random_zoom_5/strided_slice:output:0=sequential_10/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:24
2sequential_10/random_zoom_5/stateful_uniform/shape©
0sequential_10/random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  А?22
0sequential_10/random_zoom_5/stateful_uniform/min©
0sequential_10/random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?22
0sequential_10/random_zoom_5/stateful_uniform/max“
Fsequential_10/random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2H
Fsequential_10/random_zoom_5/stateful_uniform/StatefulUniform/algorithm†
<sequential_10/random_zoom_5/stateful_uniform/StatefulUniformStatefulUniformEsequential_10_random_zoom_5_stateful_uniform_statefuluniform_resourceOsequential_10/random_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0;sequential_10/random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:€€€€€€€€€*
shape_dtype02>
<sequential_10/random_zoom_5/stateful_uniform/StatefulUniformВ
0sequential_10/random_zoom_5/stateful_uniform/subSub9sequential_10/random_zoom_5/stateful_uniform/max:output:09sequential_10/random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 22
0sequential_10/random_zoom_5/stateful_uniform/subЪ
0sequential_10/random_zoom_5/stateful_uniform/mulMulEsequential_10/random_zoom_5/stateful_uniform/StatefulUniform:output:04sequential_10/random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€22
0sequential_10/random_zoom_5/stateful_uniform/mulЖ
,sequential_10/random_zoom_5/stateful_uniformAdd4sequential_10/random_zoom_5/stateful_uniform/mul:z:09sequential_10/random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2.
,sequential_10/random_zoom_5/stateful_uniformФ
'sequential_10/random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_10/random_zoom_5/concat/axis•
"sequential_10/random_zoom_5/concatConcatV20sequential_10/random_zoom_5/stateful_uniform:z:00sequential_10/random_zoom_5/stateful_uniform:z:00sequential_10/random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2$
"sequential_10/random_zoom_5/concatє
-sequential_10/random_zoom_5/zoom_matrix/ShapeShape+sequential_10/random_zoom_5/concat:output:0*
T0*
_output_shapes
:2/
-sequential_10/random_zoom_5/zoom_matrix/Shapeƒ
;sequential_10/random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack»
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_1»
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_2“
5sequential_10/random_zoom_5/zoom_matrix/strided_sliceStridedSlice6sequential_10/random_zoom_5/zoom_matrix/Shape:output:0Dsequential_10/random_zoom_5/zoom_matrix/strided_slice/stack:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_1:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5sequential_10/random_zoom_5/zoom_matrix/strided_slice£
-sequential_10/random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2/
-sequential_10/random_zoom_5/zoom_matrix/sub/yв
+sequential_10/random_zoom_5/zoom_matrix/subSub&sequential_10/random_zoom_5/Cast_1:y:06sequential_10/random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2-
+sequential_10/random_zoom_5/zoom_matrix/subЂ
1sequential_10/random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @23
1sequential_10/random_zoom_5/zoom_matrix/truediv/yы
/sequential_10/random_zoom_5/zoom_matrix/truedivRealDiv/sequential_10/random_zoom_5/zoom_matrix/sub:z:0:sequential_10/random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 21
/sequential_10/random_zoom_5/zoom_matrix/truediv”
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_1„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_2Щ
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_1StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_1І
/sequential_10/random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?21
/sequential_10/random_zoom_5/zoom_matrix/sub_1/xУ
-sequential_10/random_zoom_5/zoom_matrix/sub_1Sub8sequential_10/random_zoom_5/zoom_matrix/sub_1/x:output:0@sequential_10/random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-sequential_10/random_zoom_5/zoom_matrix/sub_1ы
+sequential_10/random_zoom_5/zoom_matrix/mulMul3sequential_10/random_zoom_5/zoom_matrix/truediv:z:01sequential_10/random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2-
+sequential_10/random_zoom_5/zoom_matrix/mulІ
/sequential_10/random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?21
/sequential_10/random_zoom_5/zoom_matrix/sub_2/yж
-sequential_10/random_zoom_5/zoom_matrix/sub_2Sub$sequential_10/random_zoom_5/Cast:y:08sequential_10/random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2/
-sequential_10/random_zoom_5/zoom_matrix/sub_2ѓ
3sequential_10/random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @25
3sequential_10/random_zoom_5/zoom_matrix/truediv_1/yГ
1sequential_10/random_zoom_5/zoom_matrix/truediv_1RealDiv1sequential_10/random_zoom_5/zoom_matrix/sub_2:z:0<sequential_10/random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 23
1sequential_10/random_zoom_5/zoom_matrix/truediv_1”
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_1„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_2Щ
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_2StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_2І
/sequential_10/random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?21
/sequential_10/random_zoom_5/zoom_matrix/sub_3/xУ
-sequential_10/random_zoom_5/zoom_matrix/sub_3Sub8sequential_10/random_zoom_5/zoom_matrix/sub_3/x:output:0@sequential_10/random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-sequential_10/random_zoom_5/zoom_matrix/sub_3Б
-sequential_10/random_zoom_5/zoom_matrix/mul_1Mul5sequential_10/random_zoom_5/zoom_matrix/truediv_1:z:01sequential_10/random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-sequential_10/random_zoom_5/zoom_matrix/mul_1”
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_1„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_2Щ
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_3StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_3ђ
3sequential_10/random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3sequential_10/random_zoom_5/zoom_matrix/zeros/mul/yМ
1sequential_10/random_zoom_5/zoom_matrix/zeros/mulMul>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0<sequential_10/random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1sequential_10/random_zoom_5/zoom_matrix/zeros/mulѓ
4sequential_10/random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и26
4sequential_10/random_zoom_5/zoom_matrix/zeros/Less/yЗ
2sequential_10/random_zoom_5/zoom_matrix/zeros/LessLess5sequential_10/random_zoom_5/zoom_matrix/zeros/mul:z:0=sequential_10/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2sequential_10/random_zoom_5/zoom_matrix/zeros/Less≤
6sequential_10/random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6sequential_10/random_zoom_5/zoom_matrix/zeros/packed/1£
4sequential_10/random_zoom_5/zoom_matrix/zeros/packedPack>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0?sequential_10/random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4sequential_10/random_zoom_5/zoom_matrix/zeros/packedѓ
3sequential_10/random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_10/random_zoom_5/zoom_matrix/zeros/ConstХ
-sequential_10/random_zoom_5/zoom_matrix/zerosFill=sequential_10/random_zoom_5/zoom_matrix/zeros/packed:output:0<sequential_10/random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2/
-sequential_10/random_zoom_5/zoom_matrix/zeros∞
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul/yТ
3sequential_10/random_zoom_5/zoom_matrix/zeros_1/mulMul>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul≥
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и28
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/Less/yП
4sequential_10/random_zoom_5/zoom_matrix/zeros_1/LessLess7sequential_10/random_zoom_5/zoom_matrix/zeros_1/mul:z:0?sequential_10/random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4sequential_10/random_zoom_5/zoom_matrix/zeros_1/Lessґ
8sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed/1©
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/packedPack>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0Asequential_10/random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed≥
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_10/random_zoom_5/zoom_matrix/zeros_1/ConstЭ
/sequential_10/random_zoom_5/zoom_matrix/zeros_1Fill?sequential_10/random_zoom_5/zoom_matrix/zeros_1/packed:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_10/random_zoom_5/zoom_matrix/zeros_1”
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_1„
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?sequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_2Щ
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_4StridedSlice+sequential_10/random_zoom_5/concat:output:0Fsequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0Hsequential_10/random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7sequential_10/random_zoom_5/zoom_matrix/strided_slice_4∞
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul/yТ
3sequential_10/random_zoom_5/zoom_matrix/zeros_2/mulMul>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul≥
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и28
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/Less/yП
4sequential_10/random_zoom_5/zoom_matrix/zeros_2/LessLess7sequential_10/random_zoom_5/zoom_matrix/zeros_2/mul:z:0?sequential_10/random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4sequential_10/random_zoom_5/zoom_matrix/zeros_2/Lessґ
8sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed/1©
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/packedPack>sequential_10/random_zoom_5/zoom_matrix/strided_slice:output:0Asequential_10/random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed≥
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_10/random_zoom_5/zoom_matrix/zeros_2/ConstЭ
/sequential_10/random_zoom_5/zoom_matrix/zeros_2Fill?sequential_10/random_zoom_5/zoom_matrix/zeros_2/packed:output:0>sequential_10/random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_10/random_zoom_5/zoom_matrix/zeros_2ђ
3sequential_10/random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3sequential_10/random_zoom_5/zoom_matrix/concat/axisщ
.sequential_10/random_zoom_5/zoom_matrix/concatConcatV2@sequential_10/random_zoom_5/zoom_matrix/strided_slice_3:output:06sequential_10/random_zoom_5/zoom_matrix/zeros:output:0/sequential_10/random_zoom_5/zoom_matrix/mul:z:08sequential_10/random_zoom_5/zoom_matrix/zeros_1:output:0@sequential_10/random_zoom_5/zoom_matrix/strided_slice_4:output:01sequential_10/random_zoom_5/zoom_matrix/mul_1:z:08sequential_10/random_zoom_5/zoom_matrix/zeros_2:output:0<sequential_10/random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_10/random_zoom_5/zoom_matrix/concatР
+sequential_10/random_zoom_5/transform/ShapeShapeinputs*
T0*
_output_shapes
:2-
+sequential_10/random_zoom_5/transform/Shapeј
9sequential_10/random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_10/random_zoom_5/transform/strided_slice/stackƒ
;sequential_10/random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_10/random_zoom_5/transform/strided_slice/stack_1ƒ
;sequential_10/random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_10/random_zoom_5/transform/strided_slice/stack_2≤
3sequential_10/random_zoom_5/transform/strided_sliceStridedSlice4sequential_10/random_zoom_5/transform/Shape:output:0Bsequential_10/random_zoom_5/transform/strided_slice/stack:output:0Dsequential_10/random_zoom_5/transform/strided_slice/stack_1:output:0Dsequential_10/random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:25
3sequential_10/random_zoom_5/transform/strided_slice©
0sequential_10/random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_10/random_zoom_5/transform/fill_valueѕ
@sequential_10/random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs7sequential_10/random_zoom_5/zoom_matrix/concat:output:0<sequential_10/random_zoom_5/transform/strided_slice:output:09sequential_10/random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:€€€€€€€€€  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2B
@sequential_10/random_zoom_5/transform/ImageProjectiveTransformV3≥
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_20/Conv2D/ReadVariableOpР
conv2d_20/Conv2DConv2DUsequential_10/random_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
conv2d_20/Conv2D™
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp∞
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2
conv2d_20/BiasAddЖ
activation_25/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2
activation_25/ReluЌ
max_pooling2d_15/MaxPoolMaxPool activation_25/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2
max_pooling2d_15/MaxPool≥
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp№
conv2d_21/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
conv2d_21/Conv2D™
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp∞
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2
conv2d_21/BiasAddЖ
activation_26/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
activation_26/ReluЌ
max_pooling2d_16/MaxPoolMaxPool activation_26/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_16/MaxPoolґ
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_8/ReadVariableOpЉ
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_8/ReadVariableOp_1й
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpп
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ч
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_16/MaxPool:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2(
&batch_normalization_8/FusedBatchNormV3±
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_8/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_8/AssignNewValueњ
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_8/AssignNewValue_1і
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_22/Conv2D/ReadVariableOpж
conv2d_22/Conv2DConv2D*batch_normalization_8/FusedBatchNormV3:y:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_22/Conv2DЂ
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp±
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_22/BiasAddЗ
activation_27/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
activation_27/Reluќ
max_pooling2d_17/MaxPoolMaxPool activation_27/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_17/MaxPoolЈ
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$batch_normalization_9/ReadVariableOpљ
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:А*
dtype02(
&batch_normalization_9/ReadVariableOp_1к
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype027
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpр
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype029
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ь
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_17/MaxPool:output:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<2(
&batch_normalization_9/FusedBatchNormV3±
$batch_normalization_9/AssignNewValueAssignVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource3batch_normalization_9/FusedBatchNormV3:batch_mean:06^batch_normalization_9/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_9/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_9/AssignNewValueњ
&batch_normalization_9/AssignNewValue_1AssignVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_9/FusedBatchNormV3:batch_variance:08^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_9/AssignNewValue_1µ
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_23/Conv2D/ReadVariableOpж
conv2d_23/Conv2DConv2D*batch_normalization_9/FusedBatchNormV3:y:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_23/Conv2DЂ
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp±
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_23/BiasAddЗ
activation_28/ReluReluconv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
activation_28/ReluЈ
1global_average_pooling2d_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_5/Mean/reduction_indicesџ
global_average_pooling2d_5/MeanMean activation_28/Relu:activations:0:global_average_pooling2d_5/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
global_average_pooling2d_5/Mean¶
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
dense_5/MatMul/ReadVariableOp≠
dense_5/MatMulMatMul(global_average_pooling2d_5/Mean:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dense_5/BiasAddЕ
activation_29/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
activation_29/SoftmaxЂ
IdentityIdentityactivation_29/Softmax:softmax:0%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1%^batch_normalization_9/AssignNewValue'^batch_normalization_9/AssignNewValue_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp=^sequential_10/random_zoom_5/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:€€€€€€€€€  :::::::::::::::::::2L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12L
$batch_normalization_9/AssignNewValue$batch_normalization_9/AssignNewValue2P
&batch_normalization_9/AssignNewValue_1&batch_normalization_9/AssignNewValue_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12D
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
:€€€€€€€€€  
 
_user_specified_nameinputs
у	
ё
E__inference_conv2d_23_layer_call_and_return_conditional_losses_928194

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≤
M
1__inference_max_pooling2d_17_layer_call_fn_926608

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9266022
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
№
©
6__inference_batch_normalization_9_layer_call_fn_928171

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9269562
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€А::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
њ
e
I__inference_activation_29_layer_call_and_return_conditional_losses_927081

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:€€€€€€€€€
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
•
К
.__inference_sequential_11_layer_call_fn_927685

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
identityИҐStatefulPartitionedCall№
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
:€€€€€€€€€
*0
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_9272092
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:€€€€€€€€€  :::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Ќ
Ш
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927919

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
у	
ё
E__inference_conv2d_23_layer_call_and_return_conditional_losses_927020

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¶
©
6__inference_batch_normalization_9_layer_call_fn_928120

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9267012
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
л	
ё
E__inference_conv2d_20_layer_call_and_return_conditional_losses_926754

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€  ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
џ
e
I__inference_activation_27_layer_call_and_return_conditional_losses_928051

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
у
e
I__inference_sequential_10_layer_call_and_return_conditional_losses_926465

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€  :W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Эz
ѕ
!__inference__wrapped_model_926248
sequential_10_input:
6sequential_11_conv2d_20_conv2d_readvariableop_resource;
7sequential_11_conv2d_20_biasadd_readvariableop_resource:
6sequential_11_conv2d_21_conv2d_readvariableop_resource;
7sequential_11_conv2d_21_biasadd_readvariableop_resource?
;sequential_11_batch_normalization_8_readvariableop_resourceA
=sequential_11_batch_normalization_8_readvariableop_1_resourceP
Lsequential_11_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceR
Nsequential_11_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:
6sequential_11_conv2d_22_conv2d_readvariableop_resource;
7sequential_11_conv2d_22_biasadd_readvariableop_resource?
;sequential_11_batch_normalization_9_readvariableop_resourceA
=sequential_11_batch_normalization_9_readvariableop_1_resourceP
Lsequential_11_batch_normalization_9_fusedbatchnormv3_readvariableop_resourceR
Nsequential_11_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:
6sequential_11_conv2d_23_conv2d_readvariableop_resource;
7sequential_11_conv2d_23_biasadd_readvariableop_resource8
4sequential_11_dense_5_matmul_readvariableop_resource9
5sequential_11_dense_5_biasadd_readvariableop_resource
identityИҐCsequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOpҐEsequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ґ2sequential_11/batch_normalization_8/ReadVariableOpҐ4sequential_11/batch_normalization_8/ReadVariableOp_1ҐCsequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOpҐEsequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ґ2sequential_11/batch_normalization_9/ReadVariableOpҐ4sequential_11/batch_normalization_9/ReadVariableOp_1Ґ.sequential_11/conv2d_20/BiasAdd/ReadVariableOpҐ-sequential_11/conv2d_20/Conv2D/ReadVariableOpҐ.sequential_11/conv2d_21/BiasAdd/ReadVariableOpҐ-sequential_11/conv2d_21/Conv2D/ReadVariableOpҐ.sequential_11/conv2d_22/BiasAdd/ReadVariableOpҐ-sequential_11/conv2d_22/Conv2D/ReadVariableOpҐ.sequential_11/conv2d_23/BiasAdd/ReadVariableOpҐ-sequential_11/conv2d_23/Conv2D/ReadVariableOpҐ,sequential_11/dense_5/BiasAdd/ReadVariableOpҐ+sequential_11/dense_5/MatMul/ReadVariableOpЁ
-sequential_11/conv2d_20/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_11/conv2d_20/Conv2D/ReadVariableOpш
sequential_11/conv2d_20/Conv2DConv2Dsequential_10_input5sequential_11/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
2 
sequential_11/conv2d_20/Conv2D‘
.sequential_11/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_11/conv2d_20/BiasAdd/ReadVariableOpи
sequential_11/conv2d_20/BiasAddBiasAdd'sequential_11/conv2d_20/Conv2D:output:06sequential_11/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   2!
sequential_11/conv2d_20/BiasAdd∞
 sequential_11/activation_25/ReluRelu(sequential_11/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2"
 sequential_11/activation_25/Reluч
&sequential_11/max_pooling2d_15/MaxPoolMaxPool.sequential_11/activation_25/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
2(
&sequential_11/max_pooling2d_15/MaxPoolЁ
-sequential_11/conv2d_21/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_11/conv2d_21/Conv2D/ReadVariableOpФ
sequential_11/conv2d_21/Conv2DConv2D/sequential_11/max_pooling2d_15/MaxPool:output:05sequential_11/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2 
sequential_11/conv2d_21/Conv2D‘
.sequential_11/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_11/conv2d_21/BiasAdd/ReadVariableOpи
sequential_11/conv2d_21/BiasAddBiasAdd'sequential_11/conv2d_21/Conv2D:output:06sequential_11/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
sequential_11/conv2d_21/BiasAdd∞
 sequential_11/activation_26/ReluRelu(sequential_11/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2"
 sequential_11/activation_26/Reluч
&sequential_11/max_pooling2d_16/MaxPoolMaxPool.sequential_11/activation_26/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
2(
&sequential_11/max_pooling2d_16/MaxPoolа
2sequential_11/batch_normalization_8/ReadVariableOpReadVariableOp;sequential_11_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_11/batch_normalization_8/ReadVariableOpж
4sequential_11/batch_normalization_8/ReadVariableOp_1ReadVariableOp=sequential_11_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_11/batch_normalization_8/ReadVariableOp_1У
Csequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_11_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOpЩ
Esequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_11_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ћ
4sequential_11/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3/sequential_11/max_pooling2d_16/MaxPool:output:0:sequential_11/batch_normalization_8/ReadVariableOp:value:0<sequential_11/batch_normalization_8/ReadVariableOp_1:value:0Ksequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Msequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 26
4sequential_11/batch_normalization_8/FusedBatchNormV3ё
-sequential_11/conv2d_22/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02/
-sequential_11/conv2d_22/Conv2D/ReadVariableOpЮ
sequential_11/conv2d_22/Conv2DConv2D8sequential_11/batch_normalization_8/FusedBatchNormV3:y:05sequential_11/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2 
sequential_11/conv2d_22/Conv2D’
.sequential_11/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_11/conv2d_22/BiasAdd/ReadVariableOpй
sequential_11/conv2d_22/BiasAddBiasAdd'sequential_11/conv2d_22/Conv2D:output:06sequential_11/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_11/conv2d_22/BiasAdd±
 sequential_11/activation_27/ReluRelu(sequential_11/conv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 sequential_11/activation_27/Reluш
&sequential_11/max_pooling2d_17/MaxPoolMaxPool.sequential_11/activation_27/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
2(
&sequential_11/max_pooling2d_17/MaxPoolб
2sequential_11/batch_normalization_9/ReadVariableOpReadVariableOp;sequential_11_batch_normalization_9_readvariableop_resource*
_output_shapes	
:А*
dtype024
2sequential_11/batch_normalization_9/ReadVariableOpз
4sequential_11/batch_normalization_9/ReadVariableOp_1ReadVariableOp=sequential_11_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:А*
dtype026
4sequential_11/batch_normalization_9/ReadVariableOp_1Ф
Csequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_11_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02E
Csequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOpЪ
Esequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_11_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02G
Esequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1–
4sequential_11/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3/sequential_11/max_pooling2d_17/MaxPool:output:0:sequential_11/batch_normalization_9/ReadVariableOp:value:0<sequential_11/batch_normalization_9/ReadVariableOp_1:value:0Ksequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Msequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( 26
4sequential_11/batch_normalization_9/FusedBatchNormV3я
-sequential_11/conv2d_23/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-sequential_11/conv2d_23/Conv2D/ReadVariableOpЮ
sequential_11/conv2d_23/Conv2DConv2D8sequential_11/batch_normalization_9/FusedBatchNormV3:y:05sequential_11/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2 
sequential_11/conv2d_23/Conv2D’
.sequential_11/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_11/conv2d_23/BiasAdd/ReadVariableOpй
sequential_11/conv2d_23/BiasAddBiasAdd'sequential_11/conv2d_23/Conv2D:output:06sequential_11/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_11/conv2d_23/BiasAdd±
 sequential_11/activation_28/ReluRelu(sequential_11/conv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 sequential_11/activation_28/Relu”
?sequential_11/global_average_pooling2d_5/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_11/global_average_pooling2d_5/Mean/reduction_indicesУ
-sequential_11/global_average_pooling2d_5/MeanMean.sequential_11/activation_28/Relu:activations:0Hsequential_11/global_average_pooling2d_5/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-sequential_11/global_average_pooling2d_5/Mean–
+sequential_11/dense_5/MatMul/ReadVariableOpReadVariableOp4sequential_11_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02-
+sequential_11/dense_5/MatMul/ReadVariableOpе
sequential_11/dense_5/MatMulMatMul6sequential_11/global_average_pooling2d_5/Mean:output:03sequential_11/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
sequential_11/dense_5/MatMulќ
,sequential_11/dense_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_11_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_11/dense_5/BiasAdd/ReadVariableOpў
sequential_11/dense_5/BiasAddBiasAdd&sequential_11/dense_5/MatMul:product:04sequential_11/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
sequential_11/dense_5/BiasAddѓ
#sequential_11/activation_29/SoftmaxSoftmax&sequential_11/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2%
#sequential_11/activation_29/Softmax÷
IdentityIdentity-sequential_11/activation_29/Softmax:softmax:0D^sequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOpF^sequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_13^sequential_11/batch_normalization_8/ReadVariableOp5^sequential_11/batch_normalization_8/ReadVariableOp_1D^sequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOpF^sequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_13^sequential_11/batch_normalization_9/ReadVariableOp5^sequential_11/batch_normalization_9/ReadVariableOp_1/^sequential_11/conv2d_20/BiasAdd/ReadVariableOp.^sequential_11/conv2d_20/Conv2D/ReadVariableOp/^sequential_11/conv2d_21/BiasAdd/ReadVariableOp.^sequential_11/conv2d_21/Conv2D/ReadVariableOp/^sequential_11/conv2d_22/BiasAdd/ReadVariableOp.^sequential_11/conv2d_22/Conv2D/ReadVariableOp/^sequential_11/conv2d_23/BiasAdd/ReadVariableOp.^sequential_11/conv2d_23/Conv2D/ReadVariableOp-^sequential_11/dense_5/BiasAdd/ReadVariableOp,^sequential_11/dense_5/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€  ::::::::::::::::::2К
Csequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOpCsequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2О
Esequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Esequential_11/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12h
2sequential_11/batch_normalization_8/ReadVariableOp2sequential_11/batch_normalization_8/ReadVariableOp2l
4sequential_11/batch_normalization_8/ReadVariableOp_14sequential_11/batch_normalization_8/ReadVariableOp_12К
Csequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOpCsequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2О
Esequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Esequential_11/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12h
2sequential_11/batch_normalization_9/ReadVariableOp2sequential_11/batch_normalization_9/ReadVariableOp2l
4sequential_11/batch_normalization_9/ReadVariableOp_14sequential_11/batch_normalization_9/ReadVariableOp_12`
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
:€€€€€€€€€  
-
_user_specified_namesequential_10_input
Ќ
ф
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_926701

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1б
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3н
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
ен
–
"__inference__traced_restore_928616
file_prefix%
!assignvariableop_conv2d_20_kernel%
!assignvariableop_1_conv2d_20_bias'
#assignvariableop_2_conv2d_21_kernel%
!assignvariableop_3_conv2d_21_bias2
.assignvariableop_4_batch_normalization_8_gamma1
-assignvariableop_5_batch_normalization_8_beta8
4assignvariableop_6_batch_normalization_8_moving_mean<
8assignvariableop_7_batch_normalization_8_moving_variance'
#assignvariableop_8_conv2d_22_kernel%
!assignvariableop_9_conv2d_22_bias3
/assignvariableop_10_batch_normalization_9_gamma2
.assignvariableop_11_batch_normalization_9_beta9
5assignvariableop_12_batch_normalization_9_moving_mean=
9assignvariableop_13_batch_normalization_9_moving_variance(
$assignvariableop_14_conv2d_23_kernel&
"assignvariableop_15_conv2d_23_bias&
"assignvariableop_16_dense_5_kernel$
 assignvariableop_17_dense_5_bias!
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
+assignvariableop_28_adam_conv2d_20_kernel_m-
)assignvariableop_29_adam_conv2d_20_bias_m/
+assignvariableop_30_adam_conv2d_21_kernel_m-
)assignvariableop_31_adam_conv2d_21_bias_m:
6assignvariableop_32_adam_batch_normalization_8_gamma_m9
5assignvariableop_33_adam_batch_normalization_8_beta_m/
+assignvariableop_34_adam_conv2d_22_kernel_m-
)assignvariableop_35_adam_conv2d_22_bias_m:
6assignvariableop_36_adam_batch_normalization_9_gamma_m9
5assignvariableop_37_adam_batch_normalization_9_beta_m/
+assignvariableop_38_adam_conv2d_23_kernel_m-
)assignvariableop_39_adam_conv2d_23_bias_m-
)assignvariableop_40_adam_dense_5_kernel_m+
'assignvariableop_41_adam_dense_5_bias_m/
+assignvariableop_42_adam_conv2d_20_kernel_v-
)assignvariableop_43_adam_conv2d_20_bias_v/
+assignvariableop_44_adam_conv2d_21_kernel_v-
)assignvariableop_45_adam_conv2d_21_bias_v:
6assignvariableop_46_adam_batch_normalization_8_gamma_v9
5assignvariableop_47_adam_batch_normalization_8_beta_v/
+assignvariableop_48_adam_conv2d_22_kernel_v-
)assignvariableop_49_adam_conv2d_22_bias_v:
6assignvariableop_50_adam_batch_normalization_9_gamma_v9
5assignvariableop_51_adam_batch_normalization_9_beta_v/
+assignvariableop_52_adam_conv2d_23_kernel_v-
)assignvariableop_53_adam_conv2d_23_bias_v-
)assignvariableop_54_adam_dense_5_kernel_v+
'assignvariableop_55_adam_dense_5_bias_v
identity_57ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ђ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Є
valueЃBЂ9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesБ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Е
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЋ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesз
д:::::::::::::::::::::::::::::::::::::::::::::::::::::::::*G
dtypes=
;29		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity†
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2®
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4≥
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_8_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5≤
AssignVariableOp_5AssignVariableOp-assignvariableop_5_batch_normalization_8_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6є
AssignVariableOp_6AssignVariableOp4assignvariableop_6_batch_normalization_8_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7љ
AssignVariableOp_7AssignVariableOp8assignvariableop_7_batch_normalization_8_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_22_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_22_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ј
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_9_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ґ
AssignVariableOp_11AssignVariableOp.assignvariableop_11_batch_normalization_9_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12љ
AssignVariableOp_12AssignVariableOp5assignvariableop_12_batch_normalization_9_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ѕ
AssignVariableOp_13AssignVariableOp9assignvariableop_13_batch_normalization_9_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14ђ
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_23_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15™
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_23_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16™
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_5_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17®
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_5_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18•
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19І
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20І
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¶
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ѓ
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_23§
AssignVariableOp_23AssignVariableOpassignvariableop_23_variableIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25°
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26£
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27£
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28≥
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_20_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29±
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_20_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30≥
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_21_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31±
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_conv2d_21_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Њ
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_batch_normalization_8_gamma_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33љ
AssignVariableOp_33AssignVariableOp5assignvariableop_33_adam_batch_normalization_8_beta_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34≥
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_22_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35±
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_22_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Њ
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_batch_normalization_9_gamma_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37љ
AssignVariableOp_37AssignVariableOp5assignvariableop_37_adam_batch_normalization_9_beta_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38≥
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_23_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39±
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_23_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40±
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_5_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41ѓ
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_5_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42≥
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_20_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43±
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_conv2d_20_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44≥
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_conv2d_21_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45±
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_conv2d_21_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Њ
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_8_gamma_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47љ
AssignVariableOp_47AssignVariableOp5assignvariableop_47_adam_batch_normalization_8_beta_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48≥
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_22_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49±
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_conv2d_22_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Њ
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_batch_normalization_9_gamma_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51љ
AssignVariableOp_51AssignVariableOp5assignvariableop_51_adam_batch_normalization_9_beta_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52≥
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_23_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53±
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_23_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54±
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_5_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55ѓ
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_5_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_559
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЃ

Identity_56Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_56°

Identity_57IdentityIdentity_56:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_57"#
identity_57Identity_57:output:0*ч
_input_shapesе
в: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
ж
W
.__inference_sequential_10_layer_call_fn_926468
random_zoom_5_input
identityя
PartitionedCallPartitionedCallrandom_zoom_5_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€  :d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namerandom_zoom_5_input
Џ
©
6__inference_batch_normalization_8_layer_call_fn_928027

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9268612
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ў
Ш
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_926670

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
С
W
;__inference_global_average_pooling2d_5_layer_call_fn_926725

inputs
identityа
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *_
fZRX
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9267192
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
я
}
(__inference_dense_5_layer_call_fn_928232

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_9270602
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
њ
e
I__inference_activation_29_layer_call_and_return_conditional_losses_928237

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:€€€€€€€€€
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Г

*__inference_conv2d_22_layer_call_fn_928046

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9269072
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
р	
ё
E__inference_conv2d_22_layer_call_and_return_conditional_losses_926907

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ДЬ
г
I__inference_sequential_10_layer_call_and_return_conditional_losses_926348
random_zoom_5_input;
7random_zoom_5_stateful_uniform_statefuluniform_resource
identityИҐ.random_zoom_5/stateful_uniform/StatefulUniformm
random_zoom_5/ShapeShaperandom_zoom_5_input*
T0*
_output_shapes
:2
random_zoom_5/ShapeР
!random_zoom_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_5/strided_slice/stackФ
#random_zoom_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_1Ф
#random_zoom_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice/stack_2ґ
random_zoom_5/strided_sliceStridedSlicerandom_zoom_5/Shape:output:0*random_zoom_5/strided_slice/stack:output:0,random_zoom_5/strided_slice/stack_1:output:0,random_zoom_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_sliceФ
#random_zoom_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_1/stackШ
%random_zoom_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_1Ш
%random_zoom_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_1/stack_2ј
random_zoom_5/strided_slice_1StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_1/stack:output:0.random_zoom_5/strided_slice_1/stack_1:output:0.random_zoom_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_1И
random_zoom_5/CastCast&random_zoom_5/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/CastФ
#random_zoom_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_5/strided_slice_2/stackШ
%random_zoom_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_1Ш
%random_zoom_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_5/strided_slice_2/stack_2ј
random_zoom_5/strided_slice_2StridedSlicerandom_zoom_5/Shape:output:0,random_zoom_5/strided_slice_2/stack:output:0.random_zoom_5/strided_slice_2/stack_1:output:0.random_zoom_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_5/strided_slice_2М
random_zoom_5/Cast_1Cast&random_zoom_5/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_5/Cast_1Т
&random_zoom_5/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_5/stateful_uniform/shape/1ў
$random_zoom_5/stateful_uniform/shapePack$random_zoom_5/strided_slice:output:0/random_zoom_5/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_5/stateful_uniform/shapeН
"random_zoom_5/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"random_zoom_5/stateful_uniform/minН
"random_zoom_5/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2$
"random_zoom_5/stateful_uniform/maxґ
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_5/stateful_uniform/StatefulUniform/algorithmЏ
.random_zoom_5/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_5_stateful_uniform_statefuluniform_resourceArandom_zoom_5/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_5/stateful_uniform/shape:output:0*'
_output_shapes
:€€€€€€€€€*
shape_dtype020
.random_zoom_5/stateful_uniform/StatefulUniform 
"random_zoom_5/stateful_uniform/subSub+random_zoom_5/stateful_uniform/max:output:0+random_zoom_5/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_5/stateful_uniform/subв
"random_zoom_5/stateful_uniform/mulMul7random_zoom_5/stateful_uniform/StatefulUniform:output:0&random_zoom_5/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"random_zoom_5/stateful_uniform/mulќ
random_zoom_5/stateful_uniformAdd&random_zoom_5/stateful_uniform/mul:z:0+random_zoom_5/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
random_zoom_5/stateful_uniformx
random_zoom_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_5/concat/axisя
random_zoom_5/concatConcatV2"random_zoom_5/stateful_uniform:z:0"random_zoom_5/stateful_uniform:z:0"random_zoom_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom_5/concatП
random_zoom_5/zoom_matrix/ShapeShaperandom_zoom_5/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_5/zoom_matrix/Shape®
-random_zoom_5/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_5/zoom_matrix/strided_slice/stackђ
/random_zoom_5/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_1ђ
/random_zoom_5/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_5/zoom_matrix/strided_slice/stack_2ю
'random_zoom_5/zoom_matrix/strided_sliceStridedSlice(random_zoom_5/zoom_matrix/Shape:output:06random_zoom_5/zoom_matrix/strided_slice/stack:output:08random_zoom_5/zoom_matrix/strided_slice/stack_1:output:08random_zoom_5/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_5/zoom_matrix/strided_sliceЗ
random_zoom_5/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2!
random_zoom_5/zoom_matrix/sub/y™
random_zoom_5/zoom_matrix/subSubrandom_zoom_5/Cast_1:y:0(random_zoom_5/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_5/zoom_matrix/subП
#random_zoom_5/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_5/zoom_matrix/truediv/y√
!random_zoom_5/zoom_matrix/truedivRealDiv!random_zoom_5/zoom_matrix/sub:z:0,random_zoom_5/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_5/zoom_matrix/truedivЈ
/random_zoom_5/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_1/stackї
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_1/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_1Л
!random_zoom_5/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_1/xџ
random_zoom_5/zoom_matrix/sub_1Sub*random_zoom_5/zoom_matrix/sub_1/x:output:02random_zoom_5/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/sub_1√
random_zoom_5/zoom_matrix/mulMul%random_zoom_5/zoom_matrix/truediv:z:0#random_zoom_5/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
random_zoom_5/zoom_matrix/mulЛ
!random_zoom_5/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_2/yЃ
random_zoom_5/zoom_matrix/sub_2Subrandom_zoom_5/Cast:y:0*random_zoom_5/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_5/zoom_matrix/sub_2У
%random_zoom_5/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_5/zoom_matrix/truediv_1/yЋ
#random_zoom_5/zoom_matrix/truediv_1RealDiv#random_zoom_5/zoom_matrix/sub_2:z:0.random_zoom_5/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/truediv_1Ј
/random_zoom_5/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_2/stackї
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_2/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_2Л
!random_zoom_5/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2#
!random_zoom_5/zoom_matrix/sub_3/xџ
random_zoom_5/zoom_matrix/sub_3Sub*random_zoom_5/zoom_matrix/sub_3/x:output:02random_zoom_5/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/sub_3…
random_zoom_5/zoom_matrix/mul_1Mul'random_zoom_5/zoom_matrix/truediv_1:z:0#random_zoom_5/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/mul_1Ј
/random_zoom_5/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_5/zoom_matrix/strided_slice_3/stackї
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_3/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_3Р
%random_zoom_5/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/zeros/mul/y‘
#random_zoom_5/zoom_matrix/zeros/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:0.random_zoom_5/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_5/zoom_matrix/zeros/mulУ
&random_zoom_5/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&random_zoom_5/zoom_matrix/zeros/Less/yѕ
$random_zoom_5/zoom_matrix/zeros/LessLess'random_zoom_5/zoom_matrix/zeros/mul:z:0/random_zoom_5/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_5/zoom_matrix/zeros/LessЦ
(random_zoom_5/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_5/zoom_matrix/zeros/packed/1л
&random_zoom_5/zoom_matrix/zeros/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:01random_zoom_5/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_5/zoom_matrix/zeros/packedУ
%random_zoom_5/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_5/zoom_matrix/zeros/ConstЁ
random_zoom_5/zoom_matrix/zerosFill/random_zoom_5/zoom_matrix/zeros/packed:output:0.random_zoom_5/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2!
random_zoom_5/zoom_matrix/zerosФ
'random_zoom_5/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_1/mul/yЏ
%random_zoom_5/zoom_matrix/zeros_1/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_1/mulЧ
(random_zoom_5/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2*
(random_zoom_5/zoom_matrix/zeros_1/Less/y„
&random_zoom_5/zoom_matrix/zeros_1/LessLess)random_zoom_5/zoom_matrix/zeros_1/mul:z:01random_zoom_5/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_1/LessЪ
*random_zoom_5/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_1/packed/1с
(random_zoom_5/zoom_matrix/zeros_1/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_1/packedЧ
'random_zoom_5/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_1/Constе
!random_zoom_5/zoom_matrix/zeros_1Fill1random_zoom_5/zoom_matrix/zeros_1/packed:output:00random_zoom_5/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!random_zoom_5/zoom_matrix/zeros_1Ј
/random_zoom_5/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_5/zoom_matrix/strided_slice_4/stackї
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_1ї
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_5/zoom_matrix/strided_slice_4/stack_2≈
)random_zoom_5/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_5/concat:output:08random_zoom_5/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_5/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_5/zoom_matrix/strided_slice_4Ф
'random_zoom_5/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_5/zoom_matrix/zeros_2/mul/yЏ
%random_zoom_5/zoom_matrix/zeros_2/mulMul0random_zoom_5/zoom_matrix/strided_slice:output:00random_zoom_5/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_5/zoom_matrix/zeros_2/mulЧ
(random_zoom_5/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2*
(random_zoom_5/zoom_matrix/zeros_2/Less/y„
&random_zoom_5/zoom_matrix/zeros_2/LessLess)random_zoom_5/zoom_matrix/zeros_2/mul:z:01random_zoom_5/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_5/zoom_matrix/zeros_2/LessЪ
*random_zoom_5/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_5/zoom_matrix/zeros_2/packed/1с
(random_zoom_5/zoom_matrix/zeros_2/packedPack0random_zoom_5/zoom_matrix/strided_slice:output:03random_zoom_5/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_5/zoom_matrix/zeros_2/packedЧ
'random_zoom_5/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_5/zoom_matrix/zeros_2/Constе
!random_zoom_5/zoom_matrix/zeros_2Fill1random_zoom_5/zoom_matrix/zeros_2/packed:output:00random_zoom_5/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!random_zoom_5/zoom_matrix/zeros_2Р
%random_zoom_5/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_5/zoom_matrix/concat/axisн
 random_zoom_5/zoom_matrix/concatConcatV22random_zoom_5/zoom_matrix/strided_slice_3:output:0(random_zoom_5/zoom_matrix/zeros:output:0!random_zoom_5/zoom_matrix/mul:z:0*random_zoom_5/zoom_matrix/zeros_1:output:02random_zoom_5/zoom_matrix/strided_slice_4:output:0#random_zoom_5/zoom_matrix/mul_1:z:0*random_zoom_5/zoom_matrix/zeros_2:output:0.random_zoom_5/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€2"
 random_zoom_5/zoom_matrix/concatБ
random_zoom_5/transform/ShapeShaperandom_zoom_5_input*
T0*
_output_shapes
:2
random_zoom_5/transform/Shape§
+random_zoom_5/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_5/transform/strided_slice/stack®
-random_zoom_5/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_1®
-random_zoom_5/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_5/transform/strided_slice/stack_2ё
%random_zoom_5/transform/strided_sliceStridedSlice&random_zoom_5/transform/Shape:output:04random_zoom_5/transform/strided_slice/stack:output:06random_zoom_5/transform/strided_slice/stack_1:output:06random_zoom_5/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_5/transform/strided_sliceН
"random_zoom_5/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_5/transform/fill_valueЦ
2random_zoom_5/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_zoom_5_input)random_zoom_5/zoom_matrix/concat:output:0.random_zoom_5/transform/strided_slice:output:0+random_zoom_5/transform/fill_value:output:0*/
_output_shapes
:€€€€€€€€€  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_5/transform/ImageProjectiveTransformV3‘
IdentityIdentityGrandom_zoom_5/transform/ImageProjectiveTransformV3:transformed_images:0/^random_zoom_5/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€  :2`
.random_zoom_5/stateful_uniform/StatefulUniform.random_zoom_5/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namerandom_zoom_5_input
Љs
√
__inference__traced_save_928438
file_prefix/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop/
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
0savev2_adam_conv2d_21_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop6
2savev2_adam_conv2d_22_kernel_m_read_readvariableop4
0savev2_adam_conv2d_22_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_m_read_readvariableop6
2savev2_adam_conv2d_23_kernel_m_read_readvariableop4
0savev2_adam_conv2d_23_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop6
2savev2_adam_conv2d_21_kernel_v_read_readvariableop4
0savev2_adam_conv2d_21_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop6
2savev2_adam_conv2d_22_kernel_v_read_readvariableop4
0savev2_adam_conv2d_22_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_v_read_readvariableop6
2savev2_adam_conv2d_23_kernel_v_read_readvariableop4
0savev2_adam_conv2d_23_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¶
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Є
valueЃBЂ9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesы
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Е
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesй
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop0savev2_adam_conv2d_21_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop0savev2_adam_conv2d_22_bias_m_read_readvariableop=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop<savev2_adam_batch_normalization_9_beta_m_read_readvariableop2savev2_adam_conv2d_23_kernel_m_read_readvariableop0savev2_adam_conv2d_23_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop0savev2_adam_conv2d_21_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop0savev2_adam_conv2d_22_bias_v_read_readvariableop=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop<savev2_adam_batch_normalization_9_beta_v_read_readvariableop2savev2_adam_conv2d_23_kernel_v_read_readvariableop0savev2_adam_conv2d_23_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *G
dtypes=
;29		2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*ы
_input_shapesй
ж: : : : @:@:@:@:@:@:@А:А:А:А:А:А:АА:А:	А
:
: : : : : :: : : : : : : @:@:@:@:@А:А:А:А:АА:А:	А
:
: : : @:@:@:@:@А:А:А:А:АА:А:	А
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
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-	)
'
_output_shapes
:@А:!


_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:%!

_output_shapes
:	А
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
: :,(
&
_output_shapes
: @:  

_output_shapes
:@: !

_output_shapes
:@: "

_output_shapes
:@:-#)
'
_output_shapes
:@А:!$

_output_shapes	
:А:!%

_output_shapes	
:А:!&

_output_shapes	
:А:.'*
(
_output_shapes
:АА:!(

_output_shapes	
:А:%)!

_output_shapes
:	А
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
: :,-(
&
_output_shapes
: @: .

_output_shapes
:@: /

_output_shapes
:@: 0

_output_shapes
:@:-1)
'
_output_shapes
:@А:!2

_output_shapes	
:А:!3

_output_shapes	
:А:!4

_output_shapes	
:А:.5*
(
_output_shapes
:АА:!6

_output_shapes	
:А:%7!

_output_shapes
:	А
: 8

_output_shapes
:
:9

_output_shapes
: 
Б
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_926602

inputs
identityђ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Ш
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_926554

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ѕ
ф
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_926585

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ВM
±
I__inference_sequential_11_layer_call_and_return_conditional_losses_927090
sequential_10_input
sequential_10_926741
conv2d_20_926765
conv2d_20_926767
conv2d_21_926805
conv2d_21_926807 
batch_normalization_8_926888 
batch_normalization_8_926890 
batch_normalization_8_926892 
batch_normalization_8_926894
conv2d_22_926918
conv2d_22_926920 
batch_normalization_9_927001 
batch_normalization_9_927003 
batch_normalization_9_927005 
batch_normalization_9_927007
conv2d_23_927031
conv2d_23_927033
dense_5_927071
dense_5_927073
identityИҐ-batch_normalization_8/StatefulPartitionedCallҐ-batch_normalization_9/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐ%sequential_10/StatefulPartitionedCall™
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputsequential_10_926741*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264542'
%sequential_10/StatefulPartitionedCallћ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_10/StatefulPartitionedCall:output:0conv2d_20_926765conv2d_20_926767*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9267542#
!conv2d_20/StatefulPartitionedCallТ
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_25_layer_call_and_return_conditional_losses_9267752
activation_25/PartitionedCallЧ
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9264742"
 max_pooling2d_15/PartitionedCall«
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_926805conv2d_21_926807*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9267942#
!conv2d_21/StatefulPartitionedCallТ
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_9268152
activation_26/PartitionedCallЧ
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9264862"
 max_pooling2d_16/PartitionedCallЅ
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0batch_normalization_8_926888batch_normalization_8_926890batch_normalization_8_926892batch_normalization_8_926894*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9268432/
-batch_normalization_8/StatefulPartitionedCall’
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_22_926918conv2d_22_926920*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9269072#
!conv2d_22/StatefulPartitionedCallУ
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_27_layer_call_and_return_conditional_losses_9269282
activation_27/PartitionedCallШ
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9266022"
 max_pooling2d_17/PartitionedCall¬
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0batch_normalization_9_927001batch_normalization_9_927003batch_normalization_9_927005batch_normalization_9_927007*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9269562/
-batch_normalization_9/StatefulPartitionedCall’
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_23_927031conv2d_23_927033*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9270202#
!conv2d_23/StatefulPartitionedCallУ
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_28_layer_call_and_return_conditional_losses_9270412
activation_28/PartitionedCallЃ
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *_
fZRX
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9267192,
*global_average_pooling2d_5/PartitionedCallњ
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_927071dense_5_927073*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_9270602!
dense_5/StatefulPartitionedCallИ
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_29_layer_call_and_return_conditional_losses_9270812
activation_29/PartitionedCallі
IdentityIdentity&activation_29/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:€€€€€€€€€  :::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namesequential_10_input
щ
ф
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_926861

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Я
J
.__inference_activation_29_layer_call_fn_928242

inputs
identity 
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_29_layer_call_and_return_conditional_losses_9270812
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
√
J
.__inference_activation_28_layer_call_fn_928213

inputs
identity”
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_28_layer_call_and_return_conditional_losses_9270412
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Е
Ш
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927983

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
†
©
6__inference_batch_normalization_8_layer_call_fn_927950

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9265542
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ф	
№
C__inference_dense_5_layer_call_and_return_conditional_losses_927060

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ф	
№
C__inference_dense_5_layer_call_and_return_conditional_losses_928223

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ћ
Ч
.__inference_sequential_11_layer_call_fn_927250
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
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallsequential_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€
*0
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_9272092
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:€€€€€€€€€  :::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:€€€€€€€€€  
-
_user_specified_namesequential_10_input
С
Ш
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928140

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ё
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1€
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
џL
§
I__inference_sequential_11_layer_call_and_return_conditional_losses_927209

inputs
sequential_10_927153
conv2d_20_927156
conv2d_20_927158
conv2d_21_927163
conv2d_21_927165 
batch_normalization_8_927170 
batch_normalization_8_927172 
batch_normalization_8_927174 
batch_normalization_8_927176
conv2d_22_927179
conv2d_22_927181 
batch_normalization_9_927186 
batch_normalization_9_927188 
batch_normalization_9_927190 
batch_normalization_9_927192
conv2d_23_927195
conv2d_23_927197
dense_5_927202
dense_5_927204
identityИҐ-batch_normalization_8/StatefulPartitionedCallҐ-batch_normalization_9/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐ%sequential_10/StatefulPartitionedCallЭ
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallinputssequential_10_927153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264542'
%sequential_10/StatefulPartitionedCallћ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_10/StatefulPartitionedCall:output:0conv2d_20_927156conv2d_20_927158*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_9267542#
!conv2d_20/StatefulPartitionedCallТ
activation_25/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_25_layer_call_and_return_conditional_losses_9267752
activation_25/PartitionedCallЧ
 max_pooling2d_15/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9264742"
 max_pooling2d_15/PartitionedCall«
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_21_927163conv2d_21_927165*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9267942#
!conv2d_21/StatefulPartitionedCallТ
activation_26/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_9268152
activation_26/PartitionedCallЧ
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_9264862"
 max_pooling2d_16/PartitionedCallЅ
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0batch_normalization_8_927170batch_normalization_8_927172batch_normalization_8_927174batch_normalization_8_927176*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_9268432/
-batch_normalization_8/StatefulPartitionedCall’
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0conv2d_22_927179conv2d_22_927181*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_9269072#
!conv2d_22/StatefulPartitionedCallУ
activation_27/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_27_layer_call_and_return_conditional_losses_9269282
activation_27/PartitionedCallШ
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_9266022"
 max_pooling2d_17/PartitionedCall¬
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0batch_normalization_9_927186batch_normalization_9_927188batch_normalization_9_927190batch_normalization_9_927192*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9269562/
-batch_normalization_9/StatefulPartitionedCall’
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_23_927195conv2d_23_927197*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9270202#
!conv2d_23/StatefulPartitionedCallУ
activation_28/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_28_layer_call_and_return_conditional_losses_9270412
activation_28/PartitionedCallЃ
*global_average_pooling2d_5/PartitionedCallPartitionedCall&activation_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *_
fZRX
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_9267192,
*global_average_pooling2d_5/PartitionedCallњ
dense_5/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_5/PartitionedCall:output:0dense_5_927202dense_5_927204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_9270602!
dense_5/StatefulPartitionedCallИ
activation_29/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_29_layer_call_and_return_conditional_losses_9270812
activation_29/PartitionedCallі
IdentityIdentity&activation_29/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*z
_input_shapesi
g:€€€€€€€€€  :::::::::::::::::::2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Ќ
ф
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928094

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1б
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3н
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
„
e
I__inference_activation_25_layer_call_and_return_conditional_losses_926775

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
„
e
I__inference_activation_25_layer_call_and_return_conditional_losses_927865

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€   2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Б
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_926486

inputs
identityђ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Е
ф
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928158

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ѕ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Б
h
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_926474

inputs
identityђ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Е
ф
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_926974

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ѕ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€А::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
њ
J
.__inference_activation_25_layer_call_fn_927870

inputs
identity“
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_25_layer_call_and_return_conditional_losses_9267752
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€   2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€   :W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Е

*__inference_conv2d_23_layer_call_fn_928203

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_9270202
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
џ
e
I__inference_activation_27_layer_call_and_return_conditional_losses_926928

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
у
e
I__inference_sequential_10_layer_call_and_return_conditional_losses_927829

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€  :W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
л	
ё
E__inference_conv2d_21_layer_call_and_return_conditional_losses_927880

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
И
ъ
.__inference_sequential_11_layer_call_fn_927726

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
identityИҐStatefulPartitionedCall”
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
:€€€€€€€€€
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_9273092
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€
2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€  ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
С
Ш
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_926956

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ё
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1€
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
џ
e
I__inference_activation_28_layer_call_and_return_conditional_losses_927041

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€А2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Б

*__inference_conv2d_21_layer_call_fn_927889

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_9267942
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ў
Ш
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928076

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1®
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpЃ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
§
©
6__inference_batch_normalization_9_layer_call_fn_928107

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_9266702
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
щ
ф
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_928001

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
њ
J
.__inference_activation_26_layer_call_fn_927899

inputs
identity“
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_9268152
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ж
t
.__inference_sequential_10_layer_call_fn_927836

inputs
unknown
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9264542
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€  :22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
„
e
I__inference_activation_26_layer_call_and_return_conditional_losses_926815

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≤
M
1__inference_max_pooling2d_15_layer_call_fn_926480

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_9264742
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*–
serving_defaultЉ
[
sequential_10_inputD
%serving_default_sequential_10_input:0€€€€€€€€€  A
activation_290
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:€У
гs
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
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
ъ_default_save_signature
+ы&call_and_return_all_conditional_losses
ь__call__"ыn
_tf_keras_sequential№n{"class_name": "Sequential", "name": "sequential_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_11", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_10_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_11", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_10_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Р
layer-0
	variables
regularization_losses
trainable_variables
	keras_api
+э&call_and_return_all_conditional_losses
ю__call__"т

_tf_keras_sequential”
{"class_name": "Sequential", "name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_zoom_5_input"}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
ц	

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
+€&call_and_return_all_conditional_losses
А__call__"ѕ
_tf_keras_layerµ{"class_name": "Conv2D", "name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
ў
#	variables
$regularization_losses
%trainable_variables
&	keras_api
+Б&call_and_return_all_conditional_losses
В__call__"»
_tf_keras_layerЃ{"class_name": "Activation", "name": "activation_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}}
В
'	variables
(regularization_losses
)trainable_variables
*	keras_api
+Г&call_and_return_all_conditional_losses
Д__call__"с
_tf_keras_layer„{"class_name": "MaxPooling2D", "name": "max_pooling2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ш	

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
+Е&call_and_return_all_conditional_losses
Ж__call__"—
_tf_keras_layerЈ{"class_name": "Conv2D", "name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 32]}}
ў
1	variables
2regularization_losses
3trainable_variables
4	keras_api
+З&call_and_return_all_conditional_losses
И__call__"»
_tf_keras_layerЃ{"class_name": "Activation", "name": "activation_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_26", "trainable": true, "dtype": "float32", "activation": "relu"}}
В
5	variables
6regularization_losses
7trainable_variables
8	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"с
_tf_keras_layer„{"class_name": "MaxPooling2D", "name": "max_pooling2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ї	
9axis
	:gamma
;beta
<moving_mean
=moving_variance
>	variables
?regularization_losses
@trainable_variables
A	keras_api
+Л&call_and_return_all_conditional_losses
М__call__"д
_tf_keras_layer {"class_name": "BatchNormalization", "name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
ч	

Bkernel
Cbias
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
+Н&call_and_return_all_conditional_losses
О__call__"–
_tf_keras_layerґ{"class_name": "Conv2D", "name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
ў
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
+П&call_and_return_all_conditional_losses
Р__call__"»
_tf_keras_layerЃ{"class_name": "Activation", "name": "activation_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_27", "trainable": true, "dtype": "float32", "activation": "relu"}}
В
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
+С&call_and_return_all_conditional_losses
Т__call__"с
_tf_keras_layer„{"class_name": "MaxPooling2D", "name": "max_pooling2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Љ	
Paxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
+У&call_and_return_all_conditional_losses
Ф__call__"ж
_tf_keras_layerћ{"class_name": "BatchNormalization", "name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
щ	

Ykernel
Zbias
[	variables
\regularization_losses
]trainable_variables
^	keras_api
+Х&call_and_return_all_conditional_losses
Ц__call__"“
_tf_keras_layerЄ{"class_name": "Conv2D", "name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
ў
_	variables
`regularization_losses
atrainable_variables
b	keras_api
+Ч&call_and_return_all_conditional_losses
Ш__call__"»
_tf_keras_layerЃ{"class_name": "Activation", "name": "activation_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}}
Щ
c	variables
dregularization_losses
etrainable_variables
f	keras_api
+Щ&call_and_return_all_conditional_losses
Ъ__call__"И
_tf_keras_layerо{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ц

gkernel
hbias
i	variables
jregularization_losses
ktrainable_variables
l	keras_api
+Ы&call_and_return_all_conditional_losses
Ь__call__"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
№
m	variables
nregularization_losses
otrainable_variables
p	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"Ћ
_tf_keras_layer±{"class_name": "Activation", "name": "activation_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "softmax"}}
л
qiter

rbeta_1

sbeta_2
	tdecay
ulearning_ratemёmя+mа,mб:mв;mгBmдCmеQmжRmзYmиZmйgmкhmлvмvн+vо,vп:vр;vсBvтCvуQvфRvхYvцZvчgvшhvщ"
	optimizer
¶
0
1
+2
,3
:4
;5
<6
=7
B8
C9
Q10
R11
S12
T13
Y14
Z15
g16
h17"
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
0
1
+2
,3
:4
;5
B6
C7
Q8
R9
Y10
Z11
g12
h13"
trackable_list_wrapper
ќ
vlayer_regularization_losses
	variables
wlayer_metrics
xmetrics
ynon_trainable_variables

zlayers
regularization_losses
trainable_variables
ь__call__
ъ_default_save_signature
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
-
Яserving_default"
signature_map
ћ
{_rng
|	keras_api"∞
_tf_keras_layerЦ{"class_name": "RandomZoom", "name": "random_zoom_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_5", "trainable": true, "dtype": "float32", "height_factor": 0, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
}layer_regularization_losses
	variables
~layer_metrics
metrics
Аnon_trainable_variables
Бlayers
regularization_losses
trainable_variables
ю__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
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
µ
 Вlayer_regularization_losses
	variables
Гlayer_metrics
Дmetrics
Еnon_trainable_variables
Жlayers
 regularization_losses
!trainable_variables
А__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Зlayer_regularization_losses
#	variables
Иlayer_metrics
Йmetrics
Кnon_trainable_variables
Лlayers
$regularization_losses
%trainable_variables
В__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Мlayer_regularization_losses
'	variables
Нlayer_metrics
Оmetrics
Пnon_trainable_variables
Рlayers
(regularization_losses
)trainable_variables
Д__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
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
µ
 Сlayer_regularization_losses
-	variables
Тlayer_metrics
Уmetrics
Фnon_trainable_variables
Хlayers
.regularization_losses
/trainable_variables
Ж__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Цlayer_regularization_losses
1	variables
Чlayer_metrics
Шmetrics
Щnon_trainable_variables
Ъlayers
2regularization_losses
3trainable_variables
И__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Ыlayer_regularization_losses
5	variables
Ьlayer_metrics
Эmetrics
Юnon_trainable_variables
Яlayers
6regularization_losses
7trainable_variables
К__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_8/gamma
(:&@2batch_normalization_8/beta
1:/@ (2!batch_normalization_8/moving_mean
5:3@ (2%batch_normalization_8/moving_variance
<
:0
;1
<2
=3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
µ
 †layer_regularization_losses
>	variables
°layer_metrics
Ґmetrics
£non_trainable_variables
§layers
?regularization_losses
@trainable_variables
М__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
+:)@А2conv2d_22/kernel
:А2conv2d_22/bias
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
µ
 •layer_regularization_losses
D	variables
¶layer_metrics
Іmetrics
®non_trainable_variables
©layers
Eregularization_losses
Ftrainable_variables
О__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 ™layer_regularization_losses
H	variables
Ђlayer_metrics
ђmetrics
≠non_trainable_variables
Ѓlayers
Iregularization_losses
Jtrainable_variables
Р__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 ѓlayer_regularization_losses
L	variables
∞layer_metrics
±metrics
≤non_trainable_variables
≥layers
Mregularization_losses
Ntrainable_variables
Т__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(А2batch_normalization_9/gamma
):'А2batch_normalization_9/beta
2:0А (2!batch_normalization_9/moving_mean
6:4А (2%batch_normalization_9/moving_variance
<
Q0
R1
S2
T3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
µ
 іlayer_regularization_losses
U	variables
µlayer_metrics
ґmetrics
Јnon_trainable_variables
Єlayers
Vregularization_losses
Wtrainable_variables
Ф__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_23/kernel
:А2conv2d_23/bias
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
µ
 єlayer_regularization_losses
[	variables
Їlayer_metrics
їmetrics
Љnon_trainable_variables
љlayers
\regularization_losses
]trainable_variables
Ц__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Њlayer_regularization_losses
_	variables
њlayer_metrics
јmetrics
Ѕnon_trainable_variables
¬layers
`regularization_losses
atrainable_variables
Ш__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 √layer_regularization_losses
c	variables
ƒlayer_metrics
≈metrics
∆non_trainable_variables
«layers
dregularization_losses
etrainable_variables
Ъ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
!:	А
2dense_5/kernel
:
2dense_5/bias
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
µ
 »layer_regularization_losses
i	variables
…layer_metrics
 metrics
Ћnon_trainable_variables
ћlayers
jregularization_losses
ktrainable_variables
Ь__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 Ќlayer_regularization_losses
m	variables
ќlayer_metrics
ѕmetrics
–non_trainable_variables
—layers
nregularization_losses
otrainable_variables
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
“0
”1"
trackable_list_wrapper
<
<0
=1
S2
T3"
trackable_list_wrapper
Ю
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
‘
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
.
<0
=1"
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
.
S0
T1"
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
њ

’total

÷count
„	variables
Ў	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Д

ўtotal

Џcount
џ
_fn_kwargs
№	variables
Ё	keras_api"Є
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:	2Variable
:  (2total
:  (2count
0
’0
÷1"
trackable_list_wrapper
.
„	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ў0
Џ1"
trackable_list_wrapper
.
№	variables"
_generic_user_object
/:- 2Adam/conv2d_20/kernel/m
!: 2Adam/conv2d_20/bias/m
/:- @2Adam/conv2d_21/kernel/m
!:@2Adam/conv2d_21/bias/m
.:,@2"Adam/batch_normalization_8/gamma/m
-:+@2!Adam/batch_normalization_8/beta/m
0:.@А2Adam/conv2d_22/kernel/m
": А2Adam/conv2d_22/bias/m
/:-А2"Adam/batch_normalization_9/gamma/m
.:,А2!Adam/batch_normalization_9/beta/m
1:/АА2Adam/conv2d_23/kernel/m
": А2Adam/conv2d_23/bias/m
&:$	А
2Adam/dense_5/kernel/m
:
2Adam/dense_5/bias/m
/:- 2Adam/conv2d_20/kernel/v
!: 2Adam/conv2d_20/bias/v
/:- @2Adam/conv2d_21/kernel/v
!:@2Adam/conv2d_21/bias/v
.:,@2"Adam/batch_normalization_8/gamma/v
-:+@2!Adam/batch_normalization_8/beta/v
0:.@А2Adam/conv2d_22/kernel/v
": А2Adam/conv2d_22/bias/v
/:-А2"Adam/batch_normalization_9/gamma/v
.:,А2!Adam/batch_normalization_9/beta/v
1:/АА2Adam/conv2d_23/kernel/v
": А2Adam/conv2d_23/bias/v
&:$	А
2Adam/dense_5/kernel/v
:
2Adam/dense_5/bias/v
у2р
!__inference__wrapped_model_926248 
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *:Ґ7
5К2
sequential_10_input€€€€€€€€€  
т2п
I__inference_sequential_11_layer_call_and_return_conditional_losses_927090
I__inference_sequential_11_layer_call_and_return_conditional_losses_927642
I__inference_sequential_11_layer_call_and_return_conditional_losses_927570
I__inference_sequential_11_layer_call_and_return_conditional_losses_927147ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ж2Г
.__inference_sequential_11_layer_call_fn_927250
.__inference_sequential_11_layer_call_fn_927685
.__inference_sequential_11_layer_call_fn_927726
.__inference_sequential_11_layer_call_fn_927348ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
I__inference_sequential_10_layer_call_and_return_conditional_losses_927829
I__inference_sequential_10_layer_call_and_return_conditional_losses_926352
I__inference_sequential_10_layer_call_and_return_conditional_losses_927825
I__inference_sequential_10_layer_call_and_return_conditional_losses_926348ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ж2Г
.__inference_sequential_10_layer_call_fn_926468
.__inference_sequential_10_layer_call_fn_927836
.__inference_sequential_10_layer_call_fn_927841
.__inference_sequential_10_layer_call_fn_926459ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
E__inference_conv2d_20_layer_call_and_return_conditional_losses_927851Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_20_layer_call_fn_927860Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_activation_25_layer_call_and_return_conditional_losses_927865Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
.__inference_activation_25_layer_call_fn_927870Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і2±
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_926474а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Щ2Ц
1__inference_max_pooling2d_15_layer_call_fn_926480а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
п2м
E__inference_conv2d_21_layer_call_and_return_conditional_losses_927880Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_21_layer_call_fn_927889Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_activation_26_layer_call_and_return_conditional_losses_927894Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
.__inference_activation_26_layer_call_fn_927899Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і2±
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_926486а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Щ2Ц
1__inference_max_pooling2d_16_layer_call_fn_926492а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ж2Г
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927919
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927983
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927937
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_928001і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ъ2Ч
6__inference_batch_normalization_8_layer_call_fn_928027
6__inference_batch_normalization_8_layer_call_fn_927950
6__inference_batch_normalization_8_layer_call_fn_927963
6__inference_batch_normalization_8_layer_call_fn_928014і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
E__inference_conv2d_22_layer_call_and_return_conditional_losses_928037Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_22_layer_call_fn_928046Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_activation_27_layer_call_and_return_conditional_losses_928051Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
.__inference_activation_27_layer_call_fn_928056Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і2±
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_926602а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Щ2Ц
1__inference_max_pooling2d_17_layer_call_fn_926608а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ж2Г
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928140
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928094
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928076
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928158і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ъ2Ч
6__inference_batch_normalization_9_layer_call_fn_928107
6__inference_batch_normalization_9_layer_call_fn_928171
6__inference_batch_normalization_9_layer_call_fn_928120
6__inference_batch_normalization_9_layer_call_fn_928184і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
E__inference_conv2d_23_layer_call_and_return_conditional_losses_928194Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_23_layer_call_fn_928203Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_activation_28_layer_call_and_return_conditional_losses_928208Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
.__inference_activation_28_layer_call_fn_928213Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Њ2ї
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_926719а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
£2†
;__inference_global_average_pooling2d_5_layer_call_fn_926725а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
н2к
C__inference_dense_5_layer_call_and_return_conditional_losses_928223Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_5_layer_call_fn_928232Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_activation_29_layer_call_and_return_conditional_losses_928237Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
.__inference_activation_29_layer_call_fn_928242Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
„B‘
$__inference_signature_wrapper_927399sequential_10_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 њ
!__inference__wrapped_model_926248Щ+,:;<=BCQRSTYZghDҐA
:Ґ7
5К2
sequential_10_input€€€€€€€€€  
™ "=™:
8
activation_29'К$
activation_29€€€€€€€€€
µ
I__inference_activation_25_layer_call_and_return_conditional_losses_927865h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Н
.__inference_activation_25_layer_call_fn_927870[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€   
™ " К€€€€€€€€€   µ
I__inference_activation_26_layer_call_and_return_conditional_losses_927894h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
.__inference_activation_26_layer_call_fn_927899[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@Ј
I__inference_activation_27_layer_call_and_return_conditional_losses_928051j8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
.__inference_activation_27_layer_call_fn_928056]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€АЈ
I__inference_activation_28_layer_call_and_return_conditional_losses_928208j8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
.__inference_activation_28_layer_call_fn_928213]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А•
I__inference_activation_29_layer_call_and_return_conditional_losses_928237X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€

Ъ }
.__inference_activation_29_layer_call_fn_928242K/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€
м
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927919Ц:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ м
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927937Ц:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ «
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_927983r:;<=;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ «
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_928001r:;<=;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ ƒ
6__inference_batch_normalization_8_layer_call_fn_927950Й:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@ƒ
6__inference_batch_normalization_8_layer_call_fn_927963Й:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Я
6__inference_batch_normalization_8_layer_call_fn_928014e:;<=;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@Я
6__inference_batch_normalization_8_layer_call_fn_928027e:;<=;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@о
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928076ШQRSTNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ о
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928094ШQRSTNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p 
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ …
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928140tQRST<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ …
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_928158tQRST<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ ∆
6__inference_batch_normalization_9_layer_call_fn_928107ЛQRSTNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А∆
6__inference_batch_normalization_9_layer_call_fn_928120ЛQRSTNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p 
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А°
6__inference_batch_normalization_9_layer_call_fn_928171gQRST<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€А°
6__inference_batch_normalization_9_layer_call_fn_928184gQRST<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€Аµ
E__inference_conv2d_20_layer_call_and_return_conditional_losses_927851l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ Н
*__inference_conv2d_20_layer_call_fn_927860_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ " К€€€€€€€€€   µ
E__inference_conv2d_21_layer_call_and_return_conditional_losses_927880l+,7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_conv2d_21_layer_call_fn_927889_+,7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@ґ
E__inference_conv2d_22_layer_call_and_return_conditional_losses_928037mBC7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ О
*__inference_conv2d_22_layer_call_fn_928046`BC7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€АЈ
E__inference_conv2d_23_layer_call_and_return_conditional_losses_928194nYZ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_conv2d_23_layer_call_fn_928203aYZ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А§
C__inference_dense_5_layer_call_and_return_conditional_losses_928223]gh0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€

Ъ |
(__inference_dense_5_layer_call_fn_928232Pgh0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€
я
V__inference_global_average_pooling2d_5_layer_call_and_return_conditional_losses_926719ДRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ ґ
;__inference_global_average_pooling2d_5_layer_call_fn_926725wRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "!К€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_926474ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_15_layer_call_fn_926480СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_926486ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_16_layer_call_fn_926492СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_926602ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_17_layer_call_fn_926608СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ѕ
I__inference_sequential_10_layer_call_and_return_conditional_losses_926348Б‘LҐI
BҐ?
5К2
random_zoom_5_input€€€€€€€€€  
p

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ  
I__inference_sequential_10_layer_call_and_return_conditional_losses_926352}LҐI
BҐ?
5К2
random_zoom_5_input€€€€€€€€€  
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ Ѕ
I__inference_sequential_10_layer_call_and_return_conditional_losses_927825t‘?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ љ
I__inference_sequential_10_layer_call_and_return_conditional_losses_927829p?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ ¶
.__inference_sequential_10_layer_call_fn_926459t‘LҐI
BҐ?
5К2
random_zoom_5_input€€€€€€€€€  
p

 
™ " К€€€€€€€€€  Ґ
.__inference_sequential_10_layer_call_fn_926468pLҐI
BҐ?
5К2
random_zoom_5_input€€€€€€€€€  
p 

 
™ " К€€€€€€€€€  Щ
.__inference_sequential_10_layer_call_fn_927836g‘?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ " К€€€€€€€€€  Х
.__inference_sequential_10_layer_call_fn_927841c?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ " К€€€€€€€€€  ў
I__inference_sequential_11_layer_call_and_return_conditional_losses_927090Л‘+,:;<=BCQRSTYZghLҐI
BҐ?
5К2
sequential_10_input€€€€€€€€€  
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ „
I__inference_sequential_11_layer_call_and_return_conditional_losses_927147Й+,:;<=BCQRSTYZghLҐI
BҐ?
5К2
sequential_10_input€€€€€€€€€  
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ћ
I__inference_sequential_11_layer_call_and_return_conditional_losses_927570~‘+,:;<=BCQRSTYZgh?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ …
I__inference_sequential_11_layer_call_and_return_conditional_losses_927642|+,:;<=BCQRSTYZgh?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ∞
.__inference_sequential_11_layer_call_fn_927250~‘+,:;<=BCQRSTYZghLҐI
BҐ?
5К2
sequential_10_input€€€€€€€€€  
p

 
™ "К€€€€€€€€€
Ѓ
.__inference_sequential_11_layer_call_fn_927348|+,:;<=BCQRSTYZghLҐI
BҐ?
5К2
sequential_10_input€€€€€€€€€  
p 

 
™ "К€€€€€€€€€
£
.__inference_sequential_11_layer_call_fn_927685q‘+,:;<=BCQRSTYZgh?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p

 
™ "К€€€€€€€€€
°
.__inference_sequential_11_layer_call_fn_927726o+,:;<=BCQRSTYZgh?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€  
p 

 
™ "К€€€€€€€€€
ў
$__inference_signature_wrapper_927399∞+,:;<=BCQRSTYZgh[ҐX
Ґ 
Q™N
L
sequential_10_input5К2
sequential_10_input€€€€€€€€€  "=™:
8
activation_29'К$
activation_29€€€€€€€€€
