package com.transsion.apiinvoke.invoke.api;

import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.subscribe.Publisher;
import java.io.Serializable;

public interface ApiPublisher<T extends Serializable> {
    void publishData(Publisher publisher, InvokeChain invokeChain, T t);
}
