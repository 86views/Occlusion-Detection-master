��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02v2.7.0-0-gc256c071bb28��
�
conv1_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1_1/kernel
y
"conv1_1/kernel/Read/ReadVariableOpReadVariableOpconv1_1/kernel*&
_output_shapes
:@*
dtype0
p
conv1_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1_1/bias
i
 conv1_1/bias/Read/ReadVariableOpReadVariableOpconv1_1/bias*
_output_shapes
:@*
dtype0
�
conv1_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv1_2/kernel
y
"conv1_2/kernel/Read/ReadVariableOpReadVariableOpconv1_2/kernel*&
_output_shapes
:@@*
dtype0
p
conv1_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1_2/bias
i
 conv1_2/bias/Read/ReadVariableOpReadVariableOpconv1_2/bias*
_output_shapes
:@*
dtype0
�
conv2_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*
shared_nameconv2_1/kernel
z
"conv2_1/kernel/Read/ReadVariableOpReadVariableOpconv2_1/kernel*'
_output_shapes
:@�*
dtype0
q
conv2_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2_1/bias
j
 conv2_1/bias/Read/ReadVariableOpReadVariableOpconv2_1/bias*
_output_shapes	
:�*
dtype0
�
conv2_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv2_2/kernel
{
"conv2_2/kernel/Read/ReadVariableOpReadVariableOpconv2_2/kernel*(
_output_shapes
:��*
dtype0
q
conv2_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2_2/bias
j
 conv2_2/bias/Read/ReadVariableOpReadVariableOpconv2_2/bias*
_output_shapes	
:�*
dtype0
�
conv3_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv3_1/kernel
{
"conv3_1/kernel/Read/ReadVariableOpReadVariableOpconv3_1/kernel*(
_output_shapes
:��*
dtype0
q
conv3_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3_1/bias
j
 conv3_1/bias/Read/ReadVariableOpReadVariableOpconv3_1/bias*
_output_shapes	
:�*
dtype0
�
conv3_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv3_2/kernel
{
"conv3_2/kernel/Read/ReadVariableOpReadVariableOpconv3_2/kernel*(
_output_shapes
:��*
dtype0
q
conv3_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3_2/bias
j
 conv3_2/bias/Read/ReadVariableOpReadVariableOpconv3_2/bias*
_output_shapes	
:�*
dtype0
�
conv3_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv3_3/kernel
{
"conv3_3/kernel/Read/ReadVariableOpReadVariableOpconv3_3/kernel*(
_output_shapes
:��*
dtype0
q
conv3_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv3_3/bias
j
 conv3_3/bias/Read/ReadVariableOpReadVariableOpconv3_3/bias*
_output_shapes	
:�*
dtype0
�
conv4_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv4_1/kernel
{
"conv4_1/kernel/Read/ReadVariableOpReadVariableOpconv4_1/kernel*(
_output_shapes
:��*
dtype0
q
conv4_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv4_1/bias
j
 conv4_1/bias/Read/ReadVariableOpReadVariableOpconv4_1/bias*
_output_shapes	
:�*
dtype0
�
conv4_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv4_2/kernel
{
"conv4_2/kernel/Read/ReadVariableOpReadVariableOpconv4_2/kernel*(
_output_shapes
:��*
dtype0
q
conv4_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv4_2/bias
j
 conv4_2/bias/Read/ReadVariableOpReadVariableOpconv4_2/bias*
_output_shapes	
:�*
dtype0
�
conv4_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv4_3/kernel
{
"conv4_3/kernel/Read/ReadVariableOpReadVariableOpconv4_3/kernel*(
_output_shapes
:��*
dtype0
q
conv4_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv4_3/bias
j
 conv4_3/bias/Read/ReadVariableOpReadVariableOpconv4_3/bias*
_output_shapes	
:�*
dtype0
�
conv5_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv5_1/kernel
{
"conv5_1/kernel/Read/ReadVariableOpReadVariableOpconv5_1/kernel*(
_output_shapes
:��*
dtype0
q
conv5_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv5_1/bias
j
 conv5_1/bias/Read/ReadVariableOpReadVariableOpconv5_1/bias*
_output_shapes	
:�*
dtype0
�
conv5_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv5_2/kernel
{
"conv5_2/kernel/Read/ReadVariableOpReadVariableOpconv5_2/kernel*(
_output_shapes
:��*
dtype0
q
conv5_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv5_2/bias
j
 conv5_2/bias/Read/ReadVariableOpReadVariableOpconv5_2/bias*
_output_shapes	
:�*
dtype0
�
conv5_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv5_3/kernel
{
"conv5_3/kernel/Read/ReadVariableOpReadVariableOpconv5_3/kernel*(
_output_shapes
:��*
dtype0
q
conv5_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv5_3/bias
j
 conv5_3/bias/Read/ReadVariableOpReadVariableOpconv5_3/bias*
_output_shapes	
:�*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:� *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*'
_output_shapes
:� *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/m
�
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	@�*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_1/kernel/m
�
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	�*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *%
shared_nameAdam/conv2d/kernel/v
�
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*'
_output_shapes
:� *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/v
�
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	@�*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_1/kernel/v
�
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	�*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer_with_weights-13
layer-19
layer-20
layer_with_weights-14
layer-21
layer-22
layer-23
layer-24
layer_with_weights-15
layer-25
layer_with_weights-16
layer-26
	optimizer
	variables
trainable_variables
regularization_losses
 	keras_api
!
signatures

"_init_input_shape
h

#kernel
$bias
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
h

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
h

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
R
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
h

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
h

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
h

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
R
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
h

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
h

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
h

ekernel
fbias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
R
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
h

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
h

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
i

{kernel
|bias
}	variables
~trainable_variables
regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�
�
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
�26
�27
�28
�29
�30
�31
�32
�33
@
�0
�1
�2
�3
�4
�5
�6
�7
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 
 
ZX
VARIABLE_VALUEconv1_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv1_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
ZX
VARIABLE_VALUEconv1_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv1_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
ZX
VARIABLE_VALUEconv2_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
ZX
VARIABLE_VALUEconv2_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
ZX
VARIABLE_VALUEconv3_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv3_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
ZX
VARIABLE_VALUEconv3_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv3_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

I0
J1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
ZX
VARIABLE_VALUEconv3_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv3_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
ZX
VARIABLE_VALUEconv4_1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv4_1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

Y0
Z1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
ZX
VARIABLE_VALUEconv4_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv4_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

_0
`1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
ZX
VARIABLE_VALUEconv4_3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv4_3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
[Y
VARIABLE_VALUEconv5_1/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv5_1/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
[Y
VARIABLE_VALUEconv5_2/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv5_2/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
[Y
VARIABLE_VALUEconv5_3/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv5_3/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

{0
|1
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
ZX
VARIABLE_VALUEconv2d/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
\Z
VARIABLE_VALUEconv2d_1/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_1/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
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
�
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
�
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
19
20
21
22
23
24
25
26

�0
�1
 
 

#0
$1
 
 
 
 

)0
*1
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
30
41
 
 
 
 

90
:1
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
C0
D1
 
 
 
 

I0
J1
 
 
 
 

O0
P1
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

_0
`1
 
 
 
 

e0
f1
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
o0
p1
 
 
 
 

u0
v1
 
 
 
 

{0
|1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
}{
VARIABLE_VALUEAdam/conv2d/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_1/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_1/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_1/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_1/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv1_1/kernelconv1_1/biasconv1_2/kernelconv1_2/biasconv2_1/kernelconv2_1/biasconv2_2/kernelconv2_2/biasconv3_1/kernelconv3_1/biasconv3_2/kernelconv3_2/biasconv3_3/kernelconv3_3/biasconv4_1/kernelconv4_1/biasconv4_2/kernelconv4_2/biasconv4_3/kernelconv4_3/biasconv5_1/kernelconv5_1/biasconv5_2/kernelconv5_2/biasconv5_3/kernelconv5_3/biasconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_33467
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"conv1_1/kernel/Read/ReadVariableOp conv1_1/bias/Read/ReadVariableOp"conv1_2/kernel/Read/ReadVariableOp conv1_2/bias/Read/ReadVariableOp"conv2_1/kernel/Read/ReadVariableOp conv2_1/bias/Read/ReadVariableOp"conv2_2/kernel/Read/ReadVariableOp conv2_2/bias/Read/ReadVariableOp"conv3_1/kernel/Read/ReadVariableOp conv3_1/bias/Read/ReadVariableOp"conv3_2/kernel/Read/ReadVariableOp conv3_2/bias/Read/ReadVariableOp"conv3_3/kernel/Read/ReadVariableOp conv3_3/bias/Read/ReadVariableOp"conv4_1/kernel/Read/ReadVariableOp conv4_1/bias/Read/ReadVariableOp"conv4_2/kernel/Read/ReadVariableOp conv4_2/bias/Read/ReadVariableOp"conv4_3/kernel/Read/ReadVariableOp conv4_3/bias/Read/ReadVariableOp"conv5_1/kernel/Read/ReadVariableOp conv5_1/bias/Read/ReadVariableOp"conv5_2/kernel/Read/ReadVariableOp conv5_2/bias/Read/ReadVariableOp"conv5_3/kernel/Read/ReadVariableOp conv5_3/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*H
TinA
?2=	*
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
GPU2*0J 8� *'
f"R 
__inference__traced_save_34604
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1_1/kernelconv1_1/biasconv1_2/kernelconv1_2/biasconv2_1/kernelconv2_1/biasconv2_2/kernelconv2_2/biasconv3_1/kernelconv3_1/biasconv3_2/kernelconv3_2/biasconv3_3/kernelconv3_3/biasconv4_1/kernelconv4_1/biasconv4_2/kernelconv4_2/biasconv4_3/kernelconv4_3/biasconv5_1/kernelconv5_1/biasconv5_2/kernelconv5_2/biasconv5_3/kernelconv5_3/biasconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*G
Tin@
>2<*
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
GPU2*0J 8� **
f%R#
!__inference__traced_restore_34791��
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_34364

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
A
%__inference_pool2_layer_call_fn_33991

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_32151�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_34276

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32493h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
'__inference_conv2_1_layer_call_fn_33955

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_1_layer_call_and_return_conditional_losses_32272x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������pp�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������pp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������pp@
 
_user_specified_nameinputs
�
\
@__inference_pool2_layer_call_and_return_conditional_losses_32151

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv2_1_layer_call_and_return_conditional_losses_32272

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������pp�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������pp�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������pp@
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_34358

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_32531`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
\
@__inference_pool4_layer_call_and_return_conditional_losses_34161

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
\
@__inference_pool2_layer_call_and_return_conditional_losses_34001

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
A
%__inference_pool5_layer_call_fn_34236

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool5_layer_call_and_return_conditional_losses_32470i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv5_1_layer_call_and_return_conditional_losses_32426

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�o
�
@__inference_model_layer_call_and_return_conditional_losses_33046

inputs'
conv1_1_32951:@
conv1_1_32953:@'
conv1_2_32956:@@
conv1_2_32958:@(
conv2_1_32962:@�
conv2_1_32964:	�)
conv2_2_32967:��
conv2_2_32969:	�)
conv3_1_32973:��
conv3_1_32975:	�)
conv3_2_32978:��
conv3_2_32980:	�)
conv3_3_32983:��
conv3_3_32985:	�)
conv4_1_32989:��
conv4_1_32991:	�)
conv4_2_32994:��
conv4_2_32996:	�)
conv4_3_32999:��
conv4_3_33001:	�)
conv5_1_33005:��
conv5_1_33007:	�)
conv5_2_33010:��
conv5_2_33012:	�)
conv5_3_33015:��
conv5_3_33017:	�'
conv2d_33021:� 
conv2d_33023: (
conv2d_1_33027: @
conv2d_1_33029:@
dense_33035:	@�
dense_33037:	� 
dense_1_33040:	�
dense_1_33042:
identity��conv1_1/StatefulPartitionedCall�conv1_2/StatefulPartitionedCall�conv2_1/StatefulPartitionedCall�conv2_2/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�conv3_1/StatefulPartitionedCall�conv3_2/StatefulPartitionedCall�conv3_3/StatefulPartitionedCall�conv4_1/StatefulPartitionedCall�conv4_2/StatefulPartitionedCall�conv4_3/StatefulPartitionedCall�conv5_1/StatefulPartitionedCall�conv5_2/StatefulPartitionedCall�conv5_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�
conv1_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_1_32951conv1_1_32953*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_1_layer_call_and_return_conditional_losses_32232�
conv1_2/StatefulPartitionedCallStatefulPartitionedCall(conv1_1/StatefulPartitionedCall:output:0conv1_2_32956conv1_2_32958*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_2_layer_call_and_return_conditional_losses_32249�
pool1/PartitionedCallPartitionedCall(conv1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_32259�
conv2_1/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_1_32962conv2_1_32964*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_1_layer_call_and_return_conditional_losses_32272�
conv2_2/StatefulPartitionedCallStatefulPartitionedCall(conv2_1/StatefulPartitionedCall:output:0conv2_2_32967conv2_2_32969*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_2_layer_call_and_return_conditional_losses_32289�
pool2/PartitionedCallPartitionedCall(conv2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_32299�
conv3_1/StatefulPartitionedCallStatefulPartitionedCallpool2/PartitionedCall:output:0conv3_1_32973conv3_1_32975*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_1_layer_call_and_return_conditional_losses_32312�
conv3_2/StatefulPartitionedCallStatefulPartitionedCall(conv3_1/StatefulPartitionedCall:output:0conv3_2_32978conv3_2_32980*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_2_layer_call_and_return_conditional_losses_32329�
conv3_3/StatefulPartitionedCallStatefulPartitionedCall(conv3_2/StatefulPartitionedCall:output:0conv3_3_32983conv3_3_32985*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_3_layer_call_and_return_conditional_losses_32346�
pool3/PartitionedCallPartitionedCall(conv3_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool3_layer_call_and_return_conditional_losses_32356�
conv4_1/StatefulPartitionedCallStatefulPartitionedCallpool3/PartitionedCall:output:0conv4_1_32989conv4_1_32991*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_1_layer_call_and_return_conditional_losses_32369�
conv4_2/StatefulPartitionedCallStatefulPartitionedCall(conv4_1/StatefulPartitionedCall:output:0conv4_2_32994conv4_2_32996*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_2_layer_call_and_return_conditional_losses_32386�
conv4_3/StatefulPartitionedCallStatefulPartitionedCall(conv4_2/StatefulPartitionedCall:output:0conv4_3_32999conv4_3_33001*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_3_layer_call_and_return_conditional_losses_32403�
pool4/PartitionedCallPartitionedCall(conv4_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool4_layer_call_and_return_conditional_losses_32413�
conv5_1/StatefulPartitionedCallStatefulPartitionedCallpool4/PartitionedCall:output:0conv5_1_33005conv5_1_33007*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_1_layer_call_and_return_conditional_losses_32426�
conv5_2/StatefulPartitionedCallStatefulPartitionedCall(conv5_1/StatefulPartitionedCall:output:0conv5_2_33010conv5_2_33012*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_2_layer_call_and_return_conditional_losses_32443�
conv5_3/StatefulPartitionedCallStatefulPartitionedCall(conv5_2/StatefulPartitionedCall:output:0conv5_3_33015conv5_3_33017*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_3_layer_call_and_return_conditional_losses_32460�
pool5/PartitionedCallPartitionedCall(conv5_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool5_layer_call_and_return_conditional_losses_32470�
conv2d/StatefulPartitionedCallStatefulPartitionedCallpool5/PartitionedCall:output:0conv2d_33021conv2d_33023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_32483�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32493�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_33027conv2d_1_33029*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_32506�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32516�
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_32685�
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_32531�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_33035dense_33037*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_32544�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_33040dense_1_33042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32561w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv1_1/StatefulPartitionedCall ^conv1_2/StatefulPartitionedCall ^conv2_1/StatefulPartitionedCall ^conv2_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^conv3_1/StatefulPartitionedCall ^conv3_2/StatefulPartitionedCall ^conv3_3/StatefulPartitionedCall ^conv4_1/StatefulPartitionedCall ^conv4_2/StatefulPartitionedCall ^conv4_3/StatefulPartitionedCall ^conv5_1/StatefulPartitionedCall ^conv5_2/StatefulPartitionedCall ^conv5_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
conv1_1/StatefulPartitionedCallconv1_1/StatefulPartitionedCall2B
conv1_2/StatefulPartitionedCallconv1_2/StatefulPartitionedCall2B
conv2_1/StatefulPartitionedCallconv2_1/StatefulPartitionedCall2B
conv2_2/StatefulPartitionedCallconv2_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
conv3_1/StatefulPartitionedCallconv3_1/StatefulPartitionedCall2B
conv3_2/StatefulPartitionedCallconv3_2/StatefulPartitionedCall2B
conv3_3/StatefulPartitionedCallconv3_3/StatefulPartitionedCall2B
conv4_1/StatefulPartitionedCallconv4_1/StatefulPartitionedCall2B
conv4_2/StatefulPartitionedCallconv4_2/StatefulPartitionedCall2B
conv4_3/StatefulPartitionedCallconv4_3/StatefulPartitionedCall2B
conv5_1/StatefulPartitionedCallconv5_1/StatefulPartitionedCall2B
conv5_2/StatefulPartitionedCallconv5_2/StatefulPartitionedCall2B
conv5_3/StatefulPartitionedCallconv5_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�o
�
__inference__traced_save_34604
file_prefix-
)savev2_conv1_1_kernel_read_readvariableop+
'savev2_conv1_1_bias_read_readvariableop-
)savev2_conv1_2_kernel_read_readvariableop+
'savev2_conv1_2_bias_read_readvariableop-
)savev2_conv2_1_kernel_read_readvariableop+
'savev2_conv2_1_bias_read_readvariableop-
)savev2_conv2_2_kernel_read_readvariableop+
'savev2_conv2_2_bias_read_readvariableop-
)savev2_conv3_1_kernel_read_readvariableop+
'savev2_conv3_1_bias_read_readvariableop-
)savev2_conv3_2_kernel_read_readvariableop+
'savev2_conv3_2_bias_read_readvariableop-
)savev2_conv3_3_kernel_read_readvariableop+
'savev2_conv3_3_bias_read_readvariableop-
)savev2_conv4_1_kernel_read_readvariableop+
'savev2_conv4_1_bias_read_readvariableop-
)savev2_conv4_2_kernel_read_readvariableop+
'savev2_conv4_2_bias_read_readvariableop-
)savev2_conv4_3_kernel_read_readvariableop+
'savev2_conv4_3_bias_read_readvariableop-
)savev2_conv5_1_kernel_read_readvariableop+
'savev2_conv5_1_bias_read_readvariableop-
)savev2_conv5_2_kernel_read_readvariableop+
'savev2_conv5_2_bias_read_readvariableop-
)savev2_conv5_3_kernel_read_readvariableop+
'savev2_conv5_3_bias_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_conv1_1_kernel_read_readvariableop'savev2_conv1_1_bias_read_readvariableop)savev2_conv1_2_kernel_read_readvariableop'savev2_conv1_2_bias_read_readvariableop)savev2_conv2_1_kernel_read_readvariableop'savev2_conv2_1_bias_read_readvariableop)savev2_conv2_2_kernel_read_readvariableop'savev2_conv2_2_bias_read_readvariableop)savev2_conv3_1_kernel_read_readvariableop'savev2_conv3_1_bias_read_readvariableop)savev2_conv3_2_kernel_read_readvariableop'savev2_conv3_2_bias_read_readvariableop)savev2_conv3_3_kernel_read_readvariableop'savev2_conv3_3_bias_read_readvariableop)savev2_conv4_1_kernel_read_readvariableop'savev2_conv4_1_bias_read_readvariableop)savev2_conv4_2_kernel_read_readvariableop'savev2_conv4_2_bias_read_readvariableop)savev2_conv4_3_kernel_read_readvariableop'savev2_conv4_3_bias_read_readvariableop)savev2_conv5_1_kernel_read_readvariableop'savev2_conv5_1_bias_read_readvariableop)savev2_conv5_2_kernel_read_readvariableop'savev2_conv5_2_bias_read_readvariableop)savev2_conv5_3_kernel_read_readvariableop'savev2_conv5_3_bias_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@@:@:@�:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:� : : @:@:	@�:�:	�:: : : : : : : : : :� : : @:@:	@�:�:	�::� : : @:@:	@�:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.	*
(
_output_shapes
:��:!


_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:-)
'
_output_shapes
:� : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:%!

_output_shapes
:	@�:! 

_output_shapes	
:�:%!!

_output_shapes
:	�: "

_output_shapes
::#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :-,)
'
_output_shapes
:� : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:%0!

_output_shapes
:	@�:!1

_output_shapes	
:�:%2!

_output_shapes
:	�: 3

_output_shapes
::-4)
'
_output_shapes
:� : 5

_output_shapes
: :,6(
&
_output_shapes
: @: 7

_output_shapes
:@:%8!

_output_shapes
:	@�:!9

_output_shapes	
:�:%:!

_output_shapes
:	�: ;

_output_shapes
::<

_output_shapes
: 
�
\
@__inference_pool5_layer_call_and_return_conditional_losses_32187

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_32506

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
B__inference_conv5_2_layer_call_and_return_conditional_losses_32443

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_34326

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32516

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�	
%__inference_model_layer_call_fn_33540

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�%

unknown_25:� 

unknown_26: $

unknown_27: @

unknown_28:@

unknown_29:	@�

unknown_30:	�

unknown_31:	�

unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_32568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_34286

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�	
%__inference_model_layer_call_fn_32639
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�%

unknown_25:� 

unknown_26: $

unknown_27: @

unknown_28:@

unknown_29:	@�

unknown_30:	�

unknown_31:	�

unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_32568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
B__inference_conv3_1_layer_call_and_return_conditional_losses_34026

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������88�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������88�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
��
�#
!__inference__traced_restore_34791
file_prefix9
assignvariableop_conv1_1_kernel:@-
assignvariableop_1_conv1_1_bias:@;
!assignvariableop_2_conv1_2_kernel:@@-
assignvariableop_3_conv1_2_bias:@<
!assignvariableop_4_conv2_1_kernel:@�.
assignvariableop_5_conv2_1_bias:	�=
!assignvariableop_6_conv2_2_kernel:��.
assignvariableop_7_conv2_2_bias:	�=
!assignvariableop_8_conv3_1_kernel:��.
assignvariableop_9_conv3_1_bias:	�>
"assignvariableop_10_conv3_2_kernel:��/
 assignvariableop_11_conv3_2_bias:	�>
"assignvariableop_12_conv3_3_kernel:��/
 assignvariableop_13_conv3_3_bias:	�>
"assignvariableop_14_conv4_1_kernel:��/
 assignvariableop_15_conv4_1_bias:	�>
"assignvariableop_16_conv4_2_kernel:��/
 assignvariableop_17_conv4_2_bias:	�>
"assignvariableop_18_conv4_3_kernel:��/
 assignvariableop_19_conv4_3_bias:	�>
"assignvariableop_20_conv5_1_kernel:��/
 assignvariableop_21_conv5_1_bias:	�>
"assignvariableop_22_conv5_2_kernel:��/
 assignvariableop_23_conv5_2_bias:	�>
"assignvariableop_24_conv5_3_kernel:��/
 assignvariableop_25_conv5_3_bias:	�<
!assignvariableop_26_conv2d_kernel:� -
assignvariableop_27_conv2d_bias: =
#assignvariableop_28_conv2d_1_kernel: @/
!assignvariableop_29_conv2d_1_bias:@3
 assignvariableop_30_dense_kernel:	@�-
assignvariableop_31_dense_bias:	�5
"assignvariableop_32_dense_1_kernel:	�.
 assignvariableop_33_dense_1_bias:'
assignvariableop_34_adam_iter:	 )
assignvariableop_35_adam_beta_1: )
assignvariableop_36_adam_beta_2: (
assignvariableop_37_adam_decay: 0
&assignvariableop_38_adam_learning_rate: #
assignvariableop_39_total: #
assignvariableop_40_count: %
assignvariableop_41_total_1: %
assignvariableop_42_count_1: C
(assignvariableop_43_adam_conv2d_kernel_m:� 4
&assignvariableop_44_adam_conv2d_bias_m: D
*assignvariableop_45_adam_conv2d_1_kernel_m: @6
(assignvariableop_46_adam_conv2d_1_bias_m:@:
'assignvariableop_47_adam_dense_kernel_m:	@�4
%assignvariableop_48_adam_dense_bias_m:	�<
)assignvariableop_49_adam_dense_1_kernel_m:	�5
'assignvariableop_50_adam_dense_1_bias_m:C
(assignvariableop_51_adam_conv2d_kernel_v:� 4
&assignvariableop_52_adam_conv2d_bias_v: D
*assignvariableop_53_adam_conv2d_1_kernel_v: @6
(assignvariableop_54_adam_conv2d_1_bias_v:@:
'assignvariableop_55_adam_dense_kernel_v:	@�4
%assignvariableop_56_adam_dense_bias_v:	�<
)assignvariableop_57_adam_dense_1_kernel_v:	�5
'assignvariableop_58_adam_dense_1_bias_v:
identity_60��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv1_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_conv1_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv1_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_conv2_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv2_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv2_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_conv3_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv3_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp"assignvariableop_10_conv3_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp assignvariableop_11_conv3_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_conv3_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_conv3_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_conv4_1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp assignvariableop_15_conv4_1_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_conv4_2_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp assignvariableop_17_conv4_2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp"assignvariableop_18_conv4_3_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp assignvariableop_19_conv4_3_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_conv5_1_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp assignvariableop_21_conv5_1_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp"assignvariableop_22_conv5_2_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp assignvariableop_23_conv5_2_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp"assignvariableop_24_conv5_3_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp assignvariableop_25_conv5_3_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp!assignvariableop_26_conv2d_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_conv2d_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_1_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_1_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp assignvariableop_30_dense_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_dense_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_1_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_1_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_beta_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_adam_beta_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_decayIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_learning_rateIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_countIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv2d_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_conv2d_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_1_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv2d_1_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp%assignvariableop_48_adam_dense_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_1_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_1_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_conv2d_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_conv2d_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_1_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_1_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_dense_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_1_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_1_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*�
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_32561

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_33886

inputs@
&conv1_1_conv2d_readvariableop_resource:@5
'conv1_1_biasadd_readvariableop_resource:@@
&conv1_2_conv2d_readvariableop_resource:@@5
'conv1_2_biasadd_readvariableop_resource:@A
&conv2_1_conv2d_readvariableop_resource:@�6
'conv2_1_biasadd_readvariableop_resource:	�B
&conv2_2_conv2d_readvariableop_resource:��6
'conv2_2_biasadd_readvariableop_resource:	�B
&conv3_1_conv2d_readvariableop_resource:��6
'conv3_1_biasadd_readvariableop_resource:	�B
&conv3_2_conv2d_readvariableop_resource:��6
'conv3_2_biasadd_readvariableop_resource:	�B
&conv3_3_conv2d_readvariableop_resource:��6
'conv3_3_biasadd_readvariableop_resource:	�B
&conv4_1_conv2d_readvariableop_resource:��6
'conv4_1_biasadd_readvariableop_resource:	�B
&conv4_2_conv2d_readvariableop_resource:��6
'conv4_2_biasadd_readvariableop_resource:	�B
&conv4_3_conv2d_readvariableop_resource:��6
'conv4_3_biasadd_readvariableop_resource:	�B
&conv5_1_conv2d_readvariableop_resource:��6
'conv5_1_biasadd_readvariableop_resource:	�B
&conv5_2_conv2d_readvariableop_resource:��6
'conv5_2_biasadd_readvariableop_resource:	�B
&conv5_3_conv2d_readvariableop_resource:��6
'conv5_3_biasadd_readvariableop_resource:	�@
%conv2d_conv2d_readvariableop_resource:� 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@7
$dense_matmul_readvariableop_resource:	@�4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��conv1_1/BiasAdd/ReadVariableOp�conv1_1/Conv2D/ReadVariableOp�conv1_2/BiasAdd/ReadVariableOp�conv1_2/Conv2D/ReadVariableOp�conv2_1/BiasAdd/ReadVariableOp�conv2_1/Conv2D/ReadVariableOp�conv2_2/BiasAdd/ReadVariableOp�conv2_2/Conv2D/ReadVariableOp�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv3_1/BiasAdd/ReadVariableOp�conv3_1/Conv2D/ReadVariableOp�conv3_2/BiasAdd/ReadVariableOp�conv3_2/Conv2D/ReadVariableOp�conv3_3/BiasAdd/ReadVariableOp�conv3_3/Conv2D/ReadVariableOp�conv4_1/BiasAdd/ReadVariableOp�conv4_1/Conv2D/ReadVariableOp�conv4_2/BiasAdd/ReadVariableOp�conv4_2/Conv2D/ReadVariableOp�conv4_3/BiasAdd/ReadVariableOp�conv4_3/Conv2D/ReadVariableOp�conv5_1/BiasAdd/ReadVariableOp�conv5_1/Conv2D/ReadVariableOp�conv5_2/BiasAdd/ReadVariableOp�conv5_2/Conv2D/ReadVariableOp�conv5_3/BiasAdd/ReadVariableOp�conv5_3/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv1_1/Conv2D/ReadVariableOpReadVariableOp&conv1_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv1_1/Conv2DConv2Dinputs%conv1_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
conv1_1/BiasAdd/ReadVariableOpReadVariableOp'conv1_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv1_1/BiasAddBiasAddconv1_1/Conv2D:output:0&conv1_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@j
conv1_1/ReluReluconv1_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
conv1_2/Conv2D/ReadVariableOpReadVariableOp&conv1_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv1_2/Conv2DConv2Dconv1_1/Relu:activations:0%conv1_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
conv1_2/BiasAdd/ReadVariableOpReadVariableOp'conv1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv1_2/BiasAddBiasAddconv1_2/Conv2D:output:0&conv1_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@j
conv1_2/ReluReluconv1_2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
pool1/MaxPoolMaxPoolconv1_2/Relu:activations:0*/
_output_shapes
:���������pp@*
ksize
*
paddingVALID*
strides
�
conv2_1/Conv2D/ReadVariableOpReadVariableOp&conv2_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2_1/Conv2DConv2Dpool1/MaxPool:output:0%conv2_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
conv2_1/BiasAdd/ReadVariableOpReadVariableOp'conv2_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2_1/BiasAddBiasAddconv2_1/Conv2D:output:0&conv2_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�i
conv2_1/ReluReluconv2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������pp��
conv2_2/Conv2D/ReadVariableOpReadVariableOp&conv2_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2_2/Conv2DConv2Dconv2_1/Relu:activations:0%conv2_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
conv2_2/BiasAdd/ReadVariableOpReadVariableOp'conv2_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2_2/BiasAddBiasAddconv2_2/Conv2D:output:0&conv2_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�i
conv2_2/ReluReluconv2_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������pp��
pool2/MaxPoolMaxPoolconv2_2/Relu:activations:0*0
_output_shapes
:���������88�*
ksize
*
paddingVALID*
strides
�
conv3_1/Conv2D/ReadVariableOpReadVariableOp&conv3_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv3_1/Conv2DConv2Dpool2/MaxPool:output:0%conv3_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
conv3_1/BiasAdd/ReadVariableOpReadVariableOp'conv3_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3_1/BiasAddBiasAddconv3_1/Conv2D:output:0&conv3_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�i
conv3_1/ReluReluconv3_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
conv3_2/Conv2D/ReadVariableOpReadVariableOp&conv3_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv3_2/Conv2DConv2Dconv3_1/Relu:activations:0%conv3_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
conv3_2/BiasAdd/ReadVariableOpReadVariableOp'conv3_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3_2/BiasAddBiasAddconv3_2/Conv2D:output:0&conv3_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�i
conv3_2/ReluReluconv3_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
conv3_3/Conv2D/ReadVariableOpReadVariableOp&conv3_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv3_3/Conv2DConv2Dconv3_2/Relu:activations:0%conv3_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
conv3_3/BiasAdd/ReadVariableOpReadVariableOp'conv3_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3_3/BiasAddBiasAddconv3_3/Conv2D:output:0&conv3_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�i
conv3_3/ReluReluconv3_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
pool3/MaxPoolMaxPoolconv3_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
conv4_1/Conv2D/ReadVariableOpReadVariableOp&conv4_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv4_1/Conv2DConv2Dpool3/MaxPool:output:0%conv4_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv4_1/BiasAdd/ReadVariableOpReadVariableOp'conv4_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv4_1/BiasAddBiasAddconv4_1/Conv2D:output:0&conv4_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv4_1/ReluReluconv4_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv4_2/Conv2D/ReadVariableOpReadVariableOp&conv4_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv4_2/Conv2DConv2Dconv4_1/Relu:activations:0%conv4_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv4_2/BiasAdd/ReadVariableOpReadVariableOp'conv4_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv4_2/BiasAddBiasAddconv4_2/Conv2D:output:0&conv4_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv4_2/ReluReluconv4_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv4_3/Conv2D/ReadVariableOpReadVariableOp&conv4_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv4_3/Conv2DConv2Dconv4_2/Relu:activations:0%conv4_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv4_3/BiasAdd/ReadVariableOpReadVariableOp'conv4_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv4_3/BiasAddBiasAddconv4_3/Conv2D:output:0&conv4_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv4_3/ReluReluconv4_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
pool4/MaxPoolMaxPoolconv4_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
conv5_1/Conv2D/ReadVariableOpReadVariableOp&conv5_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv5_1/Conv2DConv2Dpool4/MaxPool:output:0%conv5_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv5_1/BiasAdd/ReadVariableOpReadVariableOp'conv5_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv5_1/BiasAddBiasAddconv5_1/Conv2D:output:0&conv5_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv5_1/ReluReluconv5_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv5_2/Conv2D/ReadVariableOpReadVariableOp&conv5_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv5_2/Conv2DConv2Dconv5_1/Relu:activations:0%conv5_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv5_2/BiasAdd/ReadVariableOpReadVariableOp'conv5_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv5_2/BiasAddBiasAddconv5_2/Conv2D:output:0&conv5_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv5_2/ReluReluconv5_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv5_3/Conv2D/ReadVariableOpReadVariableOp&conv5_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv5_3/Conv2DConv2Dconv5_2/Relu:activations:0%conv5_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv5_3/BiasAdd/ReadVariableOpReadVariableOp'conv5_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv5_3/BiasAddBiasAddconv5_3/Conv2D:output:0&conv5_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv5_3/ReluReluconv5_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
pool5/MaxPoolMaxPoolconv5_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:� *
dtype0�
conv2d/Conv2DConv2Dpool5/MaxPool:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?�
dropout/dropout/MulMul max_pooling2d_1/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������@e
dropout/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*'
_output_shapes
:���������@�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp^conv1_1/BiasAdd/ReadVariableOp^conv1_1/Conv2D/ReadVariableOp^conv1_2/BiasAdd/ReadVariableOp^conv1_2/Conv2D/ReadVariableOp^conv2_1/BiasAdd/ReadVariableOp^conv2_1/Conv2D/ReadVariableOp^conv2_2/BiasAdd/ReadVariableOp^conv2_2/Conv2D/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^conv3_1/BiasAdd/ReadVariableOp^conv3_1/Conv2D/ReadVariableOp^conv3_2/BiasAdd/ReadVariableOp^conv3_2/Conv2D/ReadVariableOp^conv3_3/BiasAdd/ReadVariableOp^conv3_3/Conv2D/ReadVariableOp^conv4_1/BiasAdd/ReadVariableOp^conv4_1/Conv2D/ReadVariableOp^conv4_2/BiasAdd/ReadVariableOp^conv4_2/Conv2D/ReadVariableOp^conv4_3/BiasAdd/ReadVariableOp^conv4_3/Conv2D/ReadVariableOp^conv5_1/BiasAdd/ReadVariableOp^conv5_1/Conv2D/ReadVariableOp^conv5_2/BiasAdd/ReadVariableOp^conv5_2/Conv2D/ReadVariableOp^conv5_3/BiasAdd/ReadVariableOp^conv5_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv1_1/BiasAdd/ReadVariableOpconv1_1/BiasAdd/ReadVariableOp2>
conv1_1/Conv2D/ReadVariableOpconv1_1/Conv2D/ReadVariableOp2@
conv1_2/BiasAdd/ReadVariableOpconv1_2/BiasAdd/ReadVariableOp2>
conv1_2/Conv2D/ReadVariableOpconv1_2/Conv2D/ReadVariableOp2@
conv2_1/BiasAdd/ReadVariableOpconv2_1/BiasAdd/ReadVariableOp2>
conv2_1/Conv2D/ReadVariableOpconv2_1/Conv2D/ReadVariableOp2@
conv2_2/BiasAdd/ReadVariableOpconv2_2/BiasAdd/ReadVariableOp2>
conv2_2/Conv2D/ReadVariableOpconv2_2/Conv2D/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
conv3_1/BiasAdd/ReadVariableOpconv3_1/BiasAdd/ReadVariableOp2>
conv3_1/Conv2D/ReadVariableOpconv3_1/Conv2D/ReadVariableOp2@
conv3_2/BiasAdd/ReadVariableOpconv3_2/BiasAdd/ReadVariableOp2>
conv3_2/Conv2D/ReadVariableOpconv3_2/Conv2D/ReadVariableOp2@
conv3_3/BiasAdd/ReadVariableOpconv3_3/BiasAdd/ReadVariableOp2>
conv3_3/Conv2D/ReadVariableOpconv3_3/Conv2D/ReadVariableOp2@
conv4_1/BiasAdd/ReadVariableOpconv4_1/BiasAdd/ReadVariableOp2>
conv4_1/Conv2D/ReadVariableOpconv4_1/Conv2D/ReadVariableOp2@
conv4_2/BiasAdd/ReadVariableOpconv4_2/BiasAdd/ReadVariableOp2>
conv4_2/Conv2D/ReadVariableOpconv4_2/Conv2D/ReadVariableOp2@
conv4_3/BiasAdd/ReadVariableOpconv4_3/BiasAdd/ReadVariableOp2>
conv4_3/Conv2D/ReadVariableOpconv4_3/Conv2D/ReadVariableOp2@
conv5_1/BiasAdd/ReadVariableOpconv5_1/BiasAdd/ReadVariableOp2>
conv5_1/Conv2D/ReadVariableOpconv5_1/Conv2D/ReadVariableOp2@
conv5_2/BiasAdd/ReadVariableOpconv5_2/BiasAdd/ReadVariableOp2>
conv5_2/Conv2D/ReadVariableOpconv5_2/Conv2D/ReadVariableOp2@
conv5_3/BiasAdd/ReadVariableOpconv5_3/BiasAdd/ReadVariableOp2>
conv5_3/Conv2D/ReadVariableOpconv5_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_conv4_1_layer_call_fn_34095

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_1_layer_call_and_return_conditional_losses_32369x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_34255

inputs"
unknown:� 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_32483w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv4_3_layer_call_and_return_conditional_losses_32403

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv5_3_layer_call_and_return_conditional_losses_34226

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�	
%__inference_model_layer_call_fn_33613

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�%

unknown_25:� 

unknown_26: $

unknown_27: @

unknown_28:@

unknown_29:	@�

unknown_30:	�

unknown_31:	�

unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_33046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_conv1_1_layer_call_and_return_conditional_losses_33906

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�n
�
@__inference_model_layer_call_and_return_conditional_losses_32568

inputs'
conv1_1_32233:@
conv1_1_32235:@'
conv1_2_32250:@@
conv1_2_32252:@(
conv2_1_32273:@�
conv2_1_32275:	�)
conv2_2_32290:��
conv2_2_32292:	�)
conv3_1_32313:��
conv3_1_32315:	�)
conv3_2_32330:��
conv3_2_32332:	�)
conv3_3_32347:��
conv3_3_32349:	�)
conv4_1_32370:��
conv4_1_32372:	�)
conv4_2_32387:��
conv4_2_32389:	�)
conv4_3_32404:��
conv4_3_32406:	�)
conv5_1_32427:��
conv5_1_32429:	�)
conv5_2_32444:��
conv5_2_32446:	�)
conv5_3_32461:��
conv5_3_32463:	�'
conv2d_32484:� 
conv2d_32486: (
conv2d_1_32507: @
conv2d_1_32509:@
dense_32545:	@�
dense_32547:	� 
dense_1_32562:	�
dense_1_32564:
identity��conv1_1/StatefulPartitionedCall�conv1_2/StatefulPartitionedCall�conv2_1/StatefulPartitionedCall�conv2_2/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�conv3_1/StatefulPartitionedCall�conv3_2/StatefulPartitionedCall�conv3_3/StatefulPartitionedCall�conv4_1/StatefulPartitionedCall�conv4_2/StatefulPartitionedCall�conv4_3/StatefulPartitionedCall�conv5_1/StatefulPartitionedCall�conv5_2/StatefulPartitionedCall�conv5_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
conv1_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_1_32233conv1_1_32235*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_1_layer_call_and_return_conditional_losses_32232�
conv1_2/StatefulPartitionedCallStatefulPartitionedCall(conv1_1/StatefulPartitionedCall:output:0conv1_2_32250conv1_2_32252*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_2_layer_call_and_return_conditional_losses_32249�
pool1/PartitionedCallPartitionedCall(conv1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_32259�
conv2_1/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_1_32273conv2_1_32275*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_1_layer_call_and_return_conditional_losses_32272�
conv2_2/StatefulPartitionedCallStatefulPartitionedCall(conv2_1/StatefulPartitionedCall:output:0conv2_2_32290conv2_2_32292*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_2_layer_call_and_return_conditional_losses_32289�
pool2/PartitionedCallPartitionedCall(conv2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_32299�
conv3_1/StatefulPartitionedCallStatefulPartitionedCallpool2/PartitionedCall:output:0conv3_1_32313conv3_1_32315*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_1_layer_call_and_return_conditional_losses_32312�
conv3_2/StatefulPartitionedCallStatefulPartitionedCall(conv3_1/StatefulPartitionedCall:output:0conv3_2_32330conv3_2_32332*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_2_layer_call_and_return_conditional_losses_32329�
conv3_3/StatefulPartitionedCallStatefulPartitionedCall(conv3_2/StatefulPartitionedCall:output:0conv3_3_32347conv3_3_32349*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_3_layer_call_and_return_conditional_losses_32346�
pool3/PartitionedCallPartitionedCall(conv3_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool3_layer_call_and_return_conditional_losses_32356�
conv4_1/StatefulPartitionedCallStatefulPartitionedCallpool3/PartitionedCall:output:0conv4_1_32370conv4_1_32372*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_1_layer_call_and_return_conditional_losses_32369�
conv4_2/StatefulPartitionedCallStatefulPartitionedCall(conv4_1/StatefulPartitionedCall:output:0conv4_2_32387conv4_2_32389*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_2_layer_call_and_return_conditional_losses_32386�
conv4_3/StatefulPartitionedCallStatefulPartitionedCall(conv4_2/StatefulPartitionedCall:output:0conv4_3_32404conv4_3_32406*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_3_layer_call_and_return_conditional_losses_32403�
pool4/PartitionedCallPartitionedCall(conv4_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool4_layer_call_and_return_conditional_losses_32413�
conv5_1/StatefulPartitionedCallStatefulPartitionedCallpool4/PartitionedCall:output:0conv5_1_32427conv5_1_32429*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_1_layer_call_and_return_conditional_losses_32426�
conv5_2/StatefulPartitionedCallStatefulPartitionedCall(conv5_1/StatefulPartitionedCall:output:0conv5_2_32444conv5_2_32446*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_2_layer_call_and_return_conditional_losses_32443�
conv5_3/StatefulPartitionedCallStatefulPartitionedCall(conv5_2/StatefulPartitionedCall:output:0conv5_3_32461conv5_3_32463*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_3_layer_call_and_return_conditional_losses_32460�
pool5/PartitionedCallPartitionedCall(conv5_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool5_layer_call_and_return_conditional_losses_32470�
conv2d/StatefulPartitionedCallStatefulPartitionedCallpool5/PartitionedCall:output:0conv2d_32484conv2d_32486*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_32483�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32493�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_32507conv2d_1_32509*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_32506�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32516�
dropout/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_32523�
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_32531�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_32545dense_32547*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_32544�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_32562dense_1_32564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32561w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv1_1/StatefulPartitionedCall ^conv1_2/StatefulPartitionedCall ^conv2_1/StatefulPartitionedCall ^conv2_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^conv3_1/StatefulPartitionedCall ^conv3_2/StatefulPartitionedCall ^conv3_3/StatefulPartitionedCall ^conv4_1/StatefulPartitionedCall ^conv4_2/StatefulPartitionedCall ^conv4_3/StatefulPartitionedCall ^conv5_1/StatefulPartitionedCall ^conv5_2/StatefulPartitionedCall ^conv5_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
conv1_1/StatefulPartitionedCallconv1_1/StatefulPartitionedCall2B
conv1_2/StatefulPartitionedCallconv1_2/StatefulPartitionedCall2B
conv2_1/StatefulPartitionedCallconv2_1/StatefulPartitionedCall2B
conv2_2/StatefulPartitionedCallconv2_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
conv3_1/StatefulPartitionedCallconv3_1/StatefulPartitionedCall2B
conv3_2/StatefulPartitionedCallconv3_2/StatefulPartitionedCall2B
conv3_3/StatefulPartitionedCallconv3_3/StatefulPartitionedCall2B
conv4_1/StatefulPartitionedCallconv4_1/StatefulPartitionedCall2B
conv4_2/StatefulPartitionedCallconv4_2/StatefulPartitionedCall2B
conv4_3/StatefulPartitionedCallconv4_3/StatefulPartitionedCall2B
conv5_1/StatefulPartitionedCallconv5_1/StatefulPartitionedCall2B
conv5_2/StatefulPartitionedCallconv5_2/StatefulPartitionedCall2B
conv5_3/StatefulPartitionedCallconv5_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
\
@__inference_pool1_layer_call_and_return_conditional_losses_32139

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
\
@__inference_pool2_layer_call_and_return_conditional_losses_32299

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������88�*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������88�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������pp�:X T
0
_output_shapes
:���������pp�
 
_user_specified_nameinputs
�
\
@__inference_pool1_layer_call_and_return_conditional_losses_33941

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_conv3_3_layer_call_fn_34055

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_3_layer_call_and_return_conditional_losses_32346x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������88�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
A
%__inference_pool3_layer_call_fn_34076

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool3_layer_call_and_return_conditional_losses_32356i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������88�:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
�
'__inference_conv1_2_layer_call_fn_33915

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_2_layer_call_and_return_conditional_losses_32249y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_34341

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_1_layer_call_fn_34295

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_32506w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
B__inference_conv4_1_layer_call_and_return_conditional_losses_34106

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
A
%__inference_pool1_layer_call_fn_33931

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_32139�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_conv5_2_layer_call_fn_34195

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_2_layer_call_and_return_conditional_losses_32443x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
A
%__inference_pool4_layer_call_fn_34151

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool4_layer_call_and_return_conditional_losses_32175�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv2_2_layer_call_and_return_conditional_losses_33986

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������pp�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������pp�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������pp�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������pp�
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_32523

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
\
@__inference_pool3_layer_call_and_return_conditional_losses_34086

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������88�:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
�
'__inference_conv3_2_layer_call_fn_34035

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_2_layer_call_and_return_conditional_losses_32329x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������88�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
\
@__inference_pool5_layer_call_and_return_conditional_losses_32470

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv3_3_layer_call_and_return_conditional_losses_34066

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������88�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������88�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32211

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
A
%__inference_pool5_layer_call_fn_34231

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool5_layer_call_and_return_conditional_losses_32187�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_conv4_3_layer_call_fn_34135

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_3_layer_call_and_return_conditional_losses_32403x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv2_1_layer_call_and_return_conditional_losses_33966

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������pp�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������pp�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������pp@
 
_user_specified_nameinputs
�
A
%__inference_pool4_layer_call_fn_34156

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool4_layer_call_and_return_conditional_losses_32413i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv3_3_layer_call_and_return_conditional_losses_32346

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������88�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������88�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
�	
#__inference_signature_wrapper_33467
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�%

unknown_25:� 

unknown_26: $

unknown_27: @

unknown_28:@

unknown_29:	@�

unknown_30:	�

unknown_31:	�

unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_32130o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
I
-__inference_max_pooling2d_layer_call_fn_34271

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32199�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv5_1_layer_call_and_return_conditional_losses_34186

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv1_2_layer_call_and_return_conditional_losses_33926

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_32544

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_32483

inputs9
conv2d_readvariableop_resource:� -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:� *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
\
@__inference_pool3_layer_call_and_return_conditional_losses_32356

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������88�:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_34311

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32211�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_34266

inputs9
conv2d_readvariableop_resource:� -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:� *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
\
@__inference_pool2_layer_call_and_return_conditional_losses_34006

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������88�*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������88�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������pp�:X T
0
_output_shapes
:���������pp�
 
_user_specified_nameinputs
�
�
B__inference_conv3_1_layer_call_and_return_conditional_losses_32312

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������88�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������88�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
A
%__inference_pool3_layer_call_fn_34071

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool3_layer_call_and_return_conditional_losses_32163�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
\
@__inference_pool1_layer_call_and_return_conditional_losses_33946

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������pp@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������pp@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������@:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_34281

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32493

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_34373

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_32544p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
A
%__inference_pool2_layer_call_fn_33996

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_32299i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������88�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������pp�:X T
0
_output_shapes
:���������pp�
 
_user_specified_nameinputs
�
\
@__inference_pool3_layer_call_and_return_conditional_losses_32163

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv1_1_layer_call_and_return_conditional_losses_32232

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
C
'__inference_dropout_layer_call_fn_34331

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_32523h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
@__inference_model_layer_call_and_return_conditional_losses_33746

inputs@
&conv1_1_conv2d_readvariableop_resource:@5
'conv1_1_biasadd_readvariableop_resource:@@
&conv1_2_conv2d_readvariableop_resource:@@5
'conv1_2_biasadd_readvariableop_resource:@A
&conv2_1_conv2d_readvariableop_resource:@�6
'conv2_1_biasadd_readvariableop_resource:	�B
&conv2_2_conv2d_readvariableop_resource:��6
'conv2_2_biasadd_readvariableop_resource:	�B
&conv3_1_conv2d_readvariableop_resource:��6
'conv3_1_biasadd_readvariableop_resource:	�B
&conv3_2_conv2d_readvariableop_resource:��6
'conv3_2_biasadd_readvariableop_resource:	�B
&conv3_3_conv2d_readvariableop_resource:��6
'conv3_3_biasadd_readvariableop_resource:	�B
&conv4_1_conv2d_readvariableop_resource:��6
'conv4_1_biasadd_readvariableop_resource:	�B
&conv4_2_conv2d_readvariableop_resource:��6
'conv4_2_biasadd_readvariableop_resource:	�B
&conv4_3_conv2d_readvariableop_resource:��6
'conv4_3_biasadd_readvariableop_resource:	�B
&conv5_1_conv2d_readvariableop_resource:��6
'conv5_1_biasadd_readvariableop_resource:	�B
&conv5_2_conv2d_readvariableop_resource:��6
'conv5_2_biasadd_readvariableop_resource:	�B
&conv5_3_conv2d_readvariableop_resource:��6
'conv5_3_biasadd_readvariableop_resource:	�@
%conv2d_conv2d_readvariableop_resource:� 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@7
$dense_matmul_readvariableop_resource:	@�4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��conv1_1/BiasAdd/ReadVariableOp�conv1_1/Conv2D/ReadVariableOp�conv1_2/BiasAdd/ReadVariableOp�conv1_2/Conv2D/ReadVariableOp�conv2_1/BiasAdd/ReadVariableOp�conv2_1/Conv2D/ReadVariableOp�conv2_2/BiasAdd/ReadVariableOp�conv2_2/Conv2D/ReadVariableOp�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv3_1/BiasAdd/ReadVariableOp�conv3_1/Conv2D/ReadVariableOp�conv3_2/BiasAdd/ReadVariableOp�conv3_2/Conv2D/ReadVariableOp�conv3_3/BiasAdd/ReadVariableOp�conv3_3/Conv2D/ReadVariableOp�conv4_1/BiasAdd/ReadVariableOp�conv4_1/Conv2D/ReadVariableOp�conv4_2/BiasAdd/ReadVariableOp�conv4_2/Conv2D/ReadVariableOp�conv4_3/BiasAdd/ReadVariableOp�conv4_3/Conv2D/ReadVariableOp�conv5_1/BiasAdd/ReadVariableOp�conv5_1/Conv2D/ReadVariableOp�conv5_2/BiasAdd/ReadVariableOp�conv5_2/Conv2D/ReadVariableOp�conv5_3/BiasAdd/ReadVariableOp�conv5_3/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv1_1/Conv2D/ReadVariableOpReadVariableOp&conv1_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv1_1/Conv2DConv2Dinputs%conv1_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
conv1_1/BiasAdd/ReadVariableOpReadVariableOp'conv1_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv1_1/BiasAddBiasAddconv1_1/Conv2D:output:0&conv1_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@j
conv1_1/ReluReluconv1_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
conv1_2/Conv2D/ReadVariableOpReadVariableOp&conv1_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv1_2/Conv2DConv2Dconv1_1/Relu:activations:0%conv1_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
conv1_2/BiasAdd/ReadVariableOpReadVariableOp'conv1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv1_2/BiasAddBiasAddconv1_2/Conv2D:output:0&conv1_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@j
conv1_2/ReluReluconv1_2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
pool1/MaxPoolMaxPoolconv1_2/Relu:activations:0*/
_output_shapes
:���������pp@*
ksize
*
paddingVALID*
strides
�
conv2_1/Conv2D/ReadVariableOpReadVariableOp&conv2_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2_1/Conv2DConv2Dpool1/MaxPool:output:0%conv2_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
conv2_1/BiasAdd/ReadVariableOpReadVariableOp'conv2_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2_1/BiasAddBiasAddconv2_1/Conv2D:output:0&conv2_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�i
conv2_1/ReluReluconv2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������pp��
conv2_2/Conv2D/ReadVariableOpReadVariableOp&conv2_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2_2/Conv2DConv2Dconv2_1/Relu:activations:0%conv2_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
conv2_2/BiasAdd/ReadVariableOpReadVariableOp'conv2_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2_2/BiasAddBiasAddconv2_2/Conv2D:output:0&conv2_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�i
conv2_2/ReluReluconv2_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������pp��
pool2/MaxPoolMaxPoolconv2_2/Relu:activations:0*0
_output_shapes
:���������88�*
ksize
*
paddingVALID*
strides
�
conv3_1/Conv2D/ReadVariableOpReadVariableOp&conv3_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv3_1/Conv2DConv2Dpool2/MaxPool:output:0%conv3_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
conv3_1/BiasAdd/ReadVariableOpReadVariableOp'conv3_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3_1/BiasAddBiasAddconv3_1/Conv2D:output:0&conv3_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�i
conv3_1/ReluReluconv3_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
conv3_2/Conv2D/ReadVariableOpReadVariableOp&conv3_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv3_2/Conv2DConv2Dconv3_1/Relu:activations:0%conv3_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
conv3_2/BiasAdd/ReadVariableOpReadVariableOp'conv3_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3_2/BiasAddBiasAddconv3_2/Conv2D:output:0&conv3_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�i
conv3_2/ReluReluconv3_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
conv3_3/Conv2D/ReadVariableOpReadVariableOp&conv3_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv3_3/Conv2DConv2Dconv3_2/Relu:activations:0%conv3_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
conv3_3/BiasAdd/ReadVariableOpReadVariableOp'conv3_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv3_3/BiasAddBiasAddconv3_3/Conv2D:output:0&conv3_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�i
conv3_3/ReluReluconv3_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
pool3/MaxPoolMaxPoolconv3_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
conv4_1/Conv2D/ReadVariableOpReadVariableOp&conv4_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv4_1/Conv2DConv2Dpool3/MaxPool:output:0%conv4_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv4_1/BiasAdd/ReadVariableOpReadVariableOp'conv4_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv4_1/BiasAddBiasAddconv4_1/Conv2D:output:0&conv4_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv4_1/ReluReluconv4_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv4_2/Conv2D/ReadVariableOpReadVariableOp&conv4_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv4_2/Conv2DConv2Dconv4_1/Relu:activations:0%conv4_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv4_2/BiasAdd/ReadVariableOpReadVariableOp'conv4_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv4_2/BiasAddBiasAddconv4_2/Conv2D:output:0&conv4_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv4_2/ReluReluconv4_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv4_3/Conv2D/ReadVariableOpReadVariableOp&conv4_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv4_3/Conv2DConv2Dconv4_2/Relu:activations:0%conv4_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv4_3/BiasAdd/ReadVariableOpReadVariableOp'conv4_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv4_3/BiasAddBiasAddconv4_3/Conv2D:output:0&conv4_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv4_3/ReluReluconv4_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
pool4/MaxPoolMaxPoolconv4_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
conv5_1/Conv2D/ReadVariableOpReadVariableOp&conv5_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv5_1/Conv2DConv2Dpool4/MaxPool:output:0%conv5_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv5_1/BiasAdd/ReadVariableOpReadVariableOp'conv5_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv5_1/BiasAddBiasAddconv5_1/Conv2D:output:0&conv5_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv5_1/ReluReluconv5_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv5_2/Conv2D/ReadVariableOpReadVariableOp&conv5_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv5_2/Conv2DConv2Dconv5_1/Relu:activations:0%conv5_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv5_2/BiasAdd/ReadVariableOpReadVariableOp'conv5_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv5_2/BiasAddBiasAddconv5_2/Conv2D:output:0&conv5_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv5_2/ReluReluconv5_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv5_3/Conv2D/ReadVariableOpReadVariableOp&conv5_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv5_3/Conv2DConv2Dconv5_2/Relu:activations:0%conv5_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv5_3/BiasAdd/ReadVariableOpReadVariableOp'conv5_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv5_3/BiasAddBiasAddconv5_3/Conv2D:output:0&conv5_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������i
conv5_3/ReluReluconv5_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
pool5/MaxPoolMaxPoolconv5_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:� *
dtype0�
conv2d/Conv2DConv2Dpool5/MaxPool:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
x
dropout/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:���������@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������@�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp^conv1_1/BiasAdd/ReadVariableOp^conv1_1/Conv2D/ReadVariableOp^conv1_2/BiasAdd/ReadVariableOp^conv1_2/Conv2D/ReadVariableOp^conv2_1/BiasAdd/ReadVariableOp^conv2_1/Conv2D/ReadVariableOp^conv2_2/BiasAdd/ReadVariableOp^conv2_2/Conv2D/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^conv3_1/BiasAdd/ReadVariableOp^conv3_1/Conv2D/ReadVariableOp^conv3_2/BiasAdd/ReadVariableOp^conv3_2/Conv2D/ReadVariableOp^conv3_3/BiasAdd/ReadVariableOp^conv3_3/Conv2D/ReadVariableOp^conv4_1/BiasAdd/ReadVariableOp^conv4_1/Conv2D/ReadVariableOp^conv4_2/BiasAdd/ReadVariableOp^conv4_2/Conv2D/ReadVariableOp^conv4_3/BiasAdd/ReadVariableOp^conv4_3/Conv2D/ReadVariableOp^conv5_1/BiasAdd/ReadVariableOp^conv5_1/Conv2D/ReadVariableOp^conv5_2/BiasAdd/ReadVariableOp^conv5_2/Conv2D/ReadVariableOp^conv5_3/BiasAdd/ReadVariableOp^conv5_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv1_1/BiasAdd/ReadVariableOpconv1_1/BiasAdd/ReadVariableOp2>
conv1_1/Conv2D/ReadVariableOpconv1_1/Conv2D/ReadVariableOp2@
conv1_2/BiasAdd/ReadVariableOpconv1_2/BiasAdd/ReadVariableOp2>
conv1_2/Conv2D/ReadVariableOpconv1_2/Conv2D/ReadVariableOp2@
conv2_1/BiasAdd/ReadVariableOpconv2_1/BiasAdd/ReadVariableOp2>
conv2_1/Conv2D/ReadVariableOpconv2_1/Conv2D/ReadVariableOp2@
conv2_2/BiasAdd/ReadVariableOpconv2_2/BiasAdd/ReadVariableOp2>
conv2_2/Conv2D/ReadVariableOpconv2_2/Conv2D/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2@
conv3_1/BiasAdd/ReadVariableOpconv3_1/BiasAdd/ReadVariableOp2>
conv3_1/Conv2D/ReadVariableOpconv3_1/Conv2D/ReadVariableOp2@
conv3_2/BiasAdd/ReadVariableOpconv3_2/BiasAdd/ReadVariableOp2>
conv3_2/Conv2D/ReadVariableOpconv3_2/Conv2D/ReadVariableOp2@
conv3_3/BiasAdd/ReadVariableOpconv3_3/BiasAdd/ReadVariableOp2>
conv3_3/Conv2D/ReadVariableOpconv3_3/Conv2D/ReadVariableOp2@
conv4_1/BiasAdd/ReadVariableOpconv4_1/BiasAdd/ReadVariableOp2>
conv4_1/Conv2D/ReadVariableOpconv4_1/Conv2D/ReadVariableOp2@
conv4_2/BiasAdd/ReadVariableOpconv4_2/BiasAdd/ReadVariableOp2>
conv4_2/Conv2D/ReadVariableOpconv4_2/Conv2D/ReadVariableOp2@
conv4_3/BiasAdd/ReadVariableOpconv4_3/BiasAdd/ReadVariableOp2>
conv4_3/Conv2D/ReadVariableOpconv4_3/Conv2D/ReadVariableOp2@
conv5_1/BiasAdd/ReadVariableOpconv5_1/BiasAdd/ReadVariableOp2>
conv5_1/Conv2D/ReadVariableOpconv5_1/Conv2D/ReadVariableOp2@
conv5_2/BiasAdd/ReadVariableOpconv5_2/BiasAdd/ReadVariableOp2>
conv5_2/Conv2D/ReadVariableOpconv5_2/Conv2D/ReadVariableOp2@
conv5_3/BiasAdd/ReadVariableOpconv5_3/BiasAdd/ReadVariableOp2>
conv5_3/Conv2D/ReadVariableOpconv5_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_conv4_3_layer_call_and_return_conditional_losses_34146

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_conv1_1_layer_call_fn_33895

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_1_layer_call_and_return_conditional_losses_32232y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
δ
�
 __inference__wrapped_model_32130
input_1F
,model_conv1_1_conv2d_readvariableop_resource:@;
-model_conv1_1_biasadd_readvariableop_resource:@F
,model_conv1_2_conv2d_readvariableop_resource:@@;
-model_conv1_2_biasadd_readvariableop_resource:@G
,model_conv2_1_conv2d_readvariableop_resource:@�<
-model_conv2_1_biasadd_readvariableop_resource:	�H
,model_conv2_2_conv2d_readvariableop_resource:��<
-model_conv2_2_biasadd_readvariableop_resource:	�H
,model_conv3_1_conv2d_readvariableop_resource:��<
-model_conv3_1_biasadd_readvariableop_resource:	�H
,model_conv3_2_conv2d_readvariableop_resource:��<
-model_conv3_2_biasadd_readvariableop_resource:	�H
,model_conv3_3_conv2d_readvariableop_resource:��<
-model_conv3_3_biasadd_readvariableop_resource:	�H
,model_conv4_1_conv2d_readvariableop_resource:��<
-model_conv4_1_biasadd_readvariableop_resource:	�H
,model_conv4_2_conv2d_readvariableop_resource:��<
-model_conv4_2_biasadd_readvariableop_resource:	�H
,model_conv4_3_conv2d_readvariableop_resource:��<
-model_conv4_3_biasadd_readvariableop_resource:	�H
,model_conv5_1_conv2d_readvariableop_resource:��<
-model_conv5_1_biasadd_readvariableop_resource:	�H
,model_conv5_2_conv2d_readvariableop_resource:��<
-model_conv5_2_biasadd_readvariableop_resource:	�H
,model_conv5_3_conv2d_readvariableop_resource:��<
-model_conv5_3_biasadd_readvariableop_resource:	�F
+model_conv2d_conv2d_readvariableop_resource:� :
,model_conv2d_biasadd_readvariableop_resource: G
-model_conv2d_1_conv2d_readvariableop_resource: @<
.model_conv2d_1_biasadd_readvariableop_resource:@=
*model_dense_matmul_readvariableop_resource:	@�:
+model_dense_biasadd_readvariableop_resource:	�?
,model_dense_1_matmul_readvariableop_resource:	�;
-model_dense_1_biasadd_readvariableop_resource:
identity��$model/conv1_1/BiasAdd/ReadVariableOp�#model/conv1_1/Conv2D/ReadVariableOp�$model/conv1_2/BiasAdd/ReadVariableOp�#model/conv1_2/Conv2D/ReadVariableOp�$model/conv2_1/BiasAdd/ReadVariableOp�#model/conv2_1/Conv2D/ReadVariableOp�$model/conv2_2/BiasAdd/ReadVariableOp�#model/conv2_2/Conv2D/ReadVariableOp�#model/conv2d/BiasAdd/ReadVariableOp�"model/conv2d/Conv2D/ReadVariableOp�%model/conv2d_1/BiasAdd/ReadVariableOp�$model/conv2d_1/Conv2D/ReadVariableOp�$model/conv3_1/BiasAdd/ReadVariableOp�#model/conv3_1/Conv2D/ReadVariableOp�$model/conv3_2/BiasAdd/ReadVariableOp�#model/conv3_2/Conv2D/ReadVariableOp�$model/conv3_3/BiasAdd/ReadVariableOp�#model/conv3_3/Conv2D/ReadVariableOp�$model/conv4_1/BiasAdd/ReadVariableOp�#model/conv4_1/Conv2D/ReadVariableOp�$model/conv4_2/BiasAdd/ReadVariableOp�#model/conv4_2/Conv2D/ReadVariableOp�$model/conv4_3/BiasAdd/ReadVariableOp�#model/conv4_3/Conv2D/ReadVariableOp�$model/conv5_1/BiasAdd/ReadVariableOp�#model/conv5_1/Conv2D/ReadVariableOp�$model/conv5_2/BiasAdd/ReadVariableOp�#model/conv5_2/Conv2D/ReadVariableOp�$model/conv5_3/BiasAdd/ReadVariableOp�#model/conv5_3/Conv2D/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�
#model/conv1_1/Conv2D/ReadVariableOpReadVariableOp,model_conv1_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
model/conv1_1/Conv2DConv2Dinput_1+model/conv1_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
$model/conv1_1/BiasAdd/ReadVariableOpReadVariableOp-model_conv1_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv1_1/BiasAddBiasAddmodel/conv1_1/Conv2D:output:0,model/conv1_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@v
model/conv1_1/ReluRelumodel/conv1_1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
#model/conv1_2/Conv2D/ReadVariableOpReadVariableOp,model_conv1_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model/conv1_2/Conv2DConv2D model/conv1_1/Relu:activations:0+model/conv1_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
$model/conv1_2/BiasAdd/ReadVariableOpReadVariableOp-model_conv1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv1_2/BiasAddBiasAddmodel/conv1_2/Conv2D:output:0,model/conv1_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@v
model/conv1_2/ReluRelumodel/conv1_2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
model/pool1/MaxPoolMaxPool model/conv1_2/Relu:activations:0*/
_output_shapes
:���������pp@*
ksize
*
paddingVALID*
strides
�
#model/conv2_1/Conv2D/ReadVariableOpReadVariableOp,model_conv2_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
model/conv2_1/Conv2DConv2Dmodel/pool1/MaxPool:output:0+model/conv2_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
$model/conv2_1/BiasAdd/ReadVariableOpReadVariableOp-model_conv2_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv2_1/BiasAddBiasAddmodel/conv2_1/Conv2D:output:0,model/conv2_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�u
model/conv2_1/ReluRelumodel/conv2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������pp��
#model/conv2_2/Conv2D/ReadVariableOpReadVariableOp,model_conv2_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv2_2/Conv2DConv2D model/conv2_1/Relu:activations:0+model/conv2_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
$model/conv2_2/BiasAdd/ReadVariableOpReadVariableOp-model_conv2_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv2_2/BiasAddBiasAddmodel/conv2_2/Conv2D:output:0,model/conv2_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�u
model/conv2_2/ReluRelumodel/conv2_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������pp��
model/pool2/MaxPoolMaxPool model/conv2_2/Relu:activations:0*0
_output_shapes
:���������88�*
ksize
*
paddingVALID*
strides
�
#model/conv3_1/Conv2D/ReadVariableOpReadVariableOp,model_conv3_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv3_1/Conv2DConv2Dmodel/pool2/MaxPool:output:0+model/conv3_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
$model/conv3_1/BiasAdd/ReadVariableOpReadVariableOp-model_conv3_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv3_1/BiasAddBiasAddmodel/conv3_1/Conv2D:output:0,model/conv3_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�u
model/conv3_1/ReluRelumodel/conv3_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
#model/conv3_2/Conv2D/ReadVariableOpReadVariableOp,model_conv3_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv3_2/Conv2DConv2D model/conv3_1/Relu:activations:0+model/conv3_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
$model/conv3_2/BiasAdd/ReadVariableOpReadVariableOp-model_conv3_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv3_2/BiasAddBiasAddmodel/conv3_2/Conv2D:output:0,model/conv3_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�u
model/conv3_2/ReluRelumodel/conv3_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
#model/conv3_3/Conv2D/ReadVariableOpReadVariableOp,model_conv3_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv3_3/Conv2DConv2D model/conv3_2/Relu:activations:0+model/conv3_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
$model/conv3_3/BiasAdd/ReadVariableOpReadVariableOp-model_conv3_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv3_3/BiasAddBiasAddmodel/conv3_3/Conv2D:output:0,model/conv3_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�u
model/conv3_3/ReluRelumodel/conv3_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������88��
model/pool3/MaxPoolMaxPool model/conv3_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
#model/conv4_1/Conv2D/ReadVariableOpReadVariableOp,model_conv4_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv4_1/Conv2DConv2Dmodel/pool3/MaxPool:output:0+model/conv4_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
$model/conv4_1/BiasAdd/ReadVariableOpReadVariableOp-model_conv4_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv4_1/BiasAddBiasAddmodel/conv4_1/Conv2D:output:0,model/conv4_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������u
model/conv4_1/ReluRelumodel/conv4_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
#model/conv4_2/Conv2D/ReadVariableOpReadVariableOp,model_conv4_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv4_2/Conv2DConv2D model/conv4_1/Relu:activations:0+model/conv4_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
$model/conv4_2/BiasAdd/ReadVariableOpReadVariableOp-model_conv4_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv4_2/BiasAddBiasAddmodel/conv4_2/Conv2D:output:0,model/conv4_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������u
model/conv4_2/ReluRelumodel/conv4_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
#model/conv4_3/Conv2D/ReadVariableOpReadVariableOp,model_conv4_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv4_3/Conv2DConv2D model/conv4_2/Relu:activations:0+model/conv4_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
$model/conv4_3/BiasAdd/ReadVariableOpReadVariableOp-model_conv4_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv4_3/BiasAddBiasAddmodel/conv4_3/Conv2D:output:0,model/conv4_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������u
model/conv4_3/ReluRelumodel/conv4_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
model/pool4/MaxPoolMaxPool model/conv4_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
#model/conv5_1/Conv2D/ReadVariableOpReadVariableOp,model_conv5_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv5_1/Conv2DConv2Dmodel/pool4/MaxPool:output:0+model/conv5_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
$model/conv5_1/BiasAdd/ReadVariableOpReadVariableOp-model_conv5_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv5_1/BiasAddBiasAddmodel/conv5_1/Conv2D:output:0,model/conv5_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������u
model/conv5_1/ReluRelumodel/conv5_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
#model/conv5_2/Conv2D/ReadVariableOpReadVariableOp,model_conv5_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv5_2/Conv2DConv2D model/conv5_1/Relu:activations:0+model/conv5_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
$model/conv5_2/BiasAdd/ReadVariableOpReadVariableOp-model_conv5_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv5_2/BiasAddBiasAddmodel/conv5_2/Conv2D:output:0,model/conv5_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������u
model/conv5_2/ReluRelumodel/conv5_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
#model/conv5_3/Conv2D/ReadVariableOpReadVariableOp,model_conv5_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv5_3/Conv2DConv2D model/conv5_2/Relu:activations:0+model/conv5_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
$model/conv5_3/BiasAdd/ReadVariableOpReadVariableOp-model_conv5_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv5_3/BiasAddBiasAddmodel/conv5_3/Conv2D:output:0,model/conv5_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������u
model/conv5_3/ReluRelumodel/conv5_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
model/pool5/MaxPoolMaxPool model/conv5_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:� *
dtype0�
model/conv2d/Conv2DConv2Dmodel/pool5/MaxPool:output:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� r
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
model/max_pooling2d/MaxPoolMaxPoolmodel/conv2d/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model/conv2d_1/Conv2DConv2D$model/max_pooling2d/MaxPool:output:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@v
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
model/max_pooling2d_1/MaxPoolMaxPool!model/conv2d_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
model/dropout/IdentityIdentity&model/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:���������@d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   �
model/flatten/ReshapeReshapemodel/dropout/Identity:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:���������@�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_1/SoftmaxSoftmaxmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp%^model/conv1_1/BiasAdd/ReadVariableOp$^model/conv1_1/Conv2D/ReadVariableOp%^model/conv1_2/BiasAdd/ReadVariableOp$^model/conv1_2/Conv2D/ReadVariableOp%^model/conv2_1/BiasAdd/ReadVariableOp$^model/conv2_1/Conv2D/ReadVariableOp%^model/conv2_2/BiasAdd/ReadVariableOp$^model/conv2_2/Conv2D/ReadVariableOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp%^model/conv3_1/BiasAdd/ReadVariableOp$^model/conv3_1/Conv2D/ReadVariableOp%^model/conv3_2/BiasAdd/ReadVariableOp$^model/conv3_2/Conv2D/ReadVariableOp%^model/conv3_3/BiasAdd/ReadVariableOp$^model/conv3_3/Conv2D/ReadVariableOp%^model/conv4_1/BiasAdd/ReadVariableOp$^model/conv4_1/Conv2D/ReadVariableOp%^model/conv4_2/BiasAdd/ReadVariableOp$^model/conv4_2/Conv2D/ReadVariableOp%^model/conv4_3/BiasAdd/ReadVariableOp$^model/conv4_3/Conv2D/ReadVariableOp%^model/conv5_1/BiasAdd/ReadVariableOp$^model/conv5_1/Conv2D/ReadVariableOp%^model/conv5_2/BiasAdd/ReadVariableOp$^model/conv5_2/Conv2D/ReadVariableOp%^model/conv5_3/BiasAdd/ReadVariableOp$^model/conv5_3/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model/conv1_1/BiasAdd/ReadVariableOp$model/conv1_1/BiasAdd/ReadVariableOp2J
#model/conv1_1/Conv2D/ReadVariableOp#model/conv1_1/Conv2D/ReadVariableOp2L
$model/conv1_2/BiasAdd/ReadVariableOp$model/conv1_2/BiasAdd/ReadVariableOp2J
#model/conv1_2/Conv2D/ReadVariableOp#model/conv1_2/Conv2D/ReadVariableOp2L
$model/conv2_1/BiasAdd/ReadVariableOp$model/conv2_1/BiasAdd/ReadVariableOp2J
#model/conv2_1/Conv2D/ReadVariableOp#model/conv2_1/Conv2D/ReadVariableOp2L
$model/conv2_2/BiasAdd/ReadVariableOp$model/conv2_2/BiasAdd/ReadVariableOp2J
#model/conv2_2/Conv2D/ReadVariableOp#model/conv2_2/Conv2D/ReadVariableOp2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2L
$model/conv3_1/BiasAdd/ReadVariableOp$model/conv3_1/BiasAdd/ReadVariableOp2J
#model/conv3_1/Conv2D/ReadVariableOp#model/conv3_1/Conv2D/ReadVariableOp2L
$model/conv3_2/BiasAdd/ReadVariableOp$model/conv3_2/BiasAdd/ReadVariableOp2J
#model/conv3_2/Conv2D/ReadVariableOp#model/conv3_2/Conv2D/ReadVariableOp2L
$model/conv3_3/BiasAdd/ReadVariableOp$model/conv3_3/BiasAdd/ReadVariableOp2J
#model/conv3_3/Conv2D/ReadVariableOp#model/conv3_3/Conv2D/ReadVariableOp2L
$model/conv4_1/BiasAdd/ReadVariableOp$model/conv4_1/BiasAdd/ReadVariableOp2J
#model/conv4_1/Conv2D/ReadVariableOp#model/conv4_1/Conv2D/ReadVariableOp2L
$model/conv4_2/BiasAdd/ReadVariableOp$model/conv4_2/BiasAdd/ReadVariableOp2J
#model/conv4_2/Conv2D/ReadVariableOp#model/conv4_2/Conv2D/ReadVariableOp2L
$model/conv4_3/BiasAdd/ReadVariableOp$model/conv4_3/BiasAdd/ReadVariableOp2J
#model/conv4_3/Conv2D/ReadVariableOp#model/conv4_3/Conv2D/ReadVariableOp2L
$model/conv5_1/BiasAdd/ReadVariableOp$model/conv5_1/BiasAdd/ReadVariableOp2J
#model/conv5_1/Conv2D/ReadVariableOp#model/conv5_1/Conv2D/ReadVariableOp2L
$model/conv5_2/BiasAdd/ReadVariableOp$model/conv5_2/BiasAdd/ReadVariableOp2J
#model/conv5_2/Conv2D/ReadVariableOp#model/conv5_2/Conv2D/ReadVariableOp2L
$model/conv5_3/BiasAdd/ReadVariableOp$model/conv5_3/BiasAdd/ReadVariableOp2J
#model/conv5_3/Conv2D/ReadVariableOp#model/conv5_3/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�o
�
@__inference_model_layer_call_and_return_conditional_losses_33386
input_1'
conv1_1_33291:@
conv1_1_33293:@'
conv1_2_33296:@@
conv1_2_33298:@(
conv2_1_33302:@�
conv2_1_33304:	�)
conv2_2_33307:��
conv2_2_33309:	�)
conv3_1_33313:��
conv3_1_33315:	�)
conv3_2_33318:��
conv3_2_33320:	�)
conv3_3_33323:��
conv3_3_33325:	�)
conv4_1_33329:��
conv4_1_33331:	�)
conv4_2_33334:��
conv4_2_33336:	�)
conv4_3_33339:��
conv4_3_33341:	�)
conv5_1_33345:��
conv5_1_33347:	�)
conv5_2_33350:��
conv5_2_33352:	�)
conv5_3_33355:��
conv5_3_33357:	�'
conv2d_33361:� 
conv2d_33363: (
conv2d_1_33367: @
conv2d_1_33369:@
dense_33375:	@�
dense_33377:	� 
dense_1_33380:	�
dense_1_33382:
identity��conv1_1/StatefulPartitionedCall�conv1_2/StatefulPartitionedCall�conv2_1/StatefulPartitionedCall�conv2_2/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�conv3_1/StatefulPartitionedCall�conv3_2/StatefulPartitionedCall�conv3_3/StatefulPartitionedCall�conv4_1/StatefulPartitionedCall�conv4_2/StatefulPartitionedCall�conv4_3/StatefulPartitionedCall�conv5_1/StatefulPartitionedCall�conv5_2/StatefulPartitionedCall�conv5_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�
conv1_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1_1_33291conv1_1_33293*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_1_layer_call_and_return_conditional_losses_32232�
conv1_2/StatefulPartitionedCallStatefulPartitionedCall(conv1_1/StatefulPartitionedCall:output:0conv1_2_33296conv1_2_33298*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_2_layer_call_and_return_conditional_losses_32249�
pool1/PartitionedCallPartitionedCall(conv1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_32259�
conv2_1/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_1_33302conv2_1_33304*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_1_layer_call_and_return_conditional_losses_32272�
conv2_2/StatefulPartitionedCallStatefulPartitionedCall(conv2_1/StatefulPartitionedCall:output:0conv2_2_33307conv2_2_33309*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_2_layer_call_and_return_conditional_losses_32289�
pool2/PartitionedCallPartitionedCall(conv2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_32299�
conv3_1/StatefulPartitionedCallStatefulPartitionedCallpool2/PartitionedCall:output:0conv3_1_33313conv3_1_33315*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_1_layer_call_and_return_conditional_losses_32312�
conv3_2/StatefulPartitionedCallStatefulPartitionedCall(conv3_1/StatefulPartitionedCall:output:0conv3_2_33318conv3_2_33320*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_2_layer_call_and_return_conditional_losses_32329�
conv3_3/StatefulPartitionedCallStatefulPartitionedCall(conv3_2/StatefulPartitionedCall:output:0conv3_3_33323conv3_3_33325*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_3_layer_call_and_return_conditional_losses_32346�
pool3/PartitionedCallPartitionedCall(conv3_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool3_layer_call_and_return_conditional_losses_32356�
conv4_1/StatefulPartitionedCallStatefulPartitionedCallpool3/PartitionedCall:output:0conv4_1_33329conv4_1_33331*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_1_layer_call_and_return_conditional_losses_32369�
conv4_2/StatefulPartitionedCallStatefulPartitionedCall(conv4_1/StatefulPartitionedCall:output:0conv4_2_33334conv4_2_33336*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_2_layer_call_and_return_conditional_losses_32386�
conv4_3/StatefulPartitionedCallStatefulPartitionedCall(conv4_2/StatefulPartitionedCall:output:0conv4_3_33339conv4_3_33341*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_3_layer_call_and_return_conditional_losses_32403�
pool4/PartitionedCallPartitionedCall(conv4_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool4_layer_call_and_return_conditional_losses_32413�
conv5_1/StatefulPartitionedCallStatefulPartitionedCallpool4/PartitionedCall:output:0conv5_1_33345conv5_1_33347*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_1_layer_call_and_return_conditional_losses_32426�
conv5_2/StatefulPartitionedCallStatefulPartitionedCall(conv5_1/StatefulPartitionedCall:output:0conv5_2_33350conv5_2_33352*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_2_layer_call_and_return_conditional_losses_32443�
conv5_3/StatefulPartitionedCallStatefulPartitionedCall(conv5_2/StatefulPartitionedCall:output:0conv5_3_33355conv5_3_33357*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_3_layer_call_and_return_conditional_losses_32460�
pool5/PartitionedCallPartitionedCall(conv5_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool5_layer_call_and_return_conditional_losses_32470�
conv2d/StatefulPartitionedCallStatefulPartitionedCallpool5/PartitionedCall:output:0conv2d_33361conv2d_33363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_32483�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32493�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_33367conv2d_1_33369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_32506�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32516�
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_32685�
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_32531�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_33375dense_33377*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_32544�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_33380dense_1_33382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32561w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv1_1/StatefulPartitionedCall ^conv1_2/StatefulPartitionedCall ^conv2_1/StatefulPartitionedCall ^conv2_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^conv3_1/StatefulPartitionedCall ^conv3_2/StatefulPartitionedCall ^conv3_3/StatefulPartitionedCall ^conv4_1/StatefulPartitionedCall ^conv4_2/StatefulPartitionedCall ^conv4_3/StatefulPartitionedCall ^conv5_1/StatefulPartitionedCall ^conv5_2/StatefulPartitionedCall ^conv5_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
conv1_1/StatefulPartitionedCallconv1_1/StatefulPartitionedCall2B
conv1_2/StatefulPartitionedCallconv1_2/StatefulPartitionedCall2B
conv2_1/StatefulPartitionedCallconv2_1/StatefulPartitionedCall2B
conv2_2/StatefulPartitionedCallconv2_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
conv3_1/StatefulPartitionedCallconv3_1/StatefulPartitionedCall2B
conv3_2/StatefulPartitionedCallconv3_2/StatefulPartitionedCall2B
conv3_3/StatefulPartitionedCallconv3_3/StatefulPartitionedCall2B
conv4_1/StatefulPartitionedCallconv4_1/StatefulPartitionedCall2B
conv4_2/StatefulPartitionedCallconv4_2/StatefulPartitionedCall2B
conv4_3/StatefulPartitionedCallconv4_3/StatefulPartitionedCall2B
conv5_1/StatefulPartitionedCallconv5_1/StatefulPartitionedCall2B
conv5_2/StatefulPartitionedCallconv5_2/StatefulPartitionedCall2B
conv5_3/StatefulPartitionedCallconv5_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
'__inference_conv5_1_layer_call_fn_34175

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_1_layer_call_and_return_conditional_losses_32426x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_conv4_2_layer_call_fn_34115

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_2_layer_call_and_return_conditional_losses_32386x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_34306

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_34353

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�	
%__inference_model_layer_call_fn_33190
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�%

unknown_25:� 

unknown_26: $

unknown_27: @

unknown_28:@

unknown_29:	@�

unknown_30:	�

unknown_31:	�

unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_33046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_34321

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
\
@__inference_pool1_layer_call_and_return_conditional_losses_32259

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������pp@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������pp@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������@:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32199

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_32531

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_32685

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
B__inference_conv4_2_layer_call_and_return_conditional_losses_32386

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_34316

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32516h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_34404

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
\
@__inference_pool4_layer_call_and_return_conditional_losses_32413

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv5_3_layer_call_and_return_conditional_losses_32460

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_conv5_3_layer_call_fn_34215

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_3_layer_call_and_return_conditional_losses_32460x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
\
@__inference_pool5_layer_call_and_return_conditional_losses_34246

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
\
@__inference_pool3_layer_call_and_return_conditional_losses_34081

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv4_1_layer_call_and_return_conditional_losses_32369

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
\
@__inference_pool5_layer_call_and_return_conditional_losses_34241

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
\
@__inference_pool4_layer_call_and_return_conditional_losses_34166

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_34384

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
'__inference_conv2_2_layer_call_fn_33975

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_2_layer_call_and_return_conditional_losses_32289x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������pp�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������pp�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������pp�
 
_user_specified_nameinputs
�
�
B__inference_conv3_2_layer_call_and_return_conditional_losses_32329

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������88�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������88�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
�
B__inference_conv3_2_layer_call_and_return_conditional_losses_34046

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������88�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������88�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_34393

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv2_2_layer_call_and_return_conditional_losses_32289

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������pp�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������pp�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������pp�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������pp�
 
_user_specified_nameinputs
�
`
'__inference_dropout_layer_call_fn_34336

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_32685w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
B__inference_conv1_2_layer_call_and_return_conditional_losses_32249

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
\
@__inference_pool4_layer_call_and_return_conditional_losses_32175

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_conv3_1_layer_call_fn_34015

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_1_layer_call_and_return_conditional_losses_32312x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������88�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������88�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������88�
 
_user_specified_nameinputs
�
�
B__inference_conv5_2_layer_call_and_return_conditional_losses_34206

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�n
�
@__inference_model_layer_call_and_return_conditional_losses_33288
input_1'
conv1_1_33193:@
conv1_1_33195:@'
conv1_2_33198:@@
conv1_2_33200:@(
conv2_1_33204:@�
conv2_1_33206:	�)
conv2_2_33209:��
conv2_2_33211:	�)
conv3_1_33215:��
conv3_1_33217:	�)
conv3_2_33220:��
conv3_2_33222:	�)
conv3_3_33225:��
conv3_3_33227:	�)
conv4_1_33231:��
conv4_1_33233:	�)
conv4_2_33236:��
conv4_2_33238:	�)
conv4_3_33241:��
conv4_3_33243:	�)
conv5_1_33247:��
conv5_1_33249:	�)
conv5_2_33252:��
conv5_2_33254:	�)
conv5_3_33257:��
conv5_3_33259:	�'
conv2d_33263:� 
conv2d_33265: (
conv2d_1_33269: @
conv2d_1_33271:@
dense_33277:	@�
dense_33279:	� 
dense_1_33282:	�
dense_1_33284:
identity��conv1_1/StatefulPartitionedCall�conv1_2/StatefulPartitionedCall�conv2_1/StatefulPartitionedCall�conv2_2/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�conv3_1/StatefulPartitionedCall�conv3_2/StatefulPartitionedCall�conv3_3/StatefulPartitionedCall�conv4_1/StatefulPartitionedCall�conv4_2/StatefulPartitionedCall�conv4_3/StatefulPartitionedCall�conv5_1/StatefulPartitionedCall�conv5_2/StatefulPartitionedCall�conv5_3/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
conv1_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1_1_33193conv1_1_33195*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_1_layer_call_and_return_conditional_losses_32232�
conv1_2/StatefulPartitionedCallStatefulPartitionedCall(conv1_1/StatefulPartitionedCall:output:0conv1_2_33198conv1_2_33200*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv1_2_layer_call_and_return_conditional_losses_32249�
pool1/PartitionedCallPartitionedCall(conv1_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_32259�
conv2_1/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_1_33204conv2_1_33206*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_1_layer_call_and_return_conditional_losses_32272�
conv2_2/StatefulPartitionedCallStatefulPartitionedCall(conv2_1/StatefulPartitionedCall:output:0conv2_2_33209conv2_2_33211*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������pp�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2_2_layer_call_and_return_conditional_losses_32289�
pool2/PartitionedCallPartitionedCall(conv2_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_32299�
conv3_1/StatefulPartitionedCallStatefulPartitionedCallpool2/PartitionedCall:output:0conv3_1_33215conv3_1_33217*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_1_layer_call_and_return_conditional_losses_32312�
conv3_2/StatefulPartitionedCallStatefulPartitionedCall(conv3_1/StatefulPartitionedCall:output:0conv3_2_33220conv3_2_33222*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_2_layer_call_and_return_conditional_losses_32329�
conv3_3/StatefulPartitionedCallStatefulPartitionedCall(conv3_2/StatefulPartitionedCall:output:0conv3_3_33225conv3_3_33227*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������88�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv3_3_layer_call_and_return_conditional_losses_32346�
pool3/PartitionedCallPartitionedCall(conv3_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool3_layer_call_and_return_conditional_losses_32356�
conv4_1/StatefulPartitionedCallStatefulPartitionedCallpool3/PartitionedCall:output:0conv4_1_33231conv4_1_33233*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_1_layer_call_and_return_conditional_losses_32369�
conv4_2/StatefulPartitionedCallStatefulPartitionedCall(conv4_1/StatefulPartitionedCall:output:0conv4_2_33236conv4_2_33238*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_2_layer_call_and_return_conditional_losses_32386�
conv4_3/StatefulPartitionedCallStatefulPartitionedCall(conv4_2/StatefulPartitionedCall:output:0conv4_3_33241conv4_3_33243*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv4_3_layer_call_and_return_conditional_losses_32403�
pool4/PartitionedCallPartitionedCall(conv4_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool4_layer_call_and_return_conditional_losses_32413�
conv5_1/StatefulPartitionedCallStatefulPartitionedCallpool4/PartitionedCall:output:0conv5_1_33247conv5_1_33249*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_1_layer_call_and_return_conditional_losses_32426�
conv5_2/StatefulPartitionedCallStatefulPartitionedCall(conv5_1/StatefulPartitionedCall:output:0conv5_2_33252conv5_2_33254*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_2_layer_call_and_return_conditional_losses_32443�
conv5_3/StatefulPartitionedCallStatefulPartitionedCall(conv5_2/StatefulPartitionedCall:output:0conv5_3_33257conv5_3_33259*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv5_3_layer_call_and_return_conditional_losses_32460�
pool5/PartitionedCallPartitionedCall(conv5_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool5_layer_call_and_return_conditional_losses_32470�
conv2d/StatefulPartitionedCallStatefulPartitionedCallpool5/PartitionedCall:output:0conv2d_33263conv2d_33265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_32483�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_32493�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_33269conv2d_1_33271*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_32506�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_32516�
dropout/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_32523�
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_32531�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_33277dense_33279*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_32544�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_33282dense_1_33284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32561w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv1_1/StatefulPartitionedCall ^conv1_2/StatefulPartitionedCall ^conv2_1/StatefulPartitionedCall ^conv2_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall ^conv3_1/StatefulPartitionedCall ^conv3_2/StatefulPartitionedCall ^conv3_3/StatefulPartitionedCall ^conv4_1/StatefulPartitionedCall ^conv4_2/StatefulPartitionedCall ^conv4_3/StatefulPartitionedCall ^conv5_1/StatefulPartitionedCall ^conv5_2/StatefulPartitionedCall ^conv5_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
conv1_1/StatefulPartitionedCallconv1_1/StatefulPartitionedCall2B
conv1_2/StatefulPartitionedCallconv1_2/StatefulPartitionedCall2B
conv2_1/StatefulPartitionedCallconv2_1/StatefulPartitionedCall2B
conv2_2/StatefulPartitionedCallconv2_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2B
conv3_1/StatefulPartitionedCallconv3_1/StatefulPartitionedCall2B
conv3_2/StatefulPartitionedCallconv3_2/StatefulPartitionedCall2B
conv3_3/StatefulPartitionedCallconv3_3/StatefulPartitionedCall2B
conv4_1/StatefulPartitionedCallconv4_1/StatefulPartitionedCall2B
conv4_2/StatefulPartitionedCallconv4_2/StatefulPartitionedCall2B
conv4_3/StatefulPartitionedCallconv4_3/StatefulPartitionedCall2B
conv5_1/StatefulPartitionedCallconv5_1/StatefulPartitionedCall2B
conv5_2/StatefulPartitionedCallconv5_2/StatefulPartitionedCall2B
conv5_3/StatefulPartitionedCallconv5_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
B__inference_conv4_2_layer_call_and_return_conditional_losses_34126

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
A
%__inference_pool1_layer_call_fn_33936

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_32259h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������pp@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������@:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������;
dense_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:ɠ
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer_with_weights-13
layer-19
layer-20
layer_with_weights-14
layer-21
layer-22
layer-23
layer-24
layer_with_weights-15
layer-25
layer_with_weights-16
layer-26
	optimizer
	variables
trainable_variables
regularization_losses
 	keras_api
!
signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_network
6
"_init_input_shape"
_tf_keras_input_layer
�

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ykernel
Zbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

ekernel
fbias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

{kernel
|bias
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
�
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
�26
�27
�28
�29
�30
�31
�32
�33"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
(:&@2conv1_1/kernel
:@2conv1_1/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(:&@@2conv1_2/kernel
:@2conv1_2/bias
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@�2conv2_1/kernel
:�2conv2_1/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv2_2/kernel
:�2conv2_2/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv3_1/kernel
:�2conv3_1/bias
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv3_2/kernel
:�2conv3_2/bias
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv3_3/kernel
:�2conv3_3/bias
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv4_1/kernel
:�2conv4_1/bias
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv4_2/kernel
:�2conv4_2/bias
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv4_3/kernel
:�2conv4_3/bias
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv5_1/kernel
:�2conv5_1/bias
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv5_2/kernel
:�2conv5_2/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(��2conv5_3/kernel
:�2conv5_3/bias
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(:&� 2conv2d/kernel
: 2conv2d/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_1/kernel
:@2conv2d_1/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	@�2dense/kernel
:�2
dense/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	�2dense_1/kernel
:2dense_1/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25"
trackable_list_wrapper
�
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
19
20
21
22
23
24
25
26"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
)0
*1"
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
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
90
:1"
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
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
O0
P1"
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
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
e0
f1"
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
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
{0
|1"
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
-:+� 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
.:, @2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
$:"	@�2Adam/dense/kernel/m
:�2Adam/dense/bias/m
&:$	�2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
-:+� 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
.:, @2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
$:"	@�2Adam/dense/kernel/v
:�2Adam/dense/bias/v
&:$	�2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
�2�
%__inference_model_layer_call_fn_32639
%__inference_model_layer_call_fn_33540
%__inference_model_layer_call_fn_33613
%__inference_model_layer_call_fn_33190�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
@__inference_model_layer_call_and_return_conditional_losses_33746
@__inference_model_layer_call_and_return_conditional_losses_33886
@__inference_model_layer_call_and_return_conditional_losses_33288
@__inference_model_layer_call_and_return_conditional_losses_33386�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_32130input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv1_1_layer_call_fn_33895�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv1_1_layer_call_and_return_conditional_losses_33906�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv1_2_layer_call_fn_33915�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv1_2_layer_call_and_return_conditional_losses_33926�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_pool1_layer_call_fn_33931
%__inference_pool1_layer_call_fn_33936�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_pool1_layer_call_and_return_conditional_losses_33941
@__inference_pool1_layer_call_and_return_conditional_losses_33946�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv2_1_layer_call_fn_33955�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv2_1_layer_call_and_return_conditional_losses_33966�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv2_2_layer_call_fn_33975�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv2_2_layer_call_and_return_conditional_losses_33986�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_pool2_layer_call_fn_33991
%__inference_pool2_layer_call_fn_33996�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_pool2_layer_call_and_return_conditional_losses_34001
@__inference_pool2_layer_call_and_return_conditional_losses_34006�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv3_1_layer_call_fn_34015�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv3_1_layer_call_and_return_conditional_losses_34026�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv3_2_layer_call_fn_34035�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv3_2_layer_call_and_return_conditional_losses_34046�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv3_3_layer_call_fn_34055�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv3_3_layer_call_and_return_conditional_losses_34066�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_pool3_layer_call_fn_34071
%__inference_pool3_layer_call_fn_34076�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_pool3_layer_call_and_return_conditional_losses_34081
@__inference_pool3_layer_call_and_return_conditional_losses_34086�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv4_1_layer_call_fn_34095�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv4_1_layer_call_and_return_conditional_losses_34106�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv4_2_layer_call_fn_34115�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv4_2_layer_call_and_return_conditional_losses_34126�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv4_3_layer_call_fn_34135�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv4_3_layer_call_and_return_conditional_losses_34146�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_pool4_layer_call_fn_34151
%__inference_pool4_layer_call_fn_34156�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_pool4_layer_call_and_return_conditional_losses_34161
@__inference_pool4_layer_call_and_return_conditional_losses_34166�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv5_1_layer_call_fn_34175�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv5_1_layer_call_and_return_conditional_losses_34186�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv5_2_layer_call_fn_34195�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv5_2_layer_call_and_return_conditional_losses_34206�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv5_3_layer_call_fn_34215�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv5_3_layer_call_and_return_conditional_losses_34226�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_pool5_layer_call_fn_34231
%__inference_pool5_layer_call_fn_34236�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_pool5_layer_call_and_return_conditional_losses_34241
@__inference_pool5_layer_call_and_return_conditional_losses_34246�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_conv2d_layer_call_fn_34255�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_conv2d_layer_call_and_return_conditional_losses_34266�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_max_pooling2d_layer_call_fn_34271
-__inference_max_pooling2d_layer_call_fn_34276�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_34281
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_34286�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_conv2d_1_layer_call_fn_34295�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_34306�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_max_pooling2d_1_layer_call_fn_34311
/__inference_max_pooling2d_1_layer_call_fn_34316�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_34321
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_34326�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dropout_layer_call_fn_34331
'__inference_dropout_layer_call_fn_34336�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_dropout_layer_call_and_return_conditional_losses_34341
B__inference_dropout_layer_call_and_return_conditional_losses_34353�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_flatten_layer_call_fn_34358�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_flatten_layer_call_and_return_conditional_losses_34364�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_dense_layer_call_fn_34373�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_dense_layer_call_and_return_conditional_losses_34384�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dense_1_layer_call_fn_34393�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_1_layer_call_and_return_conditional_losses_34404�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_33467input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_32130�*#$)*349:CDIJOPYZ_`efopuv{|��������:�7
0�-
+�(
input_1�����������
� "1�.
,
dense_1!�
dense_1����������
B__inference_conv1_1_layer_call_and_return_conditional_losses_33906p#$9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������@
� �
'__inference_conv1_1_layer_call_fn_33895c#$9�6
/�,
*�'
inputs�����������
� ""������������@�
B__inference_conv1_2_layer_call_and_return_conditional_losses_33926p)*9�6
/�,
*�'
inputs�����������@
� "/�,
%�"
0�����������@
� �
'__inference_conv1_2_layer_call_fn_33915c)*9�6
/�,
*�'
inputs�����������@
� ""������������@�
B__inference_conv2_1_layer_call_and_return_conditional_losses_33966m347�4
-�*
(�%
inputs���������pp@
� ".�+
$�!
0���������pp�
� �
'__inference_conv2_1_layer_call_fn_33955`347�4
-�*
(�%
inputs���������pp@
� "!����������pp��
B__inference_conv2_2_layer_call_and_return_conditional_losses_33986n9:8�5
.�+
)�&
inputs���������pp�
� ".�+
$�!
0���������pp�
� �
'__inference_conv2_2_layer_call_fn_33975a9:8�5
.�+
)�&
inputs���������pp�
� "!����������pp��
C__inference_conv2d_1_layer_call_and_return_conditional_losses_34306n��7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������@
� �
(__inference_conv2d_1_layer_call_fn_34295a��7�4
-�*
(�%
inputs��������� 
� " ����������@�
A__inference_conv2d_layer_call_and_return_conditional_losses_34266o��8�5
.�+
)�&
inputs����������
� "-�*
#� 
0��������� 
� �
&__inference_conv2d_layer_call_fn_34255b��8�5
.�+
)�&
inputs����������
� " ���������� �
B__inference_conv3_1_layer_call_and_return_conditional_losses_34026nCD8�5
.�+
)�&
inputs���������88�
� ".�+
$�!
0���������88�
� �
'__inference_conv3_1_layer_call_fn_34015aCD8�5
.�+
)�&
inputs���������88�
� "!����������88��
B__inference_conv3_2_layer_call_and_return_conditional_losses_34046nIJ8�5
.�+
)�&
inputs���������88�
� ".�+
$�!
0���������88�
� �
'__inference_conv3_2_layer_call_fn_34035aIJ8�5
.�+
)�&
inputs���������88�
� "!����������88��
B__inference_conv3_3_layer_call_and_return_conditional_losses_34066nOP8�5
.�+
)�&
inputs���������88�
� ".�+
$�!
0���������88�
� �
'__inference_conv3_3_layer_call_fn_34055aOP8�5
.�+
)�&
inputs���������88�
� "!����������88��
B__inference_conv4_1_layer_call_and_return_conditional_losses_34106nYZ8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
'__inference_conv4_1_layer_call_fn_34095aYZ8�5
.�+
)�&
inputs����������
� "!������������
B__inference_conv4_2_layer_call_and_return_conditional_losses_34126n_`8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
'__inference_conv4_2_layer_call_fn_34115a_`8�5
.�+
)�&
inputs����������
� "!������������
B__inference_conv4_3_layer_call_and_return_conditional_losses_34146nef8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
'__inference_conv4_3_layer_call_fn_34135aef8�5
.�+
)�&
inputs����������
� "!������������
B__inference_conv5_1_layer_call_and_return_conditional_losses_34186nop8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
'__inference_conv5_1_layer_call_fn_34175aop8�5
.�+
)�&
inputs����������
� "!������������
B__inference_conv5_2_layer_call_and_return_conditional_losses_34206nuv8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
'__inference_conv5_2_layer_call_fn_34195auv8�5
.�+
)�&
inputs����������
� "!������������
B__inference_conv5_3_layer_call_and_return_conditional_losses_34226n{|8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
'__inference_conv5_3_layer_call_fn_34215a{|8�5
.�+
)�&
inputs����������
� "!������������
B__inference_dense_1_layer_call_and_return_conditional_losses_34404_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� }
'__inference_dense_1_layer_call_fn_34393R��0�-
&�#
!�
inputs����������
� "�����������
@__inference_dense_layer_call_and_return_conditional_losses_34384_��/�,
%�"
 �
inputs���������@
� "&�#
�
0����������
� {
%__inference_dense_layer_call_fn_34373R��/�,
%�"
 �
inputs���������@
� "������������
B__inference_dropout_layer_call_and_return_conditional_losses_34341l;�8
1�.
(�%
inputs���������@
p 
� "-�*
#� 
0���������@
� �
B__inference_dropout_layer_call_and_return_conditional_losses_34353l;�8
1�.
(�%
inputs���������@
p
� "-�*
#� 
0���������@
� �
'__inference_dropout_layer_call_fn_34331_;�8
1�.
(�%
inputs���������@
p 
� " ����������@�
'__inference_dropout_layer_call_fn_34336_;�8
1�.
(�%
inputs���������@
p
� " ����������@�
B__inference_flatten_layer_call_and_return_conditional_losses_34364`7�4
-�*
(�%
inputs���������@
� "%�"
�
0���������@
� ~
'__inference_flatten_layer_call_fn_34358S7�4
-�*
(�%
inputs���������@
� "����������@�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_34321�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_34326h7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
/__inference_max_pooling2d_1_layer_call_fn_34311�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
/__inference_max_pooling2d_1_layer_call_fn_34316[7�4
-�*
(�%
inputs���������@
� " ����������@�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_34281�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_34286h7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0��������� 
� �
-__inference_max_pooling2d_layer_call_fn_34271�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
-__inference_max_pooling2d_layer_call_fn_34276[7�4
-�*
(�%
inputs��������� 
� " ���������� �
@__inference_model_layer_call_and_return_conditional_losses_33288�*#$)*349:CDIJOPYZ_`efopuv{|��������B�?
8�5
+�(
input_1�����������
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_33386�*#$)*349:CDIJOPYZ_`efopuv{|��������B�?
8�5
+�(
input_1�����������
p

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_33746�*#$)*349:CDIJOPYZ_`efopuv{|��������A�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_33886�*#$)*349:CDIJOPYZ_`efopuv{|��������A�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
%__inference_model_layer_call_fn_32639�*#$)*349:CDIJOPYZ_`efopuv{|��������B�?
8�5
+�(
input_1�����������
p 

 
� "�����������
%__inference_model_layer_call_fn_33190�*#$)*349:CDIJOPYZ_`efopuv{|��������B�?
8�5
+�(
input_1�����������
p

 
� "�����������
%__inference_model_layer_call_fn_33540�*#$)*349:CDIJOPYZ_`efopuv{|��������A�>
7�4
*�'
inputs�����������
p 

 
� "�����������
%__inference_model_layer_call_fn_33613�*#$)*349:CDIJOPYZ_`efopuv{|��������A�>
7�4
*�'
inputs�����������
p

 
� "�����������
@__inference_pool1_layer_call_and_return_conditional_losses_33941�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
@__inference_pool1_layer_call_and_return_conditional_losses_33946j9�6
/�,
*�'
inputs�����������@
� "-�*
#� 
0���������pp@
� �
%__inference_pool1_layer_call_fn_33931�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
%__inference_pool1_layer_call_fn_33936]9�6
/�,
*�'
inputs�����������@
� " ����������pp@�
@__inference_pool2_layer_call_and_return_conditional_losses_34001�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
@__inference_pool2_layer_call_and_return_conditional_losses_34006j8�5
.�+
)�&
inputs���������pp�
� ".�+
$�!
0���������88�
� �
%__inference_pool2_layer_call_fn_33991�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
%__inference_pool2_layer_call_fn_33996]8�5
.�+
)�&
inputs���������pp�
� "!����������88��
@__inference_pool3_layer_call_and_return_conditional_losses_34081�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
@__inference_pool3_layer_call_and_return_conditional_losses_34086j8�5
.�+
)�&
inputs���������88�
� ".�+
$�!
0����������
� �
%__inference_pool3_layer_call_fn_34071�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
%__inference_pool3_layer_call_fn_34076]8�5
.�+
)�&
inputs���������88�
� "!������������
@__inference_pool4_layer_call_and_return_conditional_losses_34161�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
@__inference_pool4_layer_call_and_return_conditional_losses_34166j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
%__inference_pool4_layer_call_fn_34151�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
%__inference_pool4_layer_call_fn_34156]8�5
.�+
)�&
inputs����������
� "!������������
@__inference_pool5_layer_call_and_return_conditional_losses_34241�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
@__inference_pool5_layer_call_and_return_conditional_losses_34246j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
%__inference_pool5_layer_call_fn_34231�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
%__inference_pool5_layer_call_fn_34236]8�5
.�+
)�&
inputs����������
� "!������������
#__inference_signature_wrapper_33467�*#$)*349:CDIJOPYZ_`efopuv{|��������E�B
� 
;�8
6
input_1+�(
input_1�����������"1�.
,
dense_1!�
dense_1���������