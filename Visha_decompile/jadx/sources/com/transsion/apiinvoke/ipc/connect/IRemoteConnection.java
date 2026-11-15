package com.transsion.apiinvoke.ipc.connect;

import android.content.Context;
import com.transsion.apiinvoke.ipc.session.client.SessionClient;

public interface IRemoteConnection<D> {
    boolean bindRemoteSync(Context context);

    CommonServiceInterfaceGet getServiceInterface();

    SessionClient getSession();

    boolean isConnected();

    boolean isConnecting();

    D remoteDesc();

    void unbindRemote(Context context);
}
