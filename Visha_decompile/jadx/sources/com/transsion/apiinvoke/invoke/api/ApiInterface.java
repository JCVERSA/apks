package com.transsion.apiinvoke.invoke.api;

import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;

public interface ApiInterface {
    ApiResponse apiInvoke(ApiRequest apiRequest, InvokeChain invokeChain);

    void apiInvokeAsync(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback);
}
