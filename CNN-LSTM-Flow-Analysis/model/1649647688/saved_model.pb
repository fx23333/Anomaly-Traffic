ТБ
РCйB
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
Ц
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
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
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
М
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
•

ScatterAdd
ref"TА
indices"Tindices
updates"T

output_ref"TА" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
A

StackPopV2

handle
elem"	elem_type"
	elem_typetypeИ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( И
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring И
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringИ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
ё
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
Ѕ
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.02v1.8.0-0-g93bc2e2072Ю∞
K

batch_sizePlaceholder*
shape: *
_output_shapes
: *
dtype0
|
input_xPlaceholder*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
b
input_yPlaceholder*
dtype0	*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
J
	keep_probPlaceholder*
shape: *
dtype0*
_output_shapes
: 
j
sequence_lengthPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
J
ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
Э
,embedding_1/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
_class
loc:@embedding_1*
valueB"Є  А   
П
*embedding_1/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *?ЗNљ*
_class
loc:@embedding_1*
dtype0
П
*embedding_1/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@embedding_1*
valueB
 *?ЗN=
д
4embedding_1/Initializer/random_uniform/RandomUniformRandomUniform,embedding_1/Initializer/random_uniform/shape*
dtype0*
seed2 *
T0*
_class
loc:@embedding_1*

seed * 
_output_shapes
:
ЄА
 
*embedding_1/Initializer/random_uniform/subSub*embedding_1/Initializer/random_uniform/max*embedding_1/Initializer/random_uniform/min*
T0*
_class
loc:@embedding_1*
_output_shapes
: 
ё
*embedding_1/Initializer/random_uniform/mulMul4embedding_1/Initializer/random_uniform/RandomUniform*embedding_1/Initializer/random_uniform/sub*
_class
loc:@embedding_1*
T0* 
_output_shapes
:
ЄА
–
&embedding_1/Initializer/random_uniformAdd*embedding_1/Initializer/random_uniform/mul*embedding_1/Initializer/random_uniform/min*
T0* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1
£
embedding_1
VariableV2*
_class
loc:@embedding_1*
dtype0*
	container * 
_output_shapes
:
ЄА*
shared_name *
shape:
ЄА
≈
embedding_1/AssignAssignembedding_1&embedding_1/Initializer/random_uniform* 
_output_shapes
:
ЄА*
T0*
_class
loc:@embedding_1*
validate_shape(*
use_locking(
t
embedding_1/readIdentityembedding_1*
_class
loc:@embedding_1*
T0* 
_output_shapes
:
ЄА
Б
embedding/embedding_lookup/axisConst*
_class
loc:@embedding_1*
value	B : *
_output_shapes
: *
dtype0
е
embedding/embedding_lookupGatherV2embedding_1/readinput_xembedding/embedding_lookup/axis*
Tparams0*
_class
loc:@embedding_1*
Taxis0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
Tindices0
g
dropout/ShapeShapeembedding/embedding_lookup*
_output_shapes
:*
out_type0*
T0
_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
dropout/random_uniform/maxConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
™
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*
seed2 *
dtype0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*

seed 
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
_output_shapes
: *
T0
£
dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
Х
dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
u
dropout/addAdd	keep_probdropout/random_uniform*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
c
dropout/FloorFloordropout/add*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
}
dropout/divRealDivembedding/embedding_lookup	keep_prob*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
n
dropout/mulMuldropout/divdropout/Floor*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
]
DropoutWrapperInit/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
_
DropoutWrapperInit/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  А?
Р
NMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
е
JMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims
ExpandDims
batch_sizeNMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
Р
EMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ConstConst*
_output_shapes
:*
dtype0*
valueB:А
Н
KMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
м
FMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatConcatV2JMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDimsEMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ConstKMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axis*
_output_shapes
:*

Tidx0*
N*
T0
Р
KMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 
І
EMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zerosFillFMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatKMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/Const*

index_type0*(
_output_shapes
:€€€€€€€€€А*
T0
Т
PMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
й
LMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDims
batch_sizePMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes
:
Т
GMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Т
PMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
_output_shapes
: *
value	B : *
dtype0
й
LMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDims
batch_sizePMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dim*
T0*

Tdim0*
_output_shapes
:
Т
GMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Const*
dtype0*
valueB:А*
_output_shapes
:
П
MMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ф
HMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1ConcatV2LMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2GMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2MMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Т
MMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≠
GMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1FillHMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1MMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/Const*(
_output_shapes
:€€€€€€€€€А*

index_type0*
T0
Т
PMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
й
LMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDims
batch_sizePMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dim*
_output_shapes
:*
T0*

Tdim0
Т
GMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:А
Т
PMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
й
LMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims
ExpandDims
batch_sizePMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
Т
GMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ConstConst*
_output_shapes
:*
valueB:А*
dtype0
П
MMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ф
HMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatConcatV2LMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDimsGMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ConstMMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
Т
MMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≠
GMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zerosFillHMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatMMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/Const*(
_output_shapes
:€€€€€€€€€А*
T0*

index_type0
Ф
RMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
н
NMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1
ExpandDims
batch_sizeRMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dim*
_output_shapes
:*
T0*

Tdim0
Ф
IMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
Ф
RMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
value	B : 
н
NMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2
ExpandDims
batch_sizeRMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
Ф
IMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:А
С
OMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ь
JMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1ConcatV2NMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2IMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2OMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axis*
_output_shapes
:*
N*

Tidx0*
T0
Ф
OMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≥
IMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1FillJMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1OMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/Const*(
_output_shapes
:€€€€€€€€€А*
T0*

index_type0
Ф
RMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
н
NMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3
ExpandDims
batch_sizeRMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
_output_shapes
:*
T0
Ф
IMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:А
O
LSTM/rnn/RankConst*
value	B :*
_output_shapes
: *
dtype0
V
LSTM/rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
V
LSTM/rnn/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
z
LSTM/rnn/rangeRangeLSTM/rnn/range/startLSTM/rnn/RankLSTM/rnn/range/delta*
_output_shapes
:*

Tidx0
i
LSTM/rnn/concat/values_0Const*
dtype0*
valueB"       *
_output_shapes
:
V
LSTM/rnn/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Х
LSTM/rnn/concatConcatV2LSTM/rnn/concat/values_0LSTM/rnn/rangeLSTM/rnn/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
К
LSTM/rnn/transpose	Transposedropout/mulLSTM/rnn/concat*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
Tperm0*
T0
c
LSTM/rnn/sequence_lengthIdentitysequence_length*#
_output_shapes
:€€€€€€€€€*
T0
`
LSTM/rnn/ShapeShapeLSTM/rnn/transpose*
T0*
out_type0*
_output_shapes
:
f
LSTM/rnn/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
h
LSTM/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
h
LSTM/rnn/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
¶
LSTM/rnn/strided_sliceStridedSliceLSTM/rnn/ShapeLSTM/rnn/strided_slice/stackLSTM/rnn/strided_slice/stack_1LSTM/rnn/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
ellipsis_mask *

begin_mask *
shrink_axis_mask
h
LSTM/rnn/Shape_1ShapeLSTM/rnn/sequence_length*
T0*
_output_shapes
:*
out_type0
h
LSTM/rnn/stackPackLSTM/rnn/strided_slice*
T0*

axis *
_output_shapes
:*
N
^
LSTM/rnn/EqualEqualLSTM/rnn/Shape_1LSTM/rnn/stack*
_output_shapes
:*
T0
X
LSTM/rnn/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
h
LSTM/rnn/AllAllLSTM/rnn/EqualLSTM/rnn/Const*

Tidx0*
_output_shapes
: *
	keep_dims( 
О
LSTM/rnn/Assert/ConstConst*I
value@B> B8Expected shape for Tensor LSTM/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
h
LSTM/rnn/Assert/Const_1Const*
_output_shapes
: *
dtype0*!
valueB B but saw shape: 
Ц
LSTM/rnn/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *I
value@B> B8Expected shape for Tensor LSTM/rnn/sequence_length:0 is 
n
LSTM/rnn/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*!
valueB B but saw shape: 
Ѓ
LSTM/rnn/Assert/AssertAssertLSTM/rnn/AllLSTM/rnn/Assert/Assert/data_0LSTM/rnn/stackLSTM/rnn/Assert/Assert/data_2LSTM/rnn/Shape_1*
T
2*
	summarize
Б
LSTM/rnn/CheckSeqLenIdentityLSTM/rnn/sequence_length^LSTM/rnn/Assert/Assert*#
_output_shapes
:€€€€€€€€€*
T0
b
LSTM/rnn/Shape_2ShapeLSTM/rnn/transpose*
_output_shapes
:*
T0*
out_type0
h
LSTM/rnn/strided_slice_1/stackConst*
valueB: *
_output_shapes
:*
dtype0
j
 LSTM/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
j
 LSTM/rnn/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
∞
LSTM/rnn/strided_slice_1StridedSliceLSTM/rnn/Shape_2LSTM/rnn/strided_slice_1/stack LSTM/rnn/strided_slice_1/stack_1 LSTM/rnn/strided_slice_1/stack_2*

begin_mask *
Index0*
_output_shapes
: *
ellipsis_mask *
new_axis_mask *
T0*
end_mask *
shrink_axis_mask
b
LSTM/rnn/Shape_3ShapeLSTM/rnn/transpose*
out_type0*
T0*
_output_shapes
:
h
LSTM/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
j
 LSTM/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
j
 LSTM/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
∞
LSTM/rnn/strided_slice_2StridedSliceLSTM/rnn/Shape_3LSTM/rnn/strided_slice_2/stack LSTM/rnn/strided_slice_2/stack_1 LSTM/rnn/strided_slice_2/stack_2*
shrink_axis_mask*
Index0*
ellipsis_mask *
T0*
end_mask *
_output_shapes
: *

begin_mask *
new_axis_mask 
Y
LSTM/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Е
LSTM/rnn/ExpandDims
ExpandDimsLSTM/rnn/strided_slice_2LSTM/rnn/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
[
LSTM/rnn/Const_1Const*
_output_shapes
:*
dtype0*
valueB:А
X
LSTM/rnn/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ц
LSTM/rnn/concat_1ConcatV2LSTM/rnn/ExpandDimsLSTM/rnn/Const_1LSTM/rnn/concat_1/axis*

Tidx0*
N*
_output_shapes
:*
T0
Y
LSTM/rnn/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Д
LSTM/rnn/zerosFillLSTM/rnn/concat_1LSTM/rnn/zeros/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
Z
LSTM/rnn/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
y
LSTM/rnn/MinMinLSTM/rnn/CheckSeqLenLSTM/rnn/Const_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Z
LSTM/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
y
LSTM/rnn/MaxMaxLSTM/rnn/CheckSeqLenLSTM/rnn/Const_3*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
O
LSTM/rnn/timeConst*
dtype0*
value	B : *
_output_shapes
: 
У
LSTM/rnn/TensorArrayTensorArrayV3LSTM/rnn/strided_slice_1*
dtype0*4
tensor_array_nameLSTM/rnn/dynamic_rnn/output_0*
_output_shapes

:: *
dynamic_size( *
clear_after_read(*%
element_shape:€€€€€€€€€А*
identical_element_shapes(
Ф
LSTM/rnn/TensorArray_1TensorArrayV3LSTM/rnn/strided_slice_1*
dtype0*
identical_element_shapes(*
_output_shapes

:: *
dynamic_size( *
clear_after_read(*%
element_shape:€€€€€€€€€А*3
tensor_array_nameLSTM/rnn/dynamic_rnn/input_0
s
!LSTM/rnn/TensorArrayUnstack/ShapeShapeLSTM/rnn/transpose*
T0*
out_type0*
_output_shapes
:
y
/LSTM/rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
{
1LSTM/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
{
1LSTM/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Е
)LSTM/rnn/TensorArrayUnstack/strided_sliceStridedSlice!LSTM/rnn/TensorArrayUnstack/Shape/LSTM/rnn/TensorArrayUnstack/strided_slice/stack1LSTM/rnn/TensorArrayUnstack/strided_slice/stack_11LSTM/rnn/TensorArrayUnstack/strided_slice/stack_2*
ellipsis_mask *
new_axis_mask *
_output_shapes
: *
end_mask *

begin_mask *
T0*
shrink_axis_mask*
Index0
i
'LSTM/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
i
'LSTM/rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ў
!LSTM/rnn/TensorArrayUnstack/rangeRange'LSTM/rnn/TensorArrayUnstack/range/start)LSTM/rnn/TensorArrayUnstack/strided_slice'LSTM/rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
М
CLSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3LSTM/rnn/TensorArray_1!LSTM/rnn/TensorArrayUnstack/rangeLSTM/rnn/transposeLSTM/rnn/TensorArray_1:1*
_output_shapes
: *%
_class
loc:@LSTM/rnn/transpose*
T0
T
LSTM/rnn/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B :
^
LSTM/rnn/MaximumMaximumLSTM/rnn/Maximum/xLSTM/rnn/Max*
_output_shapes
: *
T0
h
LSTM/rnn/MinimumMinimumLSTM/rnn/strided_slice_1LSTM/rnn/Maximum*
T0*
_output_shapes
: 
b
 LSTM/rnn/while/iteration_counterConst*
value	B : *
_output_shapes
: *
dtype0
Љ
LSTM/rnn/while/EnterEnter LSTM/rnn/while/iteration_counter*
_output_shapes
: *
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context*
is_constant( *
T0
Ђ
LSTM/rnn/while/Enter_1EnterLSTM/rnn/time*
is_constant( *
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context*
T0*
_output_shapes
: 
і
LSTM/rnn/while/Enter_2EnterLSTM/rnn/TensorArray:1*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
: *
T0*
is_constant( *
parallel_iterations 
х
LSTM/rnn/while/Enter_3EnterEMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros*
T0*(
_output_shapes
:€€€€€€€€€А*
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context*
is_constant( 
ч
LSTM/rnn/while/Enter_4EnterGMultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1*(
_output_shapes
:€€€€€€€€€А*
T0*
parallel_iterations *
is_constant( *,

frame_nameLSTM/rnn/while/while_context
ч
LSTM/rnn/while/Enter_5EnterGMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
is_constant( *
T0*(
_output_shapes
:€€€€€€€€€А
щ
LSTM/rnn/while/Enter_6EnterIMultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1*(
_output_shapes
:€€€€€€€€€А*,

frame_nameLSTM/rnn/while/while_context*
T0*
is_constant( *
parallel_iterations 
}
LSTM/rnn/while/MergeMergeLSTM/rnn/while/EnterLSTM/rnn/while/NextIteration*
N*
T0*
_output_shapes
: : 
Г
LSTM/rnn/while/Merge_1MergeLSTM/rnn/while/Enter_1LSTM/rnn/while/NextIteration_1*
_output_shapes
: : *
N*
T0
Г
LSTM/rnn/while/Merge_2MergeLSTM/rnn/while/Enter_2LSTM/rnn/while/NextIteration_2*
N*
T0*
_output_shapes
: : 
Х
LSTM/rnn/while/Merge_3MergeLSTM/rnn/while/Enter_3LSTM/rnn/while/NextIteration_3**
_output_shapes
:€€€€€€€€€А: *
N*
T0
Х
LSTM/rnn/while/Merge_4MergeLSTM/rnn/while/Enter_4LSTM/rnn/while/NextIteration_4**
_output_shapes
:€€€€€€€€€А: *
N*
T0
Х
LSTM/rnn/while/Merge_5MergeLSTM/rnn/while/Enter_5LSTM/rnn/while/NextIteration_5**
_output_shapes
:€€€€€€€€€А: *
N*
T0
Х
LSTM/rnn/while/Merge_6MergeLSTM/rnn/while/Enter_6LSTM/rnn/while/NextIteration_6*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
m
LSTM/rnn/while/LessLessLSTM/rnn/while/MergeLSTM/rnn/while/Less/Enter*
_output_shapes
: *
T0
є
LSTM/rnn/while/Less/EnterEnterLSTM/rnn/strided_slice_1*
is_constant(*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
_output_shapes
: *
T0
s
LSTM/rnn/while/Less_1LessLSTM/rnn/while/Merge_1LSTM/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
≥
LSTM/rnn/while/Less_1/EnterEnterLSTM/rnn/Minimum*
T0*,

frame_nameLSTM/rnn/while/while_context*
is_constant(*
_output_shapes
: *
parallel_iterations 
k
LSTM/rnn/while/LogicalAnd
LogicalAndLSTM/rnn/while/LessLSTM/rnn/while/Less_1*
_output_shapes
: 
V
LSTM/rnn/while/LoopCondLoopCondLSTM/rnn/while/LogicalAnd*
_output_shapes
: 
Ъ
LSTM/rnn/while/SwitchSwitchLSTM/rnn/while/MergeLSTM/rnn/while/LoopCond*'
_class
loc:@LSTM/rnn/while/Merge*
T0*
_output_shapes
: : 
†
LSTM/rnn/while/Switch_1SwitchLSTM/rnn/while/Merge_1LSTM/rnn/while/LoopCond*
T0*
_output_shapes
: : *)
_class
loc:@LSTM/rnn/while/Merge_1
†
LSTM/rnn/while/Switch_2SwitchLSTM/rnn/while/Merge_2LSTM/rnn/while/LoopCond*)
_class
loc:@LSTM/rnn/while/Merge_2*
_output_shapes
: : *
T0
ƒ
LSTM/rnn/while/Switch_3SwitchLSTM/rnn/while/Merge_3LSTM/rnn/while/LoopCond*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*)
_class
loc:@LSTM/rnn/while/Merge_3*
T0
ƒ
LSTM/rnn/while/Switch_4SwitchLSTM/rnn/while/Merge_4LSTM/rnn/while/LoopCond*
T0*)
_class
loc:@LSTM/rnn/while/Merge_4*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
ƒ
LSTM/rnn/while/Switch_5SwitchLSTM/rnn/while/Merge_5LSTM/rnn/while/LoopCond*)
_class
loc:@LSTM/rnn/while/Merge_5*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*
T0
ƒ
LSTM/rnn/while/Switch_6SwitchLSTM/rnn/while/Merge_6LSTM/rnn/while/LoopCond*
T0*)
_class
loc:@LSTM/rnn/while/Merge_6*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
]
LSTM/rnn/while/IdentityIdentityLSTM/rnn/while/Switch:1*
_output_shapes
: *
T0
a
LSTM/rnn/while/Identity_1IdentityLSTM/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
a
LSTM/rnn/while/Identity_2IdentityLSTM/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
s
LSTM/rnn/while/Identity_3IdentityLSTM/rnn/while/Switch_3:1*(
_output_shapes
:€€€€€€€€€А*
T0
s
LSTM/rnn/while/Identity_4IdentityLSTM/rnn/while/Switch_4:1*
T0*(
_output_shapes
:€€€€€€€€€А
s
LSTM/rnn/while/Identity_5IdentityLSTM/rnn/while/Switch_5:1*
T0*(
_output_shapes
:€€€€€€€€€А
s
LSTM/rnn/while/Identity_6IdentityLSTM/rnn/while/Switch_6:1*
T0*(
_output_shapes
:€€€€€€€€€А
p
LSTM/rnn/while/add/yConst^LSTM/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
i
LSTM/rnn/while/addAddLSTM/rnn/while/IdentityLSTM/rnn/while/add/y*
_output_shapes
: *
T0
ў
 LSTM/rnn/while/TensorArrayReadV3TensorArrayReadV3&LSTM/rnn/while/TensorArrayReadV3/EnterLSTM/rnn/while/Identity_1(LSTM/rnn/while/TensorArrayReadV3/Enter_1*(
_output_shapes
:€€€€€€€€€А*
dtype0
»
&LSTM/rnn/while/TensorArrayReadV3/EnterEnterLSTM/rnn/TensorArray_1*
is_constant(*
_output_shapes
:*
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context*
T0
у
(LSTM/rnn/while/TensorArrayReadV3/Enter_1EnterCLSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *
T0*
is_constant(*,

frame_nameLSTM/rnn/while/while_context
Ч
LSTM/rnn/while/GreaterEqualGreaterEqualLSTM/rnn/while/Identity_1!LSTM/rnn/while/GreaterEqual/Enter*#
_output_shapes
:€€€€€€€€€*
T0
 
!LSTM/rnn/while/GreaterEqual/EnterEnterLSTM/rnn/CheckSeqLen*
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context*
is_constant(*
T0*#
_output_shapes
:€€€€€€€€€
е
PLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB"      *
dtype0
„
NLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *уµљ*
_output_shapes
: 
„
NLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxConst*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *уµ=*
_output_shapes
: *
dtype0
–
XLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformPLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*

seed *
dtype0*
T0*
seed2 *B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
Џ
NLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/subSubNLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxNLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: 
о
NLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulMulXLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformNLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
а
JLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniformAddNLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulNLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0* 
_output_shapes
:
АА
л
/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
VariableV2*
	container *
dtype0*
shape:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
АА*
shared_name 
’
6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AssignAssign/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelJLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
Ь
4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
АА*
T0
–
?LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zerosConst*
_output_shapes	
:А*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
valueBА*    *
dtype0
Ё
-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
VariableV2*
shape:А*
shared_name *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:А*
	container *
dtype0
њ
4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AssignAssign-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias?LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros*
_output_shapes	
:А*
use_locking(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
validate_shape(
У
2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/readIdentity-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
_output_shapes	
:А
Ъ
>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst^LSTM/rnn/while/Identity*
value	B :*
_output_shapes
: *
dtype0
К
9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV2 LSTM/rnn/while/TensorArrayReadV3LSTM/rnn/while/Identity_4>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis*
N*
T0*

Tidx0*(
_output_shapes
:€€€€€€€€€А
Ш
9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMul9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat?LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_b( *
transpose_a( 
Е
?LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/EnterEnter4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
АА*
is_constant(*
T0*,

frame_nameLSTM/rnn/while/while_context
М
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAdd9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
€
@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/EnterEnter2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read*
parallel_iterations *
_output_shapes	
:А*
T0*,

frame_nameLSTM/rnn/while/while_context*
is_constant(
Ф
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/ConstConst^LSTM/rnn/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Ю
BLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst^LSTM/rnn/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Ѕ
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplitBLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
T0*
	num_split
Ч
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst^LSTM/rnn/while/Identity*
dtype0*
valueB
 *  А?*
_output_shapes
: 
ж
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/addAdd:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:28LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/y*
T0*(
_output_shapes
:€€€€€€€€€А
∞
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoid6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*(
_output_shapes
:€€€€€€€€€А*
T0
«
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mulMul:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidLSTM/rnn/while/Identity_3*(
_output_shapes
:€€€€€€€€€А*
T0
і
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Sigmoid8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
7LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/TanhTanh:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:1*
T0*(
_output_shapes
:€€€€€€€€€А
й
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1Mul<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_17LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*(
_output_shapes
:€€€€€€€€€А*
T0
д
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1Add6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*(
_output_shapes
:€€€€€€€€€А*
T0
ґ
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Sigmoid:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:3*
T0*(
_output_shapes
:€€€€€€€€€А
Ѓ
9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1Tanh8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*(
_output_shapes
:€€€€€€€€€А*
T0
л
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Mul<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_29LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
T0*(
_output_shapes
:€€€€€€€€€А
Ѓ
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/ShapeShape8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
T0*
out_type0*
_output_shapes
:
Ґ
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/minConst^LSTM/rnn/while/Identity*
valueB
 *    *
_output_shapes
: *
dtype0
Ґ
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/maxConst^LSTM/rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
п
MLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniform6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Shape*
seed2 *
T0*
dtype0*(
_output_shapes
:€€€€€€€€€А*

seed 
х
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/subSubCLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/maxCLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
_output_shapes
: *
T0
С
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mulMulMLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformCLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
Г
?LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniformAddCLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mulCLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
л
4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/addAdd:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter?LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
Ћ
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/EnterEnter	keep_prob*,

frame_nameLSTM/rnn/while/while_context*
T0*
parallel_iterations *
_output_shapes
: *
is_constant(
®
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/FloorFloor4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add*(
_output_shapes
:€€€€€€€€€А*
T0
и
4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/divRealDiv8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0*(
_output_shapes
:€€€€€€€€€А
№
4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mulMul4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
Ь
@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1/axisConst^LSTM/rnn/while/Identity*
dtype0*
value	B :*
_output_shapes
: 
Ґ
;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1ConcatV24LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mulLSTM/rnn/while/Identity_6@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1/axis*(
_output_shapes
:€€€€€€€€€А*
N*
T0*

Tidx0
Ь
;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1MatMul;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1?LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*
transpose_b( *(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
T0
Р
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1BiasAdd;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
Ц
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Const_1Const^LSTM/rnn/while/Identity*
dtype0*
value	B :*
_output_shapes
: 
†
DLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1/split_dimConst^LSTM/rnn/while/Identity*
dtype0*
value	B :*
_output_shapes
: 
«
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1SplitDLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1/split_dim<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1*
	num_split*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А
Щ
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2/yConst^LSTM/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
м
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2Add<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:2:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2/y*(
_output_shapes
:€€€€€€€€€А*
T0
і
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3Sigmoid8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2*(
_output_shapes
:€€€€€€€€€А*
T0
Ћ
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3Mul<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3LSTM/rnn/while/Identity_5*(
_output_shapes
:€€€€€€€€€А*
T0
ґ
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4Sigmoid:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1*(
_output_shapes
:€€€€€€€€€А*
T0
≤
9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2Tanh<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:1*(
_output_shapes
:€€€€€€€€€А*
T0
л
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4Mul<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_49LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2*
T0*(
_output_shapes
:€€€€€€€€€А
ж
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3Add8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_38LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4*(
_output_shapes
:€€€€€€€€€А*
T0
Є
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5Sigmoid<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:3*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3Tanh8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3*(
_output_shapes
:€€€€€€€€€А*
T0
л
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5Mul<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_59LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3*
T0*(
_output_shapes
:€€€€€€€€€А
Ѓ
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/ShapeShape8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5*
_output_shapes
:*
T0*
out_type0
Ґ
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/minConst^LSTM/rnn/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Ґ
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/maxConst^LSTM/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
п
MLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniform6LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Shape*

seed *(
_output_shapes
:€€€€€€€€€А*
T0*
seed2 *
dtype0
х
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/subSubCLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/maxCLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
_output_shapes
: *
T0
С
CLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mulMulMLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformCLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
Г
?LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniformAddCLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mulCLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
л
4LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/addAdd:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter?LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
®
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/FloorFloor4LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/add*(
_output_shapes
:€€€€€€€€€А*
T0
и
4LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/divRealDiv8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0*(
_output_shapes
:€€€€€€€€€А
№
4LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mulMul4LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div6LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*(
_output_shapes
:€€€€€€€€€А*
T0
Л
LSTM/rnn/while/SelectSelectLSTM/rnn/while/GreaterEqualLSTM/rnn/while/Select/Enter4LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*(
_output_shapes
:€€€€€€€€€А*G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
T0
М
LSTM/rnn/while/Select/EnterEnterLSTM/rnn/zeros*
T0*,

frame_nameLSTM/rnn/while/while_context*(
_output_shapes
:€€€€€€€€€А*
is_constant(*G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
parallel_iterations 
У
LSTM/rnn/while/Select_1SelectLSTM/rnn/while/GreaterEqualLSTM/rnn/while/Identity_38LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
T0*K
_classA
?=loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*(
_output_shapes
:€€€€€€€€€А
У
LSTM/rnn/while/Select_2SelectLSTM/rnn/while/GreaterEqualLSTM/rnn/while/Identity_48LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*K
_classA
?=loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*(
_output_shapes
:€€€€€€€€€А*
T0
У
LSTM/rnn/while/Select_3SelectLSTM/rnn/while/GreaterEqualLSTM/rnn/while/Identity_58LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3*K
_classA
?=loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3*(
_output_shapes
:€€€€€€€€€А*
T0
У
LSTM/rnn/while/Select_4SelectLSTM/rnn/while/GreaterEqualLSTM/rnn/while/Identity_68LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5*(
_output_shapes
:€€€€€€€€€А*
T0*K
_classA
?=loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5
є
2LSTM/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV38LSTM/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterLSTM/rnn/while/Identity_1LSTM/rnn/while/SelectLSTM/rnn/while/Identity_2*
T0*
_output_shapes
: *G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
°
8LSTM/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterLSTM/rnn/TensorArray*
T0*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:*
is_constant(*G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
parallel_iterations 
r
LSTM/rnn/while/add_1/yConst^LSTM/rnn/while/Identity*
_output_shapes
: *
dtype0*
value	B :
o
LSTM/rnn/while/add_1AddLSTM/rnn/while/Identity_1LSTM/rnn/while/add_1/y*
T0*
_output_shapes
: 
b
LSTM/rnn/while/NextIterationNextIterationLSTM/rnn/while/add*
T0*
_output_shapes
: 
f
LSTM/rnn/while/NextIteration_1NextIterationLSTM/rnn/while/add_1*
_output_shapes
: *
T0
Д
LSTM/rnn/while/NextIteration_2NextIteration2LSTM/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
{
LSTM/rnn/while/NextIteration_3NextIterationLSTM/rnn/while/Select_1*(
_output_shapes
:€€€€€€€€€А*
T0
{
LSTM/rnn/while/NextIteration_4NextIterationLSTM/rnn/while/Select_2*
T0*(
_output_shapes
:€€€€€€€€€А
{
LSTM/rnn/while/NextIteration_5NextIterationLSTM/rnn/while/Select_3*
T0*(
_output_shapes
:€€€€€€€€€А
{
LSTM/rnn/while/NextIteration_6NextIterationLSTM/rnn/while/Select_4*
T0*(
_output_shapes
:€€€€€€€€€А
S
LSTM/rnn/while/ExitExitLSTM/rnn/while/Switch*
T0*
_output_shapes
: 
W
LSTM/rnn/while/Exit_1ExitLSTM/rnn/while/Switch_1*
T0*
_output_shapes
: 
W
LSTM/rnn/while/Exit_2ExitLSTM/rnn/while/Switch_2*
_output_shapes
: *
T0
i
LSTM/rnn/while/Exit_3ExitLSTM/rnn/while/Switch_3*(
_output_shapes
:€€€€€€€€€А*
T0
i
LSTM/rnn/while/Exit_4ExitLSTM/rnn/while/Switch_4*
T0*(
_output_shapes
:€€€€€€€€€А
i
LSTM/rnn/while/Exit_5ExitLSTM/rnn/while/Switch_5*(
_output_shapes
:€€€€€€€€€А*
T0
i
LSTM/rnn/while/Exit_6ExitLSTM/rnn/while/Switch_6*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
+LSTM/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3LSTM/rnn/TensorArrayLSTM/rnn/while/Exit_2*'
_class
loc:@LSTM/rnn/TensorArray*
_output_shapes
: 
Р
%LSTM/rnn/TensorArrayStack/range/startConst*'
_class
loc:@LSTM/rnn/TensorArray*
dtype0*
_output_shapes
: *
value	B : 
Р
%LSTM/rnn/TensorArrayStack/range/deltaConst*'
_class
loc:@LSTM/rnn/TensorArray*
dtype0*
value	B :*
_output_shapes
: 
э
LSTM/rnn/TensorArrayStack/rangeRange%LSTM/rnn/TensorArrayStack/range/start+LSTM/rnn/TensorArrayStack/TensorArraySizeV3%LSTM/rnn/TensorArrayStack/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€*'
_class
loc:@LSTM/rnn/TensorArray
¶
-LSTM/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3LSTM/rnn/TensorArrayLSTM/rnn/TensorArrayStack/rangeLSTM/rnn/while/Exit_2*'
_class
loc:@LSTM/rnn/TensorArray*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
element_shape:€€€€€€€€€А*
dtype0
[
LSTM/rnn/Const_4Const*
_output_shapes
:*
valueB:А*
dtype0
Q
LSTM/rnn/Rank_1Const*
value	B :*
_output_shapes
: *
dtype0
X
LSTM/rnn/range_1/startConst*
value	B :*
_output_shapes
: *
dtype0
X
LSTM/rnn/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0
В
LSTM/rnn/range_1RangeLSTM/rnn/range_1/startLSTM/rnn/Rank_1LSTM/rnn/range_1/delta*

Tidx0*
_output_shapes
:
k
LSTM/rnn/concat_2/values_0Const*
dtype0*
valueB"       *
_output_shapes
:
X
LSTM/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Э
LSTM/rnn/concat_2ConcatV2LSTM/rnn/concat_2/values_0LSTM/rnn/range_1LSTM/rnn/concat_2/axis*
T0*

Tidx0*
N*
_output_shapes
:
∞
LSTM/rnn/transpose_1	Transpose-LSTM/rnn/TensorArrayStack/TensorArrayGatherV3LSTM/rnn/concat_2*
Tperm0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
Щ
*softmax_w/Initializer/random_uniform/shapeConst*
valueB"А      *
dtype0*
_class
loc:@softmax_w*
_output_shapes
:
Л
(softmax_w/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
_class
loc:@softmax_w*
valueB
 *3&[Њ
Л
(softmax_w/Initializer/random_uniform/maxConst*
_class
loc:@softmax_w*
dtype0*
_output_shapes
: *
valueB
 *3&[>
Ё
2softmax_w/Initializer/random_uniform/RandomUniformRandomUniform*softmax_w/Initializer/random_uniform/shape*

seed *
seed2 *
T0*
dtype0*
_output_shapes
:	А*
_class
loc:@softmax_w
¬
(softmax_w/Initializer/random_uniform/subSub(softmax_w/Initializer/random_uniform/max(softmax_w/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@softmax_w
’
(softmax_w/Initializer/random_uniform/mulMul2softmax_w/Initializer/random_uniform/RandomUniform(softmax_w/Initializer/random_uniform/sub*
T0*
_output_shapes
:	А*
_class
loc:@softmax_w
«
$softmax_w/Initializer/random_uniformAdd(softmax_w/Initializer/random_uniform/mul(softmax_w/Initializer/random_uniform/min*
T0*
_class
loc:@softmax_w*
_output_shapes
:	А
Э
	softmax_w
VariableV2*
_output_shapes
:	А*
shape:	А*
_class
loc:@softmax_w*
shared_name *
	container *
dtype0
Љ
softmax_w/AssignAssign	softmax_w$softmax_w/Initializer/random_uniform*
_output_shapes
:	А*
T0*
validate_shape(*
_class
loc:@softmax_w*
use_locking(
m
softmax_w/readIdentity	softmax_w*
_class
loc:@softmax_w*
T0*
_output_shapes
:	А
Т
*softmax_b/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
_class
loc:@softmax_b*
valueB:
Л
(softmax_b/Initializer/random_uniform/minConst*
_class
loc:@softmax_b*
_output_shapes
: *
valueB
 *  Ањ*
dtype0
Л
(softmax_b/Initializer/random_uniform/maxConst*
_class
loc:@softmax_b*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ў
2softmax_b/Initializer/random_uniform/RandomUniformRandomUniform*softmax_b/Initializer/random_uniform/shape*
_class
loc:@softmax_b*
dtype0*
_output_shapes
:*

seed *
seed2 *
T0
¬
(softmax_b/Initializer/random_uniform/subSub(softmax_b/Initializer/random_uniform/max(softmax_b/Initializer/random_uniform/min*
_class
loc:@softmax_b*
_output_shapes
: *
T0
–
(softmax_b/Initializer/random_uniform/mulMul2softmax_b/Initializer/random_uniform/RandomUniform(softmax_b/Initializer/random_uniform/sub*
_class
loc:@softmax_b*
T0*
_output_shapes
:
¬
$softmax_b/Initializer/random_uniformAdd(softmax_b/Initializer/random_uniform/mul(softmax_b/Initializer/random_uniform/min*
_output_shapes
:*
T0*
_class
loc:@softmax_b
У
	softmax_b
VariableV2*
dtype0*
shared_name *
	container *
_output_shapes
:*
shape:*
_class
loc:@softmax_b
Ј
softmax_b/AssignAssign	softmax_b$softmax_b/Initializer/random_uniform*
validate_shape(*
_output_shapes
:*
_class
loc:@softmax_b*
T0*
use_locking(
h
softmax_b/readIdentity	softmax_b*
T0*
_class
loc:@softmax_b*
_output_shapes
:
I
softmax/L2LossL2Losssoftmax_w/read*
T0*
_output_shapes
: 
J
softmax/addAddConstsoftmax/L2Loss*
_output_shapes
: *
T0
K
softmax/L2Loss_1L2Losssoftmax_b/read*
_output_shapes
: *
T0
T
softmax/add_1Addsoftmax/addsoftmax/L2Loss_1*
_output_shapes
: *
T0
Ч
softmax/MatMulMatMulLSTM/rnn/while/Exit_6softmax_w/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( 
f
softmax/add_2Addsoftmax/MatMulsoftmax_b/read*
T0*'
_output_shapes
:€€€€€€€€€
[
softmax/SoftmaxSoftmaxsoftmax/add_2*
T0*'
_output_shapes
:€€€€€€€€€
_
softmax/predictions/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
Ъ
softmax/predictionsArgMaxsoftmax/Softmaxsoftmax/predictions/dimension*

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€*
output_type0	
l
loss/L2LossL2Loss4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*
_output_shapes
: 
L
loss/addAddsoftmax/add_1loss/L2Loss*
T0*
_output_shapes
: 
u
.loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeinput_y*
_output_shapes
:*
out_type0*
T0	
џ
Lloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitssoftmax/add_2input_y*
T0*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€*
Tlabels0	
T

loss/ConstConst*
dtype0*
valueB: *
_output_shapes
:
©
	loss/MeanMeanLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
loss/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
O

loss/mul/xConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
F
loss/mulMul
loss/mul/xloss/add*
T0*
_output_shapes
: 
G

loss/add_1Add	loss/Meanloss/mul*
T0*
_output_shapes
: 
c
accuracy/EqualEqualsoftmax/predictionsinput_y*
T0	*#
_output_shapes
:€€€€€€€€€
b
accuracy/CastCastaccuracy/Equal*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
p
accuracy/SumSumaccuracy/Castaccuracy/Const*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
d
accuracy/Cast_1Castaccuracy/Equal*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€
Z
accuracy/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
z
accuracy/accuracyMeanaccuracy/Cast_1accuracy/Const_1*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
o
global_step
VariableV2*
_output_shapes
: *
dtype0*
	container *
shared_name *
shape: 
Ѓ
global_step/AssignAssignglobal_stepglobal_step/initial_value*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0
c
ExponentialDecay/learning_rateConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
_
ExponentialDecay/CastCastglobal_step/read*

DstT0*
_output_shapes
: *

SrcT0
]
ExponentialDecay/Cast_1/xConst*
valueB	 :†Н*
_output_shapes
: *
dtype0
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*
_output_shapes
: *

DstT0*

SrcT0
^
ExponentialDecay/Cast_2/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
_output_shapes
: *
T0
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  А?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
S
gradients/f_countConst*
_output_shapes
: *
dtype0*
value	B : 
ђ
gradients/f_count_1Entergradients/f_count*
is_constant( *
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
: *
T0
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
N*
_output_shapes
: : *
T0
g
gradients/SwitchSwitchgradients/MergeLSTM/rnn/while/LoopCond*
_output_shapes
: : *
T0
k
gradients/Add/yConst^LSTM/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
_output_shapes
: *
T0
д!
gradients/NextIterationNextIterationgradients/Add>^gradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPushV2>^gradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPushV2>^gradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPushV2:^gradients/LSTM/rnn/while/Select_4_grad/Select/StackPushV2>^gradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPushV2`^gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2f^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2T^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPushV2f^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2h^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1T^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPushV2V^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPushV2`^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2^^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2l^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2l^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1h^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2^^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPushV2\^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2l^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1X^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPushV2Z^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2l^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1X^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPushV2Z^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2l^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1Z^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2l^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1X^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPushV2Z^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2l^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1X^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPushV2Z^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPushV2h^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2j^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1X^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPushV2*
_output_shapes
: *
T0
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
S
gradients/b_countConst*
dtype0*
value	B :*
_output_shapes
: 
Є
gradients/b_count_1Entergradients/f_count_2*
is_constant( *
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
: *
T0
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
N*
T0*
_output_shapes
: : 
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
њ
gradients/GreaterEqual/EnterEntergradients/b_count*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
is_constant(*
_output_shapes
: *
T0
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*
_output_shapes
: : 
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
_output_shapes
: *
T0
Х
gradients/NextIteration_1NextIterationgradients/Sub9^gradients/LSTM/rnn/while/Select_4_grad/zeros_like/b_sync*
_output_shapes
: *
T0
P
gradients/b_count_3Exitgradients/Switch_1*
_output_shapes
: *
T0
C
*gradients/loss/add_1_grad/tuple/group_depsNoOp^gradients/Fill
њ
2gradients/loss/add_1_grad/tuple/control_dependencyIdentitygradients/Fill+^gradients/loss/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
Ѕ
4gradients/loss/add_1_grad/tuple/control_dependency_1Identitygradients/Fill+^gradients/loss/add_1_grad/tuple/group_deps*
T0*
_output_shapes
: *!
_class
loc:@gradients/Fill
p
&gradients/loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Ї
 gradients/loss/Mean_grad/ReshapeReshape2gradients/loss/add_1_grad/tuple/control_dependency&gradients/loss/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
™
gradients/loss/Mean_grad/ShapeShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
out_type0*
T0
І
gradients/loss/Mean_grad/TileTile gradients/loss/Mean_grad/Reshapegradients/loss/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
ђ
 gradients/loss/Mean_grad/Shape_1ShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
_output_shapes
:*
T0
c
 gradients/loss/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
h
gradients/loss/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
•
gradients/loss/Mean_grad/ProdProd gradients/loss/Mean_grad/Shape_1gradients/loss/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
j
 gradients/loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
©
gradients/loss/Mean_grad/Prod_1Prod gradients/loss/Mean_grad/Shape_2 gradients/loss/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
d
"gradients/loss/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
С
 gradients/loss/Mean_grad/MaximumMaximumgradients/loss/Mean_grad/Prod_1"gradients/loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
П
!gradients/loss/Mean_grad/floordivFloorDivgradients/loss/Mean_grad/Prod gradients/loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
x
gradients/loss/Mean_grad/CastCast!gradients/loss/Mean_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
Ч
 gradients/loss/Mean_grad/truedivRealDivgradients/loss/Mean_grad/Tilegradients/loss/Mean_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0
Г
gradients/loss/mul_grad/MulMul4gradients/loss/add_1_grad/tuple/control_dependency_1loss/add*
T0*
_output_shapes
: 
З
gradients/loss/mul_grad/Mul_1Mul4gradients/loss/add_1_grad/tuple/control_dependency_1
loss/mul/x*
T0*
_output_shapes
: 
n
(gradients/loss/mul_grad/tuple/group_depsNoOp^gradients/loss/mul_grad/Mul^gradients/loss/mul_grad/Mul_1
’
0gradients/loss/mul_grad/tuple/control_dependencyIdentitygradients/loss/mul_grad/Mul)^gradients/loss/mul_grad/tuple/group_deps*
_output_shapes
: *.
_class$
" loc:@gradients/loss/mul_grad/Mul*
T0
џ
2gradients/loss/mul_grad/tuple/control_dependency_1Identitygradients/loss/mul_grad/Mul_1)^gradients/loss/mul_grad/tuple/group_deps*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: *
T0
£
gradients/zeros_like	ZerosLikeNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:€€€€€€€€€
Ј
kgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*і
message®•Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:€€€€€€€€€*
T0
µ
jgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ј
fgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/loss/Mean_grad/truedivjgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:€€€€€€€€€
н
_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulfgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimskgradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:€€€€€€€€€
e
(gradients/loss/add_grad/tuple/group_depsNoOp3^gradients/loss/mul_grad/tuple/control_dependency_1
о
0gradients/loss/add_grad/tuple/control_dependencyIdentity2gradients/loss/mul_grad/tuple/control_dependency_1)^gradients/loss/add_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
р
2gradients/loss/add_grad/tuple/control_dependency_1Identity2gradients/loss/mul_grad/tuple/control_dependency_1)^gradients/loss/add_grad/tuple/group_deps*
T0*
_output_shapes
: *0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
p
"gradients/softmax/add_2_grad/ShapeShapesoftmax/MatMul*
_output_shapes
:*
T0*
out_type0
n
$gradients/softmax/add_2_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
“
2gradients/softmax/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/softmax/add_2_grad/Shape$gradients/softmax/add_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ь
 gradients/softmax/add_2_grad/SumSum_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul2gradients/softmax/add_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
µ
$gradients/softmax/add_2_grad/ReshapeReshape gradients/softmax/add_2_grad/Sum"gradients/softmax/add_2_grad/Shape*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€
А
"gradients/softmax/add_2_grad/Sum_1Sum_gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul4gradients/softmax/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ѓ
&gradients/softmax/add_2_grad/Reshape_1Reshape"gradients/softmax/add_2_grad/Sum_1$gradients/softmax/add_2_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
Е
-gradients/softmax/add_2_grad/tuple/group_depsNoOp%^gradients/softmax/add_2_grad/Reshape'^gradients/softmax/add_2_grad/Reshape_1
В
5gradients/softmax/add_2_grad/tuple/control_dependencyIdentity$gradients/softmax/add_2_grad/Reshape.^gradients/softmax/add_2_grad/tuple/group_deps*7
_class-
+)loc:@gradients/softmax/add_2_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€
ы
7gradients/softmax/add_2_grad/tuple/control_dependency_1Identity&gradients/softmax/add_2_grad/Reshape_1.^gradients/softmax/add_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/softmax/add_2_grad/Reshape_1*
_output_shapes
:
h
-gradients/softmax/add_1_grad/tuple/group_depsNoOp1^gradients/loss/add_grad/tuple/control_dependency
ц
5gradients/softmax/add_1_grad/tuple/control_dependencyIdentity0gradients/loss/add_grad/tuple/control_dependency.^gradients/softmax/add_1_grad/tuple/group_deps*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: *
T0
ш
7gradients/softmax/add_1_grad/tuple/control_dependency_1Identity0gradients/loss/add_grad/tuple/control_dependency.^gradients/softmax/add_1_grad/tuple/group_deps*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: *
T0
Ї
gradients/loss/L2Loss_grad/mulMul4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read2gradients/loss/add_grad/tuple/control_dependency_1* 
_output_shapes
:
АА*
T0
ќ
$gradients/softmax/MatMul_grad/MatMulMatMul5gradients/softmax/add_2_grad/tuple/control_dependencysoftmax_w/read*
transpose_b(*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
T0
ќ
&gradients/softmax/MatMul_grad/MatMul_1MatMulLSTM/rnn/while/Exit_65gradients/softmax/add_2_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( *
_output_shapes
:	А
Ж
.gradients/softmax/MatMul_grad/tuple/group_depsNoOp%^gradients/softmax/MatMul_grad/MatMul'^gradients/softmax/MatMul_grad/MatMul_1
Е
6gradients/softmax/MatMul_grad/tuple/control_dependencyIdentity$gradients/softmax/MatMul_grad/MatMul/^gradients/softmax/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/softmax/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
В
8gradients/softmax/MatMul_grad/tuple/control_dependency_1Identity&gradients/softmax/MatMul_grad/MatMul_1/^gradients/softmax/MatMul_grad/tuple/group_deps*
_output_shapes
:	А*9
_class/
-+loc:@gradients/softmax/MatMul_grad/MatMul_1*
T0
T
gradients/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
m
gradients/zeros_like_1	ZerosLikeLSTM/rnn/while/Exit_3*(
_output_shapes
:€€€€€€€€€А*
T0
m
gradients/zeros_like_2	ZerosLikeLSTM/rnn/while/Exit_4*(
_output_shapes
:€€€€€€€€€А*
T0
m
gradients/zeros_like_3	ZerosLikeLSTM/rnn/while/Exit_5*(
_output_shapes
:€€€€€€€€€А*
T0
k
+gradients/softmax/add_grad/tuple/group_depsNoOp6^gradients/softmax/add_1_grad/tuple/control_dependency
ч
3gradients/softmax/add_grad/tuple/control_dependencyIdentity5gradients/softmax/add_1_grad/tuple/control_dependency,^gradients/softmax/add_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
щ
5gradients/softmax/add_grad/tuple/control_dependency_1Identity5gradients/softmax/add_1_grad/tuple/control_dependency,^gradients/softmax/add_grad/tuple/group_deps*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: *
T0
Ш
#gradients/softmax/L2Loss_1_grad/mulMulsoftmax_b/read7gradients/softmax/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
Е
+gradients/LSTM/rnn/while/Exit_6_grad/b_exitEnter6gradients/softmax/MatMul_grad/tuple/control_dependency*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
is_constant( *(
_output_shapes
:€€€€€€€€€А*
T0
ћ
+gradients/LSTM/rnn/while/Exit_2_grad/b_exitEntergradients/zeros*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
е
+gradients/LSTM/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like_1*
T0*(
_output_shapes
:€€€€€€€€€А*
is_constant( *6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations 
е
+gradients/LSTM/rnn/while/Exit_4_grad/b_exitEntergradients/zeros_like_2*
is_constant( *
T0*
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context*(
_output_shapes
:€€€€€€€€€А
е
+gradients/LSTM/rnn/while/Exit_5_grad/b_exitEntergradients/zeros_like_3*
is_constant( *
T0*(
_output_shapes
:€€€€€€€€€А*
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context
Щ
!gradients/softmax/L2Loss_grad/mulMulsoftmax_w/read5gradients/softmax/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	А
Ё
gradients/AddNAddN7gradients/softmax/add_2_grad/tuple/control_dependency_1#gradients/softmax/L2Loss_1_grad/mul*
T0*
N*
_output_shapes
:*9
_class/
-+loc:@gradients/softmax/add_2_grad/Reshape_1
џ
/gradients/LSTM/rnn/while/Switch_6_grad/b_switchMerge+gradients/LSTM/rnn/while/Exit_6_grad/b_exit6gradients/LSTM/rnn/while/Switch_6_grad_1/NextIteration*
T0**
_output_shapes
:€€€€€€€€€А: *
N
џ
/gradients/LSTM/rnn/while/Switch_3_grad/b_switchMerge+gradients/LSTM/rnn/while/Exit_3_grad/b_exit6gradients/LSTM/rnn/while/Switch_3_grad_1/NextIteration*
N**
_output_shapes
:€€€€€€€€€А: *
T0
џ
/gradients/LSTM/rnn/while/Switch_4_grad/b_switchMerge+gradients/LSTM/rnn/while/Exit_4_grad/b_exit6gradients/LSTM/rnn/while/Switch_4_grad_1/NextIteration**
_output_shapes
:€€€€€€€€€А: *
N*
T0
џ
/gradients/LSTM/rnn/while/Switch_5_grad/b_switchMerge+gradients/LSTM/rnn/while/Exit_5_grad/b_exit6gradients/LSTM/rnn/while/Switch_5_grad_1/NextIteration**
_output_shapes
:€€€€€€€€€А: *
N*
T0
г
gradients/AddN_1AddN8gradients/softmax/MatMul_grad/tuple/control_dependency_1!gradients/softmax/L2Loss_grad/mul*9
_class/
-+loc:@gradients/softmax/MatMul_grad/MatMul_1*
_output_shapes
:	А*
N*
T0
З
,gradients/LSTM/rnn/while/Merge_6_grad/SwitchSwitch/gradients/LSTM/rnn/while/Switch_6_grad/b_switchgradients/b_count_2*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*
T0*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_6_grad/b_switch
m
6gradients/LSTM/rnn/while/Merge_6_grad/tuple/group_depsNoOp-^gradients/LSTM/rnn/while/Merge_6_grad/Switch
®
>gradients/LSTM/rnn/while/Merge_6_grad/tuple/control_dependencyIdentity,gradients/LSTM/rnn/while/Merge_6_grad/Switch7^gradients/LSTM/rnn/while/Merge_6_grad/tuple/group_deps*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_6_grad/b_switch*
T0*(
_output_shapes
:€€€€€€€€€А
ђ
@gradients/LSTM/rnn/while/Merge_6_grad/tuple/control_dependency_1Identity.gradients/LSTM/rnn/while/Merge_6_grad/Switch:17^gradients/LSTM/rnn/while/Merge_6_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_6_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
З
,gradients/LSTM/rnn/while/Merge_3_grad/SwitchSwitch/gradients/LSTM/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_3_grad/b_switch*
T0*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
m
6gradients/LSTM/rnn/while/Merge_3_grad/tuple/group_depsNoOp-^gradients/LSTM/rnn/while/Merge_3_grad/Switch
®
>gradients/LSTM/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity,gradients/LSTM/rnn/while/Merge_3_grad/Switch7^gradients/LSTM/rnn/while/Merge_3_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_3_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
ђ
@gradients/LSTM/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity.gradients/LSTM/rnn/while/Merge_3_grad/Switch:17^gradients/LSTM/rnn/while/Merge_3_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_3_grad/b_switch
З
,gradients/LSTM/rnn/while/Merge_4_grad/SwitchSwitch/gradients/LSTM/rnn/while/Switch_4_grad/b_switchgradients/b_count_2*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_4_grad/b_switch*
T0*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
m
6gradients/LSTM/rnn/while/Merge_4_grad/tuple/group_depsNoOp-^gradients/LSTM/rnn/while/Merge_4_grad/Switch
®
>gradients/LSTM/rnn/while/Merge_4_grad/tuple/control_dependencyIdentity,gradients/LSTM/rnn/while/Merge_4_grad/Switch7^gradients/LSTM/rnn/while/Merge_4_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_4_grad/b_switch
ђ
@gradients/LSTM/rnn/while/Merge_4_grad/tuple/control_dependency_1Identity.gradients/LSTM/rnn/while/Merge_4_grad/Switch:17^gradients/LSTM/rnn/while/Merge_4_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_4_grad/b_switch*(
_output_shapes
:€€€€€€€€€А
З
,gradients/LSTM/rnn/while/Merge_5_grad/SwitchSwitch/gradients/LSTM/rnn/while/Switch_5_grad/b_switchgradients/b_count_2*
T0*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_5_grad/b_switch
m
6gradients/LSTM/rnn/while/Merge_5_grad/tuple/group_depsNoOp-^gradients/LSTM/rnn/while/Merge_5_grad/Switch
®
>gradients/LSTM/rnn/while/Merge_5_grad/tuple/control_dependencyIdentity,gradients/LSTM/rnn/while/Merge_5_grad/Switch7^gradients/LSTM/rnn/while/Merge_5_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_5_grad/b_switch
ђ
@gradients/LSTM/rnn/while/Merge_5_grad/tuple/control_dependency_1Identity.gradients/LSTM/rnn/while/Merge_5_grad/Switch:17^gradients/LSTM/rnn/while/Merge_5_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients/LSTM/rnn/while/Switch_5_grad/b_switch
•
*gradients/LSTM/rnn/while/Enter_6_grad/ExitExit>gradients/LSTM/rnn/while/Merge_6_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
•
*gradients/LSTM/rnn/while/Enter_3_grad/ExitExit>gradients/LSTM/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
•
*gradients/LSTM/rnn/while/Enter_4_grad/ExitExit>gradients/LSTM/rnn/while/Merge_4_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
•
*gradients/LSTM/rnn/while/Enter_5_grad/ExitExit>gradients/LSTM/rnn/while/Merge_5_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
ѓ
1gradients/LSTM/rnn/while/Select_4_grad/zeros_like	ZerosLike<gradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0
∞
7gradients/LSTM/rnn/while/Select_4_grad/zeros_like/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*,
_class"
 loc:@LSTM/rnn/while/Identity_6*
dtype0
и
7gradients/LSTM/rnn/while/Select_4_grad/zeros_like/f_accStackV27gradients/LSTM/rnn/while/Select_4_grad/zeros_like/Const*,
_class"
 loc:@LSTM/rnn/while/Identity_6*
_output_shapes
:*

stack_name *
	elem_type0
ъ
7gradients/LSTM/rnn/while/Select_4_grad/zeros_like/EnterEnter7gradients/LSTM/rnn/while/Select_4_grad/zeros_like/f_acc*
parallel_iterations *
T0*
_output_shapes
:*
is_constant(*,

frame_nameLSTM/rnn/while/while_context
ц
=gradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPushV2StackPushV27gradients/LSTM/rnn/while/Select_4_grad/zeros_like/EnterLSTM/rnn/while/Identity_6^gradients/Add*
swap_memory( *
T0*(
_output_shapes
:€€€€€€€€€А
ў
<gradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPopV2
StackPopV2Bgradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
П
Bgradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPopV2/EnterEnter7gradients/LSTM/rnn/while/Select_4_grad/zeros_like/f_acc*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
T0*
_output_shapes
:
™!
8gradients/LSTM/rnn/while/Select_4_grad/zeros_like/b_syncControlTrigger=^gradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPopV2=^gradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPopV2=^gradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPopV29^gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2=^gradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPopV2_^gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2e^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2S^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2e^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2g^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1S^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2U^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2_^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2]^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2k^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2k^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1g^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2]^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPopV2[^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2k^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1W^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2k^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1W^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2k^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2k^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1W^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPopV2Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2k^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1W^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPopV2Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPopV2g^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2i^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1W^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2
Щ
-gradients/LSTM/rnn/while/Select_4_grad/SelectSelect8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2@gradients/LSTM/rnn/while/Merge_6_grad/tuple/control_dependency_11gradients/LSTM/rnn/while/Select_4_grad/zeros_like*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
3gradients/LSTM/rnn/while/Select_4_grad/Select/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0*.
_class$
" loc:@LSTM/rnn/while/GreaterEqual
в
3gradients/LSTM/rnn/while/Select_4_grad/Select/f_accStackV23gradients/LSTM/rnn/while/Select_4_grad/Select/Const*

stack_name *
	elem_type0
*.
_class$
" loc:@LSTM/rnn/while/GreaterEqual*
_output_shapes
:
т
3gradients/LSTM/rnn/while/Select_4_grad/Select/EnterEnter3gradients/LSTM/rnn/while/Select_4_grad/Select/f_acc*
parallel_iterations *
is_constant(*
T0*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context
л
9gradients/LSTM/rnn/while/Select_4_grad/Select/StackPushV2StackPushV23gradients/LSTM/rnn/while/Select_4_grad/Select/EnterLSTM/rnn/while/GreaterEqual^gradients/Add*
swap_memory( *#
_output_shapes
:€€€€€€€€€*
T0

ћ
8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2
StackPopV2>gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2/Enter^gradients/Sub*#
_output_shapes
:€€€€€€€€€*
	elem_type0

З
>gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2/EnterEnter3gradients/LSTM/rnn/while/Select_4_grad/Select/f_acc*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:*
parallel_iterations *
T0
Ы
/gradients/LSTM/rnn/while/Select_4_grad/Select_1Select8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV21gradients/LSTM/rnn/while/Select_4_grad/zeros_like@gradients/LSTM/rnn/while/Merge_6_grad/tuple/control_dependency_1*(
_output_shapes
:€€€€€€€€€А*
T0
°
7gradients/LSTM/rnn/while/Select_4_grad/tuple/group_depsNoOp.^gradients/LSTM/rnn/while/Select_4_grad/Select0^gradients/LSTM/rnn/while/Select_4_grad/Select_1
©
?gradients/LSTM/rnn/while/Select_4_grad/tuple/control_dependencyIdentity-gradients/LSTM/rnn/while/Select_4_grad/Select8^gradients/LSTM/rnn/while/Select_4_grad/tuple/group_deps*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_4_grad/Select*
T0*(
_output_shapes
:€€€€€€€€€А
ѓ
Agradients/LSTM/rnn/while/Select_4_grad/tuple/control_dependency_1Identity/gradients/LSTM/rnn/while/Select_4_grad/Select_18^gradients/LSTM/rnn/while/Select_4_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients/LSTM/rnn/while/Select_4_grad/Select_1
ѓ
1gradients/LSTM/rnn/while/Select_1_grad/zeros_like	ZerosLike<gradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
∞
7gradients/LSTM/rnn/while/Select_1_grad/zeros_like/ConstConst*,
_class"
 loc:@LSTM/rnn/while/Identity_3*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
и
7gradients/LSTM/rnn/while/Select_1_grad/zeros_like/f_accStackV27gradients/LSTM/rnn/while/Select_1_grad/zeros_like/Const*
	elem_type0*

stack_name *
_output_shapes
:*,
_class"
 loc:@LSTM/rnn/while/Identity_3
ъ
7gradients/LSTM/rnn/while/Select_1_grad/zeros_like/EnterEnter7gradients/LSTM/rnn/while/Select_1_grad/zeros_like/f_acc*
parallel_iterations *
T0*,

frame_nameLSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:
ц
=gradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPushV2StackPushV27gradients/LSTM/rnn/while/Select_1_grad/zeros_like/EnterLSTM/rnn/while/Identity_3^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
ў
<gradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2Bgradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
П
Bgradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPopV2/EnterEnter7gradients/LSTM/rnn/while/Select_1_grad/zeros_like/f_acc*
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:*
T0
Щ
-gradients/LSTM/rnn/while/Select_1_grad/SelectSelect8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2@gradients/LSTM/rnn/while/Merge_3_grad/tuple/control_dependency_11gradients/LSTM/rnn/while/Select_1_grad/zeros_like*(
_output_shapes
:€€€€€€€€€А*
T0
Ы
/gradients/LSTM/rnn/while/Select_1_grad/Select_1Select8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV21gradients/LSTM/rnn/while/Select_1_grad/zeros_like@gradients/LSTM/rnn/while/Merge_3_grad/tuple/control_dependency_1*(
_output_shapes
:€€€€€€€€€А*
T0
°
7gradients/LSTM/rnn/while/Select_1_grad/tuple/group_depsNoOp.^gradients/LSTM/rnn/while/Select_1_grad/Select0^gradients/LSTM/rnn/while/Select_1_grad/Select_1
©
?gradients/LSTM/rnn/while/Select_1_grad/tuple/control_dependencyIdentity-gradients/LSTM/rnn/while/Select_1_grad/Select8^gradients/LSTM/rnn/while/Select_1_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_1_grad/Select
ѓ
Agradients/LSTM/rnn/while/Select_1_grad/tuple/control_dependency_1Identity/gradients/LSTM/rnn/while/Select_1_grad/Select_18^gradients/LSTM/rnn/while/Select_1_grad/tuple/group_deps*B
_class8
64loc:@gradients/LSTM/rnn/while/Select_1_grad/Select_1*(
_output_shapes
:€€€€€€€€€А*
T0
ѓ
1gradients/LSTM/rnn/while/Select_2_grad/zeros_like	ZerosLike<gradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
∞
7gradients/LSTM/rnn/while/Select_2_grad/zeros_like/ConstConst*,
_class"
 loc:@LSTM/rnn/while/Identity_4*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
и
7gradients/LSTM/rnn/while/Select_2_grad/zeros_like/f_accStackV27gradients/LSTM/rnn/while/Select_2_grad/zeros_like/Const*
	elem_type0*

stack_name *,
_class"
 loc:@LSTM/rnn/while/Identity_4*
_output_shapes
:
ъ
7gradients/LSTM/rnn/while/Select_2_grad/zeros_like/EnterEnter7gradients/LSTM/rnn/while/Select_2_grad/zeros_like/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
T0
ц
=gradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPushV2StackPushV27gradients/LSTM/rnn/while/Select_2_grad/zeros_like/EnterLSTM/rnn/while/Identity_4^gradients/Add*(
_output_shapes
:€€€€€€€€€А*
T0*
swap_memory( 
ў
<gradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPopV2
StackPopV2Bgradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
П
Bgradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPopV2/EnterEnter7gradients/LSTM/rnn/while/Select_2_grad/zeros_like/f_acc*
T0*
_output_shapes
:*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations 
Щ
-gradients/LSTM/rnn/while/Select_2_grad/SelectSelect8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2@gradients/LSTM/rnn/while/Merge_4_grad/tuple/control_dependency_11gradients/LSTM/rnn/while/Select_2_grad/zeros_like*(
_output_shapes
:€€€€€€€€€А*
T0
Ы
/gradients/LSTM/rnn/while/Select_2_grad/Select_1Select8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV21gradients/LSTM/rnn/while/Select_2_grad/zeros_like@gradients/LSTM/rnn/while/Merge_4_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
°
7gradients/LSTM/rnn/while/Select_2_grad/tuple/group_depsNoOp.^gradients/LSTM/rnn/while/Select_2_grad/Select0^gradients/LSTM/rnn/while/Select_2_grad/Select_1
©
?gradients/LSTM/rnn/while/Select_2_grad/tuple/control_dependencyIdentity-gradients/LSTM/rnn/while/Select_2_grad/Select8^gradients/LSTM/rnn/while/Select_2_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_2_grad/Select*(
_output_shapes
:€€€€€€€€€А
ѓ
Agradients/LSTM/rnn/while/Select_2_grad/tuple/control_dependency_1Identity/gradients/LSTM/rnn/while/Select_2_grad/Select_18^gradients/LSTM/rnn/while/Select_2_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*B
_class8
64loc:@gradients/LSTM/rnn/while/Select_2_grad/Select_1
ѓ
1gradients/LSTM/rnn/while/Select_3_grad/zeros_like	ZerosLike<gradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0
∞
7gradients/LSTM/rnn/while/Select_3_grad/zeros_like/ConstConst*
dtype0*,
_class"
 loc:@LSTM/rnn/while/Identity_5*
valueB :
€€€€€€€€€*
_output_shapes
: 
и
7gradients/LSTM/rnn/while/Select_3_grad/zeros_like/f_accStackV27gradients/LSTM/rnn/while/Select_3_grad/zeros_like/Const*,
_class"
 loc:@LSTM/rnn/while/Identity_5*
_output_shapes
:*
	elem_type0*

stack_name 
ъ
7gradients/LSTM/rnn/while/Select_3_grad/zeros_like/EnterEnter7gradients/LSTM/rnn/while/Select_3_grad/zeros_like/f_acc*
parallel_iterations *
T0*
is_constant(*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:
ц
=gradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPushV2StackPushV27gradients/LSTM/rnn/while/Select_3_grad/zeros_like/EnterLSTM/rnn/while/Identity_5^gradients/Add*
swap_memory( *(
_output_shapes
:€€€€€€€€€А*
T0
ў
<gradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPopV2
StackPopV2Bgradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
П
Bgradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPopV2/EnterEnter7gradients/LSTM/rnn/while/Select_3_grad/zeros_like/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:*
parallel_iterations *
T0*
is_constant(
Щ
-gradients/LSTM/rnn/while/Select_3_grad/SelectSelect8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV2@gradients/LSTM/rnn/while/Merge_5_grad/tuple/control_dependency_11gradients/LSTM/rnn/while/Select_3_grad/zeros_like*
T0*(
_output_shapes
:€€€€€€€€€А
Ы
/gradients/LSTM/rnn/while/Select_3_grad/Select_1Select8gradients/LSTM/rnn/while/Select_4_grad/Select/StackPopV21gradients/LSTM/rnn/while/Select_3_grad/zeros_like@gradients/LSTM/rnn/while/Merge_5_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
°
7gradients/LSTM/rnn/while/Select_3_grad/tuple/group_depsNoOp.^gradients/LSTM/rnn/while/Select_3_grad/Select0^gradients/LSTM/rnn/while/Select_3_grad/Select_1
©
?gradients/LSTM/rnn/while/Select_3_grad/tuple/control_dependencyIdentity-gradients/LSTM/rnn/while/Select_3_grad/Select8^gradients/LSTM/rnn/while/Select_3_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_3_grad/Select
ѓ
Agradients/LSTM/rnn/while/Select_3_grad/tuple/control_dependency_1Identity/gradients/LSTM/rnn/while/Select_3_grad/Select_18^gradients/LSTM/rnn/while/Select_3_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients/LSTM/rnn/while/Select_3_grad/Select_1
…
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/ShapeShape<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5*
out_type0*
_output_shapes
:*
T0
»
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape_1Shape9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3*
out_type0*
_output_shapes
:*
T0
Й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/ConstConst*
dtype0*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape*
valueB :
€€€€€€€€€*
_output_shapes
: 
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Const*
_output_shapes
:*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape*
	elem_type0*

stack_name 
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
is_constant(*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:*
T0
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
parallel_iterations *
_output_shapes
:*
is_constant(
Ф
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1Const*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape_1*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
ъ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape_1*
	elem_type0*

stack_name 
÷
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1Enteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
T0*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:*
is_constant(*
parallel_iterations 
ъ
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape_1^gradients/Add*
swap_memory( *
T0*
_output_shapes
:
І
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
л
pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
parallel_iterations *
T0
†
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/MulMulAgradients/LSTM/rnn/while/Select_4_grad/tuple/control_dependency_1Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
к
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/ConstConst*
dtype0*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3*
valueB :
€€€€€€€€€*
_output_shapes
: 
Љ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/f_accStackV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/Const*
	elem_type0*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3*
_output_shapes
:*

stack_name 
Ѓ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
T0*
is_constant(
 
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPushV2StackPushV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/Enter9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3^gradients/Add*
T0*(
_output_shapes
:€€€€€€€€€А*
swap_memory( 
Н
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPopV2
StackPopV2\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
√
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPopV2/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
_output_shapes
:*
parallel_iterations *
is_constant(
Њ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/SumSumKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
Tshape0*
T0
§
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1MulXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPopV2Agradients/LSTM/rnn/while/Select_4_grad/tuple/control_dependency_1*(
_output_shapes
:€€€€€€€€€А*
T0
п
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/ConstConst*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
√
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/f_accStackV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*

stack_name *O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5
≤
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/f_acc*
is_constant(*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
T0
—
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPushV2StackPushV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/Enter<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5^gradients/Add*
T0*(
_output_shapes
:€€€€€€€€€А*
swap_memory( 
С
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPopV2
StackPopV2^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
«
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPopV2/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/f_acc*
_output_shapes
:*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
is_constant(*
T0
ƒ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Sum_1SumMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
Ў
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Sum_1jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*(
_output_shapes
:€€€€€€€€€А*
Tshape0*
T0
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Reshape
µ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Reshape_1
’
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5_grad/SigmoidGradSigmoidGradXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
ћ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3_grad/TanhGradTanhGradVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/tuple/control_dependency_1*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
gradients/AddN_2AddNAgradients/LSTM/rnn/while/Select_3_grad/tuple/control_dependency_1Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3_grad/TanhGrad*
N*(
_output_shapes
:€€€€€€€€€А*
T0*B
_class8
64loc:@gradients/LSTM/rnn/while/Select_3_grad/Select_1
≈
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/ShapeShape8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3*
out_type0*
_output_shapes
:*
T0
«
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape_1Shape8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4*
out_type0*
_output_shapes
:*
T0
Й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Const*
	elem_type0*
_output_shapes
:*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape*

stack_name 
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc*
is_constant(*
T0*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
_output_shapes
:
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:*
is_constant(
Ф
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: *b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape_1
ъ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Const_1*
	elem_type0*
_output_shapes
:*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape_1*

stack_name 
÷
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1Enteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *
_output_shapes
:*
is_constant(*,

frame_nameLSTM/rnn/while/while_context
ъ
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
І
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
л
pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context
Г
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/SumSumgradients/AddN_2]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А*
Tshape0
З
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Sum_1Sumgradients/AddN_2_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ў
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Sum_1jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
µ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/group_deps*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А*
T0
…
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/ShapeShape<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3*
_output_shapes
:*
out_type0*
T0
®
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape_1ShapeLSTM/rnn/while/Identity_5*
out_type0*
_output_shapes
:*
T0
Й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Const*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape*
_output_shapes
:*
	elem_type0*

stack_name 
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
T0*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape^gradients/Add*
_output_shapes
:*
T0*
swap_memory( 
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
T0*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations 
Ф
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape_1*
valueB :
€€€€€€€€€
ъ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *
_output_shapes
:*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape_1
÷
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1Enteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
parallel_iterations *
_output_shapes
:*
is_constant(*,

frame_nameLSTM/rnn/while/while_context
ъ
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
І
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
л
pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*
parallel_iterations *
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(
•
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/MulMul`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/control_dependency<gradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0
Њ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/SumSumKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А*
Tshape0
√
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1MulXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
п
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3*
_output_shapes
: 
√
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/f_accStackV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/Const*
	elem_type0*

stack_name *O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3*
_output_shapes
:
≤
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/f_acc*
_output_shapes
:*
is_constant(*
T0*
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context
—
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPushV2StackPushV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/Enter<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3^gradients/Add*
T0*(
_output_shapes
:€€€€€€€€€А*
swap_memory( 
С
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPopV2
StackPopV2^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
«
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPopV2/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/f_acc*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:*
T0*
parallel_iterations 
ƒ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Sum_1SumMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
Ў
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Sum_1jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*(
_output_shapes
:€€€€€€€€€А*
Tshape0*
T0
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Reshape*
T0
µ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
…
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/ShapeShape<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4*
T0*
_output_shapes
:*
out_type0
»
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape_1Shape9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2*
out_type0*
T0*
_output_shapes
:
Й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/ConstConst*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Const*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape*
	elem_type0*

stack_name *
_output_shapes
:
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:*
is_constant(*
parallel_iterations 
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
parallel_iterations *
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:
Ф
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape_1
ъ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape_1*

stack_name 
÷
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1Enteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
_output_shapes
:*
T0*
is_constant(
ъ
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
І
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
л
pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
T0*
_output_shapes
:*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context
Ѕ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/MulMulbgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/control_dependency_1Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0
к
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2
Љ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/f_accStackV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/Const*
_output_shapes
:*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2*
	elem_type0*

stack_name 
Ѓ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/f_acc*,

frame_nameLSTM/rnn/while/while_context*
T0*
_output_shapes
:*
is_constant(*
parallel_iterations 
 
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPushV2StackPushV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/Enter9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2^gradients/Add*(
_output_shapes
:€€€€€€€€€А*
swap_memory( *
T0
Н
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPopV2
StackPopV2\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
√
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPopV2/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:*
parallel_iterations *
T0
Њ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/SumSumKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
≈
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1MulXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
п
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/ConstConst*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
√
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/f_accStackV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/Const*
	elem_type0*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4*
_output_shapes
:*

stack_name 
≤
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/f_acc*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
is_constant(*
T0
—
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPushV2StackPushV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/Enter<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:€€€€€€€€€А
С
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPopV2
StackPopV2^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
«
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPopV2/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
ƒ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Sum_1SumMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ў
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Sum_1jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/tuple/group_deps*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Reshape*(
_output_shapes
:€€€€€€€€€А*
T0
µ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/tuple/group_deps*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Reshape_1*
T0*(
_output_shapes
:€€€€€€€€€А
’
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3_grad/SigmoidGradSigmoidGradXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
ї
gradients/AddN_3AddN?gradients/LSTM/rnn/while/Select_3_grad/tuple/control_dependencybgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/tuple/control_dependency_1*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_3_grad/Select*
T0*(
_output_shapes
:€€€€€€€€€А*
N
’
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4_grad/SigmoidGradSigmoidGradXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
ћ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2_grad/TanhGradTanhGradVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
…
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/ShapeShape<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:2*
_output_shapes
:*
T0*
out_type0
Ґ
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Shape_1Const^gradients/Sub*
_output_shapes
: *
valueB *
dtype0
о
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/ConstConst*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Shape*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/Const*
	elem_type0*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Shape*

stack_name *
_output_shapes
:
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
T0*
is_constant(
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Shape^gradients/Add*
swap_memory( *
T0*
_output_shapes
:
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
is_constant(*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations 
 
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/SumSumWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3_grad/SigmoidGrad]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
ќ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Sum_1SumWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3_grad/SigmoidGrad_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
Ђ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Sum_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/tuple/group_deps*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Reshape*
T0*(
_output_shapes
:€€€€€€€€€А
£
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/tuple/group_deps*
_output_shapes
: *d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Reshape_1*
T0
М
6gradients/LSTM/rnn/while/Switch_5_grad_1/NextIterationNextIterationgradients/AddN_3*
T0*(
_output_shapes
:€€€€€€€€€А
г
Pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1_grad/concatConcatV2Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4_grad/SigmoidGradQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2_grad/TanhGrad`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/tuple/control_dependencyWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5_grad/SigmoidGradVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1_grad/concat/Const*

Tidx0*
N*
T0*(
_output_shapes
:€€€€€€€€€А
®
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1_grad/concat/ConstConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
х
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradPgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:А
С
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/group_depsNoOpX^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/BiasAddGradQ^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1_grad/concat
є
dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/control_dependencyIdentityPgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1_grad/concat]^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/group_deps*c
_classY
WUloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1_grad/concat*
T0*(
_output_shapes
:€€€€€€€€€А
Љ
fgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1IdentityWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/BiasAddGrad]^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/group_deps*
_output_shapes	
:А*
T0*j
_class`
^\loc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/BiasAddGrad
у
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMulMatMuldgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/control_dependencyWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul/Enter*(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
T0*
transpose_a( 
І
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul/EnterEnter4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*
parallel_iterations *
is_constant(* 
_output_shapes
:
АА*6

frame_name(&gradients/LSTM/rnn/while/while_context
ф
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1MatMul^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
ф
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*
_output_shapes
: *N
_classD
B@loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1*
dtype0
ќ
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/f_accStackV2Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/Const*
	elem_type0*
_output_shapes
:*N
_classD
B@loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1*

stack_name 
Њ
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/EnterEnterYgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
T0
№
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/Enter;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1^gradients/Add*
T0*(
_output_shapes
:€€€€€€€€€А*
swap_memory( 
Э
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
”
dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterYgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
_output_shapes
:*
parallel_iterations *
is_constant(
Н
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/group_depsNoOpR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMulT^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1
є
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/control_dependencyIdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul\^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/group_deps*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
Ј
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/control_dependency_1IdentitySgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1\^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/group_deps*f
_class\
ZXloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1*
T0* 
_output_shapes
:
АА
Ґ
Pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
°
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/RankConst^gradients/Sub*
_output_shapes
: *
dtype0*
value	B :
Ю
Ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/modFloorModPgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ConstOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Rank*
T0*
_output_shapes
: 
ƒ
Pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeShape4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
out_type0*
T0*
_output_shapes
:
ї
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeNShapeN\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPopV2<gradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPopV2*
out_type0*
T0*
N* 
_output_shapes
::
л
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/ConstConst*G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
√
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/f_accStackV2Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/Const*
_output_shapes
:*
	elem_type0*G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*

stack_name 
Ї
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/EnterEnterWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/f_acc*
T0*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
is_constant(*
_output_shapes
:
—
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/Enter4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul^gradients/Add*(
_output_shapes
:€€€€€€€€€А*
swap_memory( *
T0
Щ
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
ѕ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPopV2/EnterEnterWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/f_acc*
is_constant(*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:*
parallel_iterations 
К
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ConcatOffsetConcatOffsetNgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/modQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeNSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::
≤
Pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/SliceSlicecgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/control_dependencyWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ConcatOffsetQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Index0*
T0
Є
Rgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Slice_1Slicecgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/control_dependencyYgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ConcatOffset:1Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN:1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Index0
Л
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/group_depsNoOpQ^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/SliceS^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Slice_1
Ј
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/control_dependencyIdentityPgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Slice\^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*c
_classY
WUloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Slice
љ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/control_dependency_1IdentityRgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Slice_1\^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*e
_class[
YWloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Slice_1
љ
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ShapeShape4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*
T0*
_output_shapes
:*
out_type0
Ѕ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1Shape6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0*
_output_shapes
:*
out_type0
э
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsdgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2fgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
И
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/ConstConst*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: *\
_classR
PNloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape
и
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const*
_output_shapes
:*

stack_name *\
_classR
PNloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape*
	elem_type0
 
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterEnter_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
is_constant(*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
T0
и
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Ы
dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
я
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
:*
parallel_iterations *
is_constant(*
T0
М
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1
о
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const_1*^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1*

stack_name *
	elem_type0*
_output_shapes
:
ќ
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enteragradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
is_constant(*
T0*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context
о
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
Я
fgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2lgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
г
lgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteragradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:*
T0*
parallel_iterations 
Ї
Ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/MulMulcgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/control_dependencyRgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0
г
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*
dtype0*I
_class?
=;loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
_output_shapes
: 
±
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_accStackV2Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/Const*

stack_name *
	elem_type0*
_output_shapes
:*I
_class?
=;loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor
¶
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/EnterEnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_acc*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:*
parallel_iterations *
T0*
is_constant(
њ
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPushV2StackPushV2Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/Enter6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor^gradients/Add*
swap_memory( *
T0*(
_output_shapes
:€€€€€€€€€А
Е
Rgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2
StackPopV2Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
ї
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2/EnterEnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_acc*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
is_constant(*
_output_shapes
:
≤
Ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/SumSumGgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/MulYgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
∆
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeReshapeGgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sumdgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0
Њ
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1MulTgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
г
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: *G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div
≥
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_accStackV2Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/Const*G
_class=
;9loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*
_output_shapes
:*

stack_name *
	elem_type0
™
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/EnterEnterOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_acc*
parallel_iterations *
T0*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
is_constant(
Ѕ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPushV2StackPushV2Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/Enter4LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div^gradients/Add*
swap_memory( *(
_output_shapes
:€€€€€€€€€А*
T0
Й
Tgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2
StackPopV2Zgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
њ
Zgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2/EnterEnterOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_acc*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:*
parallel_iterations 
Є
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1SumIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ћ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1ReshapeIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1fgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
ъ
Tgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/group_depsNoOpL^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeN^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1
Я
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependencyIdentityKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeU^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape
•
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependency_1IdentityMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1U^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/group_deps*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1*
T0*(
_output_shapes
:€€€€€€€€€А
Њ
gradients/AddN_4AddN?gradients/LSTM/rnn/while/Select_4_grad/tuple/control_dependencyegradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/tuple/control_dependency_1*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_4_grad/Select*(
_output_shapes
:€€€€€€€€€А*
N*
T0
Ѕ
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ShapeShape8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
T0*
_output_shapes
:*
out_type0
Ю
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1Const^gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
в
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsdgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
И
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/ConstConst*\
_classR
PNloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
и
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_accStackV2_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*\
_classR
PNloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape*

stack_name 
 
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterEnter_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*,

frame_nameLSTM/rnn/while/while_context*
T0*
_output_shapes
:*
is_constant(*
parallel_iterations 
и
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape^gradients/Add*
swap_memory( *
T0*
_output_shapes
:
Ы
dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
я
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnter_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
is_constant(*
T0*
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context
Ї
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivRealDiv\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependencyQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv/Enter*(
_output_shapes
:€€€€€€€€€А*
T0
м
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv/EnterEnter	keep_prob*
_output_shapes
: *6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
parallel_iterations *
T0
ґ
Ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/SumSumKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivYgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
∆
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeReshapeGgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sumdgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А*
Tshape0
’
Ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/NegNegRgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
е
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/ConstConst*K
_classA
?=loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
≥
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_accStackV2Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/Const*

stack_name *
_output_shapes
:*
	elem_type0*K
_classA
?=loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
¶
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/EnterEnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc*
T0*
_output_shapes
:*
parallel_iterations *
is_constant(*,

frame_nameLSTM/rnn/while/while_context
Ѕ
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPushV2StackPushV2Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/Enter8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2^gradients/Add*(
_output_shapes
:€€€€€€€€€А*
T0*
swap_memory( 
Е
Rgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2
StackPopV2Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
ї
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPopV2/EnterEnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc*
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
_output_shapes
:*
is_constant(
І
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1RealDivGgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/NegQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv/Enter*(
_output_shapes
:€€€€€€€€€А*
T0
≠
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2RealDivMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv/Enter*
T0*(
_output_shapes
:€€€€€€€€€А
Ѓ
Ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mulMul\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependencyMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:€€€€€€€€€А
ґ
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1SumGgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mul[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Я
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1ReshapeIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
ъ
Tgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/group_depsNoOpL^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeN^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1
Я
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/control_dependencyIdentityKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeU^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape
У
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/control_dependency_1IdentityMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1U^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/group_deps*
_output_shapes
: *`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1*
T0
М
6gradients/LSTM/rnn/while/Switch_6_grad_1/NextIterationNextIterationgradients/AddN_4*
T0*(
_output_shapes
:€€€€€€€€€А
є
gradients/AddN_5AddNAgradients/LSTM/rnn/while/Select_2_grad/tuple/control_dependency_1\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/control_dependency*
T0*
N*B
_class8
64loc:@gradients/LSTM/rnn/while/Select_2_grad/Select_1*(
_output_shapes
:€€€€€€€€€А
…
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ShapeShape<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2*
out_type0*
T0*
_output_shapes
:
»
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1Shape9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
T0*
_output_shapes
:*
out_type0
Й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const*
	elem_type0*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape*
_output_shapes
:*

stack_name 
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
is_constant(*,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:*
T0*
parallel_iterations 
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:*
parallel_iterations *
T0
Ф
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
ъ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*

stack_name *b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1
÷
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*,

frame_nameLSTM/rnn/while/while_context*
T0*
_output_shapes
:*
parallel_iterations 
ъ
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
І
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
л
pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
п
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/MulMulgradients/AddN_5Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А
к
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/ConstConst*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Љ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_accStackV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1
Ѓ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_acc*
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context*
_output_shapes
:*
is_constant(*
T0
 
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/Enter9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1^gradients/Add*(
_output_shapes
:€€€€€€€€€А*
T0*
swap_memory( 
Н
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
√
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_acc*
is_constant(*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
_output_shapes
:
Њ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/SumSumKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
у
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1MulXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2gradients/AddN_5*
T0*(
_output_shapes
:€€€€€€€€€А
п
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/ConstConst*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
√
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_accStackV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/Const*

stack_name *
	elem_type0*
_output_shapes
:*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2
≤
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_acc*
_output_shapes
:*
is_constant(*
T0*
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context
—
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/Enter<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2^gradients/Add*
swap_memory( *(
_output_shapes
:€€€€€€€€€А*
T0
С
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
«
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0
ƒ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sum_1SumMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ў
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sum_1jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*(
_output_shapes
:€€€€€€€€€А
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape*
T0
µ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1
’
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
ћ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGradTanhGradVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/tuple/control_dependency_1*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
gradients/AddN_6AddNAgradients/LSTM/rnn/while/Select_1_grad/tuple/control_dependency_1Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGrad*
N*
T0*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients/LSTM/rnn/while/Select_1_grad/Select_1
√
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ShapeShape6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
T0*
out_type0*
_output_shapes
:
«
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1Shape8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
out_type0*
_output_shapes
:*
T0
Й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape*
_output_shapes
: *
dtype0
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Const*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape*
_output_shapes
:*
	elem_type0*

stack_name 
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
is_constant(*
_output_shapes
:*
T0*,

frame_nameLSTM/rnn/while/while_context
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape^gradients/Add*
_output_shapes
:*
T0*
swap_memory( 
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*
T0*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context
Ф
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1Const*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ъ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1*

stack_name *
	elem_type0*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1*
_output_shapes
:
÷
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations *,

frame_nameLSTM/rnn/while/while_context
ъ
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1^gradients/Add*
_output_shapes
:*
T0*
swap_memory( 
І
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
л
pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
_output_shapes
:*
T0*
is_constant(
Г
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/SumSumgradients/AddN_6]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
T0*(
_output_shapes
:€€€€€€€€€А
З
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_6_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ў
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sum_1jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape
µ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1
≈
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ShapeShape:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid*
T0*
_output_shapes
:*
out_type0
¶
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1ShapeLSTM/rnn/while/Identity_3*
out_type0*
_output_shapes
:*
T0
Г
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsfgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
М
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape*
_output_shapes
: *
dtype0
о
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*

stack_name *^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape
ќ
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnteragradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*,

frame_nameLSTM/rnn/while/while_context*
parallel_iterations *
_output_shapes
:*
is_constant(
о
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Я
fgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
г
lgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnteragradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
parallel_iterations *
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1Const*
dtype0*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1*
valueB :
€€€€€€€€€*
_output_shapes
: 
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*

stack_name *
_output_shapes
:*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Entercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
T0*
is_constant(
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1^gradients/Add*
_output_shapes
:*
T0*
swap_memory( 
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
_output_shapes
:*
is_constant(*
parallel_iterations 
£
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/MulMul`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/control_dependency<gradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0
Є
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/SumSumIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ћ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ReshapeReshapeIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sumfgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0
њ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1MulVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
л
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: *M
_classC
A?loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid
љ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_accStackV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/Const*M
_classC
A?loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid*

stack_name *
	elem_type0*
_output_shapes
:
Ѓ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_acc*
parallel_iterations *
T0*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context*
is_constant(
Ћ
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/Enter:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid^gradients/Add*
swap_memory( *
T0*(
_output_shapes
:€€€€€€€€€А
Н
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
√
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_acc*
_output_shapes
:*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
parallel_iterations *
is_constant(
Њ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sum_1SumKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1ReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sum_1hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
T0*(
_output_shapes
:€€€€€€€€€А
А
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/tuple/group_depsNoOpN^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ReshapeP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1
І
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/tuple/control_dependencyIdentityMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ReshapeW^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/tuple/group_deps*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape*
T0*(
_output_shapes
:€€€€€€€€€А
≠
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/tuple/control_dependency_1IdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1W^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1
…
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ShapeShape<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1*
out_type0*
_output_shapes
:*
T0
∆
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1Shape7LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*
out_type0*
_output_shapes
:*
T0
Й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*
_output_shapes
: *`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape*
dtype0
ф
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape*

stack_name 
“
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
parallel_iterations *
is_constant(*
T0*,

frame_nameLSTM/rnn/while/while_context
ф
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
£
hgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
з
ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
parallel_iterations 
Ф
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ъ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*

stack_name *b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1*
	elem_type0
÷
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*,

frame_nameLSTM/rnn/while/while_context*
is_constant(*
T0*
_output_shapes
:*
parallel_iterations 
ъ
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1^gradients/Add*
_output_shapes
:*
T0*
swap_memory( 
І
jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
л
pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:*
T0
Ѕ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/MulMulbgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/control_dependency_1Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2*(
_output_shapes
:€€€€€€€€€А*
T0
и
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/ConstConst*J
_class@
><loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
Ї
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_accStackV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/Const*J
_class@
><loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
Ѓ
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_acc*,

frame_nameLSTM/rnn/while/while_context*
is_constant(*
T0*
_output_shapes
:*
parallel_iterations 
»
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/Enter7LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh^gradients/Add*
swap_memory( *
T0*(
_output_shapes
:€€€€€€€€€А
Н
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
√
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_acc*
is_constant(*
T0*
parallel_iterations *
_output_shapes
:*6

frame_name(&gradients/LSTM/rnn/while/while_context
Њ
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/SumSumKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
“
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ReshapeReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sumhgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
≈
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1MulXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:€€€€€€€€€А
п
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/ConstConst*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
√
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_accStackV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/Const*
	elem_type0*
_output_shapes
:*O
_classE
CAloc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1*

stack_name 
≤
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
_output_shapes
:*
parallel_iterations *
is_constant(*,

frame_nameLSTM/rnn/while/while_context
—
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/Enter<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1^gradients/Add*
swap_memory( *
T0*(
_output_shapes
:€€€€€€€€€А
С
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
«
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_acc*
is_constant(*
T0*6

frame_name(&gradients/LSTM/rnn/while/while_context*
parallel_iterations *
_output_shapes
:
ƒ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sum_1SumMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ў
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1ReshapeMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sum_1jgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ж
Xgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ReshapeR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1
ѓ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ReshapeY^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape
µ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1Y^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/tuple/group_deps*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А*
T0
ѕ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
є
gradients/AddN_7AddN?gradients/LSTM/rnn/while/Select_1_grad/tuple/control_dependency`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/tuple/control_dependency_1*
T0*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_1_grad/Select*
N*(
_output_shapes
:€€€€€€€€€А
’
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
 
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGradTanhGradVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/tuple/control_dependency_1*(
_output_shapes
:€€€€€€€€€А*
T0
≈
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ShapeShape:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:2*
_output_shapes
:*
out_type0*
T0
†
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1Const^gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
и
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsfgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
М
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape*
dtype0*
_output_shapes
: 
о
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/Const*^
_classT
RPloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape*
_output_shapes
:*
	elem_type0*

stack_name 
ќ
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnteragradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*,

frame_nameLSTM/rnn/while/while_context*
T0*
is_constant(*
_output_shapes
:*
parallel_iterations 
о
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
Я
fgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2lgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
г
lgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnteragradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*
parallel_iterations *
T0*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context
ƒ
Igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/SumSumUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGrad[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
ћ
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ReshapeReshapeIgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sumfgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*(
_output_shapes
:€€€€€€€€€А*
Tshape0
»
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum_1SumUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGrad]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
•
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape_1ReshapeKgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum_1Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
А
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/tuple/group_depsNoOpN^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ReshapeP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape_1
І
^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/tuple/control_dependencyIdentityMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ReshapeW^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*`
_classV
TRloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape*
T0
Ы
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/tuple/control_dependency_1IdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape_1W^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/tuple/group_deps*
_output_shapes
: *b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape_1*
T0
М
6gradients/LSTM/rnn/while/Switch_3_grad_1/NextIterationNextIterationgradients/AddN_7*(
_output_shapes
:€€€€€€€€€А*
T0
џ
Ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concatConcatV2Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGrad^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/tuple/control_dependencyWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradTgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/Const*(
_output_shapes
:€€€€€€€€€А*
T0*
N*

Tidx0
¶
Tgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
_output_shapes
: *
dtype0*
value	B :
с
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradNgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat*
_output_shapes	
:А*
T0*
data_formatNHWC
Л
Zgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/group_depsNoOpV^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat
±
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityNgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat[^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*a
_classW
USloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat
і
dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGrad[^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А*
T0
п
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulMatMulbgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/control_dependencyWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul/Enter*(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_b(*
transpose_a( 
о
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1MatMul\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
р
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/ConstConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
»
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/Const*
_output_shapes
:*

stack_name *
	elem_type0*L
_classB
@>loc:@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
Ї
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/EnterEnterWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*
is_constant(*,

frame_nameLSTM/rnn/while/while_context*
T0*
_output_shapes
:*
parallel_iterations 
÷
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/Enter9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat^gradients/Add*(
_output_shapes
:€€€€€€€€€А*
swap_memory( *
T0
Щ
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
ѕ
bgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:
З
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/group_depsNoOpP^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulR^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1
±
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/control_dependencyIdentityOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulZ^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*b
_classX
VTloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul
ѓ
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1Z^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/group_deps*
T0* 
_output_shapes
:
АА*d
_classZ
XVloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1
Б
gradients/AddN_8AddNfgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1dgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
N*
_output_shapes	
:А*j
_class`
^\loc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1_grad/BiasAddGrad
§
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_accConst*
dtype0*
_output_shapes	
:А*
valueBА*    
√
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1EnterUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc*
_output_shapes	
:А*
parallel_iterations *6

frame_name(&gradients/LSTM/rnn/while/while_context*
T0*
is_constant( 
…
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2MergeWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
T0*
_output_shapes
	:А: 
ы
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0*"
_output_shapes
:А:А
м
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/AddAddXgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch:1gradients/AddN_8*
_output_shapes	
:А*
T0
й
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationSgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:А*
T0
Ё
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch*
_output_shapes	
:А*
T0
†
Ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConstConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
Я
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ш
Lgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/modFloorModNgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConstMgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Ѓ
Ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeShape LSTM/rnn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
Ј
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeNShapeNZgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2<gradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPopV2*
out_type0*
N*
T0* 
_output_shapes
::
’
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0*3
_class)
'%loc:@LSTM/rnn/while/TensorArrayReadV3
Ђ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_accStackV2Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Const*
_output_shapes
:*3
_class)
'%loc:@LSTM/rnn/while/TensorArrayReadV3*

stack_name *
	elem_type0
ґ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/EnterEnterUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*
is_constant(*
parallel_iterations *
T0*
_output_shapes
:*,

frame_nameLSTM/rnn/while/while_context
є
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Enter LSTM/rnn/while/TensorArrayReadV3^gradients/Add*(
_output_shapes
:€€€€€€€€€А*
swap_memory( *
T0
Х
Zgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
Ћ
`gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*
is_constant(*
T0*
parallel_iterations *
_output_shapes
:*6

frame_name(&gradients/LSTM/rnn/while/while_context
В
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffsetConcatOffsetLgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/modOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeNQgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN:1* 
_output_shapes
::*
N
™
Ngradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceSliceagradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/control_dependencyUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffsetOgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Index0
∞
Pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1Sliceagradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/control_dependencyWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffset:1Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN:1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Index0*
T0
Е
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/tuple/group_depsNoOpO^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceQ^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1
ѓ
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/tuple/control_dependencyIdentityNgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceZ^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*a
_classW
USloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice
µ
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/tuple/control_dependency_1IdentityPgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1Z^gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/tuple/group_deps*
T0*c
_classY
WUloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1*(
_output_shapes
:€€€€€€€€€А
А
gradients/AddN_9AddNegradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/tuple/control_dependency_1cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/tuple/control_dependency_1*
N* 
_output_shapes
:
АА*
T0*f
_class\
ZXloc:@gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1
≠
Tgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_accConst* 
_output_shapes
:
АА*
valueB
АА*    *
dtype0
∆
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1EnterTgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc*
is_constant( *
T0*
parallel_iterations * 
_output_shapes
:
АА*6

frame_name(&gradients/LSTM/rnn/while/while_context
Ћ
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2MergeVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/NextIteration*
N*"
_output_shapes
:
АА: *
T0
Г
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/SwitchSwitchVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*,
_output_shapes
:
АА:
АА*
T0
п
Rgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/AddAddWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Switch:1gradients/AddN_9* 
_output_shapes
:
АА*
T0
м
\gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationRgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
АА
а
Vgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3ExitUgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Switch* 
_output_shapes
:
АА*
T0
Ъ
Qgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Wgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterYgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*9
_class/
-+loc:@LSTM/rnn/while/TensorArrayReadV3/Enter*
source	gradients*
_output_shapes

:: 
Њ
Wgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterLSTM/rnn/TensorArray_1*
parallel_iterations *
_output_shapes
:*9
_class/
-+loc:@LSTM/rnn/while/TensorArrayReadV3/Enter*6

frame_name(&gradients/LSTM/rnn/while/while_context*
is_constant(*
T0
й
Ygradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterCLSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
T0*
_output_shapes
: *
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context*9
_class/
-+loc:@LSTM/rnn/while/TensorArrayReadV3/Enter
д
Mgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityYgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1R^gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *9
_class/
-+loc:@LSTM/rnn/while/TensorArrayReadV3/Enter*
T0
п
Sgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Qgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3^gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/tuple/control_dependencyMgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
“
Ygradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/ConstConst*,
_class"
 loc:@LSTM/rnn/while/Identity_1*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
ђ
Ygradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_accStackV2Ygradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Const*
	elem_type0*
_output_shapes
:*

stack_name *,
_class"
 loc:@LSTM/rnn/while/Identity_1
Њ
Ygradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/EnterEnterYgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*,

frame_nameLSTM/rnn/while/while_context*
is_constant(*
_output_shapes
:*
T0*
parallel_iterations 
®
_gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2StackPushV2Ygradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/EnterLSTM/rnn/while/Identity_1^gradients/Add*
swap_memory( *
T0*
_output_shapes
: 
Л
^gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2
StackPopV2dgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/Enter^gradients/Sub*
_output_shapes
: *
	elem_type0
”
dgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/EnterEnterYgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*
parallel_iterations *
_output_shapes
:*
T0*
is_constant(*6

frame_name(&gradients/LSTM/rnn/while/while_context
љ
gradients/AddN_10AddN?gradients/LSTM/rnn/while/Select_2_grad/tuple/control_dependencycgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/tuple/control_dependency_1*@
_class6
42loc:@gradients/LSTM/rnn/while/Select_2_grad/Select*
T0*
N*(
_output_shapes
:€€€€€€€€€А
ш
gradients/AddN_11AddNgradients/loss/L2Loss_grad/mulVgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3*
N*
T0*1
_class'
%#loc:@gradients/loss/L2Loss_grad/mul* 
_output_shapes
:
АА
В
=gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
_output_shapes
: *
valueB
 *    *
dtype0
О
?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter=gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
is_constant( *6

frame_name(&gradients/LSTM/rnn/while/while_context*
_output_shapes
: *
parallel_iterations *
T0
ь
?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Egradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
N*
T0*
_output_shapes
: : 
Ѕ
>gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0*
_output_shapes
: : 
ъ
;gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAdd@gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Sgradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
і
Egradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration;gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
_output_shapes
: *
T0
®
?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit>gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
Н
6gradients/LSTM/rnn/while/Switch_4_grad_1/NextIterationNextIterationgradients/AddN_10*
T0*(
_output_shapes
:€€€€€€€€€А
¬
tgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3LSTM/rnn/TensorArray_1?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*
_output_shapes

:: *)
_class
loc:@LSTM/rnn/TensorArray_1
А
pgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3u^gradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*)
_class
loc:@LSTM/rnn/TensorArray_1
г
fgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3tgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3!LSTM/rnn/TensorArrayUnstack/rangepgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
dtype0
Ц
cgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpg^gradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3@^gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
А
kgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityfgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3d^gradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0*y
_classo
mkloc:@gradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
Х
mgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity?gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3d^gradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/LSTM/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
~
3gradients/LSTM/rnn/transpose_grad/InvertPermutationInvertPermutationLSTM/rnn/concat*
T0*
_output_shapes
:
І
+gradients/LSTM/rnn/transpose_grad/transpose	Transposekgradients/LSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency3gradients/LSTM/rnn/transpose_grad/InvertPermutation*
T0*
Tperm0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
k
 gradients/dropout/mul_grad/ShapeShapedropout/div*
out_type0*
_output_shapes
:*
T0
o
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
out_type0*
T0*
_output_shapes
:
ћ
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
°
gradients/dropout/mul_grad/MulMul+gradients/LSTM/rnn/transpose_grad/transposedropout/Floor*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
Ј
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/Mul0gradients/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
љ
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0*
Tshape0
°
 gradients/dropout/mul_grad/Mul_1Muldropout/div+gradients/LSTM/rnn/transpose_grad/transpose*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
љ
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/Mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
√
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
Tshape0

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
И
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
О
5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1*
T0
z
 gradients/dropout/div_grad/ShapeShapeembedding/embedding_lookup*
T0*
_output_shapes
:*
out_type0
e
"gradients/dropout/div_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
ћ
0gradients/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/div_grad/Shape"gradients/dropout/div_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
≠
"gradients/dropout/div_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependency	keep_prob*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
ї
gradients/dropout/div_grad/SumSum"gradients/dropout/div_grad/RealDiv0gradients/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
љ
"gradients/dropout/div_grad/ReshapeReshapegradients/dropout/div_grad/Sum gradients/dropout/div_grad/Shape*
T0*
Tshape0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
Б
gradients/dropout/div_grad/NegNegembedding/embedding_lookup*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
Ъ
$gradients/dropout/div_grad/RealDiv_1RealDivgradients/dropout/div_grad/Neg	keep_prob*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
†
$gradients/dropout/div_grad/RealDiv_2RealDiv$gradients/dropout/div_grad/RealDiv_1	keep_prob*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
ј
gradients/dropout/div_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency$gradients/dropout/div_grad/RealDiv_2*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
T0
ї
 gradients/dropout/div_grad/Sum_1Sumgradients/dropout/div_grad/mul2gradients/dropout/div_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
§
$gradients/dropout/div_grad/Reshape_1Reshape gradients/dropout/div_grad/Sum_1"gradients/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

+gradients/dropout/div_grad/tuple/group_depsNoOp#^gradients/dropout/div_grad/Reshape%^gradients/dropout/div_grad/Reshape_1
И
3gradients/dropout/div_grad/tuple/control_dependencyIdentity"gradients/dropout/div_grad/Reshape,^gradients/dropout/div_grad/tuple/group_deps*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*5
_class+
)'loc:@gradients/dropout/div_grad/Reshape
п
5gradients/dropout/div_grad/tuple/control_dependency_1Identity$gradients/dropout/div_grad/Reshape_1,^gradients/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*7
_class-
+)loc:@gradients/dropout/div_grad/Reshape_1
®
/gradients/embedding/embedding_lookup_grad/ShapeConst*
dtype0	*
_output_shapes
:*%
valueB	"Є      А       *
_class
loc:@embedding_1
Њ
1gradients/embedding/embedding_lookup_grad/ToInt32Cast/gradients/embedding/embedding_lookup_grad/Shape*
_output_shapes
:*
_class
loc:@embedding_1*

SrcT0	*

DstT0
p
.gradients/embedding/embedding_lookup_grad/SizeSizeinput_x*
_output_shapes
: *
T0*
out_type0
z
8gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
Ё
4gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims.gradients/embedding/embedding_lookup_grad/Size8gradients/embedding/embedding_lookup_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
З
=gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Й
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
Й
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
—
7gradients/embedding/embedding_lookup_grad/strided_sliceStridedSlice1gradients/embedding/embedding_lookup_grad/ToInt32=gradients/embedding/embedding_lookup_grad/strided_slice/stack?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*
new_axis_mask *
end_mask*
shrink_axis_mask *
T0*
Index0*
ellipsis_mask *

begin_mask *
_output_shapes
:
w
5gradients/embedding/embedding_lookup_grad/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ь
0gradients/embedding/embedding_lookup_grad/concatConcatV24gradients/embedding/embedding_lookup_grad/ExpandDims7gradients/embedding/embedding_lookup_grad/strided_slice5gradients/embedding/embedding_lookup_grad/concat/axis*

Tidx0*
_output_shapes
:*
N*
T0
д
1gradients/embedding/embedding_lookup_grad/ReshapeReshape3gradients/dropout/div_grad/tuple/control_dependency0gradients/embedding/embedding_lookup_grad/concat*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
є
3gradients/embedding/embedding_lookup_grad/Reshape_1Reshapeinput_x4gradients/embedding/embedding_lookup_grad/ExpandDims*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
†
beta1_power/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
dtype0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
±
beta1_power
VariableV2*
shape: *
	container *
_output_shapes
: *
dtype0*
shared_name *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
–
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
М
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
†
beta2_power/initial_valueConst*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
_output_shapes
: *
valueB
 *wЊ?
±
beta2_power
VariableV2*
	container *
shape: *
_output_shapes
: *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
shared_name 
–
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(*
T0*
_output_shapes
: 
М
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
£
2embedding_1/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"Є  А   *
_class
loc:@embedding_1
Н
(embedding_1/Adam/Initializer/zeros/ConstConst*
_class
loc:@embedding_1*
_output_shapes
: *
dtype0*
valueB
 *    
е
"embedding_1/Adam/Initializer/zerosFill2embedding_1/Adam/Initializer/zeros/shape_as_tensor(embedding_1/Adam/Initializer/zeros/Const* 
_output_shapes
:
ЄА*

index_type0*
_class
loc:@embedding_1*
T0
®
embedding_1/Adam
VariableV2*
shape:
ЄА*
shared_name *
_class
loc:@embedding_1*
	container *
dtype0* 
_output_shapes
:
ЄА
Ћ
embedding_1/Adam/AssignAssignembedding_1/Adam"embedding_1/Adam/Initializer/zeros* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1*
T0*
validate_shape(*
use_locking(
~
embedding_1/Adam/readIdentityembedding_1/Adam*
T0*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА
•
4embedding_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
_class
loc:@embedding_1*
valueB"Є  А   
П
*embedding_1/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@embedding_1*
dtype0*
_output_shapes
: *
valueB
 *    
л
$embedding_1/Adam_1/Initializer/zerosFill4embedding_1/Adam_1/Initializer/zeros/shape_as_tensor*embedding_1/Adam_1/Initializer/zeros/Const*
T0* 
_output_shapes
:
ЄА*

index_type0*
_class
loc:@embedding_1
™
embedding_1/Adam_1
VariableV2* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1*
	container *
dtype0*
shape:
ЄА*
shared_name 
—
embedding_1/Adam_1/AssignAssignembedding_1/Adam_1$embedding_1/Adam_1/Initializer/zeros* 
_output_shapes
:
ЄА*
use_locking(*
validate_shape(*
_class
loc:@embedding_1*
T0
В
embedding_1/Adam_1/readIdentityembedding_1/Adam_1* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1*
T0
л
VLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
’
LLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
_output_shapes
: *
valueB
 *    
х
FLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zerosFillVLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorLLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/Const*

index_type0*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
АА*
T0
р
4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam
VariableV2*
shape:
АА*
	container * 
_output_shapes
:
АА*
shared_name *
dtype0*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
џ
;LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/AssignAssign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamFLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
АА*
use_locking(*
validate_shape(*
T0
к
9LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/readIdentity4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
н
XLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
_output_shapes
:*
valueB"      
„
NLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
ы
HLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zerosFillXLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorNLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
АА*

index_type0*
T0*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
т
6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shared_name *
shape:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
б
=LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/AssignAssign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1HLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
validate_shape(* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
о
;LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/readIdentity6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
АА*
T0
’
DLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zerosConst*
valueBА*    *
dtype0*
_output_shapes	
:А*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
в
2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam
VariableV2*
	container *
_output_shapes	
:А*
shape:А*
dtype0*
shared_name *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
ќ
9LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/AssignAssign2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamDLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zeros*
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(*
use_locking(*
_output_shapes	
:А
я
7LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/readIdentity2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:А*
T0
„
FLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zerosConst*
dtype0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
valueBА*    *
_output_shapes	
:А
д
4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1
VariableV2*
shape:А*
dtype0*
	container *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
shared_name *
_output_shapes	
:А
‘
;LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/AssignAssign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1FLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zeros*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(
г
9LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/readIdentity4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1*
T0*
_output_shapes	
:А*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
Х
 softmax_w/Adam/Initializer/zerosConst*
valueB	А*    *
_output_shapes
:	А*
_class
loc:@softmax_w*
dtype0
Ґ
softmax_w/Adam
VariableV2*
_output_shapes
:	А*
_class
loc:@softmax_w*
shape:	А*
shared_name *
dtype0*
	container 
¬
softmax_w/Adam/AssignAssignsoftmax_w/Adam softmax_w/Adam/Initializer/zeros*
validate_shape(*
T0*
_class
loc:@softmax_w*
_output_shapes
:	А*
use_locking(
w
softmax_w/Adam/readIdentitysoftmax_w/Adam*
_output_shapes
:	А*
_class
loc:@softmax_w*
T0
Ч
"softmax_w/Adam_1/Initializer/zerosConst*
_output_shapes
:	А*
valueB	А*    *
dtype0*
_class
loc:@softmax_w
§
softmax_w/Adam_1
VariableV2*
	container *
_class
loc:@softmax_w*
dtype0*
shared_name *
_output_shapes
:	А*
shape:	А
»
softmax_w/Adam_1/AssignAssignsoftmax_w/Adam_1"softmax_w/Adam_1/Initializer/zeros*
_output_shapes
:	А*
validate_shape(*
use_locking(*
_class
loc:@softmax_w*
T0
{
softmax_w/Adam_1/readIdentitysoftmax_w/Adam_1*
_output_shapes
:	А*
_class
loc:@softmax_w*
T0
Л
 softmax_b/Adam/Initializer/zerosConst*
_output_shapes
:*
_class
loc:@softmax_b*
dtype0*
valueB*    
Ш
softmax_b/Adam
VariableV2*
_class
loc:@softmax_b*
shape:*
	container *
dtype0*
shared_name *
_output_shapes
:
љ
softmax_b/Adam/AssignAssignsoftmax_b/Adam softmax_b/Adam/Initializer/zeros*
_class
loc:@softmax_b*
T0*
_output_shapes
:*
use_locking(*
validate_shape(
r
softmax_b/Adam/readIdentitysoftmax_b/Adam*
_output_shapes
:*
T0*
_class
loc:@softmax_b
Н
"softmax_b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@softmax_b*
_output_shapes
:*
dtype0
Ъ
softmax_b/Adam_1
VariableV2*
_class
loc:@softmax_b*
dtype0*
shared_name *
shape:*
_output_shapes
:*
	container 
√
softmax_b/Adam_1/AssignAssignsoftmax_b/Adam_1"softmax_b/Adam_1/Initializer/zeros*
_class
loc:@softmax_b*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
v
softmax_b/Adam_1/readIdentitysoftmax_b/Adam_1*
_class
loc:@softmax_b*
T0*
_output_shapes
:
V
op_to_store/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
V
op_to_store/beta2Const*
_output_shapes
: *
valueB
 *wЊ?*
dtype0
X
op_to_store/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *wћ+2
–
%op_to_store/update_embedding_1/UniqueUnique3gradients/embedding/embedding_lookup_grad/Reshape_1*
out_idx0*
_class
loc:@embedding_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
©
$op_to_store/update_embedding_1/ShapeShape%op_to_store/update_embedding_1/Unique*
_class
loc:@embedding_1*
_output_shapes
:*
T0*
out_type0
Ь
2op_to_store/update_embedding_1/strided_slice/stackConst*
_class
loc:@embedding_1*
valueB: *
_output_shapes
:*
dtype0
Ю
4op_to_store/update_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
_class
loc:@embedding_1*
valueB:
Ю
4op_to_store/update_embedding_1/strided_slice/stack_2Const*
_class
loc:@embedding_1*
dtype0*
valueB:*
_output_shapes
:
і
,op_to_store/update_embedding_1/strided_sliceStridedSlice$op_to_store/update_embedding_1/Shape2op_to_store/update_embedding_1/strided_slice/stack4op_to_store/update_embedding_1/strided_slice/stack_14op_to_store/update_embedding_1/strided_slice/stack_2*
new_axis_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
_class
loc:@embedding_1*
end_mask 
»
1op_to_store/update_embedding_1/UnsortedSegmentSumUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape'op_to_store/update_embedding_1/Unique:1,op_to_store/update_embedding_1/strided_slice*(
_output_shapes
:€€€€€€€€€А*
_class
loc:@embedding_1*
T0*
Tnumsegments0*
Tindices0
Й
$op_to_store/update_embedding_1/sub/xConst*
_class
loc:@embedding_1*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ґ
"op_to_store/update_embedding_1/subSub$op_to_store/update_embedding_1/sub/xbeta2_power/read*
_output_shapes
: *
_class
loc:@embedding_1*
T0
Р
#op_to_store/update_embedding_1/SqrtSqrt"op_to_store/update_embedding_1/sub*
_output_shapes
: *
_class
loc:@embedding_1*
T0
°
"op_to_store/update_embedding_1/mulMulExponentialDecay#op_to_store/update_embedding_1/Sqrt*
T0*
_output_shapes
: *
_class
loc:@embedding_1
Л
&op_to_store/update_embedding_1/sub_1/xConst*
valueB
 *  А?*
dtype0*
_class
loc:@embedding_1*
_output_shapes
: 
¶
$op_to_store/update_embedding_1/sub_1Sub&op_to_store/update_embedding_1/sub_1/xbeta1_power/read*
T0*
_output_shapes
: *
_class
loc:@embedding_1
Љ
&op_to_store/update_embedding_1/truedivRealDiv"op_to_store/update_embedding_1/mul$op_to_store/update_embedding_1/sub_1*
T0*
_class
loc:@embedding_1*
_output_shapes
: 
Л
&op_to_store/update_embedding_1/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*
_class
loc:@embedding_1
І
$op_to_store/update_embedding_1/sub_2Sub&op_to_store/update_embedding_1/sub_2/xop_to_store/beta1*
_output_shapes
: *
T0*
_class
loc:@embedding_1
„
$op_to_store/update_embedding_1/mul_1Mul1op_to_store/update_embedding_1/UnsortedSegmentSum$op_to_store/update_embedding_1/sub_2*(
_output_shapes
:€€€€€€€€€А*
_class
loc:@embedding_1*
T0
†
$op_to_store/update_embedding_1/mul_2Mulembedding_1/Adam/readop_to_store/beta1*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
T0
џ
%op_to_store/update_embedding_1/AssignAssignembedding_1/Adam$op_to_store/update_embedding_1/mul_2*
T0*
validate_shape(*
_class
loc:@embedding_1*
use_locking( * 
_output_shapes
:
ЄА
ђ
)op_to_store/update_embedding_1/ScatterAdd
ScatterAddembedding_1/Adam%op_to_store/update_embedding_1/Unique$op_to_store/update_embedding_1/mul_1&^op_to_store/update_embedding_1/Assign*
Tindices0*
T0* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1*
use_locking( 
д
$op_to_store/update_embedding_1/mul_3Mul1op_to_store/update_embedding_1/UnsortedSegmentSum1op_to_store/update_embedding_1/UnsortedSegmentSum*(
_output_shapes
:€€€€€€€€€А*
_class
loc:@embedding_1*
T0
Л
&op_to_store/update_embedding_1/sub_3/xConst*
_output_shapes
: *
_class
loc:@embedding_1*
valueB
 *  А?*
dtype0
І
$op_to_store/update_embedding_1/sub_3Sub&op_to_store/update_embedding_1/sub_3/xop_to_store/beta2*
T0*
_class
loc:@embedding_1*
_output_shapes
: 
 
$op_to_store/update_embedding_1/mul_4Mul$op_to_store/update_embedding_1/mul_3$op_to_store/update_embedding_1/sub_3*
_class
loc:@embedding_1*
T0*(
_output_shapes
:€€€€€€€€€А
Ґ
$op_to_store/update_embedding_1/mul_5Mulembedding_1/Adam_1/readop_to_store/beta2*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
T0
я
'op_to_store/update_embedding_1/Assign_1Assignembedding_1/Adam_1$op_to_store/update_embedding_1/mul_5*
validate_shape(*
T0*
use_locking( * 
_output_shapes
:
ЄА*
_class
loc:@embedding_1
≤
+op_to_store/update_embedding_1/ScatterAdd_1
ScatterAddembedding_1/Adam_1%op_to_store/update_embedding_1/Unique$op_to_store/update_embedding_1/mul_4(^op_to_store/update_embedding_1/Assign_1*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
T0*
use_locking( *
Tindices0
•
%op_to_store/update_embedding_1/Sqrt_1Sqrt+op_to_store/update_embedding_1/ScatterAdd_1* 
_output_shapes
:
ЄА*
T0*
_class
loc:@embedding_1
…
$op_to_store/update_embedding_1/mul_6Mul&op_to_store/update_embedding_1/truediv)op_to_store/update_embedding_1/ScatterAdd*
T0*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА
∞
"op_to_store/update_embedding_1/addAdd%op_to_store/update_embedding_1/Sqrt_1op_to_store/epsilon*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
T0
»
(op_to_store/update_embedding_1/truediv_1RealDiv$op_to_store/update_embedding_1/mul_6"op_to_store/update_embedding_1/add*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
T0
 
(op_to_store/update_embedding_1/AssignSub	AssignSubembedding_1(op_to_store/update_embedding_1/truediv_1*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
use_locking( *
T0
÷
)op_to_store/update_embedding_1/group_depsNoOp)^op_to_store/update_embedding_1/AssignSub*^op_to_store/update_embedding_1/ScatterAdd,^op_to_store/update_embedding_1/ScatterAdd_1*
_class
loc:@embedding_1
Т
Lop_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdam	ApplyAdam/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readExponentialDecayop_to_store/beta1op_to_store/beta2op_to_store/epsilongradients/AddN_11*
use_nesterov( *B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
…
Jop_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdam	ApplyAdam-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readExponentialDecayop_to_store/beta1op_to_store/beta2op_to_store/epsilonWgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:А*
T0*
use_nesterov( *
use_locking( *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
“
&op_to_store/update_softmax_w/ApplyAdam	ApplyAdam	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1beta1_power/readbeta2_power/readExponentialDecayop_to_store/beta1op_to_store/beta2op_to_store/epsilongradients/AddN_1*
use_nesterov( *
_output_shapes
:	А*
use_locking( *
T0*
_class
loc:@softmax_w
Ћ
&op_to_store/update_softmax_b/ApplyAdam	ApplyAdam	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1beta1_power/readbeta2_power/readExponentialDecayop_to_store/beta1op_to_store/beta2op_to_store/epsilongradients/AddN*
_class
loc:@softmax_b*
use_nesterov( *
T0*
_output_shapes
:*
use_locking( 
Є
op_to_store/mulMulbeta1_power/readop_to_store/beta1K^op_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamM^op_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdam*^op_to_store/update_embedding_1/group_deps'^op_to_store/update_softmax_b/ApplyAdam'^op_to_store/update_softmax_w/ApplyAdam*
_output_shapes
: *
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
∆
op_to_store/AssignAssignbeta1_powerop_to_store/mul*
validate_shape(*
use_locking( *
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: 
Ї
op_to_store/mul_1Mulbeta2_power/readop_to_store/beta2K^op_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamM^op_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdam*^op_to_store/update_embedding_1/group_deps'^op_to_store/update_softmax_b/ApplyAdam'^op_to_store/update_softmax_w/ApplyAdam*
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: 
 
op_to_store/Assign_1Assignbeta2_powerop_to_store/mul_1*
T0*
use_locking( *
_output_shapes
: *@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(
є
op_to_store/update/NoOpNoOp^op_to_store/Assign^op_to_store/Assign_1K^op_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdamM^op_to_store/update_LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdam'^op_to_store/update_softmax_b/ApplyAdam'^op_to_store/update_softmax_w/ApplyAdam
M
op_to_store/update/NoOp_1NoOp*^op_to_store/update_embedding_1/group_deps
P
op_to_store/updateNoOp^op_to_store/update/NoOp^op_to_store/update/NoOp_1
И
op_to_store/valueConst^op_to_store/update*
value	B :*
_output_shapes
: *
dtype0*
_class
loc:@global_step
М
op_to_store	AssignAddglobal_stepop_to_store/value*
T0*
use_locking( *
_output_shapes
: *
_class
loc:@global_step
N
	Loss/tagsConst*
valueB
 BLoss*
_output_shapes
: *
dtype0
M
LossScalarSummary	Loss/tags
loss/add_1*
T0*
_output_shapes
: 
V
Accuracy/tagsConst*
dtype0*
valueB BAccuracy*
_output_shapes
: 
\
AccuracyScalarSummaryAccuracy/tagsaccuracy/accuracy*
_output_shapes
: *
T0
S
Merge/MergeSummaryMergeSummaryLossAccuracy*
N*
_output_shapes
: 
U
Merge_1/MergeSummaryMergeSummaryLossAccuracy*
N*
_output_shapes
: 
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
ќ
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*Б
valueчBфB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBembedding_1Bembedding_1/AdamBembedding_1/Adam_1Bglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1
З
save/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
з
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_powerbeta2_powerembedding_1embedding_1/Adamembedding_1/Adam_1global_step	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1* 
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
—
save/RestoreV2/tensor_namesConst*Б
valueчBфB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBembedding_1Bembedding_1/AdamBembedding_1/Adam_1Bglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1*
_output_shapes
:*
dtype0
К
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 
е
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
е
save/AssignAssign-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biassave/RestoreV2*
validate_shape(*
_output_shapes	
:А*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
use_locking(
о
save/Assign_1Assign2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adamsave/RestoreV2:1*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
р
save/Assign_2Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1save/RestoreV2:2*
_output_shapes	
:А*
T0*
use_locking(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(
т
save/Assign_3Assign/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave/RestoreV2:3*
T0* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
use_locking(*
validate_shape(
ч
save/Assign_4Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adamsave/RestoreV2:4*
validate_shape(* 
_output_shapes
:
АА*
T0*
use_locking(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
щ
save/Assign_5Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1save/RestoreV2:5*
use_locking(*
validate_shape(* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
¬
save/Assign_6Assignbeta1_powersave/RestoreV2:6*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
¬
save/Assign_7Assignbeta2_powersave/RestoreV2:7*
use_locking(*
_output_shapes
: *
validate_shape(*
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
™
save/Assign_8Assignembedding_1save/RestoreV2:8*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
T0*
validate_shape(*
use_locking(
ѓ
save/Assign_9Assignembedding_1/Adamsave/RestoreV2:9*
use_locking(*
_class
loc:@embedding_1*
validate_shape(*
T0* 
_output_shapes
:
ЄА
≥
save/Assign_10Assignembedding_1/Adam_1save/RestoreV2:10*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
validate_shape(*
T0*
use_locking(
Ґ
save/Assign_11Assignglobal_stepsave/RestoreV2:11*
use_locking(*
T0*
validate_shape(*
_output_shapes
: *
_class
loc:@global_step
Ґ
save/Assign_12Assign	softmax_bsave/RestoreV2:12*
_output_shapes
:*
validate_shape(*
_class
loc:@softmax_b*
use_locking(*
T0
І
save/Assign_13Assignsoftmax_b/Adamsave/RestoreV2:13*
_output_shapes
:*
validate_shape(*
T0*
_class
loc:@softmax_b*
use_locking(
©
save/Assign_14Assignsoftmax_b/Adam_1save/RestoreV2:14*
T0*
use_locking(*
_class
loc:@softmax_b*
_output_shapes
:*
validate_shape(
І
save/Assign_15Assign	softmax_wsave/RestoreV2:15*
validate_shape(*
_class
loc:@softmax_w*
use_locking(*
_output_shapes
:	А*
T0
ђ
save/Assign_16Assignsoftmax_w/Adamsave/RestoreV2:16*
_class
loc:@softmax_w*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	А
Ѓ
save/Assign_17Assignsoftmax_w/Adam_1save/RestoreV2:17*
_output_shapes
:	А*
use_locking(*
_class
loc:@softmax_w*
T0*
validate_shape(
Т
save/restore_all/NoOpNoOp^save/Assign^save/Assign_1^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
P
save/restore_all/NoOp_1NoOp^save/Assign_10^save/Assign_8^save/Assign_9
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
¬
	init/NoOpNoOp:^LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Assign<^LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Assign5^LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign<^LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Assign>^LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Assign7^LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign^beta1_power/Assign^beta2_power/Assign^global_step/Assign^softmax_b/Adam/Assign^softmax_b/Adam_1/Assign^softmax_b/Assign^softmax_w/Adam/Assign^softmax_w/Adam_1/Assign^softmax_w/Assign
^
init/NoOp_1NoOp^embedding_1/Adam/Assign^embedding_1/Adam_1/Assign^embedding_1/Assign
&
initNoOp
^init/NoOp^init/NoOp_1
R
save_1/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
Ж
save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_e85b5acc769147758d5638eb7ba40588/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Э
save_1/SaveV2/tensor_namesConst*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1*
dtype0*
_output_shapes
:
Г
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*1
value(B&B B B B B B B B B B B B B B B 
√
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_powerbeta2_powerglobal_step	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1*
dtypes
2
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
`
save_1/ShardedFilename_1/shardConst*
value	B :*
_output_shapes
: *
dtype0
Й
save_1/ShardedFilename_1ShardedFilenamesave_1/StringJoinsave_1/ShardedFilename_1/shardsave_1/num_shards*
_output_shapes
: 
Ц
save_1/SaveV2_1/tensor_namesConst*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1*
dtype0
m
 save_1/SaveV2_1/shape_and_slicesConst*
valueBB B B *
dtype0*
_output_shapes
:
є
save_1/SaveV2_1SaveV2save_1/ShardedFilename_1save_1/SaveV2_1/tensor_names save_1/SaveV2_1/shape_and_slicesembedding_1embedding_1/Adamembedding_1/Adam_1*
dtypes
2
°
save_1/control_dependency_1Identitysave_1/ShardedFilename_1^save_1/SaveV2_1*+
_class!
loc:@save_1/ShardedFilename_1*
T0*
_output_shapes
: 
џ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilenamesave_1/ShardedFilename_1^save_1/control_dependency^save_1/control_dependency_1*
T0*
N*

axis *
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
†
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency^save_1/control_dependency_1*
_output_shapes
: *
T0
†
save_1/RestoreV2/tensor_namesConst*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1*
dtype0*
_output_shapes
:
Ж
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*1
value(B&B B B B B B B B B B B B B B B *
dtype0
ё
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*P
_output_shapes>
<:::::::::::::::
й
save_1/AssignAssign-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biassave_1/RestoreV2*
T0*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:А*
use_locking(
т
save_1/Assign_1Assign2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adamsave_1/RestoreV2:1*
T0*
validate_shape(*
use_locking(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:А
ф
save_1/Assign_2Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1save_1/RestoreV2:2*
_output_shapes	
:А*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(*
T0
ц
save_1/Assign_3Assign/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave_1/RestoreV2:3* 
_output_shapes
:
АА*
validate_shape(*
T0*
use_locking(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
ы
save_1/Assign_4Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adamsave_1/RestoreV2:4*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
T0*
use_locking(
э
save_1/Assign_5Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1save_1/RestoreV2:5*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
∆
save_1/Assign_6Assignbeta1_powersave_1/RestoreV2:6*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
∆
save_1/Assign_7Assignbeta2_powersave_1/RestoreV2:7*
_output_shapes
: *
use_locking(*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
§
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2:8*
_output_shapes
: *
validate_shape(*
_class
loc:@global_step*
T0*
use_locking(
§
save_1/Assign_9Assign	softmax_bsave_1/RestoreV2:9*
use_locking(*
_class
loc:@softmax_b*
validate_shape(*
T0*
_output_shapes
:
Ђ
save_1/Assign_10Assignsoftmax_b/Adamsave_1/RestoreV2:10*
T0*
_class
loc:@softmax_b*
_output_shapes
:*
validate_shape(*
use_locking(
≠
save_1/Assign_11Assignsoftmax_b/Adam_1save_1/RestoreV2:11*
_class
loc:@softmax_b*
T0*
validate_shape(*
use_locking(*
_output_shapes
:
Ђ
save_1/Assign_12Assign	softmax_wsave_1/RestoreV2:12*
_class
loc:@softmax_w*
_output_shapes
:	А*
T0*
use_locking(*
validate_shape(
∞
save_1/Assign_13Assignsoftmax_w/Adamsave_1/RestoreV2:13*
_output_shapes
:	А*
_class
loc:@softmax_w*
use_locking(*
validate_shape(*
T0
≤
save_1/Assign_14Assignsoftmax_w/Adam_1save_1/RestoreV2:14*
_output_shapes
:	А*
validate_shape(*
_class
loc:@softmax_w*
T0*
use_locking(
≠
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
Щ
save_1/RestoreV2_1/tensor_namesConst*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1*
dtype0
p
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueBB B B *
_output_shapes
:
®
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices* 
_output_shapes
:::*
dtypes
2
ѓ
save_1/Assign_15Assignembedding_1save_1/RestoreV2_1*
use_locking(*
T0*
_class
loc:@embedding_1*
validate_shape(* 
_output_shapes
:
ЄА
ґ
save_1/Assign_16Assignembedding_1/Adamsave_1/RestoreV2_1:1*
use_locking(* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1*
validate_shape(*
T0
Є
save_1/Assign_17Assignembedding_1/Adam_1save_1/RestoreV2_1:2* 
_output_shapes
:
ЄА*
T0*
_class
loc:@embedding_1*
use_locking(*
validate_shape(
W
save_1/restore_shard_1NoOp^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17
6
save_1/restore_all/NoOpNoOp^save_1/restore_shard
:
save_1/restore_all/NoOp_1NoOp^save_1/restore_shard_1
P
save_1/restore_allNoOp^save_1/restore_all/NoOp^save_1/restore_all/NoOp_1
R
save_2/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Ж
save_2/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_725af7a94a51441dbe554b9cdf8d7dd5/part
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_2/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
Е
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
Э
save_2/SaveV2/tensor_namesConst*
dtype0*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1*
_output_shapes
:
Г
save_2/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
√
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slices-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_powerbeta2_powerglobal_step	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1*
dtypes
2
Щ
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_2/ShardedFilename
`
save_2/ShardedFilename_1/shardConst*
dtype0*
_output_shapes
: *
value	B :
Й
save_2/ShardedFilename_1ShardedFilenamesave_2/StringJoinsave_2/ShardedFilename_1/shardsave_2/num_shards*
_output_shapes
: 
Ц
save_2/SaveV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1
m
 save_2/SaveV2_1/shape_and_slicesConst*
valueBB B B *
_output_shapes
:*
dtype0
є
save_2/SaveV2_1SaveV2save_2/ShardedFilename_1save_2/SaveV2_1/tensor_names save_2/SaveV2_1/shape_and_slicesembedding_1embedding_1/Adamembedding_1/Adam_1*
dtypes
2
°
save_2/control_dependency_1Identitysave_2/ShardedFilename_1^save_2/SaveV2_1*
T0*+
_class!
loc:@save_2/ShardedFilename_1*
_output_shapes
: 
џ
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilenamesave_2/ShardedFilename_1^save_2/control_dependency^save_2/control_dependency_1*
N*
T0*

axis *
_output_shapes
:
Г
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
†
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency^save_2/control_dependency_1*
T0*
_output_shapes
: 
†
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1
Ж
!save_2/RestoreV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
ё
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*P
_output_shapes>
<:::::::::::::::
й
save_2/AssignAssign-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biassave_2/RestoreV2*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(
т
save_2/Assign_1Assign2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adamsave_2/RestoreV2:1*
_output_shapes	
:А*
validate_shape(*
use_locking(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
ф
save_2/Assign_2Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1save_2/RestoreV2:2*
validate_shape(*
T0*
_output_shapes	
:А*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(
ц
save_2/Assign_3Assign/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave_2/RestoreV2:3*
use_locking(*
validate_shape(* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
ы
save_2/Assign_4Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adamsave_2/RestoreV2:4*
validate_shape(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
АА*
T0*
use_locking(
э
save_2/Assign_5Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1save_2/RestoreV2:5*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
∆
save_2/Assign_6Assignbeta1_powersave_2/RestoreV2:6*
_output_shapes
: *
use_locking(*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
∆
save_2/Assign_7Assignbeta2_powersave_2/RestoreV2:7*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes
: 
§
save_2/Assign_8Assignglobal_stepsave_2/RestoreV2:8*
_output_shapes
: *
T0*
use_locking(*
_class
loc:@global_step*
validate_shape(
§
save_2/Assign_9Assign	softmax_bsave_2/RestoreV2:9*
_class
loc:@softmax_b*
validate_shape(*
T0*
_output_shapes
:*
use_locking(
Ђ
save_2/Assign_10Assignsoftmax_b/Adamsave_2/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
_class
loc:@softmax_b*
T0
≠
save_2/Assign_11Assignsoftmax_b/Adam_1save_2/RestoreV2:11*
use_locking(*
_output_shapes
:*
validate_shape(*
_class
loc:@softmax_b*
T0
Ђ
save_2/Assign_12Assign	softmax_wsave_2/RestoreV2:12*
_class
loc:@softmax_w*
validate_shape(*
T0*
_output_shapes
:	А*
use_locking(
∞
save_2/Assign_13Assignsoftmax_w/Adamsave_2/RestoreV2:13*
validate_shape(*
_output_shapes
:	А*
T0*
_class
loc:@softmax_w*
use_locking(
≤
save_2/Assign_14Assignsoftmax_w/Adam_1save_2/RestoreV2:14*
validate_shape(*
use_locking(*
_output_shapes
:	А*
_class
loc:@softmax_w*
T0
≠
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
Щ
save_2/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1
p
#save_2/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueBB B B *
dtype0
®
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2* 
_output_shapes
:::
ѓ
save_2/Assign_15Assignembedding_1save_2/RestoreV2_1*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1
ґ
save_2/Assign_16Assignembedding_1/Adamsave_2/RestoreV2_1:1*
T0*
use_locking(* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1*
validate_shape(
Є
save_2/Assign_17Assignembedding_1/Adam_1save_2/RestoreV2_1:2* 
_output_shapes
:
ЄА*
T0*
validate_shape(*
_class
loc:@embedding_1*
use_locking(
W
save_2/restore_shard_1NoOp^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17
6
save_2/restore_all/NoOpNoOp^save_2/restore_shard
:
save_2/restore_all/NoOp_1NoOp^save_2/restore_shard_1
P
save_2/restore_allNoOp^save_2/restore_all/NoOp^save_2/restore_all/NoOp_1
R
save_3/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_3/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_5f6038ae7e3e422e9b41f8e87363225a/part
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_3/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
Е
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
Э
save_3/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1
Г
save_3/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*1
value(B&B B B B B B B B B B B B B B B 
√
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slices-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_powerbeta2_powerglobal_step	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1*
dtypes
2
Щ
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_3/ShardedFilename
`
save_3/ShardedFilename_1/shardConst*
value	B :*
_output_shapes
: *
dtype0
Й
save_3/ShardedFilename_1ShardedFilenamesave_3/StringJoinsave_3/ShardedFilename_1/shardsave_3/num_shards*
_output_shapes
: 
Ц
save_3/SaveV2_1/tensor_namesConst*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1*
dtype0
m
 save_3/SaveV2_1/shape_and_slicesConst*
valueBB B B *
dtype0*
_output_shapes
:
є
save_3/SaveV2_1SaveV2save_3/ShardedFilename_1save_3/SaveV2_1/tensor_names save_3/SaveV2_1/shape_and_slicesembedding_1embedding_1/Adamembedding_1/Adam_1*
dtypes
2
°
save_3/control_dependency_1Identitysave_3/ShardedFilename_1^save_3/SaveV2_1*
T0*+
_class!
loc:@save_3/ShardedFilename_1*
_output_shapes
: 
џ
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilenamesave_3/ShardedFilename_1^save_3/control_dependency^save_3/control_dependency_1*
_output_shapes
:*
T0*
N*

axis 
Г
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(
†
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency^save_3/control_dependency_1*
T0*
_output_shapes
: 
†
save_3/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1
Ж
!save_3/RestoreV2/shape_and_slicesConst*
dtype0*1
value(B&B B B B B B B B B B B B B B B *
_output_shapes
:
ё
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*P
_output_shapes>
<:::::::::::::::*
dtypes
2
й
save_3/AssignAssign-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biassave_3/RestoreV2*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:А
т
save_3/Assign_1Assign2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adamsave_3/RestoreV2:1*
T0*
use_locking(*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:А
ф
save_3/Assign_2Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1save_3/RestoreV2:2*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:А
ц
save_3/Assign_3Assign/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave_3/RestoreV2:3*
use_locking(*
T0*
validate_shape(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
АА
ы
save_3/Assign_4Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adamsave_3/RestoreV2:4* 
_output_shapes
:
АА*
use_locking(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(*
T0
э
save_3/Assign_5Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1save_3/RestoreV2:5* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
∆
save_3/Assign_6Assignbeta1_powersave_3/RestoreV2:6*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
validate_shape(*
_output_shapes
: *
use_locking(
∆
save_3/Assign_7Assignbeta2_powersave_3/RestoreV2:7*
use_locking(*
_output_shapes
: *
T0*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias
§
save_3/Assign_8Assignglobal_stepsave_3/RestoreV2:8*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
§
save_3/Assign_9Assign	softmax_bsave_3/RestoreV2:9*
use_locking(*
_class
loc:@softmax_b*
T0*
validate_shape(*
_output_shapes
:
Ђ
save_3/Assign_10Assignsoftmax_b/Adamsave_3/RestoreV2:10*
_class
loc:@softmax_b*
validate_shape(*
use_locking(*
_output_shapes
:*
T0
≠
save_3/Assign_11Assignsoftmax_b/Adam_1save_3/RestoreV2:11*
_output_shapes
:*
validate_shape(*
T0*
use_locking(*
_class
loc:@softmax_b
Ђ
save_3/Assign_12Assign	softmax_wsave_3/RestoreV2:12*
use_locking(*
_output_shapes
:	А*
validate_shape(*
T0*
_class
loc:@softmax_w
∞
save_3/Assign_13Assignsoftmax_w/Adamsave_3/RestoreV2:13*
use_locking(*
validate_shape(*
_output_shapes
:	А*
_class
loc:@softmax_w*
T0
≤
save_3/Assign_14Assignsoftmax_w/Adam_1save_3/RestoreV2:14*
use_locking(*
T0*
_class
loc:@softmax_w*
validate_shape(*
_output_shapes
:	А
≠
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
Щ
save_3/RestoreV2_1/tensor_namesConst*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1*
dtype0
p
#save_3/RestoreV2_1/shape_and_slicesConst*
valueBB B B *
dtype0*
_output_shapes
:
®
save_3/RestoreV2_1	RestoreV2save_3/Constsave_3/RestoreV2_1/tensor_names#save_3/RestoreV2_1/shape_and_slices* 
_output_shapes
:::*
dtypes
2
ѓ
save_3/Assign_15Assignembedding_1save_3/RestoreV2_1*
use_locking(*
T0*
validate_shape(* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1
ґ
save_3/Assign_16Assignembedding_1/Adamsave_3/RestoreV2_1:1* 
_output_shapes
:
ЄА*
use_locking(*
_class
loc:@embedding_1*
validate_shape(*
T0
Є
save_3/Assign_17Assignembedding_1/Adam_1save_3/RestoreV2_1:2*
T0*
_class
loc:@embedding_1*
use_locking(*
validate_shape(* 
_output_shapes
:
ЄА
W
save_3/restore_shard_1NoOp^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17
6
save_3/restore_all/NoOpNoOp^save_3/restore_shard
:
save_3/restore_all/NoOp_1NoOp^save_3/restore_shard_1
P
save_3/restore_allNoOp^save_3/restore_all/NoOp^save_3/restore_all/NoOp_1
R
save_4/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Ж
save_4/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_f24623f30a7c43ba8dffa637becffa1f/part*
dtype0
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
S
save_4/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_4/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
Э
save_4/SaveV2/tensor_namesConst*
_output_shapes
:*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1*
dtype0
Г
save_4/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
√
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slices-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_powerbeta2_powerglobal_step	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1*
dtypes
2
Щ
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
`
save_4/ShardedFilename_1/shardConst*
_output_shapes
: *
value	B :*
dtype0
Й
save_4/ShardedFilename_1ShardedFilenamesave_4/StringJoinsave_4/ShardedFilename_1/shardsave_4/num_shards*
_output_shapes
: 
Ц
save_4/SaveV2_1/tensor_namesConst*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1*
dtype0
m
 save_4/SaveV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B B 
є
save_4/SaveV2_1SaveV2save_4/ShardedFilename_1save_4/SaveV2_1/tensor_names save_4/SaveV2_1/shape_and_slicesembedding_1embedding_1/Adamembedding_1/Adam_1*
dtypes
2
°
save_4/control_dependency_1Identitysave_4/ShardedFilename_1^save_4/SaveV2_1*
_output_shapes
: *
T0*+
_class!
loc:@save_4/ShardedFilename_1
џ
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilenamesave_4/ShardedFilename_1^save_4/control_dependency^save_4/control_dependency_1*
T0*
N*
_output_shapes
:*

axis 
Г
save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(
†
save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency^save_4/control_dependency_1*
_output_shapes
: *
T0
†
save_4/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1
Ж
!save_4/RestoreV2/shape_and_slicesConst*
dtype0*1
value(B&B B B B B B B B B B B B B B B *
_output_shapes
:
ё
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*P
_output_shapes>
<:::::::::::::::*
dtypes
2
й
save_4/AssignAssign-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biassave_4/RestoreV2*
validate_shape(*
_output_shapes	
:А*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
use_locking(
т
save_4/Assign_1Assign2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adamsave_4/RestoreV2:1*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:А
ф
save_4/Assign_2Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1save_4/RestoreV2:2*
validate_shape(*
_output_shapes	
:А*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
use_locking(
ц
save_4/Assign_3Assign/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave_4/RestoreV2:3* 
_output_shapes
:
АА*
T0*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(*
use_locking(
ы
save_4/Assign_4Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adamsave_4/RestoreV2:4*
validate_shape(*
use_locking(* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
э
save_4/Assign_5Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1save_4/RestoreV2:5*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
АА*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
∆
save_4/Assign_6Assignbeta1_powersave_4/RestoreV2:6*
use_locking(*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
T0
∆
save_4/Assign_7Assignbeta2_powersave_4/RestoreV2:7*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
§
save_4/Assign_8Assignglobal_stepsave_4/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
§
save_4/Assign_9Assign	softmax_bsave_4/RestoreV2:9*
validate_shape(*
T0*
use_locking(*
_output_shapes
:*
_class
loc:@softmax_b
Ђ
save_4/Assign_10Assignsoftmax_b/Adamsave_4/RestoreV2:10*
_class
loc:@softmax_b*
_output_shapes
:*
T0*
use_locking(*
validate_shape(
≠
save_4/Assign_11Assignsoftmax_b/Adam_1save_4/RestoreV2:11*
use_locking(*
_output_shapes
:*
_class
loc:@softmax_b*
T0*
validate_shape(
Ђ
save_4/Assign_12Assign	softmax_wsave_4/RestoreV2:12*
_output_shapes
:	А*
_class
loc:@softmax_w*
use_locking(*
validate_shape(*
T0
∞
save_4/Assign_13Assignsoftmax_w/Adamsave_4/RestoreV2:13*
_class
loc:@softmax_w*
_output_shapes
:	А*
use_locking(*
validate_shape(*
T0
≤
save_4/Assign_14Assignsoftmax_w/Adam_1save_4/RestoreV2:14*
T0*
_class
loc:@softmax_w*
_output_shapes
:	А*
use_locking(*
validate_shape(
≠
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_2^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
Щ
save_4/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1
p
#save_4/RestoreV2_1/shape_and_slicesConst*
valueBB B B *
dtype0*
_output_shapes
:
®
save_4/RestoreV2_1	RestoreV2save_4/Constsave_4/RestoreV2_1/tensor_names#save_4/RestoreV2_1/shape_and_slices*
dtypes
2* 
_output_shapes
:::
ѓ
save_4/Assign_15Assignembedding_1save_4/RestoreV2_1*
_class
loc:@embedding_1* 
_output_shapes
:
ЄА*
validate_shape(*
T0*
use_locking(
ґ
save_4/Assign_16Assignembedding_1/Adamsave_4/RestoreV2_1:1* 
_output_shapes
:
ЄА*
validate_shape(*
use_locking(*
T0*
_class
loc:@embedding_1
Є
save_4/Assign_17Assignembedding_1/Adam_1save_4/RestoreV2_1:2*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1
W
save_4/restore_shard_1NoOp^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17
6
save_4/restore_all/NoOpNoOp^save_4/restore_shard
:
save_4/restore_all/NoOp_1NoOp^save_4/restore_shard_1
P
save_4/restore_allNoOp^save_4/restore_all/NoOp^save_4/restore_all/NoOp_1
R
save_5/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
Ж
save_5/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_1772bae0e1c94900bf53a3be6f64cc86/part*
dtype0
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_5/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_5/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
Е
save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards*
_output_shapes
: 
Э
save_5/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1
Г
save_5/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*1
value(B&B B B B B B B B B B B B B B B 
√
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slices-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1beta1_powerbeta2_powerglobal_step	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1*
dtypes
2
Щ
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: *
T0
`
save_5/ShardedFilename_1/shardConst*
value	B :*
_output_shapes
: *
dtype0
Й
save_5/ShardedFilename_1ShardedFilenamesave_5/StringJoinsave_5/ShardedFilename_1/shardsave_5/num_shards*
_output_shapes
: 
Ц
save_5/SaveV2_1/tensor_namesConst*
dtype0*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1*
_output_shapes
:
m
 save_5/SaveV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B B 
є
save_5/SaveV2_1SaveV2save_5/ShardedFilename_1save_5/SaveV2_1/tensor_names save_5/SaveV2_1/shape_and_slicesembedding_1embedding_1/Adamembedding_1/Adam_1*
dtypes
2
°
save_5/control_dependency_1Identitysave_5/ShardedFilename_1^save_5/SaveV2_1*+
_class!
loc:@save_5/ShardedFilename_1*
_output_shapes
: *
T0
џ
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilenamesave_5/ShardedFilename_1^save_5/control_dependency^save_5/control_dependency_1*
T0*
N*
_output_shapes
:*

axis 
Г
save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const*
delete_old_dirs(
†
save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency^save_5/control_dependency_1*
_output_shapes
: *
T0
†
save_5/RestoreV2/tensor_namesConst*
_output_shapes
:*ќ
valueƒBЅB-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biasB2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Bbeta1_powerBbeta2_powerBglobal_stepB	softmax_bBsoftmax_b/AdamBsoftmax_b/Adam_1B	softmax_wBsoftmax_w/AdamBsoftmax_w/Adam_1*
dtype0
Ж
!save_5/RestoreV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ё
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*P
_output_shapes>
<:::::::::::::::*
dtypes
2
й
save_5/AssignAssign-LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/biassave_5/RestoreV2*
_output_shapes	
:А*
use_locking(*
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(
т
save_5/Assign_1Assign2LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adamsave_5/RestoreV2:1*
validate_shape(*
T0*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(*
_output_shapes	
:А
ф
save_5/Assign_2Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1save_5/RestoreV2:2*
use_locking(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0*
validate_shape(*
_output_shapes	
:А
ц
save_5/Assign_3Assign/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave_5/RestoreV2:3*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
АА
ы
save_5/Assign_4Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adamsave_5/RestoreV2:4* 
_output_shapes
:
АА*
validate_shape(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
use_locking(*
T0
э
save_5/Assign_5Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1save_5/RestoreV2:5*
use_locking(*B
_class8
64loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(*
T0* 
_output_shapes
:
АА
∆
save_5/Assign_6Assignbeta1_powersave_5/RestoreV2:6*
_output_shapes
: *
T0*
validate_shape(*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking(
∆
save_5/Assign_7Assignbeta2_powersave_5/RestoreV2:7*@
_class6
42loc:@LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
§
save_5/Assign_8Assignglobal_stepsave_5/RestoreV2:8*
_output_shapes
: *
_class
loc:@global_step*
T0*
use_locking(*
validate_shape(
§
save_5/Assign_9Assign	softmax_bsave_5/RestoreV2:9*
use_locking(*
T0*
_class
loc:@softmax_b*
_output_shapes
:*
validate_shape(
Ђ
save_5/Assign_10Assignsoftmax_b/Adamsave_5/RestoreV2:10*
validate_shape(*
use_locking(*
_class
loc:@softmax_b*
T0*
_output_shapes
:
≠
save_5/Assign_11Assignsoftmax_b/Adam_1save_5/RestoreV2:11*
_class
loc:@softmax_b*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
Ђ
save_5/Assign_12Assign	softmax_wsave_5/RestoreV2:12*
_class
loc:@softmax_w*
T0*
use_locking(*
_output_shapes
:	А*
validate_shape(
∞
save_5/Assign_13Assignsoftmax_w/Adamsave_5/RestoreV2:13*
_output_shapes
:	А*
validate_shape(*
use_locking(*
_class
loc:@softmax_w*
T0
≤
save_5/Assign_14Assignsoftmax_w/Adam_1save_5/RestoreV2:14*
use_locking(*
validate_shape(*
T0*
_class
loc:@softmax_w*
_output_shapes
:	А
≠
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_2^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
Щ
save_5/RestoreV2_1/tensor_namesConst*
_output_shapes
:*F
value=B;Bembedding_1Bembedding_1/AdamBembedding_1/Adam_1*
dtype0
p
#save_5/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B B 
®
save_5/RestoreV2_1	RestoreV2save_5/Constsave_5/RestoreV2_1/tensor_names#save_5/RestoreV2_1/shape_and_slices* 
_output_shapes
:::*
dtypes
2
ѓ
save_5/Assign_15Assignembedding_1save_5/RestoreV2_1* 
_output_shapes
:
ЄА*
use_locking(*
validate_shape(*
_class
loc:@embedding_1*
T0
ґ
save_5/Assign_16Assignembedding_1/Adamsave_5/RestoreV2_1:1*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
ЄА*
_class
loc:@embedding_1
Є
save_5/Assign_17Assignembedding_1/Adam_1save_5/RestoreV2_1:2* 
_output_shapes
:
ЄА*
T0*
_class
loc:@embedding_1*
validate_shape(*
use_locking(
W
save_5/restore_shard_1NoOp^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17
6
save_5/restore_all/NoOpNoOp^save_5/restore_shard
:
save_5/restore_all/NoOp_1NoOp^save_5/restore_shard_1
P
save_5/restore_allNoOp^save_5/restore_all/NoOp^save_5/restore_all/NoOp_1 "B
save_5/Const:0save_5/Identity:0save_5/restore_all (5 @F8"Л
	variablesэъ
a
embedding_1:0embedding_1/Assignembedding_1/read:02(embedding_1/Initializer/random_uniform:0
с
1LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel:06LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:02LLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform:0
а
/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias:04LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:02ALSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros:0
Y
softmax_w:0softmax_w/Assignsoftmax_w/read:02&softmax_w/Initializer/random_uniform:0
Y
softmax_b:0softmax_b/Assignsoftmax_b/read:02&softmax_b/Initializer/random_uniform:0
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
l
embedding_1/Adam:0embedding_1/Adam/Assignembedding_1/Adam/read:02$embedding_1/Adam/Initializer/zeros:0
t
embedding_1/Adam_1:0embedding_1/Adam_1/Assignembedding_1/Adam_1/read:02&embedding_1/Adam_1/Initializer/zeros:0
ь
6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam:0;LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Assign;LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/read:02HLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros:0
Д
8LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1:0=LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Assign=LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/read:02JLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros:0
ф
4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam:09LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Assign9LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/read:02FLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zeros:0
ь
6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1:0;LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Assign;LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/read:02HLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zeros:0
d
softmax_w/Adam:0softmax_w/Adam/Assignsoftmax_w/Adam/read:02"softmax_w/Adam/Initializer/zeros:0
l
softmax_w/Adam_1:0softmax_w/Adam_1/Assignsoftmax_w/Adam_1/read:02$softmax_w/Adam_1/Initializer/zeros:0
d
softmax_b/Adam:0softmax_b/Adam/Assignsoftmax_b/Adam/read:02"softmax_b/Adam/Initializer/zeros:0
l
softmax_b/Adam_1:0softmax_b/Adam_1/Assignsoftmax_b/Adam_1/read:02$softmax_b/Adam_1/Initializer/zeros:0"Л
trainable_variablesур
a
embedding_1:0embedding_1/Assignembedding_1/read:02(embedding_1/Initializer/random_uniform:0
с
1LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel:06LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:02LLSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform:0
а
/LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias:04LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:02ALSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros:0
Y
softmax_w:0softmax_w/Assignsoftmax_w/read:02&softmax_w/Initializer/random_uniform:0
Y
softmax_b:0softmax_b/Assignsoftmax_b/read:02&softmax_b/Initializer/random_uniform:0"¶р
while_contextУрПр
Лр
LSTM/rnn/while/while_context *LSTM/rnn/while/LoopCond:02LSTM/rnn/while/Merge:0:LSTM/rnn/while/Identity:0BLSTM/rnn/while/Exit:0BLSTM/rnn/while/Exit_1:0BLSTM/rnn/while/Exit_2:0BLSTM/rnn/while/Exit_3:0BLSTM/rnn/while/Exit_4:0BLSTM/rnn/while/Exit_5:0BLSTM/rnn/while/Exit_6:0Bgradients/f_count_2:0Jмл
LSTM/rnn/CheckSeqLen:0
LSTM/rnn/Minimum:0
LSTM/rnn/TensorArray:0
ELSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
LSTM/rnn/TensorArray_1:0
4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:0
6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:0
LSTM/rnn/strided_slice_1:0
LSTM/rnn/while/Enter:0
LSTM/rnn/while/Enter_1:0
LSTM/rnn/while/Enter_2:0
LSTM/rnn/while/Enter_3:0
LSTM/rnn/while/Enter_4:0
LSTM/rnn/while/Enter_5:0
LSTM/rnn/while/Enter_6:0
LSTM/rnn/while/Exit:0
LSTM/rnn/while/Exit_1:0
LSTM/rnn/while/Exit_2:0
LSTM/rnn/while/Exit_3:0
LSTM/rnn/while/Exit_4:0
LSTM/rnn/while/Exit_5:0
LSTM/rnn/while/Exit_6:0
#LSTM/rnn/while/GreaterEqual/Enter:0
LSTM/rnn/while/GreaterEqual:0
LSTM/rnn/while/Identity:0
LSTM/rnn/while/Identity_1:0
LSTM/rnn/while/Identity_2:0
LSTM/rnn/while/Identity_3:0
LSTM/rnn/while/Identity_4:0
LSTM/rnn/while/Identity_5:0
LSTM/rnn/while/Identity_6:0
LSTM/rnn/while/Less/Enter:0
LSTM/rnn/while/Less:0
LSTM/rnn/while/Less_1/Enter:0
LSTM/rnn/while/Less_1:0
LSTM/rnn/while/LogicalAnd:0
LSTM/rnn/while/LoopCond:0
LSTM/rnn/while/Merge:0
LSTM/rnn/while/Merge:1
LSTM/rnn/while/Merge_1:0
LSTM/rnn/while/Merge_1:1
LSTM/rnn/while/Merge_2:0
LSTM/rnn/while/Merge_2:1
LSTM/rnn/while/Merge_3:0
LSTM/rnn/while/Merge_3:1
LSTM/rnn/while/Merge_4:0
LSTM/rnn/while/Merge_4:1
LSTM/rnn/while/Merge_5:0
LSTM/rnn/while/Merge_5:1
LSTM/rnn/while/Merge_6:0
LSTM/rnn/while/Merge_6:1
LSTM/rnn/while/NextIteration:0
 LSTM/rnn/while/NextIteration_1:0
 LSTM/rnn/while/NextIteration_2:0
 LSTM/rnn/while/NextIteration_3:0
 LSTM/rnn/while/NextIteration_4:0
 LSTM/rnn/while/NextIteration_5:0
 LSTM/rnn/while/NextIteration_6:0
LSTM/rnn/while/Select/Enter:0
LSTM/rnn/while/Select:0
LSTM/rnn/while/Select_1:0
LSTM/rnn/while/Select_2:0
LSTM/rnn/while/Select_3:0
LSTM/rnn/while/Select_4:0
LSTM/rnn/while/Switch:0
LSTM/rnn/while/Switch:1
LSTM/rnn/while/Switch_1:0
LSTM/rnn/while/Switch_1:1
LSTM/rnn/while/Switch_2:0
LSTM/rnn/while/Switch_2:1
LSTM/rnn/while/Switch_3:0
LSTM/rnn/while/Switch_3:1
LSTM/rnn/while/Switch_4:0
LSTM/rnn/while/Switch_4:1
LSTM/rnn/while/Switch_5:0
LSTM/rnn/while/Switch_5:1
LSTM/rnn/while/Switch_6:0
LSTM/rnn/while/Switch_6:1
(LSTM/rnn/while/TensorArrayReadV3/Enter:0
*LSTM/rnn/while/TensorArrayReadV3/Enter_1:0
"LSTM/rnn/while/TensorArrayReadV3:0
:LSTM/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
4LSTM/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
LSTM/rnn/while/add/y:0
LSTM/rnn/while/add:0
LSTM/rnn/while/add_1/y:0
LSTM/rnn/while/add_1:0
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor:0
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Shape:0
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:0
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add:0
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div:0
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul:0
OLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/max:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mul:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/sub:0
ALSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform:0
BLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter:0
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd:0
>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_1:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Const:0
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Const_1:0
ALSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter:0
;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul:0
=LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1:0
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid:0
>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1:0
>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2:0
>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_3:0
>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_4:0
>LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_5:0
9LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh:0
;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1:0
;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_2:0
;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_3:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/y:0
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:0
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2/y:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3:0
@LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis:0
;LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat:0
BLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1/axis:0
=LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1:0
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5:0
DLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:0
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:1
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:2
:LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:3
FLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1/split_dim:0
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:0
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:1
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:2
<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_1:3
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor:0
8LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Shape:0
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/add:0
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div:0
6LSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul:0
OLSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/max:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mul:0
ELSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/sub:0
ALSTM/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform:0
LSTM/rnn/zeros:0
gradients/Add/y:0
gradients/Add:0
9gradients/LSTM/rnn/while/Select_1_grad/zeros_like/Enter:0
?gradients/LSTM/rnn/while/Select_1_grad/zeros_like/StackPushV2:0
9gradients/LSTM/rnn/while/Select_1_grad/zeros_like/f_acc:0
9gradients/LSTM/rnn/while/Select_2_grad/zeros_like/Enter:0
?gradients/LSTM/rnn/while/Select_2_grad/zeros_like/StackPushV2:0
9gradients/LSTM/rnn/while/Select_2_grad/zeros_like/f_acc:0
9gradients/LSTM/rnn/while/Select_3_grad/zeros_like/Enter:0
?gradients/LSTM/rnn/while/Select_3_grad/zeros_like/StackPushV2:0
9gradients/LSTM/rnn/while/Select_3_grad/zeros_like/f_acc:0
5gradients/LSTM/rnn/while/Select_4_grad/Select/Enter:0
;gradients/LSTM/rnn/while/Select_4_grad/Select/StackPushV2:0
5gradients/LSTM/rnn/while/Select_4_grad/Select/f_acc:0
9gradients/LSTM/rnn/while/Select_4_grad/zeros_like/Enter:0
?gradients/LSTM/rnn/while/Select_4_grad/zeros_like/StackPushV2:0
9gradients/LSTM/rnn/while/Select_4_grad/zeros_like/f_acc:0
[gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0
agradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2:0
[gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2:0
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/Enter:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/StackPushV2:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc:0
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape:0
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter:0
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/Enter:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPushV2:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_acc:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/Enter:0
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPushV2:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_acc:0
Kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape:0
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1:0
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/Enter:0
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/Enter:0
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/Enter:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/Shape:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/Shape_1:0
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/Enter:0
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc:0
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape:0
Rgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/Shape:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/Enter:0
_gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/StackPushV2:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/f_acc:0
Pgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape:0
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Enter:0
]gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2:0
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/Enter:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPushV2:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_acc:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/Enter:0
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPushV2:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_acc:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/Enter:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPushV2:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_acc:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/Enter:0
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPushV2:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_acc:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/Enter:0
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/StackPushV2:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/f_acc:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Shape_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/Enter:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/StackPushV2:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/f_acc:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/Enter:0
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/StackPushV2:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/f_acc:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Shape_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/Enter:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/StackPushV2:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/f_acc:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/Enter:0
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/StackPushV2:0
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/f_acc:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape:0
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Shape_1:0
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
igradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
kgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc:0
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/Enter:0
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPushV2:0
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_acc:0
Mgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape:0
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Switch:0
gradients/Switch:1
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0
keep_prob:0“
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0∆
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc:0agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter:0v
9gradients/LSTM/rnn/while/Select_4_grad/zeros_like/f_acc:09gradients/LSTM/rnn/while/Select_4_grad/zeros_like/Enter:0™
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_acc:0Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/Enter:0 
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc:0cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/Enter:03
LSTM/rnn/Minimum:0LSTM/rnn/while/Less_1/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter:0s
ELSTM/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0*LSTM/rnn/while/TensorArrayReadV3/Enter_1:0T
LSTM/rnn/TensorArray:0:LSTM/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0=
LSTM/rnn/CheckSeqLen:0#LSTM/rnn/while/GreaterEqual/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_2_grad/BroadcastGradientArgs/Enter:0“
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0“
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0“
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0Ї
[gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0[gradients/LSTM/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0“
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0v
9gradients/LSTM/rnn/while/Select_2_grad/zeros_like/f_acc:09gradients/LSTM/rnn/while/Select_2_grad/zeros_like/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter:0ґ
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc:0Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter:0ґ
Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/f_acc:0Ygradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1_grad/ShapeN/Enter:0n
5gradients/LSTM/rnn/while/Select_4_grad/Select/f_acc:05gradients/LSTM/rnn/while/Select_4_grad/Select/Enter:0 
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc:0cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter:0™
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/f_acc:0Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul/Enter:0™
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_acc:0Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/Enter:0Ґ
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/f_acc:0Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Neg/Enter:0™
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_acc:0Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/Enter:0¶
Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_acc:0Qgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/Enter:0 
cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0cgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0K
keep_prob:0<LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:0D
LSTM/rnn/TensorArray_1:0(LSTM/rnn/while/TensorArrayReadV3/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter:0≤
Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc:0Wgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Enter:0Ѓ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/f_acc:0Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_3_grad/Mul_1/Enter:0v
9gradients/LSTM/rnn/while/Select_1_grad/zeros_like/f_acc:09gradients/LSTM/rnn/while/Select_1_grad/zeros_like/Enter:0∆
agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc:0agradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter:0Ѓ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_acc:0Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter:09
LSTM/rnn/strided_slice_1:0LSTM/rnn/while/Less/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1:0{
6LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read:0ALSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter:0v
9gradients/LSTM/rnn/while/Select_3_grad/zeros_like/f_acc:09gradients/LSTM/rnn/while/Select_3_grad/zeros_like/Enter:0z
4LSTM/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read:0BLSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter:01
LSTM/rnn/zeros:0LSTM/rnn/while/Select/Enter:0“
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1:0ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1:0Ѓ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/f_acc:0Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_4_grad/Mul_1/Enter:0Ѓ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_acc:0Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/Enter:0™
Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/f_acc:0Sgradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul/Enter:0Ґ
Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_acc:0Ogradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/Enter:0Ї
[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0[gradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_1_grad/MatMul_1/Enter:0ќ
egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc:0egradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_3_grad/BroadcastGradientArgs/Enter:0“
ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0ggradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0Ѓ
Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/f_acc:0Ugradients/LSTM/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_5_grad/Mul_1/Enter:0RLSTM/rnn/while/Enter:0RLSTM/rnn/while/Enter_1:0RLSTM/rnn/while/Enter_2:0RLSTM/rnn/while/Enter_3:0RLSTM/rnn/while/Enter_4:0RLSTM/rnn/while/Enter_5:0RLSTM/rnn/while/Enter_6:0Rgradients/f_count_1:0ZLSTM/rnn/strided_slice_1:0"
train_op

op_to_store"#
	summaries

Loss:0

Accuracy:0*О
serving_default{
4
input_x)
	input_x:0€€€€€€€€€€€€€€€€€€'
input_y
	input_y:0	€€€€€€€€€tensorflow/serving/predict