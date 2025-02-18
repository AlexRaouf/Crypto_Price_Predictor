�	\='�ozm@\='�ozm@!\='�ozm@	2W�c��?2W�c��?!2W�c��?"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6\='�ozm@�yY�i@1�,C�z)@A�:TS�u�?I�	�s1@Y,g~5�?*	��ʡE�[@2F
Iterator::Model|}�K�Я?!�(+�IL@).��ϩ?1���B?�F@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�u���?!�~J"��9@)6 B\9{�?1����ׯ4@:Preprocessing2U
Iterator::Model::ParallelMapV28i��?!}�p�*(%@)8i��?1}�p�*(%@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenater��rg&�?!�󤹦F%@)��9]{?1\�
N<�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��a��?!5����E@)3�FY��x?1;��D�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor����t!v?![FY9@)����t!v?1[FY9@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�)r��9u?!�B?%�@)�)r��9u?1�B?%�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap!Y�n�?!*�?�i�)@)G6ue?1O�kj�@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 86.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"�7.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no93W�c��?>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�yY�i@�yY�i@!�yY�i@      ��!       "	�,C�z)@�,C�z)@!�,C�z)@*      ��!       2	�:TS�u�?�:TS�u�?!�:TS�u�?:	�	�s1@�	�s1@!�	�s1@B      ��!       J	,g~5�?,g~5�?!,g~5�?R      ��!       Z	,g~5�?,g~5�?!,g~5�?JGPUY3W�c��?b �"N
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackpropb�os�?!b�os�?"&
CudnnRNNCudnnRNNC��ܙ!�?!�t]�V��?"*
transpose_9	Transpose�&A��#v?!���;���?"C
$gradients/transpose_9_grad/transpose	Transpose�3�o��u?!_�"�?"*
transpose_0	Transpose�&ZZ�or?!��3��F�?";
gradients/split_1_grad/concatConcatV238s�q?!R?�Kj�?"9
gradients/split_grad/concatConcatV2�@���q?!sӃ[��?"(

concat_1_0ConcatV2"���,hq?!?�	o+��?"A
"gradients/transpose_grad/transpose	Transposeo��
_�p?!Z>-��?";
gradients/split_2_grad/concatConcatV2�m���g?!�7?����?Q      Y@YvVE�l�?a��^M��X@q!~�E�T@yԙ2�̜?"�
both�Your program is POTENTIALLY input-bound because 86.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
moderate�7.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).:
Refer to the TF2 Profiler FAQb�82.3324% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 