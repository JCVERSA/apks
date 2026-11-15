package com.transsion.apiinvoke.subscribe;

public interface OnSubscribeChangeListener {
    void onSubscribe(Publisher publisher, int i);

    void onUnSubscribe(Publisher publisher, int i);
}
