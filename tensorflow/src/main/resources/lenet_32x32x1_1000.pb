
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
m
global_stepVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ў
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
z
'inference/BatchImageInput_0/PlaceholderPlaceholder*
dtype0*
shape: *(
_output_shapes
:џџџџџџџџџ

)inference/BatchImageInput_0/Reshape/shapeConst*
dtype0*%
valueB"џџџџ           *
_output_shapes
:
М
#inference/BatchImageInput_0/ReshapeReshape'inference/BatchImageInput_0/Placeholder)inference/BatchImageInput_0/Reshape/shape*
T0*/
_output_shapes
:џџџџџџџџџ  
~
,inference/BatchImageInput_0/ImageSummary/tagConst*
dtype0*"
valueB Bbatch_image_input*
_output_shapes
: 
п
(inference/BatchImageInput_0/ImageSummaryImageSummary,inference/BatchImageInput_0/ImageSummary/tag#inference/BatchImageInput_0/Reshape*
	bad_colorB:џ  џ*

max_images
*
T0*
_output_shapes
: 
e
 inference/Convolution2D_0/Sqrt/xConst*
dtype0*
valueB
 *o;*
_output_shapes
: 
i
inference/Convolution2D_0/SqrtSqrt inference/Convolution2D_0/Sqrt/x*
T0*
_output_shapes
: 
Ђ
 inference/Convolution2D_0/kernelVariable*
dtype0*
shape:*
	container *
shared_name *&
_output_shapes
:
б
Cinference/Convolution2D_0/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_0/kernel*%
valueB"            *
_output_shapes
:
М
Binference/Convolution2D_0/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
valueB
 *    *
_output_shapes
: 
В
Minference/Convolution2D_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_0/kernel/Initializer/truncated_normal/shape*&
_output_shapes
:*
dtype0*
seed2*
seedв	*
T0*3
_class)
'%loc:@inference/Convolution2D_0/kernel

Ainference/Convolution2D_0/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_0/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_0/Sqrt*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
T0*&
_output_shapes
:
Б
=inference/Convolution2D_0/kernel/Initializer/truncated_normalAddAinference/Convolution2D_0/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_0/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
T0*&
_output_shapes
:
Ё
'inference/Convolution2D_0/kernel/AssignAssign inference/Convolution2D_0/kernel=inference/Convolution2D_0/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
use_locking(*
T0*&
_output_shapes
:
Й
%inference/Convolution2D_0/kernel/readIdentity inference/Convolution2D_0/kernel*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
T0*&
_output_shapes
:

 inference/Convolution2D_0/Conv2DConv2D#inference/BatchImageInput_0/Reshape%inference/Convolution2D_0/kernel/read*/
_output_shapes
:џџџџџџџџџ  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
y
inference/Tanh_0/tanhTanh inference/Convolution2D_0/Conv2D*
T0*/
_output_shapes
:џџџџџџџџџ  
Ю
 inference/MaxPooling2D_0/MaxPoolMaxPoolinference/Tanh_0/tanh*/
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
e
 inference/Convolution2D_1/Sqrt/xConst*
dtype0*
valueB
 *Зб:*
_output_shapes
: 
i
inference/Convolution2D_1/SqrtSqrt inference/Convolution2D_1/Sqrt/x*
T0*
_output_shapes
: 
Ђ
 inference/Convolution2D_1/kernelVariable*
dtype0*
shape:2*
	container *
shared_name *&
_output_shapes
:2
б
Cinference/Convolution2D_1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_1/kernel*%
valueB"         2   *
_output_shapes
:
М
Binference/Convolution2D_1/kernel/Initializer/truncated_normal/meanConst*
dtype0*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
valueB
 *    *
_output_shapes
: 
В
Minference/Convolution2D_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCinference/Convolution2D_1/kernel/Initializer/truncated_normal/shape*&
_output_shapes
:2*
dtype0*
seed2*
seedв	*
T0*3
_class)
'%loc:@inference/Convolution2D_1/kernel

