package com.transsion.kolun.oxygenbus.common;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.api.ApiInterface;
import com.transsion.apiinvoke.invoke.interceptor.InvokeInterceptor;
import com.transsion.apiinvoke.ipc.ICommonServiceInterface;
import com.transsion.apiinvoke.ipc.IRemoteAPIConnection;
import com.transsion.apiinvoke.ipc.connect.ApiIInterfaceProxy;
import com.transsion.apiinvoke.ipc.connect.RealApiInterface;
import java.lang.ref.SoftReference;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class RealRemoteConnection extends IRemoteAPIConnection.Stub {
    private static final String TAG = "RealRemoteConnection";
    private final String mChannelName;
    private final List<OnConnectChangeListener> mConnectedStateChange = new CopyOnWriteArrayList();
    private final InvokeInterceptor mInterceptor;

    public static class ConnectPoolManager {
        private static Map<String, SoftReference<RealApiInterface>> apiConnect = new ConcurrentHashMap();

        private ConnectPoolManager() {
        }

        public static void cacheConnect(String str, RealApiInterface realApiInterface) {
            synchronized (apiConnect) {
                apiConnect.put(str, new SoftReference<>(realApiInterface));
            }
        }

        public static RealApiInterface getChannelConnect(String str) {
            SoftReference<RealApiInterface> softReference = apiConnect.get(str);
            if (softReference != null) {
                return softReference.get();
            }
            return null;
        }

        public static void removeConnect(String str) {
            synchronized (apiConnect) {
                try {
                    SoftReference<RealApiInterface> softReference = apiConnect.get(str);
                    if (softReference != null && softReference.get() != null) {
                        softReference.get().onDestroy();
                    }
                    apiConnect.remove(str);
                } catch (Throwable th) {
                    throw th;
                }
            }
            ApiInvokeLog.logInfo(RealRemoteConnection.TAG, "removeConnect channelName:" + str);
        }
    }

    public interface OnConnectChangeListener {
        void onConnected(ApiInterface apiInterface, String str);

        void onDisconnected(String str);
    }

    public RealRemoteConnection(String str, InvokeInterceptor invokeInterceptor) {
        this.mChannelName = str;
        this.mInterceptor = invokeInterceptor;
    }

    public void lambda$onConnected$0() {
        Log.w(TAG, "DeathRecipient ");
        onDisconnected(this.mChannelName);
    }

    public void lambda$onConnected$1() {
        onDisconnected(this.mChannelName);
    }

    public String channelName() {
        return this.mChannelName;
    }

    public RealApiInterface getRealApiInterface() {
        return ConnectPoolManager.getChannelConnect(this.mChannelName);
    }

    public void listen(OnConnectChangeListener onConnectChangeListener) {
        synchronized (this.mConnectedStateChange) {
            try {
                if (!this.mConnectedStateChange.contains(onConnectChangeListener)) {
                    this.mConnectedStateChange.add(onConnectChangeListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onConnected(Bundle bundle, ICommonServiceInterface iCommonServiceInterface) throws RemoteException {
        Log.i(TAG, "RealRemoteConnection onConnected " + this.mChannelName);
        linkToDeath(new IBinder.DeathRecipient() {
            @Override
            public final void binderDied() {
                this.b.lambda$onConnected$0();
            }
        }, 0);
        RealApiInterface realApiInterface = new RealApiInterface(iCommonServiceInterface, new ApiIInterfaceProxy.Callback() {
            @Override
            public final void binderDied() {
                this.a.lambda$onConnected$1();
            }
        }, this.mInterceptor, bundle, this.mChannelName);
        ConnectPoolManager.cacheConnect(this.mChannelName, realApiInterface);
        synchronized (this.mConnectedStateChange) {
            try {
                if (this.mConnectedStateChange.isEmpty()) {
                    return;
                }
                List<OnConnectChangeListener> list = this.mConnectedStateChange;
                for (OnConnectChangeListener onConnectChangeListener : (OnConnectChangeListener[]) list.toArray(new OnConnectChangeListener[list.size()])) {
                    onConnectChangeListener.onConnected(realApiInterface, this.mChannelName);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onDisconnected(String str) {
        ConnectPoolManager.removeConnect(str);
        Log.i(TAG, "RealRemoteConnection onDisconnected " + str);
        synchronized (this.mConnectedStateChange) {
            try {
                if (this.mConnectedStateChange.isEmpty()) {
                    return;
                }
                List<OnConnectChangeListener> list = this.mConnectedStateChange;
                for (OnConnectChangeListener onConnectChangeListener : (OnConnectChangeListener[]) list.toArray(new OnConnectChangeListener[list.size()])) {
                    onConnectChangeListener.onDisconnected(this.mChannelName);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unListen(OnConnectChangeListener onConnectChangeListener) {
        synchronized (this.mConnectedStateChange) {
            this.mConnectedStateChange.remove(onConnectChangeListener);
        }
    }

    public static RealApiInterface getRealApiInterface(String str) {
        return ConnectPoolManager.getChannelConnect(str);
    }
}
