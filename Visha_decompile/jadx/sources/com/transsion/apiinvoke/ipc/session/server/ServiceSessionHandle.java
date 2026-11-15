package com.transsion.apiinvoke.ipc.session.server;

import com.transsion.apiinvoke.invoke.TransformData;
import com.transsion.apiinvoke.ipc.session.client.RemoteCallback;

public interface ServiceSessionHandle {
    void onAcceptData(TransformData transformData, RemoteCallback remoteCallback, String str);
}
