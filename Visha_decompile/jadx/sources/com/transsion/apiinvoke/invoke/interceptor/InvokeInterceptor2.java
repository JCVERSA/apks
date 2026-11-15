package com.transsion.apiinvoke.invoke.interceptor;

import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;

public interface InvokeInterceptor2 {
    ApiResponse processChainV2(InvokeChain invokeChain);
}
