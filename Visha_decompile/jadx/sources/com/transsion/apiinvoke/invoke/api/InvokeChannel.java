package com.transsion.apiinvoke.invoke.api;

import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.subscribe.Publisher;

public interface InvokeChannel {
    void connectChannel();

    void disconnectChannel();

    ApiInterface getApiInterface();

    ApiPublisher getApiPublisher(Publisher.Host host);

    ApiResponse invokeApi(ApiRequest apiRequest, InvokeChain invokeChain);

    void invokeApiAsync(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback);

    boolean isInChannel(String str);
}