Ainference/Convolution2D_1/kernel/Initializer/truncated_normal/mulMulMinference/Convolution2D_1/kernel/Initializer/truncated_normal/TruncatedNormalinference/Convolution2D_1/Sqrt*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
T0*&
_output_shapes
:2
Б
=inference/Convolution2D_1/kernel/Initializer/truncated_normalAddAinference/Convolution2D_1/kernel/Initializer/truncated_normal/mulBinference/Convolution2D_1/kernel/Initializer/truncated_normal/mean*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
T0*&
_output_shapes
:2
Ё
'inference/Convolution2D_1/kernel/AssignAssign inference/Convolution2D_1/kernel=inference/Convolution2D_1/kernel/Initializer/truncated_normal*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
use_locking(*
T0*&
_output_shapes
:2
Й
%inference/Convolution2D_1/kernel/readIdentity inference/Convolution2D_1/kernel*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
T0*&
_output_shapes
:2

 inference/Convolution2D_1/Conv2DConv2D inference/MaxPooling2D_0/MaxPool%inference/Convolution2D_1/kernel/read*/
_output_shapes
:џџџџџџџџџ2*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
y
inference/Tanh_1/tanhTanh inference/Convolution2D_1/Conv2D*
T0*/
_output_shapes
:џџџџџџџџџ2
Ю
 inference/MaxPooling2D_1/MaxPoolMaxPoolinference/Tanh_1/tanh*/
_output_shapes
:џџџџџџџџџ2*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
r
!inference/Flatten_0/Reshape/shapeConst*
dtype0*
valueB"џџџџ  *
_output_shapes
:

inference/Flatten_0/ReshapeReshape inference/MaxPooling2D_1/MaxPool!inference/Flatten_0/Reshape/shape*
T0*(
_output_shapes
:џџџџџџџџџ

"inference/FullyConnected_0/weightsVariable*
dtype0*
shape:
є*
	container *
shared_name * 
_output_shapes
:
є
Ы
Cinference/FullyConnected_0/weights/Initializer/random_uniform/shapeConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_0/weights*
valueB"  є  *
_output_shapes
:
Н
Ainference/FullyConnected_0/weights/Initializer/random_uniform/minConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_0/weights*
valueB
 *W3Н*
_output_shapes
: 
Н
Ainference/FullyConnected_0/weights/Initializer/random_uniform/maxConst*
dtype0*5
_class+
)'loc:@inference/FullyConnected_0/weights*
valueB
 *W3=*
_output_shapes
: 
Њ
Kinference/FullyConnected_0/weights/Initializer/random_uniform/RandomUniformRandomUniformCinference/FullyConnected_0/weights/Initializer/random_uniform/shape* 
_output_shapes
:
є*
dtype0*
seed2)*
seedв	*
T0*5
_class+
)'loc:@inference/FullyConnected_0/weights
І
Ainference/FullyConnected_0/weights/Initializer/random_uniform/subSubAinference/FullyConnected_0/weights/Initializer/random_uniform/maxAinference/FullyConnected_0/weights/Initializer/random_uniform/min*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0*
_output_shapes
: 
К
Ainference/FullyConnected_0/weights/Initializer/random_uniform/mulMulKinference/FullyConnected_0/weights/Initializer/random_uniform/RandomUniformAinference/FullyConnected_0/weights/Initializer/random_uniform/sub*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0* 
_output_shapes
:
є
Ќ
=inference/FullyConnected_0/weights/Initializer/random_uniformAddAinference/FullyConnected_0/weights/Initializer/random_uniform/mulAinference/FullyConnected_0/weights/Initializer/random_uniform/min*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0* 
_output_shapes
:
є
Ё
)inference/FullyConnected_0/weights/AssignAssign"inference/FullyConnected_0/weights=inference/FullyConnected_0/weights/Initializer/random_uniform*
validate_shape(*5
_class+
)'loc:@inference/FullyConnected_0/weights*
use_locking(*
T0* 
_output_shapes
:
є
Й
'inference/FullyConnected_0/weights/readIdentity"inference/FullyConnected_0/weights*5
_class+
)'loc:@inference/FullyConnected_0/weights*
T0* 
_output_shapes
:
є

!inference/FullyConnected_0/biasesVariable*
dtype0*
shape:є*
	container *
shared_name *
_output_shapes	
:є
И
3inference/FullyConnected_0/biases/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@inference/FullyConnected_0/biases*
valueBє*    *
_output_shapes	
:є

