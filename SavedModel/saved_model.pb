??
?#?"
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
?
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
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
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
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:?  ?
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
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
2	?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
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
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
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
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02unknown??
p
PlaceholderPlaceholder*
shape:??????????*
dtype0*(
_output_shapes
:??????????
p
Placeholder_1Placeholder*
shape:?????????
*
dtype0*'
_output_shapes
:?????????

o
layer_1/truncated_normal/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
b
layer_1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
layer_1/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
(layer_1/truncated_normal/TruncatedNormalTruncatedNormallayer_1/truncated_normal/shape*
seed?*
T0*
dtype0*
seed2** 
_output_shapes
:
??
?
layer_1/truncated_normal/mulMul(layer_1/truncated_normal/TruncatedNormallayer_1/truncated_normal/stddev*
T0* 
_output_shapes
:
??
?
layer_1/truncated_normalAddlayer_1/truncated_normal/mullayer_1/truncated_normal/mean*
T0* 
_output_shapes
:
??
?
	layer_1/W
VariableV2*
shape:
??*
shared_name *
dtype0*
	container * 
_output_shapes
:
??
?
layer_1/W/AssignAssign	layer_1/Wlayer_1/truncated_normal*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
??
n
layer_1/W/readIdentity	layer_1/W*
T0*
_class
loc:@layer_1/W* 
_output_shapes
:
??
\
layer_1/ConstConst*
valueB?*    *
dtype0*
_output_shapes	
:?
w
	layer_1/B
VariableV2*
shape:?*
shared_name *
dtype0*
	container *
_output_shapes	
:?
?
layer_1/B/AssignAssign	layer_1/Blayer_1/Const*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:?
i
layer_1/B/readIdentity	layer_1/B*
T0*
_class
loc:@layer_1/B*
_output_shapes	
:?
?
layer_1/MatMulMatMulPlaceholderlayer_1/W/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:??????????
e
layer_1/addAddlayer_1/MatMullayer_1/B/read*
T0*(
_output_shapes
:??????????
T
layer_1/ReluRelulayer_1/add*
T0*(
_output_shapes
:??????????
c
layer_1/weights/tagConst* 
valueB Blayer_1/weights*
dtype0*
_output_shapes
: 
i
layer_1/weightsHistogramSummarylayer_1/weights/taglayer_1/W/read*
T0*
_output_shapes
: 
a
layer_1/biases/tagConst*
valueB Blayer_1/biases*
dtype0*
_output_shapes
: 
g
layer_1/biasesHistogramSummarylayer_1/biases/taglayer_1/B/read*
T0*
_output_shapes
: 
W
dropout_layer/rateConst*
valueB
 *??L>*
dtype0*
_output_shapes
: 
_
dropout_layer/ShapeShapelayer_1/Relu*
T0*
out_type0*
_output_shapes
:
e
 dropout_layer/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 dropout_layer/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
*dropout_layer/random_uniform/RandomUniformRandomUniformdropout_layer/Shape*
seed?*
T0*
dtype0*
seed2*(
_output_shapes
:??????????
?
 dropout_layer/random_uniform/subSub dropout_layer/random_uniform/max dropout_layer/random_uniform/min*
T0*
_output_shapes
: 
?
 dropout_layer/random_uniform/mulMul*dropout_layer/random_uniform/RandomUniform dropout_layer/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
dropout_layer/random_uniformAdd dropout_layer/random_uniform/mul dropout_layer/random_uniform/min*
T0*(
_output_shapes
:??????????
X
dropout_layer/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
b
dropout_layer/subSubdropout_layer/sub/xdropout_layer/rate*
T0*
_output_shapes
: 
\
dropout_layer/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
m
dropout_layer/truedivRealDivdropout_layer/truediv/xdropout_layer/sub*
T0*
_output_shapes
: 
?
dropout_layer/GreaterEqualGreaterEqualdropout_layer/random_uniformdropout_layer/rate*
T0*(
_output_shapes
:??????????
p
dropout_layer/mulMullayer_1/Reludropout_layer/truediv*
T0*(
_output_shapes
:??????????
?
dropout_layer/CastCastdropout_layer/GreaterEqual*

SrcT0
*
Truncate( *

DstT0*(
_output_shapes
:??????????
t
dropout_layer/mul_1Muldropout_layer/muldropout_layer/Cast*
T0*(
_output_shapes
:??????????
o
layer_2/truncated_normal/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
b
layer_2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
layer_2/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
(layer_2/truncated_normal/TruncatedNormalTruncatedNormallayer_2/truncated_normal/shape*
seed?*
T0*
dtype0*
seed2**
_output_shapes
:	?@
?
layer_2/truncated_normal/mulMul(layer_2/truncated_normal/TruncatedNormallayer_2/truncated_normal/stddev*
T0*
_output_shapes
:	?@
?
layer_2/truncated_normalAddlayer_2/truncated_normal/mullayer_2/truncated_normal/mean*
T0*
_output_shapes
:	?@

	layer_2/W
VariableV2*
shape:	?@*
shared_name *
dtype0*
	container *
_output_shapes
:	?@
?
layer_2/W/AssignAssign	layer_2/Wlayer_2/truncated_normal*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	?@
m
layer_2/W/readIdentity	layer_2/W*
T0*
_class
loc:@layer_2/W*
_output_shapes
:	?@
Z
layer_2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
u
	layer_2/B
VariableV2*
shape:@*
shared_name *
dtype0*
	container *
_output_shapes
:@
?
layer_2/B/AssignAssign	layer_2/Blayer_2/Const*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
h
layer_2/B/readIdentity	layer_2/B*
T0*
_class
loc:@layer_2/B*
_output_shapes
:@
?
layer_2/MatMulMatMuldropout_layer/mul_1layer_2/W/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:?????????@
d
layer_2/addAddlayer_2/MatMullayer_2/B/read*
T0*'
_output_shapes
:?????????@
S
layer_2/ReluRelulayer_2/add*
T0*'
_output_shapes
:?????????@
c
layer_2/weights/tagConst* 
valueB Blayer_2/weights*
dtype0*
_output_shapes
: 
i
layer_2/weightsHistogramSummarylayer_2/weights/taglayer_2/W/read*
T0*
_output_shapes
: 
a
layer_2/biases/tagConst*
valueB Blayer_2/biases*
dtype0*
_output_shapes
: 
g
layer_2/biasesHistogramSummarylayer_2/biases/taglayer_2/B/read*
T0*
_output_shapes
: 
k
out/truncated_normal/shapeConst*
valueB"@   
   *
dtype0*
_output_shapes
:
^
out/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
out/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
$out/truncated_normal/TruncatedNormalTruncatedNormalout/truncated_normal/shape*
seed?*
T0*
dtype0*
seed2**
_output_shapes

:@

?
out/truncated_normal/mulMul$out/truncated_normal/TruncatedNormalout/truncated_normal/stddev*
T0*
_output_shapes

:@

y
out/truncated_normalAddout/truncated_normal/mulout/truncated_normal/mean*
T0*
_output_shapes

:@

y
out/W
VariableV2*
shape
:@
*
shared_name *
dtype0*
	container *
_output_shapes

:@

?
out/W/AssignAssignout/Wout/truncated_normal*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

`

out/W/readIdentityout/W*
T0*
_class

loc:@out/W*
_output_shapes

:@

V
	out/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

q
out/B
VariableV2*
shape:
*
shared_name *
dtype0*
	container *
_output_shapes
:

?
out/B/AssignAssignout/B	out/Const*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

\

out/B/readIdentityout/B*
T0*
_class

loc:@out/B*
_output_shapes
:

?

out/MatMulMatMullayer_2/Relu
out/W/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:?????????

X
out/addAdd
out/MatMul
out/B/read*
T0*'
_output_shapes
:?????????

Q
out/SoftmaxSoftmaxout/add*
T0*'
_output_shapes
:?????????

[
out/weights/tagConst*
valueB Bout/weights*
dtype0*
_output_shapes
: 
]
out/weightsHistogramSummaryout/weights/tag
out/W/read*
T0*
_output_shapes
: 
Y
out/biases/tagConst*
valueB B
out/biases*
dtype0*
_output_shapes
: 
[

out/biasesHistogramSummaryout/biases/tag
out/B/read*
T0*
_output_shapes
: 
r
0loss_calc/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
|
1loss_calc/softmax_cross_entropy_with_logits/ShapeShapeout/Softmax*
T0*
out_type0*
_output_shapes
:
t
2loss_calc/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
~
3loss_calc/softmax_cross_entropy_with_logits/Shape_1Shapeout/Softmax*
T0*
out_type0*
_output_shapes
:
s
1loss_calc/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
/loss_calc/softmax_cross_entropy_with_logits/SubSub2loss_calc/softmax_cross_entropy_with_logits/Rank_11loss_calc/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
?
7loss_calc/softmax_cross_entropy_with_logits/Slice/beginPack/loss_calc/softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:
?
6loss_calc/softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
1loss_calc/softmax_cross_entropy_with_logits/SliceSlice3loss_calc/softmax_cross_entropy_with_logits/Shape_17loss_calc/softmax_cross_entropy_with_logits/Slice/begin6loss_calc/softmax_cross_entropy_with_logits/Slice/size*
T0*
Index0*
_output_shapes
:
?
;loss_calc/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
y
7loss_calc/softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
2loss_calc/softmax_cross_entropy_with_logits/concatConcatV2;loss_calc/softmax_cross_entropy_with_logits/concat/values_01loss_calc/softmax_cross_entropy_with_logits/Slice7loss_calc/softmax_cross_entropy_with_logits/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
3loss_calc/softmax_cross_entropy_with_logits/ReshapeReshapeout/Softmax2loss_calc/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????
t
2loss_calc/softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
?
3loss_calc/softmax_cross_entropy_with_logits/Shape_2ShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
u
3loss_calc/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
1loss_calc/softmax_cross_entropy_with_logits/Sub_1Sub2loss_calc/softmax_cross_entropy_with_logits/Rank_23loss_calc/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
?
9loss_calc/softmax_cross_entropy_with_logits/Slice_1/beginPack1loss_calc/softmax_cross_entropy_with_logits/Sub_1*
T0*

axis *
N*
_output_shapes
:
?
8loss_calc/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
3loss_calc/softmax_cross_entropy_with_logits/Slice_1Slice3loss_calc/softmax_cross_entropy_with_logits/Shape_29loss_calc/softmax_cross_entropy_with_logits/Slice_1/begin8loss_calc/softmax_cross_entropy_with_logits/Slice_1/size*
T0*
Index0*
_output_shapes
:
?
=loss_calc/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
{
9loss_calc/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
4loss_calc/softmax_cross_entropy_with_logits/concat_1ConcatV2=loss_calc/softmax_cross_entropy_with_logits/concat_1/values_03loss_calc/softmax_cross_entropy_with_logits/Slice_19loss_calc/softmax_cross_entropy_with_logits/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
5loss_calc/softmax_cross_entropy_with_logits/Reshape_1ReshapePlaceholder_14loss_calc/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
+loss_calc/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits3loss_calc/softmax_cross_entropy_with_logits/Reshape5loss_calc/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
u
3loss_calc/softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
1loss_calc/softmax_cross_entropy_with_logits/Sub_2Sub0loss_calc/softmax_cross_entropy_with_logits/Rank3loss_calc/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
?
9loss_calc/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
?
8loss_calc/softmax_cross_entropy_with_logits/Slice_2/sizePack1loss_calc/softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:
?
3loss_calc/softmax_cross_entropy_with_logits/Slice_2Slice1loss_calc/softmax_cross_entropy_with_logits/Shape9loss_calc/softmax_cross_entropy_with_logits/Slice_2/begin8loss_calc/softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0*
_output_shapes
:
?
5loss_calc/softmax_cross_entropy_with_logits/Reshape_2Reshape+loss_calc/softmax_cross_entropy_with_logits3loss_calc/softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:?????????
Y
loss_calc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
loss_calc/MeanMean5loss_calc/softmax_cross_entropy_with_logits/Reshape_2loss_calc/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
\
optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
optimizer/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

5optimizer/gradients/loss_calc/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
/optimizer/gradients/loss_calc/Mean_grad/ReshapeReshapeoptimizer/gradients/Fill5optimizer/gradients/loss_calc/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
?
-optimizer/gradients/loss_calc/Mean_grad/ShapeShape5loss_calc/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
?
,optimizer/gradients/loss_calc/Mean_grad/TileTile/optimizer/gradients/loss_calc/Mean_grad/Reshape-optimizer/gradients/loss_calc/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:?????????
?
/optimizer/gradients/loss_calc/Mean_grad/Shape_1Shape5loss_calc/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
r
/optimizer/gradients/loss_calc/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
w
-optimizer/gradients/loss_calc/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
,optimizer/gradients/loss_calc/Mean_grad/ProdProd/optimizer/gradients/loss_calc/Mean_grad/Shape_1-optimizer/gradients/loss_calc/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
y
/optimizer/gradients/loss_calc/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
.optimizer/gradients/loss_calc/Mean_grad/Prod_1Prod/optimizer/gradients/loss_calc/Mean_grad/Shape_2/optimizer/gradients/loss_calc/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
s
1optimizer/gradients/loss_calc/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
/optimizer/gradients/loss_calc/Mean_grad/MaximumMaximum.optimizer/gradients/loss_calc/Mean_grad/Prod_11optimizer/gradients/loss_calc/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
0optimizer/gradients/loss_calc/Mean_grad/floordivFloorDiv,optimizer/gradients/loss_calc/Mean_grad/Prod/optimizer/gradients/loss_calc/Mean_grad/Maximum*
T0*
_output_shapes
: 
?
,optimizer/gradients/loss_calc/Mean_grad/CastCast0optimizer/gradients/loss_calc/Mean_grad/floordiv*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
?
/optimizer/gradients/loss_calc/Mean_grad/truedivRealDiv,optimizer/gradients/loss_calc/Mean_grad/Tile,optimizer/gradients/loss_calc/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
?
Toptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape+loss_calc/softmax_cross_entropy_with_logits*
T0*
out_type0*
_output_shapes
:
?
Voptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape/optimizer/gradients/loss_calc/Mean_grad/truedivToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
optimizer/gradients/zeros_like	ZerosLike-loss_calc/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
Soptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Ooptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsVoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeSoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:?????????
?
Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulMulOoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims-loss_calc/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
Ooptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax3loss_calc/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:??????????????????
?
Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/NegNegOoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:??????????????????
?
Uoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Qoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsVoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeUoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:?????????
?
Joptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1MulQoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1Hoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:??????????????????
?
Uoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOpI^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulK^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1
?
]optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentityHoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mulV^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:??????????????????
?
_optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1IdentityJoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1V^optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*]
_classS
QOloc:@optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:??????????????????
?
Roptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeout/Softmax*
T0*
out_type0*
_output_shapes
:
?
Toptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshape]optimizer/gradients/loss_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyRoptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
(optimizer/gradients/out/Softmax_grad/mulMulToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshapeout/Softmax*
T0*'
_output_shapes
:?????????

?
:optimizer/gradients/out/Softmax_grad/Sum/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
(optimizer/gradients/out/Softmax_grad/SumSum(optimizer/gradients/out/Softmax_grad/mul:optimizer/gradients/out/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:?????????
?
(optimizer/gradients/out/Softmax_grad/subSubToptimizer/gradients/loss_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshape(optimizer/gradients/out/Softmax_grad/Sum*
T0*'
_output_shapes
:?????????

?
*optimizer/gradients/out/Softmax_grad/mul_1Mul(optimizer/gradients/out/Softmax_grad/subout/Softmax*
T0*'
_output_shapes
:?????????

p
&optimizer/gradients/out/add_grad/ShapeShape
out/MatMul*
T0*
out_type0*
_output_shapes
:
r
(optimizer/gradients/out/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
?
6optimizer/gradients/out/add_grad/BroadcastGradientArgsBroadcastGradientArgs&optimizer/gradients/out/add_grad/Shape(optimizer/gradients/out/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
$optimizer/gradients/out/add_grad/SumSum*optimizer/gradients/out/Softmax_grad/mul_16optimizer/gradients/out/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
(optimizer/gradients/out/add_grad/ReshapeReshape$optimizer/gradients/out/add_grad/Sum&optimizer/gradients/out/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
&optimizer/gradients/out/add_grad/Sum_1Sum*optimizer/gradients/out/Softmax_grad/mul_18optimizer/gradients/out/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
*optimizer/gradients/out/add_grad/Reshape_1Reshape&optimizer/gradients/out/add_grad/Sum_1(optimizer/gradients/out/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

?
1optimizer/gradients/out/add_grad/tuple/group_depsNoOp)^optimizer/gradients/out/add_grad/Reshape+^optimizer/gradients/out/add_grad/Reshape_1
?
9optimizer/gradients/out/add_grad/tuple/control_dependencyIdentity(optimizer/gradients/out/add_grad/Reshape2^optimizer/gradients/out/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@optimizer/gradients/out/add_grad/Reshape*'
_output_shapes
:?????????

?
;optimizer/gradients/out/add_grad/tuple/control_dependency_1Identity*optimizer/gradients/out/add_grad/Reshape_12^optimizer/gradients/out/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@optimizer/gradients/out/add_grad/Reshape_1*
_output_shapes
:

?
*optimizer/gradients/out/MatMul_grad/MatMulMatMul9optimizer/gradients/out/add_grad/tuple/control_dependency
out/W/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:?????????@
?
,optimizer/gradients/out/MatMul_grad/MatMul_1MatMullayer_2/Relu9optimizer/gradients/out/add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@

?
4optimizer/gradients/out/MatMul_grad/tuple/group_depsNoOp+^optimizer/gradients/out/MatMul_grad/MatMul-^optimizer/gradients/out/MatMul_grad/MatMul_1
?
<optimizer/gradients/out/MatMul_grad/tuple/control_dependencyIdentity*optimizer/gradients/out/MatMul_grad/MatMul5^optimizer/gradients/out/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@optimizer/gradients/out/MatMul_grad/MatMul*'
_output_shapes
:?????????@
?
>optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1Identity,optimizer/gradients/out/MatMul_grad/MatMul_15^optimizer/gradients/out/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@optimizer/gradients/out/MatMul_grad/MatMul_1*
_output_shapes

:@

?
.optimizer/gradients/layer_2/Relu_grad/ReluGradReluGrad<optimizer/gradients/out/MatMul_grad/tuple/control_dependencylayer_2/Relu*
T0*'
_output_shapes
:?????????@
x
*optimizer/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
T0*
out_type0*
_output_shapes
:
v
,optimizer/gradients/layer_2/add_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
?
:optimizer/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/layer_2/add_grad/Shape,optimizer/gradients/layer_2/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
(optimizer/gradients/layer_2/add_grad/SumSum.optimizer/gradients/layer_2/Relu_grad/ReluGrad:optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
,optimizer/gradients/layer_2/add_grad/ReshapeReshape(optimizer/gradients/layer_2/add_grad/Sum*optimizer/gradients/layer_2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????@
?
*optimizer/gradients/layer_2/add_grad/Sum_1Sum.optimizer/gradients/layer_2/Relu_grad/ReluGrad<optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
.optimizer/gradients/layer_2/add_grad/Reshape_1Reshape*optimizer/gradients/layer_2/add_grad/Sum_1,optimizer/gradients/layer_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
?
5optimizer/gradients/layer_2/add_grad/tuple/group_depsNoOp-^optimizer/gradients/layer_2/add_grad/Reshape/^optimizer/gradients/layer_2/add_grad/Reshape_1
?
=optimizer/gradients/layer_2/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/layer_2/add_grad/Reshape6^optimizer/gradients/layer_2/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@optimizer/gradients/layer_2/add_grad/Reshape*'
_output_shapes
:?????????@
?
?optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/layer_2/add_grad/Reshape_16^optimizer/gradients/layer_2/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_2/add_grad/Reshape_1*
_output_shapes
:@
?
.optimizer/gradients/layer_2/MatMul_grad/MatMulMatMul=optimizer/gradients/layer_2/add_grad/tuple/control_dependencylayer_2/W/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:??????????
?
0optimizer/gradients/layer_2/MatMul_grad/MatMul_1MatMuldropout_layer/mul_1=optimizer/gradients/layer_2/add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	?@
?
8optimizer/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp/^optimizer/gradients/layer_2/MatMul_grad/MatMul1^optimizer/gradients/layer_2/MatMul_grad/MatMul_1
?
@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity.optimizer/gradients/layer_2/MatMul_grad/MatMul9^optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_2/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
Boptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity0optimizer/gradients/layer_2/MatMul_grad/MatMul_19^optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@optimizer/gradients/layer_2/MatMul_grad/MatMul_1*
_output_shapes
:	?@
?
2optimizer/gradients/dropout_layer/mul_1_grad/ShapeShapedropout_layer/mul*
T0*
out_type0*
_output_shapes
:
?
4optimizer/gradients/dropout_layer/mul_1_grad/Shape_1Shapedropout_layer/Cast*
T0*
out_type0*
_output_shapes
:
?
Boptimizer/gradients/dropout_layer/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs2optimizer/gradients/dropout_layer/mul_1_grad/Shape4optimizer/gradients/dropout_layer/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
0optimizer/gradients/dropout_layer/mul_1_grad/MulMul@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependencydropout_layer/Cast*
T0*(
_output_shapes
:??????????
?
0optimizer/gradients/dropout_layer/mul_1_grad/SumSum0optimizer/gradients/dropout_layer/mul_1_grad/MulBoptimizer/gradients/dropout_layer/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
4optimizer/gradients/dropout_layer/mul_1_grad/ReshapeReshape0optimizer/gradients/dropout_layer/mul_1_grad/Sum2optimizer/gradients/dropout_layer/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
2optimizer/gradients/dropout_layer/mul_1_grad/Mul_1Muldropout_layer/mul@optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
2optimizer/gradients/dropout_layer/mul_1_grad/Sum_1Sum2optimizer/gradients/dropout_layer/mul_1_grad/Mul_1Doptimizer/gradients/dropout_layer/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
6optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1Reshape2optimizer/gradients/dropout_layer/mul_1_grad/Sum_14optimizer/gradients/dropout_layer/mul_1_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:??????????
?
=optimizer/gradients/dropout_layer/mul_1_grad/tuple/group_depsNoOp5^optimizer/gradients/dropout_layer/mul_1_grad/Reshape7^optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1
?
Eoptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependencyIdentity4optimizer/gradients/dropout_layer/mul_1_grad/Reshape>^optimizer/gradients/dropout_layer/mul_1_grad/tuple/group_deps*
T0*G
_class=
;9loc:@optimizer/gradients/dropout_layer/mul_1_grad/Reshape*(
_output_shapes
:??????????
?
Goptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependency_1Identity6optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1>^optimizer/gradients/dropout_layer/mul_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@optimizer/gradients/dropout_layer/mul_1_grad/Reshape_1*(
_output_shapes
:??????????
|
0optimizer/gradients/dropout_layer/mul_grad/ShapeShapelayer_1/Relu*
T0*
out_type0*
_output_shapes
:
u
2optimizer/gradients/dropout_layer/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
@optimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgsBroadcastGradientArgs0optimizer/gradients/dropout_layer/mul_grad/Shape2optimizer/gradients/dropout_layer/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
.optimizer/gradients/dropout_layer/mul_grad/MulMulEoptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependencydropout_layer/truediv*
T0*(
_output_shapes
:??????????
?
.optimizer/gradients/dropout_layer/mul_grad/SumSum.optimizer/gradients/dropout_layer/mul_grad/Mul@optimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
2optimizer/gradients/dropout_layer/mul_grad/ReshapeReshape.optimizer/gradients/dropout_layer/mul_grad/Sum0optimizer/gradients/dropout_layer/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
0optimizer/gradients/dropout_layer/mul_grad/Mul_1Mullayer_1/ReluEoptimizer/gradients/dropout_layer/mul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
0optimizer/gradients/dropout_layer/mul_grad/Sum_1Sum0optimizer/gradients/dropout_layer/mul_grad/Mul_1Boptimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
4optimizer/gradients/dropout_layer/mul_grad/Reshape_1Reshape0optimizer/gradients/dropout_layer/mul_grad/Sum_12optimizer/gradients/dropout_layer/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
?
;optimizer/gradients/dropout_layer/mul_grad/tuple/group_depsNoOp3^optimizer/gradients/dropout_layer/mul_grad/Reshape5^optimizer/gradients/dropout_layer/mul_grad/Reshape_1
?
Coptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependencyIdentity2optimizer/gradients/dropout_layer/mul_grad/Reshape<^optimizer/gradients/dropout_layer/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@optimizer/gradients/dropout_layer/mul_grad/Reshape*(
_output_shapes
:??????????
?
Eoptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependency_1Identity4optimizer/gradients/dropout_layer/mul_grad/Reshape_1<^optimizer/gradients/dropout_layer/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@optimizer/gradients/dropout_layer/mul_grad/Reshape_1*
_output_shapes
: 
?
.optimizer/gradients/layer_1/Relu_grad/ReluGradReluGradCoptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependencylayer_1/Relu*
T0*(
_output_shapes
:??????????
x
*optimizer/gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
T0*
out_type0*
_output_shapes
:
w
,optimizer/gradients/layer_1/add_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
:optimizer/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/layer_1/add_grad/Shape,optimizer/gradients/layer_1/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
(optimizer/gradients/layer_1/add_grad/SumSum.optimizer/gradients/layer_1/Relu_grad/ReluGrad:optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
,optimizer/gradients/layer_1/add_grad/ReshapeReshape(optimizer/gradients/layer_1/add_grad/Sum*optimizer/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
*optimizer/gradients/layer_1/add_grad/Sum_1Sum.optimizer/gradients/layer_1/Relu_grad/ReluGrad<optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
.optimizer/gradients/layer_1/add_grad/Reshape_1Reshape*optimizer/gradients/layer_1/add_grad/Sum_1,optimizer/gradients/layer_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
5optimizer/gradients/layer_1/add_grad/tuple/group_depsNoOp-^optimizer/gradients/layer_1/add_grad/Reshape/^optimizer/gradients/layer_1/add_grad/Reshape_1
?
=optimizer/gradients/layer_1/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/layer_1/add_grad/Reshape6^optimizer/gradients/layer_1/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@optimizer/gradients/layer_1/add_grad/Reshape*(
_output_shapes
:??????????
?
?optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/layer_1/add_grad/Reshape_16^optimizer/gradients/layer_1/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_1/add_grad/Reshape_1*
_output_shapes	
:?
?
.optimizer/gradients/layer_1/MatMul_grad/MatMulMatMul=optimizer/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/W/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:??????????
?
0optimizer/gradients/layer_1/MatMul_grad/MatMul_1MatMulPlaceholder=optimizer/gradients/layer_1/add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:
??
?
8optimizer/gradients/layer_1/MatMul_grad/tuple/group_depsNoOp/^optimizer/gradients/layer_1/MatMul_grad/MatMul1^optimizer/gradients/layer_1/MatMul_grad/MatMul_1
?
@optimizer/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity.optimizer/gradients/layer_1/MatMul_grad/MatMul9^optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/layer_1/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
Boptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity0optimizer/gradients/layer_1/MatMul_grad/MatMul_19^optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@optimizer/gradients/layer_1/MatMul_grad/MatMul_1* 
_output_shapes
:
??
?
#optimizer/beta1_power/initial_valueConst*
_class
loc:@layer_1/B*
valueB
 *fff?*
dtype0*
_output_shapes
: 
?
optimizer/beta1_power
VariableV2*
shape: *
shared_name *
_class
loc:@layer_1/B*
dtype0*
	container *
_output_shapes
: 
?
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
|
optimizer/beta1_power/readIdentityoptimizer/beta1_power*
T0*
_class
loc:@layer_1/B*
_output_shapes
: 
?
#optimizer/beta2_power/initial_valueConst*
_class
loc:@layer_1/B*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
optimizer/beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@layer_1/B*
dtype0*
	container *
_output_shapes
: 
?
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
|
optimizer/beta2_power/readIdentityoptimizer/beta2_power*
T0*
_class
loc:@layer_1/B*
_output_shapes
: 
?
0layer_1/W/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"     *
_class
loc:@layer_1/W*
dtype0*
_output_shapes
:
?
&layer_1/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@layer_1/W*
dtype0*
_output_shapes
: 
?
 layer_1/W/Adam/Initializer/zerosFill0layer_1/W/Adam/Initializer/zeros/shape_as_tensor&layer_1/W/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@layer_1/W* 
_output_shapes
:
??
?
layer_1/W/Adam
VariableV2*
shape:
??*
shared_name *
_class
loc:@layer_1/W*
dtype0*
	container * 
_output_shapes
:
??
?
layer_1/W/Adam/AssignAssignlayer_1/W/Adam layer_1/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
??
x
layer_1/W/Adam/readIdentitylayer_1/W/Adam*
T0*
_class
loc:@layer_1/W* 
_output_shapes
:
??
?
2layer_1/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"     *
_class
loc:@layer_1/W*
dtype0*
_output_shapes
:
?
(layer_1/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@layer_1/W*
dtype0*
_output_shapes
: 
?
"layer_1/W/Adam_1/Initializer/zerosFill2layer_1/W/Adam_1/Initializer/zeros/shape_as_tensor(layer_1/W/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@layer_1/W* 
_output_shapes
:
??
?
layer_1/W/Adam_1
VariableV2*
shape:
??*
shared_name *
_class
loc:@layer_1/W*
dtype0*
	container * 
_output_shapes
:
??
?
layer_1/W/Adam_1/AssignAssignlayer_1/W/Adam_1"layer_1/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
??
|
layer_1/W/Adam_1/readIdentitylayer_1/W/Adam_1*
T0*
_class
loc:@layer_1/W* 
_output_shapes
:
??
?
 layer_1/B/Adam/Initializer/zerosConst*
valueB?*    *
_class
loc:@layer_1/B*
dtype0*
_output_shapes	
:?
?
layer_1/B/Adam
VariableV2*
shape:?*
shared_name *
_class
loc:@layer_1/B*
dtype0*
	container *
_output_shapes	
:?
?
layer_1/B/Adam/AssignAssignlayer_1/B/Adam layer_1/B/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:?
s
layer_1/B/Adam/readIdentitylayer_1/B/Adam*
T0*
_class
loc:@layer_1/B*
_output_shapes	
:?
?
"layer_1/B/Adam_1/Initializer/zerosConst*
valueB?*    *
_class
loc:@layer_1/B*
dtype0*
_output_shapes	
:?
?
layer_1/B/Adam_1
VariableV2*
shape:?*
shared_name *
_class
loc:@layer_1/B*
dtype0*
	container *
_output_shapes	
:?
?
layer_1/B/Adam_1/AssignAssignlayer_1/B/Adam_1"layer_1/B/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:?
w
layer_1/B/Adam_1/readIdentitylayer_1/B/Adam_1*
T0*
_class
loc:@layer_1/B*
_output_shapes	
:?
?
0layer_2/W/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@layer_2/W*
dtype0*
_output_shapes
:
?
&layer_2/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@layer_2/W*
dtype0*
_output_shapes
: 
?
 layer_2/W/Adam/Initializer/zerosFill0layer_2/W/Adam/Initializer/zeros/shape_as_tensor&layer_2/W/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@layer_2/W*
_output_shapes
:	?@
?
layer_2/W/Adam
VariableV2*
shape:	?@*
shared_name *
_class
loc:@layer_2/W*
dtype0*
	container *
_output_shapes
:	?@
?
layer_2/W/Adam/AssignAssignlayer_2/W/Adam layer_2/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	?@
w
layer_2/W/Adam/readIdentitylayer_2/W/Adam*
T0*
_class
loc:@layer_2/W*
_output_shapes
:	?@
?
2layer_2/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *
_class
loc:@layer_2/W*
dtype0*
_output_shapes
:
?
(layer_2/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@layer_2/W*
dtype0*
_output_shapes
: 
?
"layer_2/W/Adam_1/Initializer/zerosFill2layer_2/W/Adam_1/Initializer/zeros/shape_as_tensor(layer_2/W/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@layer_2/W*
_output_shapes
:	?@
?
layer_2/W/Adam_1
VariableV2*
shape:	?@*
shared_name *
_class
loc:@layer_2/W*
dtype0*
	container *
_output_shapes
:	?@
?
layer_2/W/Adam_1/AssignAssignlayer_2/W/Adam_1"layer_2/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	?@
{
layer_2/W/Adam_1/readIdentitylayer_2/W/Adam_1*
T0*
_class
loc:@layer_2/W*
_output_shapes
:	?@
?
 layer_2/B/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@layer_2/B*
dtype0*
_output_shapes
:@
?
layer_2/B/Adam
VariableV2*
shape:@*
shared_name *
_class
loc:@layer_2/B*
dtype0*
	container *
_output_shapes
:@
?
layer_2/B/Adam/AssignAssignlayer_2/B/Adam layer_2/B/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
r
layer_2/B/Adam/readIdentitylayer_2/B/Adam*
T0*
_class
loc:@layer_2/B*
_output_shapes
:@
?
"layer_2/B/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@layer_2/B*
dtype0*
_output_shapes
:@
?
layer_2/B/Adam_1
VariableV2*
shape:@*
shared_name *
_class
loc:@layer_2/B*
dtype0*
	container *
_output_shapes
:@
?
layer_2/B/Adam_1/AssignAssignlayer_2/B/Adam_1"layer_2/B/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
v
layer_2/B/Adam_1/readIdentitylayer_2/B/Adam_1*
T0*
_class
loc:@layer_2/B*
_output_shapes
:@
?
out/W/Adam/Initializer/zerosConst*
valueB@
*    *
_class

loc:@out/W*
dtype0*
_output_shapes

:@

?

out/W/Adam
VariableV2*
shape
:@
*
shared_name *
_class

loc:@out/W*
dtype0*
	container *
_output_shapes

:@

?
out/W/Adam/AssignAssign
out/W/Adamout/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

j
out/W/Adam/readIdentity
out/W/Adam*
T0*
_class

loc:@out/W*
_output_shapes

:@

?
out/W/Adam_1/Initializer/zerosConst*
valueB@
*    *
_class

loc:@out/W*
dtype0*
_output_shapes

:@

?
out/W/Adam_1
VariableV2*
shape
:@
*
shared_name *
_class

loc:@out/W*
dtype0*
	container *
_output_shapes

:@

?
out/W/Adam_1/AssignAssignout/W/Adam_1out/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

n
out/W/Adam_1/readIdentityout/W/Adam_1*
T0*
_class

loc:@out/W*
_output_shapes

:@

?
out/B/Adam/Initializer/zerosConst*
valueB
*    *
_class

loc:@out/B*
dtype0*
_output_shapes
:

?

out/B/Adam
VariableV2*
shape:
*
shared_name *
_class

loc:@out/B*
dtype0*
	container *
_output_shapes
:

?
out/B/Adam/AssignAssign
out/B/Adamout/B/Adam/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

f
out/B/Adam/readIdentity
out/B/Adam*
T0*
_class

loc:@out/B*
_output_shapes
:

?
out/B/Adam_1/Initializer/zerosConst*
valueB
*    *
_class

loc:@out/B*
dtype0*
_output_shapes
:

?
out/B/Adam_1
VariableV2*
shape:
*
shared_name *
_class

loc:@out/B*
dtype0*
	container *
_output_shapes
:

?
out/B/Adam_1/AssignAssignout/B/Adam_1out/B/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

j
out/B/Adam_1/readIdentityout/B/Adam_1*
T0*
_class

loc:@out/B*
_output_shapes
:

a
optimizer/Adam/learning_rateConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
Y
optimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Y
optimizer/Adam/beta2Const*
valueB
 *w??*
dtype0*
_output_shapes
: 
[
optimizer/Adam/epsilonConst*
valueB
 *w?+2*
dtype0*
_output_shapes
: 
?
)optimizer/Adam/update_layer_1/W/ApplyAdam	ApplyAdam	layer_1/Wlayer_1/W/Adamlayer_1/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@layer_1/W*
use_nesterov( * 
_output_shapes
:
??
?
)optimizer/Adam/update_layer_1/B/ApplyAdam	ApplyAdam	layer_1/Blayer_1/B/Adamlayer_1/B/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@layer_1/B*
use_nesterov( *
_output_shapes	
:?
?
)optimizer/Adam/update_layer_2/W/ApplyAdam	ApplyAdam	layer_2/Wlayer_2/W/Adamlayer_2/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@layer_2/W*
use_nesterov( *
_output_shapes
:	?@
?
)optimizer/Adam/update_layer_2/B/ApplyAdam	ApplyAdam	layer_2/Blayer_2/B/Adamlayer_2/B/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@layer_2/B*
use_nesterov( *
_output_shapes
:@
?
%optimizer/Adam/update_out/W/ApplyAdam	ApplyAdamout/W
out/W/Adamout/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon>optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@out/W*
use_nesterov( *
_output_shapes

:@

?
%optimizer/Adam/update_out/B/ApplyAdam	ApplyAdamout/B
out/B/Adamout/B/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon;optimizer/gradients/out/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@out/B*
use_nesterov( *
_output_shapes
:

?
optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta1*^optimizer/Adam/update_layer_1/B/ApplyAdam*^optimizer/Adam/update_layer_1/W/ApplyAdam*^optimizer/Adam/update_layer_2/B/ApplyAdam*^optimizer/Adam/update_layer_2/W/ApplyAdam&^optimizer/Adam/update_out/B/ApplyAdam&^optimizer/Adam/update_out/W/ApplyAdam*
T0*
_class
loc:@layer_1/B*
_output_shapes
: 
?
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
use_locking( *
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
?
optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta2*^optimizer/Adam/update_layer_1/B/ApplyAdam*^optimizer/Adam/update_layer_1/W/ApplyAdam*^optimizer/Adam/update_layer_2/B/ApplyAdam*^optimizer/Adam/update_layer_2/W/ApplyAdam&^optimizer/Adam/update_out/B/ApplyAdam&^optimizer/Adam/update_out/W/ApplyAdam*
T0*
_class
loc:@layer_1/B*
_output_shapes
: 
?
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
use_locking( *
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
?
optimizer/AdamNoOp^optimizer/Adam/Assign^optimizer/Adam/Assign_1*^optimizer/Adam/update_layer_1/B/ApplyAdam*^optimizer/Adam/update_layer_1/W/ApplyAdam*^optimizer/Adam/update_layer_2/B/ApplyAdam*^optimizer/Adam/update_layer_2/W/ApplyAdam&^optimizer/Adam/update_out/B/ApplyAdam&^optimizer/Adam/update_out/W/ApplyAdam
d
"accuracy_calc/prediction/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
?
accuracy_calc/predictionArgMaxout/Softmax"accuracy_calc/prediction/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
`
accuracy_calc/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
?
accuracy_calc/ArgMaxArgMaxout/Softmaxaccuracy_calc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
b
 accuracy_calc/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
?
accuracy_calc/ArgMax_1ArgMaxPlaceholder_1 accuracy_calc/ArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
x
accuracy_calc/EqualEqualaccuracy_calc/ArgMaxaccuracy_calc/ArgMax_1*
T0	*#
_output_shapes
:?????????
|
accuracy_calc/CastCastaccuracy_calc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:?????????
]
accuracy_calc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
accuracy_calc/MeanMeanaccuracy_calc/Castaccuracy_calc/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
n
performance/accuracy/tagsConst*%
valueB Bperformance/accuracy*
dtype0*
_output_shapes
: 
u
performance/accuracyScalarSummaryperformance/accuracy/tagsaccuracy_calc/Mean*
T0*
_output_shapes
: 
f
performance/cost/tagsConst*!
valueB Bperformance/cost*
dtype0*
_output_shapes
: 
i
performance/costScalarSummaryperformance/cost/tagsloss_calc/Mean*
T0*
_output_shapes
: 
q
show_image/Reshape/shapeConst*%
valueB"????         *
dtype0*
_output_shapes
:
?
show_image/ReshapeReshapePlaceholdershow_image/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:?????????
q
show_image/image_input/tagConst*'
valueB Bshow_image/image_input*
dtype0*
_output_shapes
: 
?
show_image/image_inputImageSummaryshow_image/image_input/tagshow_image/Reshape*

max_images*
T0*
	bad_colorB:?  ?*
_output_shapes
: 
?
Merge/MergeSummaryMergeSummarylayer_1/weightslayer_1/biaseslayer_2/weightslayer_2/biasesout/weights
out/biasesperformance/accuracyperformance/costshow_image/image_input*
N	*
_output_shapes
: 
?
initNoOp^layer_1/B/Adam/Assign^layer_1/B/Adam_1/Assign^layer_1/B/Assign^layer_1/W/Adam/Assign^layer_1/W/Adam_1/Assign^layer_1/W/Assign^layer_2/B/Adam/Assign^layer_2/B/Adam_1/Assign^layer_2/B/Assign^layer_2/W/Adam/Assign^layer_2/W/Adam_1/Assign^layer_2/W/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign^out/B/Adam/Assign^out/B/Adam_1/Assign^out/B/Assign^out/W/Adam/Assign^out/W/Adam_1/Assign^out/W/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_f9c3d8d95c904226869f6de894ce6092/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?B	layer_1/BBlayer_1/B/AdamBlayer_1/B/Adam_1B	layer_1/WBlayer_1/W/AdamBlayer_1/W/Adam_1B	layer_2/BBlayer_2/B/AdamBlayer_2/B/Adam_1B	layer_2/WBlayer_2/W/AdamBlayer_2/W/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_powerBout/BB
out/B/AdamBout/B/Adam_1Bout/WB
out/W/AdamBout/W/Adam_1*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices	layer_1/Blayer_1/B/Adamlayer_1/B/Adam_1	layer_1/Wlayer_1/W/Adamlayer_1/W/Adam_1	layer_2/Blayer_2/B/Adamlayer_2/B/Adam_1	layer_2/Wlayer_2/W/Adamlayer_2/W/Adam_1optimizer/beta1_poweroptimizer/beta2_powerout/B
out/B/Adamout/B/Adam_1out/W
out/W/Adamout/W/Adam_1*"
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?B	layer_1/BBlayer_1/B/AdamBlayer_1/B/Adam_1B	layer_1/WBlayer_1/W/AdamBlayer_1/W/Adam_1B	layer_2/BBlayer_2/B/AdamBlayer_2/B/Adam_1B	layer_2/WBlayer_2/W/AdamBlayer_2/W/Adam_1Boptimizer/beta1_powerBoptimizer/beta2_powerBout/BB
out/B/AdamBout/B/Adam_1Bout/WB
out/W/AdamBout/W/Adam_1*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*"
dtypes
2*d
_output_shapesR
P::::::::::::::::::::
?
save/AssignAssign	layer_1/Bsave/RestoreV2*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:?
?
save/Assign_1Assignlayer_1/B/Adamsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:?
?
save/Assign_2Assignlayer_1/B/Adam_1save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:?
?
save/Assign_3Assign	layer_1/Wsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_4Assignlayer_1/W/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_5Assignlayer_1/W/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_6Assign	layer_2/Bsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
?
save/Assign_7Assignlayer_2/B/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
?
save/Assign_8Assignlayer_2/B/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
?
save/Assign_9Assign	layer_2/Wsave/RestoreV2:9*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	?@
?
save/Assign_10Assignlayer_2/W/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	?@
?
save/Assign_11Assignlayer_2/W/Adam_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	?@
?
save/Assign_12Assignoptimizer/beta1_powersave/RestoreV2:12*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
?
save/Assign_13Assignoptimizer/beta2_powersave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
?
save/Assign_14Assignout/Bsave/RestoreV2:14*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

?
save/Assign_15Assign
out/B/Adamsave/RestoreV2:15*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

?
save/Assign_16Assignout/B/Adam_1save/RestoreV2:16*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

?
save/Assign_17Assignout/Wsave/RestoreV2:17*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

?
save/Assign_18Assign
out/W/Adamsave/RestoreV2:18*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

?
save/Assign_19Assignout/W/Adam_1save/RestoreV2:19*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
trainable_variables??
O
layer_1/W:0layer_1/W/Assignlayer_1/W/read:02layer_1/truncated_normal:08
D
layer_1/B:0layer_1/B/Assignlayer_1/B/read:02layer_1/Const:08
O
layer_2/W:0layer_2/W/Assignlayer_2/W/read:02layer_2/truncated_normal:08
D
layer_2/B:0layer_2/B/Assignlayer_2/B/read:02layer_2/Const:08
?
out/W:0out/W/Assignout/W/read:02out/truncated_normal:08
4
out/B:0out/B/Assignout/B/read:02out/Const:08"?
	variables??
O
layer_1/W:0layer_1/W/Assignlayer_1/W/read:02layer_1/truncated_normal:08
D
layer_1/B:0layer_1/B/Assignlayer_1/B/read:02layer_1/Const:08
O
layer_2/W:0layer_2/W/Assignlayer_2/W/read:02layer_2/truncated_normal:08
D
layer_2/B:0layer_2/B/Assignlayer_2/B/read:02layer_2/Const:08
?
out/W:0out/W/Assignout/W/read:02out/truncated_normal:08
4
out/B:0out/B/Assignout/B/read:02out/Const:08
|
optimizer/beta1_power:0optimizer/beta1_power/Assignoptimizer/beta1_power/read:02%optimizer/beta1_power/initial_value:0
|
optimizer/beta2_power:0optimizer/beta2_power/Assignoptimizer/beta2_power/read:02%optimizer/beta2_power/initial_value:0
d
layer_1/W/Adam:0layer_1/W/Adam/Assignlayer_1/W/Adam/read:02"layer_1/W/Adam/Initializer/zeros:0
l
layer_1/W/Adam_1:0layer_1/W/Adam_1/Assignlayer_1/W/Adam_1/read:02$layer_1/W/Adam_1/Initializer/zeros:0
d
layer_1/B/Adam:0layer_1/B/Adam/Assignlayer_1/B/Adam/read:02"layer_1/B/Adam/Initializer/zeros:0
l
layer_1/B/Adam_1:0layer_1/B/Adam_1/Assignlayer_1/B/Adam_1/read:02$layer_1/B/Adam_1/Initializer/zeros:0
d
layer_2/W/Adam:0layer_2/W/Adam/Assignlayer_2/W/Adam/read:02"layer_2/W/Adam/Initializer/zeros:0
l
layer_2/W/Adam_1:0layer_2/W/Adam_1/Assignlayer_2/W/Adam_1/read:02$layer_2/W/Adam_1/Initializer/zeros:0
d
layer_2/B/Adam:0layer_2/B/Adam/Assignlayer_2/B/Adam/read:02"layer_2/B/Adam/Initializer/zeros:0
l
layer_2/B/Adam_1:0layer_2/B/Adam_1/Assignlayer_2/B/Adam_1/read:02$layer_2/B/Adam_1/Initializer/zeros:0
T
out/W/Adam:0out/W/Adam/Assignout/W/Adam/read:02out/W/Adam/Initializer/zeros:0
\
out/W/Adam_1:0out/W/Adam_1/Assignout/W/Adam_1/read:02 out/W/Adam_1/Initializer/zeros:0
T
out/B/Adam:0out/B/Adam/Assignout/B/Adam/read:02out/B/Adam/Initializer/zeros:0
\
out/B/Adam_1:0out/B/Adam_1/Assignout/B/Adam_1/read:02 out/B/Adam_1/Initializer/zeros:0"?
	summaries?
?
layer_1/weights:0
layer_1/biases:0
layer_2/weights:0
layer_2/biases:0
out/weights:0
out/biases:0
performance/accuracy:0
performance/cost:0
show_image/image_input:0"
train_op

optimizer/Adam*?
serving_default?
*
X%
Placeholder:0??????????D
accuracy/prediction-
accuracy_calc/prediction:0	?????????tensorflow/serving/predict