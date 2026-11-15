package com.transsion.apiinvoke.invoke.connect;

import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.lifecycle.ApiServerLifeCycleObserver;
import com.transsion.apiinvoke.invoke.lifecycle.ApiServiceLifyCycleOwner;

public abstract class BaseAPIConnection implements IServiceConnection, ApiServiceLifyCycleOwner {
    private static final String TAG = "AbstractAPIConnection";
    protected ConnectState mState = ConnectState.waitConnect;
    private Runnable mCheckConnectTimeOut = new Runnable() {
        @Override
        public final void run() {
            this.b.lambda$new$0();
        }
    };
    private ApiServerLifeCycleObserver mLifeCycleObserver = new ApiServerLifeCycleObserver();

    public void lambda$new$0() {
        if (this.mState != ConnectState.connected) {
            getApiServerLifyCycleObserver().onConnectTimeout();
            this.mState = ConnectState.waitConnect;
        }
    }

    @Override
    public synchronized void connectServer() {
        ConnectState connectState = this.mState;
        ConnectState connectState2 = ConnectState.connecting;
        if (connectState == connectState2) {
            System.out.println("AbstractAPIConnection: bindService state : connecting");
        } else if (connectState == ConnectState.connected) {
            ApiInvokeLog.logInfo(TAG, ": bindService no need bind again, state : connected");
        } else {
            this.mState = connectState2;
        }
    }

    @Override
    public synchronized void disconnectServer() {
        ConnectState connectState = this.mState;
        ConnectState connectState2 = ConnectState.disconnecting;
        if (connectState == connectState2) {
            ApiInvokeLog.logInfo(TAG, ": unBindService state : disconnecting");
        } else if (connectState == ConnectState.disconnected) {
            ApiInvokeLog.logInfo(TAG, ": unBindService no need unBind again, state : disconnected");
        } else {
            this.mState = connectState2;
        }
    }

    @Override
    public ApiServerLifeCycleObserver getApiServerLifyCycleObserver() {
        return this.mLifeCycleObserver;
    }

    @Override
    public ConnectState getConnectState() {
        return this.mState;
    }

    public void onConnected() {
        this.mState = ConnectState.connected;
        getApiServerLifyCycleObserver().onServiceConnected();
    }

    public void onDisConnected() {
        this.mState = ConnectState.disconnected;
        getApiServerLifyCycleObserver().onServiceDisconnected();
    }
}