(inference/FullyConnected_0/biases/AssignAssign!inference/FullyConnected_0/biases3inference/FullyConnected_0/biases/Initializer/Const*
validate_shape(*4
_class*
(&loc:@inference/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes	
:є
Б
&inference/FullyConnected_0/biases/readIdentity!inference/FullyConnected_0/biases*4
_class*
(&loc:@inference/FullyConnected_0/biases*
T0*
_output_shapes	
:є
о
5inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMulMatMulinference/Flatten_0/Reshape'inference/FullyConnected_0/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџє
т
.inference/FullyConnected_0/Wx_plus_b/xw_plus_bBiasAdd5inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul&inference/FullyConnected_0/biases/read*(
_output_shapes
:џџџџџџџџџє*
T0*
data_formatNHWC
{
)inference/FullyConnected_0/summaries/RankRank'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
r
0inference/FullyConnected_0/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
r
0inference/FullyConnected_0/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
о
*inference/FullyConnected_0/summaries/rangeRange0inference/FullyConnected_0/summaries/range/start)inference/FullyConnected_0/summaries/Rank0inference/FullyConnected_0/summaries/range/delta*
_output_shapes
:
И
)inference/FullyConnected_0/summaries/MeanMean'inference/FullyConnected_0/weights/read*inference/FullyConnected_0/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 
Ў
(inference/FullyConnected_0/summaries/subSub'inference/FullyConnected_0/weights/read)inference/FullyConnected_0/summaries/Mean*
T0* 
_output_shapes
:
є

+inference/FullyConnected_0/summaries/SquareSquare(inference/FullyConnected_0/summaries/sub*
T0* 
_output_shapes
:
є
{
*inference/FullyConnected_0/summaries/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
О
+inference/FullyConnected_0/summaries/Mean_1Mean+inference/FullyConnected_0/summaries/Square*inference/FullyConnected_0/summaries/Const*
T0*
	keep_dims( *
_output_shapes
: 

)inference/FullyConnected_0/summaries/SqrtSqrt+inference/FullyConnected_0/summaries/Mean_1*
T0*
_output_shapes
: 
Ё
7inference/FullyConnected_0/summaries/ScalarSummary/tagsConst*
dtype0*:
value1B/ B)inference/FullyConnected_0/summaries/mean*
_output_shapes
: 
Ш
2inference/FullyConnected_0/summaries/ScalarSummaryScalarSummary7inference/FullyConnected_0/summaries/ScalarSummary/tags)inference/FullyConnected_0/summaries/Mean*
T0*
_output_shapes
: 
Ѕ
9inference/FullyConnected_0/summaries/ScalarSummary_1/tagsConst*
dtype0*<
value3B1 B+inference/FullyConnected_0/summaries/stddev*
_output_shapes
: 
Ь
4inference/FullyConnected_0/summaries/ScalarSummary_1ScalarSummary9inference/FullyConnected_0/summaries/ScalarSummary_1/tags)inference/FullyConnected_0/summaries/Sqrt*
T0*
_output_shapes
: 
}
+inference/FullyConnected_0/summaries/Rank_1Rank'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ц
,inference/FullyConnected_0/summaries/range_1Range2inference/FullyConnected_0/summaries/range_1/start+inference/FullyConnected_0/summaries/Rank_12inference/FullyConnected_0/summaries/range_1/delta*
_output_shapes
:
И
(inference/FullyConnected_0/summaries/MaxMax'inference/FullyConnected_0/weights/read,inference/FullyConnected_0/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
Ђ
9inference/FullyConnected_0/summaries/ScalarSummary_2/tagsConst*
dtype0*9
value0B. B(inference/FullyConnected_0/summaries/max*
_output_shapes
: 
Ы
4inference/FullyConnected_0/summaries/ScalarSummary_2ScalarSummary9inference/FullyConnected_0/summaries/ScalarSummary_2/tags(inference/FullyConnected_0/summaries/Max*
T0*
_output_shapes
: 
}
+inference/FullyConnected_0/summaries/Rank_2Rank'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_0/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ц
,inference/FullyConnected_0/summaries/range_2Range2inference/FullyConnected_0/summaries/range_2/start+inference/FullyConnected_0/summaries/Rank_22inference/FullyConnected_0/summaries/range_2/delta*
_output_shapes
:
И
(inference/FullyConnected_0/summaries/MinMin'inference/FullyConnected_0/weights/read,inference/FullyConnected_0/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
Ђ
9inference/FullyConnected_0/summaries/ScalarSummary_3/tagsConst*
dtype0*9
value0B. B(inference/FullyConnected_0/summaries/min*
_output_shapes
: 
Ы
4inference/FullyConnected_0/summaries/ScalarSummary_3ScalarSummary9inference/FullyConnected_0/summaries/ScalarSummary_3/tags(inference/FullyConnected_0/summaries/Min*
T0*
_output_shapes
: 
Ѓ
9inference/FullyConnected_0/summaries/HistogramSummary/tagConst*
dtype0*:
value1B/ B)inference/FullyConnected_0/summaries/hist*
_output_shapes
: 
Ю
5inference/FullyConnected_0/summaries/HistogramSummaryHistogramSummary9inference/FullyConnected_0/summaries/HistogramSummary/tag'inference/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
|
+inference/FullyConnected_0/summaries_1/RankRank&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
t
2inference/FullyConnected_0/summaries_1/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
t
2inference/FullyConnected_0/summaries_1/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ц
,inference/FullyConnected_0/summaries_1/rangeRange2inference/FullyConnected_0/summaries_1/range/start+inference/FullyConnected_0/summaries_1/Rank2inference/FullyConnected_0/summaries_1/range/delta*
_output_shapes
:
Л
+inference/FullyConnected_0/summaries_1/MeanMean&inference/FullyConnected_0/biases/read,inference/FullyConnected_0/summaries_1/range*
T0*
	keep_dims( *
_output_shapes
: 
Ќ
*inference/FullyConnected_0/summaries_1/subSub&inference/FullyConnected_0/biases/read+inference/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes	
:є

-inference/FullyConnected_0/summaries_1/SquareSquare*inference/FullyConnected_0/summaries_1/sub*
T0*
_output_shapes	
:є
v
,inference/FullyConnected_0/summaries_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ф
-inference/FullyConnected_0/summaries_1/Mean_1Mean-inference/FullyConnected_0/summaries_1/Square,inference/FullyConnected_0/summaries_1/Const*
T0*
	keep_dims( *
_output_shapes
: 

+inference/FullyConnected_0/summaries_1/SqrtSqrt-inference/FullyConnected_0/summaries_1/Mean_1*
T0*
_output_shapes
: 
Ѕ
9inference/FullyConnected_0/summaries_1/ScalarSummary/tagsConst*
dtype0*<
value3B1 B+inference/FullyConnected_0/summaries_1/mean*
_output_shapes
: 
Ю
4inference/FullyConnected_0/summaries_1/ScalarSummaryScalarSummary9inference/FullyConnected_0/summaries_1/ScalarSummary/tags+inference/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes
: 
Љ
;inference/FullyConnected_0/summaries_1/ScalarSummary_1/tagsConst*
dtype0*>
value5B3 B-inference/FullyConnected_0/summaries_1/stddev*
_output_shapes
: 
в
6inference/FullyConnected_0/summaries_1/ScalarSummary_1ScalarSummary;inference/FullyConnected_0/summaries_1/ScalarSummary_1/tags+inference/FullyConnected_0/summaries_1/Sqrt*
T0*
_output_shapes
: 
~
-inference/FullyConnected_0/summaries_1/Rank_1Rank&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ю
.inference/FullyConnected_0/summaries_1/range_1Range4inference/FullyConnected_0/summaries_1/range_1/start-inference/FullyConnected_0/summaries_1/Rank_14inference/FullyConnected_0/summaries_1/range_1/delta*
_output_shapes
:
Л
*inference/FullyConnected_0/summaries_1/MaxMax&inference/FullyConnected_0/biases/read.inference/FullyConnected_0/summaries_1/range_1*
T0*
	keep_dims( *
_output_shapes
: 
І
;inference/FullyConnected_0/summaries_1/ScalarSummary_2/tagsConst*
dtype0*;
value2B0 B*inference/FullyConnected_0/summaries_1/max*
_output_shapes
: 
б
6inference/FullyConnected_0/summaries_1/ScalarSummary_2ScalarSummary;inference/FullyConnected_0/summaries_1/ScalarSummary_2/tags*inference/FullyConnected_0/summaries_1/Max*
T0*
_output_shapes
: 
~
-inference/FullyConnected_0/summaries_1/Rank_2Rank&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
v
4inference/FullyConnected_0/summaries_1/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ю
.inference/FullyConnected_0/summaries_1/range_2Range4inference/FullyConnected_0/summaries_1/range_2/start-inference/FullyConnected_0/summaries_1/Rank_24inference/FullyConnected_0/summaries_1/range_2/delta*
_output_shapes
:
Л
*inference/FullyConnected_0/summaries_1/MinMin&inference/FullyConnected_0/biases/read.inference/FullyConnected_0/summaries_1/range_2*
T0*
	keep_dims( *
_output_shapes
: 
І
;inference/FullyConnected_0/summaries_1/ScalarSummary_3/tagsConst*
dtype0*;
value2B0 B*inference/FullyConnected_0/summaries_1/min*
_output_shapes
: 
б
6inference/FullyConnected_0/summaries_1/ScalarSummary_3ScalarSummary;inference/FullyConnected_0/summaries_1/ScalarSummary_3/tags*inference/FullyConnected_0/summaries_1/Min*
T0*
_output_shapes
: 
Ї
;inference/FullyConnected_0/summaries_1/HistogramSummary/tagConst*
dtype0*<
value3B1 B+inference/FullyConnected_0/summaries_1/hist*
_output_shapes
: 
б
7inference/FullyConnected_0/summaries_1/HistogramSummaryHistogramSummary;inference/FullyConnected_0/summaries_1/HistogramSummary/tag&inference/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
В
;inference/FullyConnected_0/summaries_2/HistogramSummary/tagConst*
dtype0*G
value>B< B6inference/FullyConnected_0/summaries_2/pre_activations*
_output_shapes
: 
й
7inference/FullyConnected_0/summaries_2/HistogramSummaryHistogramSummary;inference/FullyConnected_0/summaries_2/HistogramSummary/tag.inference/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*
_output_shapes
: 

inference/Tanh_2/tanhTanh.inference/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*(
_output_shapes
:џџџџџџџџџє
Ж
@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightsVariable*
dtype0*
shape:
єш*
	container *
shared_name * 
_output_shapes
:
єш

ainference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/shapeConst*
dtype0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
valueB"є  ш  *
_output_shapes
:
љ
_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/minConst*
dtype0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
valueB
 *ћйтН*
_output_shapes
: 
љ
_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/maxConst*
dtype0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
valueB
 *ћйт=*
_output_shapes
: 

iinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/RandomUniformRandomUniformainference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/shape* 
_output_shapes
:
єш*
dtype0*
seed2x*
seedв	*
T0*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights

_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/subSub_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/max_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/min*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0*
_output_shapes
: 
В
_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/mulMuliinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/RandomUniform_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/sub*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0* 
_output_shapes
:
єш
Є
[inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniformAdd_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/mul_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform/min*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0* 
_output_shapes
:
єш

Ginference/CategoricalPredictionOutput_0/FullyConnected_0/weights/AssignAssign@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights[inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/Initializer/random_uniform*
validate_shape(*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
use_locking(*
T0* 
_output_shapes
:
єш

Einference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readIdentity@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
T0* 
_output_shapes
:
єш
Ћ
?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasesVariable*
dtype0*
shape:ш*
	container *
shared_name *
_output_shapes	
:ш
є
Qinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/Initializer/ConstConst*
dtype0*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
valueBш*    *
_output_shapes	
:ш

Finference/CategoricalPredictionOutput_0/FullyConnected_0/biases/AssignAssign?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasesQinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/Initializer/Const*
validate_shape(*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes	
:ш

Dinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readIdentity?inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
T0*
_output_shapes	
:ш

Sinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMulMatMulinference/Tanh_2/tanhEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџш
М
Linference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_bBiasAddSinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMulDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*(
_output_shapes
:џџџџџџџџџш*
T0*
data_formatNHWC
З
Ginference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/RankRankEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 

Ninference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Ninference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ж
Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/rangeRangeNinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/startGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/RankNinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range/delta*
_output_shapes
:

Ginference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/MeanMeanEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range*
T0*
	keep_dims( *
_output_shapes
: 

Finference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/subSubEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean*
T0* 
_output_shapes
:
єш
Ц
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/SquareSquareFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/sub*
T0* 
_output_shapes
:
єш

Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean_1MeanIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/SquareHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Const*
T0*
	keep_dims( *
_output_shapes
: 
Л
Ginference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/SqrtSqrtIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean_1*
T0*
_output_shapes
: 
н
Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary/tagsConst*
dtype0*X
valueOBM BGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/mean*
_output_shapes
: 
Ђ
Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummaryScalarSummaryUinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary/tagsGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Mean*
T0*
_output_shapes
: 
с
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1/tagsConst*
dtype0*Z
valueQBO BIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/stddev*
_output_shapes
: 
І
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1ScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1/tagsGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Sqrt*
T0*
_output_shapes
: 
Й
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_1RankEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
о
Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1RangePinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/startIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_1Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1/delta*
_output_shapes
:

Finference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/MaxMaxEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_1*
T0*
	keep_dims( *
_output_shapes
: 
о
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2/tagsConst*
dtype0*W
valueNBL BFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/max*
_output_shapes
: 
Ѕ
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2ScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2/tagsFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Max*
T0*
_output_shapes
: 
Й
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_2RankEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
о
Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2RangePinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/startIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Rank_2Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2/delta*
_output_shapes
:

Finference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/MinMinEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/readJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/range_2*
T0*
	keep_dims( *
_output_shapes
: 
о
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3/tagsConst*
dtype0*W
valueNBL BFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/min*
_output_shapes
: 
Ѕ
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3ScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3/tagsFinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/Min*
T0*
_output_shapes
: 
п
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummary/tagConst*
dtype0*X
valueOBM BGinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/hist*
_output_shapes
: 
Ј
Sinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummaryHistogramSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummary/tagEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
T0*
_output_shapes
: 
И
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/RankRankDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Pinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
о
Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/rangeRangePinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/startIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/RankPinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range/delta*
_output_shapes
:

Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/MeanMeanDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range*
T0*
	keep_dims( *
_output_shapes
: 

Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/subSubDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes	
:ш
Х
Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/SquareSquareHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/sub*
T0*
_output_shapes	
:ш

Jinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:

Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean_1MeanKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/SquareJinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Const*
T0*
	keep_dims( *
_output_shapes
: 
П
Iinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/SqrtSqrtKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean_1*
T0*
_output_shapes
: 
с
Winference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary/tagsConst*
dtype0*Z
valueQBO BIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/mean*
_output_shapes
: 
Ј
Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummaryScalarSummaryWinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary/tagsIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Mean*
T0*
_output_shapes
: 
х
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1/tagsConst*
dtype0*\
valueSBQ BKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/stddev*
_output_shapes
: 
Ќ
Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1ScalarSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1/tagsIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Sqrt*
T0*
_output_shapes
: 
К
Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_1RankDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ц
Linference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1RangeRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/startKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_1Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1/delta*
_output_shapes
:

Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/MaxMaxDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readLinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_1*
T0*
	keep_dims( *
_output_shapes
: 
т
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2/tagsConst*
dtype0*Y
valuePBN BHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/max*
_output_shapes
: 
Ћ
Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2ScalarSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2/tagsHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Max*
T0*
_output_shapes
: 
К
Kinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_2RankDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 

Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ц
Linference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2RangeRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/startKinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Rank_2Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2/delta*
_output_shapes
:

Hinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/MinMinDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/readLinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/range_2*
T0*
	keep_dims( *
_output_shapes
: 
т
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3/tagsConst*
dtype0*Y
valuePBN BHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/min*
_output_shapes
: 
Ћ
Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3ScalarSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3/tagsHinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/Min*
T0*
_output_shapes
: 
у
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummary/tagConst*
dtype0*Z
valueQBO BIinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/hist*
_output_shapes
: 
Ћ
Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummaryHistogramSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummary/tagDinference/CategoricalPredictionOutput_0/FullyConnected_0/biases/read*
T0*
_output_shapes
: 
ю
Yinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummary/tagConst*
dtype0*e
value\BZ BTinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/pre_activations*
_output_shapes
: 
Г
Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummaryHistogramSummaryYinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummary/tagLinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*
_output_shapes
: 
Х
9inference/CategoricalPredictionOutput_0/Softmax_0/SoftmaxSoftmaxLinference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b*
T0*(
_output_shapes
:џџџџџџџџџш
~
+train/CategoricalCrossEntropy_0/PlaceholderPlaceholder*
dtype0*
shape: *(
_output_shapes
:џџџџџџџџџш

=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits9inference/CategoricalPredictionOutput_0/Softmax_0/Softmax+train/CategoricalCrossEntropy_0/Placeholder*
T0*7
_output_shapes%
#:џџџџџџџџџ:џџџџџџџџџш
o
%train/CategoricalCrossEntropy_0/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ф
$train/CategoricalCrossEntropy_0/MeanMean=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits%train/CategoricalCrossEntropy_0/Const*
T0*
	keep_dims( *
_output_shapes
: 
X
train/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 

train/ArgMaxArgMax+train/CategoricalCrossEntropy_0/Placeholdertrain/ArgMax/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
Z
train/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 

train/ArgMax_1ArgMax9inference/CategoricalPredictionOutput_0/Softmax_0/Softmaxtrain/ArgMax_1/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
`
train/EqualEqualtrain/ArgMaxtrain/ArgMax_1*
T0	*#
_output_shapes
:џџџџџџџџџ
\

train/CastCasttrain/Equal*

DstT0*

SrcT0
*#
_output_shapes
:џџџџџџџџџ
U
train/ConstConst*
dtype0*
valueB: *
_output_shapes
:
]

train/MeanMean
train/Casttrain/Const*
T0*
	keep_dims( *
_output_shapes
: 
R
train/Const_1Const*
dtype0*
valueB
 *ЭЬЬ=*
_output_shapes
: 
n
train/learning_ratePlaceholderWithDefaulttrain/Const_1*
dtype0*
shape: *
_output_shapes
: 
R
train/Const_2Const*
dtype0*
valueB
 * @F*
_output_shapes
: 
l
train/decay_stepsPlaceholderWithDefaulttrain/Const_2*
dtype0*
shape: *
_output_shapes
: 
R
train/Const_3Const*
dtype0*
valueB
 *Тu?*
_output_shapes
: 
k
train/decay_ratePlaceholderWithDefaulttrain/Const_3*
dtype0*
shape: *
_output_shapes
: 
R
train/Const_4Const*
dtype0*
valueB
 *    *
_output_shapes
: 
l
train/global_stepPlaceholderWithDefaulttrain/Const_4*
dtype0*
shape: *
_output_shapes
: 
^
train/Variable/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
p
train/VariableVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
К
train/Variable/AssignAssigntrain/Variabletrain/Variable/initial_value*
validate_shape(*!
_class
loc:@train/Variable*
use_locking(*
T0*
_output_shapes
: 
s
train/Variable/readIdentitytrain/Variable*!
_class
loc:@train/Variable*
T0*
_output_shapes
: 
W
train/Cast_1Casttrain/global_step*

DstT0*

SrcT0*
_output_shapes
: 
Ё
train/AssignAssigntrain/Variabletrain/Cast_1*
validate_shape(*!
_class
loc:@train/Variable*
use_locking( *
T0*
_output_shapes
: 
h
train/ExponentialDecay/CastCasttrain/Variable/read*

DstT0*

SrcT0*
_output_shapes
: 
v
train/ExponentialDecay/truedivDivtrain/ExponentialDecay/Casttrain/decay_steps*
T0*
_output_shapes
: 
f
train/ExponentialDecay/FloorFloortrain/ExponentialDecay/truediv*
T0*
_output_shapes
: 
r
train/ExponentialDecay/PowPowtrain/decay_ratetrain/ExponentialDecay/Floor*
T0*
_output_shapes
: 
o
train/ExponentialDecayMultrain/learning_ratetrain/ExponentialDecay/Pow*
T0*
_output_shapes
: 
g
train/gradients/ShapeShape$train/CategoricalCrossEntropy_0/Mean*
T0*
_output_shapes
: 
Z
train/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
k
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/Const*
T0*
_output_shapes
: 

Gtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
а
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ReshapeReshapetrain/gradients/FillGtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Reshape/shape*
T0*
_output_shapes
:
Ќ
?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ShapeShape=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:
ј
>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/TileTileAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Reshape?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_1Shape=train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:

Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_2Shape$train/CategoricalCrossEntropy_0/Mean*
T0*
_output_shapes
: 

?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ќ
>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ProdProdAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_1?train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Const*
T0*
	keep_dims( *
_output_shapes
: 

Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

@train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Prod_1ProdAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Shape_2Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Const_1*
T0*
	keep_dims( *
_output_shapes
: 

Ctrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
є
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/MaximumMaximum@train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Prod_1Ctrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
э
Btrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/floordivDiv>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/ProdAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Maximum*
T0*
_output_shapes
: 
К
>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/CastCastBtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
і
Atrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/truedivDiv>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Tile>train/gradients/train/CategoricalCrossEntropy_0/Mean_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ

train/gradients/zeros_like	ZerosLike?train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits:1*
T0*(
_output_shapes
:џџџџџџџџџш
Ќ
atrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
У
]train/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsAtrain/gradients/train/CategoricalCrossEntropy_0/Mean_grad/truedivatrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
А
Vtrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/mulMul]train/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/ExpandDims?train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits:1*
T0*(
_output_shapes
:џџџџџџџџџш

Rtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mulMulVtrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/mul9inference/CategoricalPredictionOutput_0/Softmax_0/Softmax*
T0*(
_output_shapes
:џџџџџџџџџш
Ў
dtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
в
Rtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/SumSumRtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/muldtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Sum/reduction_indices*
T0*
	keep_dims( *#
_output_shapes
:џџџџџџџџџ
­
\train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
Х
Vtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/ReshapeReshapeRtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Sum\train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
М
Rtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/subSubVtrain/gradients/train/CategoricalCrossEntropy_0/SoftmaxCrossEntropyWithLogits_grad/mulVtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/Reshape*
T0*(
_output_shapes
:џџџџџџџџџш

Ttrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1MulRtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/sub9inference/CategoricalPredictionOutput_0/Softmax_0/Softmax*
T0*(
_output_shapes
:џџџџџџџџџш

mtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGradBiasAddGradTtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1*
_output_shapes	
:ш*
T0*
data_formatNHWC
С
rtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_depsNoOpU^train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1n^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad
э
ztrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependencyIdentityTtrain/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1s^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*g
_class]
[Yloc:@train/gradients/inference/CategoricalPredictionOutput_0/Softmax_0/Softmax_grad/mul_1*
T0*(
_output_shapes
:џџџџџџџџџш

|train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1Identitymtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrads^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*
_classv
trloc:@train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad*
T0*
_output_shapes	
:ш

otrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulMatMulztrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependencyEinference/CategoricalPredictionOutput_0/FullyConnected_0/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџє
п
qtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1MatMulinference/Tanh_2/tanhztrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
єш
ч
ytrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_depsNoOpp^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulr^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1
Г
train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentityotrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulz^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*
_classx
vtloc:@train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџє
Б
train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1Identityqtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1z^train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*
_classz
xvloc:@train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
єш

3train/gradients/inference/Tanh_2/tanh_grad/TanhGradTanhGradinference/Tanh_2/tanhtrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:џџџџџџџџџє
а
Otrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGradBiasAddGrad3train/gradients/inference/Tanh_2/tanh_grad/TanhGrad*
_output_shapes	
:є*
T0*
data_formatNHWC
ф
Ttrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_depsNoOp4^train/gradients/inference/Tanh_2/tanh_grad/TanhGradP^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad
я
\train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependencyIdentity3train/gradients/inference/Tanh_2/tanh_grad/TanhGradU^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*F
_class<
:8loc:@train/gradients/inference/Tanh_2/tanh_grad/TanhGrad*
T0*(
_output_shapes
:џџџџџџџџџє

^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1IdentityOtrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGradU^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/group_deps*b
_classX
VTloc:@train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/BiasAddGrad*
T0*
_output_shapes	
:є
Л
Qtrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulMatMul\train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency'inference/FullyConnected_0/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ
Љ
Strain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1MatMulinference/Flatten_0/Reshape\train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
є

[train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_depsNoOpR^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMulT^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1
Й
ctrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentityQtrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul\^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*d
_classZ
XVloc:@train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
З
etrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1IdentityStrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1\^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/group_deps*f
_class\
ZXloc:@train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
є

6train/gradients/inference/Flatten_0/Reshape_grad/ShapeShape inference/MaxPooling2D_1/MaxPool*
T0*
_output_shapes
:

8train/gradients/inference/Flatten_0/Reshape_grad/ReshapeReshapectrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency6train/gradients/inference/Flatten_0/Reshape_grad/Shape*
T0*/
_output_shapes
:џџџџџџџџџ2
Я
Atrain/gradients/inference/MaxPooling2D_1/MaxPool_grad/MaxPoolGradMaxPoolGradinference/Tanh_1/tanh inference/MaxPooling2D_1/MaxPool8train/gradients/inference/Flatten_0/Reshape_grad/Reshape*/
_output_shapes
:џџџџџџџџџ2*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
г
3train/gradients/inference/Tanh_1/tanh_grad/TanhGradTanhGradinference/Tanh_1/tanhAtrain/gradients/inference/MaxPooling2D_1/MaxPool_grad/MaxPoolGrad*
T0*/
_output_shapes
:џџџџџџџџџ2

;train/gradients/inference/Convolution2D_1/Conv2D_grad/ShapeShape inference/MaxPooling2D_0/MaxPool*
T0*
_output_shapes
:
Ѕ
Itrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_1/Conv2D_grad/Shape%inference/Convolution2D_1/kernel/read3train/gradients/inference/Tanh_1/tanh_grad/TanhGrad*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_1/Conv2D_grad/Shape_1Shape%inference/Convolution2D_1/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter inference/MaxPooling2D_0/MaxPool=train/gradients/inference/Convolution2D_1/Conv2D_grad/Shape_13train/gradients/inference/Tanh_1/tanh_grad/TanhGrad*&
_output_shapes
:2*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ч
Ftrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:џџџџџџџџџ

Ptrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:2
х
Atrain/gradients/inference/MaxPooling2D_0/MaxPool_grad/MaxPoolGradMaxPoolGradinference/Tanh_0/tanh inference/MaxPooling2D_0/MaxPoolNtrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:џџџџџџџџџ  *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
г
3train/gradients/inference/Tanh_0/tanh_grad/TanhGradTanhGradinference/Tanh_0/tanhAtrain/gradients/inference/MaxPooling2D_0/MaxPool_grad/MaxPoolGrad*
T0*/
_output_shapes
:џџџџџџџџџ  

;train/gradients/inference/Convolution2D_0/Conv2D_grad/ShapeShape#inference/BatchImageInput_0/Reshape*
T0*
_output_shapes
:
Ѕ
Itrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;train/gradients/inference/Convolution2D_0/Conv2D_grad/Shape%inference/Convolution2D_0/kernel/read3train/gradients/inference/Tanh_0/tanh_grad/TanhGrad*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

=train/gradients/inference/Convolution2D_0/Conv2D_grad/Shape_1Shape%inference/Convolution2D_0/kernel/read*
T0*
_output_shapes
:

Jtrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter#inference/BatchImageInput_0/Reshape=train/gradients/inference/Convolution2D_0/Conv2D_grad/Shape_13train/gradients/inference/Tanh_0/tanh_grad/TanhGrad*&
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
ч
Ftrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/group_depsNoOpJ^train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInputK^train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilter

Ntrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/control_dependencyIdentityItrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInputG^train/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/group_deps*\
_classR
PNloc:@train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:џџџџџџџџџ  

Ptrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/control_dependency_1IdentityJtrain/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilterG^train/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/group_deps*]
_classS
QOloc:@train/gradients/inference/Convolution2D_0/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:
ь
Rtrain/GradientDescent/update_inference/Convolution2D_0/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_0/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_0/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
use_locking( *
T0*&
_output_shapes
:
ь
Rtrain/GradientDescent/update_inference/Convolution2D_1/kernel/ApplyGradientDescentApplyGradientDescent inference/Convolution2D_1/kerneltrain/learning_ratePtrain/gradients/inference/Convolution2D_1/Conv2D_grad/tuple/control_dependency_1*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
use_locking( *
T0*&
_output_shapes
:2

Ttrain/GradientDescent/update_inference/FullyConnected_0/weights/ApplyGradientDescentApplyGradientDescent"inference/FullyConnected_0/weightstrain/learning_rateetrain/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1*5
_class+
)'loc:@inference/FullyConnected_0/weights*
use_locking( *
T0* 
_output_shapes
:
є
ђ
Strain/GradientDescent/update_inference/FullyConnected_0/biases/ApplyGradientDescentApplyGradientDescent!inference/FullyConnected_0/biasestrain/learning_rate^train/gradients/inference/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1*4
_class*
(&loc:@inference/FullyConnected_0/biases*
use_locking( *
T0*
_output_shapes	
:є
њ
rtrain/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/ApplyGradientDescentApplyGradientDescent@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightstrain/learning_ratetrain/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b/MatMul_grad/tuple/control_dependency_1*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
use_locking( *
T0* 
_output_shapes
:
єш
ъ
qtrain/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/biases/ApplyGradientDescentApplyGradientDescent?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasestrain/learning_rate|train/gradients/inference/CategoricalPredictionOutput_0/FullyConnected_0/Wx_plus_b/xw_plus_b_grad/tuple/control_dependency_1*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
use_locking( *
T0*
_output_shapes	
:ш
ф
train/GradientDescent/updateNoOpS^train/GradientDescent/update_inference/Convolution2D_0/kernel/ApplyGradientDescentS^train/GradientDescent/update_inference/Convolution2D_1/kernel/ApplyGradientDescentU^train/GradientDescent/update_inference/FullyConnected_0/weights/ApplyGradientDescentT^train/GradientDescent/update_inference/FullyConnected_0/biases/ApplyGradientDescents^train/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/ApplyGradientDescentr^train/GradientDescent/update_inference/CategoricalPredictionOutput_0/FullyConnected_0/biases/ApplyGradientDescent

train/GradientDescent/valueConst^train/GradientDescent/update*
dtype0*!
_class
loc:@train/Variable*
value	B :*
_output_shapes
: 
І
train/GradientDescent	AssignAddtrain/Variabletrain/GradientDescent/value*!
_class
loc:@train/Variable*
use_locking( *
T0*
_output_shapes
: 
[
checkpoint/save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

!checkpoint/save/save/tensor_namesConst*
dtype0*Р
valueЖBГBglobal_stepB?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasesB@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightsB inference/Convolution2D_0/kernelB inference/Convolution2D_1/kernelB!inference/FullyConnected_0/biasesB"inference/FullyConnected_0/weightsBtrain/Variable*
_output_shapes
:
}
&checkpoint/save/save/shapes_and_slicesConst*
dtype0*#
valueBB B B B B B B B *
_output_shapes
:
Т
checkpoint/save/save
SaveSlicescheckpoint/save/Const!checkpoint/save/save/tensor_names&checkpoint/save/save/shapes_and_slicesglobal_step?inference/CategoricalPredictionOutput_0/FullyConnected_0/biases@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights inference/Convolution2D_0/kernel inference/Convolution2D_1/kernel!inference/FullyConnected_0/biases"inference/FullyConnected_0/weightstrain/Variable*
T

2
Ї
"checkpoint/save/control_dependencyIdentitycheckpoint/save/Const^checkpoint/save/save*(
_class
loc:@checkpoint/save/Const*
T0*
_output_shapes
: 
u
)checkpoint/save/restore_slice/tensor_nameConst*
dtype0*
valueB Bglobal_step*
_output_shapes
: 
n
-checkpoint/save/restore_slice/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
т
checkpoint/save/restore_sliceRestoreSlicecheckpoint/save/Const)checkpoint/save/restore_slice/tensor_name-checkpoint/save/restore_slice/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
Ж
checkpoint/save/AssignAssignglobal_stepcheckpoint/save/restore_slice*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
Ћ
+checkpoint/save/restore_slice_1/tensor_nameConst*
dtype0*P
valueGBE B?inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
_output_shapes
: 
p
/checkpoint/save/restore_slice_1/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ш
checkpoint/save/restore_slice_1RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_1/tensor_name/checkpoint/save/restore_slice_1/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
Ї
checkpoint/save/Assign_1Assign?inference/CategoricalPredictionOutput_0/FullyConnected_0/biasescheckpoint/save/restore_slice_1*
validate_shape(*R
_classH
FDloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes	
:ш
Ќ
+checkpoint/save/restore_slice_2/tensor_nameConst*
dtype0*Q
valueHBF B@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
_output_shapes
: 
p
/checkpoint/save/restore_slice_2/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ш
checkpoint/save/restore_slice_2RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_2/tensor_name/checkpoint/save/restore_slice_2/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
Ў
checkpoint/save/Assign_2Assign@inference/CategoricalPredictionOutput_0/FullyConnected_0/weightscheckpoint/save/restore_slice_2*
validate_shape(*S
_classI
GEloc:@inference/CategoricalPredictionOutput_0/FullyConnected_0/weights*
use_locking(*
T0* 
_output_shapes
:
єш

+checkpoint/save/restore_slice_3/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_0/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_3/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ш
checkpoint/save/restore_slice_3RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_3/tensor_name/checkpoint/save/restore_slice_3/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
є
checkpoint/save/Assign_3Assign inference/Convolution2D_0/kernelcheckpoint/save/restore_slice_3*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_0/kernel*
use_locking(*
T0*&
_output_shapes
:

+checkpoint/save/restore_slice_4/tensor_nameConst*
dtype0*1
value(B& B inference/Convolution2D_1/kernel*
_output_shapes
: 
p
/checkpoint/save/restore_slice_4/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ш
checkpoint/save/restore_slice_4RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_4/tensor_name/checkpoint/save/restore_slice_4/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
є
checkpoint/save/Assign_4Assign inference/Convolution2D_1/kernelcheckpoint/save/restore_slice_4*
validate_shape(*3
_class)
'%loc:@inference/Convolution2D_1/kernel*
use_locking(*
T0*&
_output_shapes
:2

+checkpoint/save/restore_slice_5/tensor_nameConst*
dtype0*2
value)B' B!inference/FullyConnected_0/biases*
_output_shapes
: 
p
/checkpoint/save/restore_slice_5/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ш
checkpoint/save/restore_slice_5RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_5/tensor_name/checkpoint/save/restore_slice_5/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
ы
checkpoint/save/Assign_5Assign!inference/FullyConnected_0/biasescheckpoint/save/restore_slice_5*
validate_shape(*4
_class*
(&loc:@inference/FullyConnected_0/biases*
use_locking(*
T0*
_output_shapes	
:є

+checkpoint/save/restore_slice_6/tensor_nameConst*
dtype0*3
value*B( B"inference/FullyConnected_0/weights*
_output_shapes
: 
p
/checkpoint/save/restore_slice_6/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ш
checkpoint/save/restore_slice_6RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_6/tensor_name/checkpoint/save/restore_slice_6/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
ђ
checkpoint/save/Assign_6Assign"inference/FullyConnected_0/weightscheckpoint/save/restore_slice_6*
validate_shape(*5
_class+
)'loc:@inference/FullyConnected_0/weights*
use_locking(*
T0* 
_output_shapes
:
є
z
+checkpoint/save/restore_slice_7/tensor_nameConst*
dtype0*
valueB Btrain/Variable*
_output_shapes
: 
p
/checkpoint/save/restore_slice_7/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
ш
checkpoint/save/restore_slice_7RestoreSlicecheckpoint/save/Const+checkpoint/save/restore_slice_7/tensor_name/checkpoint/save/restore_slice_7/shape_and_slice*
preferred_shardџџџџџџџџџ*
dt0*
_output_shapes
:
Р
checkpoint/save/Assign_7Assigntrain/Variablecheckpoint/save/restore_slice_7*
validate_shape(*!
_class
loc:@train/Variable*
use_locking(*
T0*
_output_shapes
: 
љ
checkpoint/save/restore_allNoOp^checkpoint/save/Assign^checkpoint/save/Assign_1^checkpoint/save/Assign_2^checkpoint/save/Assign_3^checkpoint/save/Assign_4^checkpoint/save/Assign_5^checkpoint/save/Assign_6^checkpoint/save/Assign_7
ї
initNoOp^global_step/Assign(^inference/Convolution2D_0/kernel/Assign(^inference/Convolution2D_1/kernel/Assign*^inference/FullyConnected_0/weights/Assign)^inference/FullyConnected_0/biases/AssignH^inference/CategoricalPredictionOutput_0/FullyConnected_0/weights/AssignG^inference/CategoricalPredictionOutput_0/FullyConnected_0/biases/Assign^train/Variable/Assign
ј
MergeSummary/MergeSummaryMergeSummary(inference/BatchImageInput_0/ImageSummary2inference/FullyConnected_0/summaries/ScalarSummary4inference/FullyConnected_0/summaries/ScalarSummary_14inference/FullyConnected_0/summaries/ScalarSummary_24inference/FullyConnected_0/summaries/ScalarSummary_35inference/FullyConnected_0/summaries/HistogramSummary4inference/FullyConnected_0/summaries_1/ScalarSummary6inference/FullyConnected_0/summaries_1/ScalarSummary_16inference/FullyConnected_0/summaries_1/ScalarSummary_26inference/FullyConnected_0/summaries_1/ScalarSummary_37inference/FullyConnected_0/summaries_1/HistogramSummary7inference/FullyConnected_0/summaries_2/HistogramSummaryPinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummaryRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_1Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_2Rinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/ScalarSummary_3Sinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries/HistogramSummaryRinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummaryTinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_1Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_2Tinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/ScalarSummary_3Uinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_1/HistogramSummaryUinference/CategoricalPredictionOutput_0/FullyConnected_0/summaries_2/HistogramSummary*
_output_shapes
: *
N"