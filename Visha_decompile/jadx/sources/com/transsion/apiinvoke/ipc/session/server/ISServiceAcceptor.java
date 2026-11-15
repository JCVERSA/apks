package com.transsion.apiinvoke.ipc.session.server;

import com.transsion.apiinvoke.invoke.TransformData;
import com.transsion.apiinvoke.ipc.IRemoteCallback;
import com.transsion.apiinvoke.ipc.IServiceSession;

public interface ISServiceAcceptor {
    boolean sendData(TransformData transformData, IRemoteCallback iRemoteCallback);

    IServiceSession sessionService();
}
