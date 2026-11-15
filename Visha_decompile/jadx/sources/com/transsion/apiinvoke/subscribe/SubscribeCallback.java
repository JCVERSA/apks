package com.transsion.apiinvoke.subscribe;

import java.io.Serializable;

public interface SubscribeCallback<T extends Serializable> {
    void onPublishData(Publisher publisher, T t);
}
