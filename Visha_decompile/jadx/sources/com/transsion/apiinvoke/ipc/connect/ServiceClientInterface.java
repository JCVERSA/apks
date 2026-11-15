package com.transsion.apiinvoke.ipc.connect;

import com.transsion.apiinvoke.invoke.TransformData;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.ipc.IServiceClient;

public interface ServiceClientInterface {
    boolean postToService(String str, TransformData transformData, ApiCallback apiCallback);

    boolean registerClient(String str, IServiceClient iServiceClient);

    void unRegisterClient(String str, IServiceClient iServiceClient);
}
