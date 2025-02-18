�	<����	b@<����	b@!<����	b@      ��!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-<����	b@Ug��T]@1^f�(�"@A>�^��V
@Ix��e�,@*	NbX9d@2F
Iterator::Model�Y���?!�Qv@ O@)gI-�L�?1���K@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate`��ME*�?!4\@8|1@)/1�闈�?1�oN�,@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��$�pt�?!!Y�B*@)Y�O0��?1�l�=�k%@:Preprocessing2U
Iterator::Model::ParallelMapV2[z4Փ�?!A�;�@)[z4Փ�?1A�;�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip� ��=@�?!𮉿�B@)��o�{?1�����@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�+f���?!��*��4@)�릔w?1�-ҕ��@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��F���r?!�Fd��@)��F���r?1�Fd��@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorڨN�n?!yz&*J�@)ڨN�n?1yz&*J�@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 81.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"�9.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	Ug��T]@Ug��T]@!Ug��T]@      ��!       "	^f�(�"@^f�(�"@!^f�(�"@*      ��!       2	>�^��V
@>�^��V
@!>�^��V
@:	x��e�,@x��e�,@!x��e�,@B      ��!       J      ��!       R      ��!       Z      ��!       JGPUb �"N
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackpropM�� ��?!M�� ��?"&
CudnnRNNCudnnRNN�k��E�?!�;�j��?"*
transpose_9	Transpose@K���W{?!.j�+�?"C
$gradients/transpose_9_grad/transpose	Transpose$!6 ��u?!p����V�?";
gradients/split_1_grad/concatConcatV2�}����q?!k	ZF<z�?"9
gradients/split_grad/concatConcatV2\�^yq?!��/��?"*
transpose_0	Transpose�V�hKq?!W[&ſ�?"(

concat_1_0ConcatV2����q?!������?"A
"gradients/transpose_grad/transpose	Transpose�f���Hn?!b�ݕ9 �?";
gradients/split_2_grad/concatConcatV2L*	���g?!���/��?Q      Y@YGlȈ@a����7wX@q}�gX��W@y@�'�/ǣ?"�
both�Your program is POTENTIALLY input-bound because 81.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
moderate�9.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).:
Refer to the TF2 Profiler FAQb�95.9355% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 