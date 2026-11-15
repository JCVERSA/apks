package com.transsion.apiinvoke.ipc.session.client;

import android.os.RemoteException;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.ipc.IRemoteCallback;
import com.transsion.apiinvoke.ipc.ParcelResponse;

public class RemoteCallback {
    private IRemoteCallback stub;

    public RemoteCallback(IRemoteCallback iRemoteCallback) {
        this.stub = iRemoteCallback;
    }

    public void onResponse(ApiResponse apiResponse) {
        try {
            IRemoteCallback iRemoteCallback = this.stub;
            if (iRemoteCallback == null) {
                return;
            }
            iRemoteCallback.response(new ParcelResponse(apiResponse));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
