�	�v�15h@�v�15h@!�v�15h@	zq�����?zq�����?!zq�����?"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6�v�15h@��K7�od@1��"��-@A�8�@d��?I�M�M��,@Y#K�X�U�?*	��C�X@2F
Iterator::Model��/-ꓬ?!)Ry!�M@)�bFx{�?1Yv�`��H@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat	��z���?!�@�6@)��>rk�?1'�FA�2@:Preprocessing2U
Iterator::Model::ParallelMapV2L�4��a�?!AoO�� @)L�4��a�?1AoO�� @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��Y�rL�?!���L��&@)�����z?1�3i��k@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�> �M��?!׭��]�D@)�u��t?1�#9[�b@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��T��q?!���h�@)��T��q?1���h�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�$��p?!Ց	@)�$��p?1Ց	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap����Y.�?!V��6+�+@)��A��c?1ƒz��@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 84.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"�7.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9zq�����?>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	��K7�od@��K7�od@!��K7�od@      ��!       "	��"��-@��"��-@!��"��-@*      ��!       2	�8�@d��?�8�@d��?!�8�@d��?:	�M�M��,@�M�M��,@!�M�M��,@B      ��!       J	#K�X�U�?#K�X�U�?!#K�X�U�?R      ��!       Z	#K�X�U�?#K�X�U�?!#K�X�U�?JGPUYzq�����?b �"N
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackpropo�w��?!o�w��?"&
CudnnRNNCudnnRNNAA��[~�?!��kC��?"(

concat_1_0ConcatV2��H(��?!?����?"*
transpose_9	Transpose�ilU�{?!ij���?"C
$gradients/transpose_9_grad/transpose	Transpose�����{?!a.�Q�?"*
transpose_0	Transpose��v?!a_�+5}�?"A
"gradients/transpose_grad/transpose	Transpose!]�~��t?!��^Ʀ�?""
split_1Split��b#�dn?!?��*��?";
gradients/split_1_grad/concatConcatV2��b"�k?!�	����?"9
gradients/split_grad/concatConcatV2+n��%�k?!]\����?Q      Y@Y:|���W�?a^,���X@q����T@y�~�|�+�?"�
both�Your program is POTENTIALLY input-bound because 84.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
moderate�7.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).:
Refer to the TF2 Profiler FAQb�82.3582% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 