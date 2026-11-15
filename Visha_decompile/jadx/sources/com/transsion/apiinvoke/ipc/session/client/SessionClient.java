package com.transsion.apiinvoke.ipc.session.client;

import android.os.RemoteException;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.TransformData;
import com.transsion.apiinvoke.ipc.ApiServiceConnect;
import com.transsion.apiinvoke.ipc.ICommonServiceInterface;
import com.transsion.apiinvoke.ipc.IRemoteCallback;
import com.transsion.apiinvoke.ipc.IServiceClient;
import com.transsion.apiinvoke.ipc.IServiceSession;
import com.transsion.apiinvoke.ipc.ParcelResponse;
import com.transsion.apiinvoke.ipc.ParcelTransformData;
import com.transsion.apiinvoke.ipc.session.server.ServerCallback;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class SessionClient extends IServiceClient.Stub {
    private static final String TAG = "SessionClient";
    private static final Map<Object, SessionClient> mRemoteLocalStub = new ConcurrentHashMap();
    private final List<OnSessionDataListener> mCallbacks = new CopyOnWriteArrayList();
    private String mClient;
    private IServiceSession mRemote;
    private String mRemoteDesc;

    public static class LocalRemoteCallback extends IRemoteCallback.Stub {
        private ServerCallback mCallback;

        public LocalRemoteCallback(ServerCallback serverCallback) {
            this.mCallback = serverCallback;
        }

        @Override
        public void response(ParcelResponse parcelResponse) throws RemoteException {
            StringBuilder sb = new StringBuilder();
            sb.append("response: ");
            sb.append(parcelResponse != null);
            ApiInvokeLog.logInfo(SessionClient.TAG, sb.toString());
            this.mCallback.onResponse(parcelResponse != null ? parcelResponse.getResponse() : ApiResponse.empty(-1));
        }
    }

    public SessionClient(IServiceSession iServiceSession, String str, String str2) {
        this.mRemote = iServiceSession;
        this.mRemoteDesc = str;
        this.mClient = str2;
        register(this);
    }

    private void dispatchDisconnect() {
        synchronized (this.mCallbacks) {
            try {
                Iterator<OnSessionDataListener> it = this.mCallbacks.iterator();
                while (it.hasNext()) {
                    it.next().onDisconnect(this.mRemoteDesc);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ApiInvokeLog.logWarning(TAG, "disconnect from remote service; remote " + this.mRemoteDesc + StringUtils.PROCESS_POSTFIX_DELIMITER + this.mCallbacks.size());
    }

    private void dispatchReceiveData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback) {
        synchronized (this.mCallbacks) {
            try {
                Iterator<OnSessionDataListener> it = this.mCallbacks.iterator();
                while (it.hasNext()) {
                    it.next().onReceived(parcelTransformData.getData(), new RemoteCallback(iRemoteCallback));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ApiInvokeLog.logWarning(TAG, "onReceiveData from remote service; remote " + this.mRemoteDesc + StringUtils.PROCESS_POSTFIX_DELIMITER + this.mCallbacks.size());
    }

    public static SessionClient openRemoteSession(Object obj, String str) {
        Map<Object, SessionClient> map = mRemoteLocalStub;
        SessionClient sessionClient = map.get(obj);
        if (sessionClient != null) {
            return sessionClient;
        }
        ICommonServiceInterface serviceInterface = ApiServiceConnect.getInstance().getServiceInterface(obj);
        if (serviceInterface == null || !serviceInterface.asBinder().isBinderAlive()) {
            return null;
        }
        try {
            SessionClient sessionClient2 = new SessionClient(serviceInterface.getSession(str), obj.toString(), str);
            try {
                map.put(obj, sessionClient2);
                return sessionClient2;
            } catch (RemoteException e) {
                e = e;
                sessionClient = sessionClient2;
                e.printStackTrace();
                return sessionClient;
            }
        } catch (RemoteException e2) {
            e = e2;
        }
    }

    private void register(IServiceClient iServiceClient) {
        try {
            this.mRemote.registerClient(iServiceClient, this.mClient);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        ApiInvokeLog.logWarning(TAG, "register client ." + this.mRemoteDesc);
    }

    public void addListener(OnSessionDataListener onSessionDataListener) {
        synchronized (this.mCallbacks) {
            if (onSessionDataListener != null) {
                try {
                    if (!this.mCallbacks.contains(onSessionDataListener)) {
                        this.mCallbacks.add(onSessionDataListener);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void clearListener() {
        synchronized (this.mCallbacks) {
            this.mCallbacks.clear();
        }
    }

    @Override
    public void disconnect() {
        dispatchDisconnect();
    }

    public boolean isClientRegistered() {
        try {
            return this.mRemote.isClientRegistered(this.mClient);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isRemoteAlive() {
        IServiceSession iServiceSession = this.mRemote;
        return iServiceSession != null && iServiceSession.asBinder().isBinderAlive();
    }

    @Override
    public void onReceiveData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback) {
        dispatchReceiveData(parcelTransformData, iRemoteCallback);
    }

    public void postToServer(TransformData transformData, ServerCallback serverCallback, String str) {
        if (this.mRemote == null) {
            serverCallback.onResponse(ApiResponse.onError(-1, "remote is null"));
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("postToServer: ");
            sb.append(transformData != null);
            ApiInvokeLog.logInfo(TAG, sb.toString());
            this.mRemote.onAcceptClientData(new ParcelTransformData(transformData), new LocalRemoteCallback(serverCallback), str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void release() {
        clearListener();
        this.mRemote = null;
        ApiInvokeLog.logWarning(TAG, "release remote service; remote " + this.mRemoteDesc);
        this.mRemoteDesc = null;
    }

    public void removeListener(OnSessionDataListener onSessionDataListener) {
        synchronized (this.mCallbacks) {
            if (onSessionDataListener != null) {
                try {
                    if (this.mCallbacks.contains(onSessionDataListener)) {
                        this.mCallbacks.remove(onSessionDataListener);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void unRegister() {
        try {
            this.mRemote.unRegisterClient(this.mClient);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        ApiInvokeLog.logWarning(TAG, "unRegister client ." + this.mRemoteDesc);
    }
}
