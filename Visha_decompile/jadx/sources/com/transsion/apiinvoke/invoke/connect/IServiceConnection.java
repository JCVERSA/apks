package com.transsion.apiinvoke.invoke.connect;

public interface IServiceConnection {
    void connectServer();

    void disconnectServer();

    ConnectState getConnectState();
}
