	�>tA��h@�>tA��h@!�>tA��h@      ��!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-�>tA��h@h��?A�d@1~�$ϩ2@AC�y�'�?I�Q��$@*	��v���_@2F
Iterator::Model
fL�g�?!�Y�G�M@)�\��?1w�ڎI@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�!�k^ՙ?!_>߹�3@)�%��?1|�aU��/@:Preprocessing2U
Iterator::Model::ParallelMapV2�zj�Յ?! ���X� @)�zj�Յ?1 ���X� @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�\��$?�?!�2;�D�+@)�ݓ��Z�?1E�H���@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��f*�#�?!'�-	�E@)��f*�#�?1'�-	�E@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipН`�un�?!��?�BD@)!����x?1-��Ja�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor${��!Ut?!j��*@)${��!Ut?1j��*@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�nI�Ք?!��%}�/@):�`���d?1�oS����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 85.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"�5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	h��?A�d@h��?A�d@!h��?A�d@      ��!       "	~�$ϩ2@~�$ϩ2@!~�$ϩ2@*      ��!       2	C�y�'�?C�y�'�?!C�y�'�?:	�Q��$@�Q��$@!�Q��$@B      ��!       J      ��!       R      ��!       Z      ��!       JGPUb 