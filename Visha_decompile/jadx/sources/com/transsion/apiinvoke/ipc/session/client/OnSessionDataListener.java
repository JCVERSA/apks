package com.transsion.apiinvoke.ipc.session.client;

import com.transsion.apiinvoke.invoke.TransformData;

public interface OnSessionDataListener {
    void onDisconnect(String str);

    void onReceived(TransformData transformData, RemoteCallback remoteCallback);
}
