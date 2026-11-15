package com.transsion.apiinvoke.ipc.connect;

public interface ApiMessageReceiver {
    void onReceiveMessage(String str, Object obj);
}
