?^
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
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

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
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
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.14.02unknown?F
c
a/initial_valueConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *   ?
t
a
VariableV2"/device:CPU:0*
shape: *
	container *
dtype0*
_output_shapes
: *
shared_name 
?
a/AssignAssignaa/initial_value"/device:CPU:0*
use_locking(*
_output_shapes
: *
T0*
validate_shape(*
_class

loc:@a
[
a/readIdentitya"/device:CPU:0*
_class

loc:@a*
_output_shapes
: *
T0
c
b/initial_valueConst"/device:CPU:0*
valueB
 *   @*
dtype0*
_output_shapes
: 
t
b
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
: *
shared_name *
shape: *
	container 
?
b/AssignAssignbb/initial_value"/device:CPU:0*
validate_shape(*
_class

loc:@b*
use_locking(*
_output_shapes
: *
T0
[
b/readIdentityb"/device:CPU:0*
T0*
_class

loc:@b*
_output_shapes
: 
c
c/initial_valueConst"/device:CPU:0*
valueB
 *  @@*
dtype0*
_output_shapes
: 
t
c
VariableV2"/device:CPU:0*
shape: *
	container *
dtype0*
_output_shapes
: *
shared_name 
?
c/AssignAssigncc/initial_value"/device:CPU:0*
validate_shape(*
_class

loc:@c*
use_locking(*
_output_shapes
: *
T0
[
c/readIdentityc"/device:CPU:0*
_class

loc:@c*
_output_shapes
: *
T0
^

tf_examplePlaceholder"/device:CPU:0*
shape:*
dtype0*
_output_shapes
:
d
ParseExample/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
o
ParseExample/key_x2Const"/device:CPU:0*
valueB*    *
dtype0*
_output_shapes
:
s
ParseExample/Reshape/shapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
?
ParseExample/ReshapeReshapeParseExample/key_x2ParseExample/Reshape/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
q
ParseExample/ParseExample/namesConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB 
w
&ParseExample/ParseExample/dense_keys_0Const"/device:CPU:0*
value	B Bx*
dtype0*
_output_shapes
: 
x
&ParseExample/ParseExample/dense_keys_1Const"/device:CPU:0*
value
B Bx2*
dtype0*
_output_shapes
: 
?
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1ParseExample/ConstParseExample/Reshape"/device:CPU:0*:
_output_shapes(
&:?????????:?????????*
sparse_types
 *
Tdense
2*
dense_shapes
::*
Nsparse *
Ndense
i
xIdentityParseExample/ParseExample"/device:CPU:0*
T0*'
_output_shapes
:?????????
V
MulMula/readx"/device:CPU:0*
T0*'
_output_shapes
:?????????
X
AddAddMulb/read"/device:CPU:0*
T0*'
_output_shapes
:?????????
S
yIdentityAdd"/device:CPU:0*
T0*'
_output_shapes
:?????????
X
Mul_1Mula/readx"/device:CPU:0*
T0*'
_output_shapes
:?????????
\
Add_1AddMul_1c/read"/device:CPU:0*
T0*'
_output_shapes
:?????????
V
y2IdentityAdd_1"/device:CPU:0*'
_output_shapes
:?????????*
T0
l
x2IdentityParseExample/ParseExample:1"/device:CPU:0*
T0*'
_output_shapes
:?????????
d
a2/initial_valueConst"/device:CPU:0*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
a2
VariableV2"/device:CPU:0*
shape: *
	container *
dtype0*
_output_shapes
: *
shared_name 
?
	a2/AssignAssigna2a2/initial_value"/device:CPU:0*
T0*
validate_shape(*
_class
	loc:@a2*
use_locking(*
_output_shapes
: 
^
a2/readIdentitya2"/device:CPU:0*
T0*
_class
	loc:@a2*
_output_shapes
: 
d
c2/initial_valueConst"/device:CPU:0*
valueB
 *  @@*
dtype0*
_output_shapes
: 
u
c2
VariableV2"/device:CPU:0*
shape: *
	container *
dtype0*
_output_shapes
: *
shared_name 
?
	c2/AssignAssignc2c2/initial_value"/device:CPU:0*
use_locking(*
_output_shapes
: *
T0*
validate_shape(*
_class
	loc:@c2
^
c2/readIdentityc2"/device:CPU:0*
_class
	loc:@c2*
_output_shapes
: *
T0
Z
Mul_2Mula2/readx2"/device:CPU:0*'
_output_shapes
:?????????*
T0
]
Add_2AddMul_2c2/read"/device:CPU:0*
T0*'
_output_shapes
:?????????
V
y3IdentityAdd_2"/device:CPU:0*
T0*'
_output_shapes
:?????????
i
ConstConst*4
value+B) B#/tmp/original/export/assets/foo.txt*
dtype0*
_output_shapes
: 
e
filename_tensor/initial_valueConst*
dtype0*
_output_shapes
: *
valueB Bfoo.txt
s
filename_tensor
VariableV2*
shape: *
	container *
dtype0*
_output_shapes
: *
shared_name 
?
filename_tensor/AssignAssignfilename_tensorfilename_tensor/initial_value*
T0*
validate_shape(*"
_class
loc:@filename_tensor*
use_locking(*
_output_shapes
: 
v
filename_tensor/readIdentityfilename_tensor*"
_class
loc:@filename_tensor*
_output_shapes
: *
T0
T
Assign/valueConst*
dtype0*
_output_shapes
: *
valueB Bfoo.txt
?
AssignAssignfilename_tensorAssign/value*
T0*
validate_shape(*"
_class
loc:@filename_tensor*
use_locking( *
_output_shapes
: 
T
initNoOp	^a/Assign
^a2/Assign	^b/Assign	^c/Assign
^c2/Assign"/device:CPU:0


group_depsNoOp^Assign
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
value3B1 B+_temp_792c9351451a4c0480d4742f6b9af436/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*$
valueBBaBa2BbBcBc2*
dtype0*
_output_shapes
:
|
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaa2bcc2"/device:CPU:0*
dtypes	
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
_output_shapes
:*

axis *
T0*
N
?
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*$
valueBBaBa2BbBcBc2*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes	
2*(
_output_shapes
:::::
?
save/AssignAssignasave/RestoreV2"/device:CPU:0*
validate_shape(*
_class

loc:@a*
use_locking(*
_output_shapes
: *
T0
?
save/Assign_1Assigna2save/RestoreV2:1"/device:CPU:0*
T0*
validate_shape(*
_class
	loc:@a2*
use_locking(*
_output_shapes
: 
?
save/Assign_2Assignbsave/RestoreV2:2"/device:CPU:0*
T0*
validate_shape(*
_class

loc:@b*
use_locking(*
_output_shapes
: 
?
save/Assign_3Assigncsave/RestoreV2:3"/device:CPU:0*
validate_shape(*
_class

loc:@c*
use_locking(*
_output_shapes
: *
T0
?
save/Assign_4Assignc2save/RestoreV2:4"/device:CPU:0*
T0*
validate_shape(*
_class
	loc:@c2*
use_locking(*
_output_shapes
: 
w
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4"/device:CPU:0
<
save/restore_allNoOp^save/restore_shard"/device:CPU:0"?<
save/Const:0save/Identity:0save/restore_all (5 @F8"
asset_filepaths
	
Const:0"?
trainable_variables??
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08
2
a2:0	a2/Assign	a2/read:02a2/initial_value:08
2
c2:0	c2/Assign	c2/read:02c2/initial_value:08"?
	variables??
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08
2
a2:0	a2/Assign	a2/read:02a2/initial_value:08
2
c2:0	c2/Assign	c2/read:02c2/initial_value:08"%
saved_model_main_op


group_deps"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt*q
serving_default^

x
x:0?????????
y
y:0?????????tensorflow/serving/predict*v
classify_x_to_yc

inputs
tf_example:0$
scores
y:0?????????tensorflow/serving/classify*w
regress_x_to_y2d

inputs
tf_example:0&
outputs
y2:0?????????tensorflow/serving/regress*u
regress_x_to_yc

inputs
tf_example:0%
outputs
y:0?????????tensorflow/serving/regress*
regress_x2_to_y3k
%
inputs
x2:0?????????&
outputs
y3:0?????????tensorflow/serving/regress