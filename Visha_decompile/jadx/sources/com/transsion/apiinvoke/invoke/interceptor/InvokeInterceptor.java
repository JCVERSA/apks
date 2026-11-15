package com.transsion.apiinvoke.invoke.interceptor;

import com.transsion.apiinvoke.invoke.InvokeChain;

public interface InvokeInterceptor {
    boolean processChain(InvokeChain invokeChain);
}
