package com.transsion.apiinvoke.invoke.lifecycle;

public interface ApiServerLifeCycle {
    void onConnected();

    void onDisConnected();

    void onError(int i, String str);
}
