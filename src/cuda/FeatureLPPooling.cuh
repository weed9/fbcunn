// Copyright 2004-present Facebook. All Rights Reserved.

#include "cuda/DeviceTensor.cuh"

namespace facebook { namespace deeplearning { namespace torch {

bool
runFeatureLPPoolingUpdateOutput(
  const cuda::DeviceTensor<float, 4>& input,
  cuda::DeviceTensor<float, 4>& output,
  float power, int width, int stride);

bool
runFeatureLPPoolingUpdateGradInput(
  const cuda::DeviceTensor<float, 4>& gradOutput,
  const cuda::DeviceTensor<float, 4>& input,
  const cuda::DeviceTensor<float, 4>& output,
  cuda::DeviceTensor<float, 4>& gradInput,
  float power, int width, int stride);

} } }
