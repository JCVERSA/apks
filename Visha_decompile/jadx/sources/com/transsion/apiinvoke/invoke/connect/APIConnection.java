package com.transsion.apiinvoke.invoke.connect;

import com.transsion.apiinvoke.IApiService;

public class APIConnection extends BaseAPIConnection {
    private IApiService mApiService;

    public APIConnection(IApiService iApiService) {
        this.mApiService = iApiService;
    }

    @Override
    public synchronized void connectServer() {
        try {
            super.connectServer();
            Object obj = this.mApiService;
            if (obj instanceof APIConnection) {
                ((APIConnection) obj).onConnected();
            } else {
                this.mState = ConnectState.connected;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized void disconnectServer() {
        try {
            super.disconnectServer();
            Object obj = this.mApiService;
            if (obj instanceof APIConnection) {
                ((APIConnection) obj).onDisConnected();
            } else {
                this.mState = ConnectState.disconnected;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public ConnectState getConnectState() {
        return this.mState;
    }
}
