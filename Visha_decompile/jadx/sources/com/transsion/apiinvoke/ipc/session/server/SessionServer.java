package com.transsion.apiinvoke.ipc.session.server;

import android.os.RemoteException;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.TransformData;
import com.transsion.apiinvoke.ipc.IRemoteCallback;
import com.transsion.apiinvoke.ipc.IServiceSession;
import com.transsion.apiinvoke.ipc.ParcelResponse;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class SessionServer {
    private final Map<String, ISServiceAcceptor> acceptors;
    private final CommonServiceSessionAcceptor mCommonAcceptor;

    public static class ServerCallbackRemote extends IRemoteCallback.Stub {
        private ServerCallback mCallback;

        public ServerCallbackRemote(ServerCallback serverCallback) {
            this.mCallback = serverCallback;
        }

        @Override
        public void response(ParcelResponse parcelResponse) throws RemoteException {
            ServerCallback serverCallback = this.mCallback;
            if (serverCallback != null) {
                serverCallback.onResponse(parcelResponse != null ? parcelResponse.getResponse() : ApiResponse.empty(-1));
            }
        }
    }

    public static class SessionServerHolder {
        private static final SessionServer INSTANCE = new SessionServer();

        private SessionServerHolder() {
        }
    }

    public static SessionServer getInstance() {
        return SessionServerHolder.INSTANCE;
    }

    public void addAcceptor(String str, ISServiceAcceptor iSServiceAcceptor) {
        if (iSServiceAcceptor != null) {
            this.acceptors.put(str, iSServiceAcceptor);
        }
    }

    public Set<String> allConnectClient() {
        return this.acceptors.keySet();
    }

    public ISServiceAcceptor getAcceptor(String str) {
        ISServiceAcceptor iSServiceAcceptor = this.acceptors.get(str);
        return iSServiceAcceptor == null ? this.mCommonAcceptor : iSServiceAcceptor;
    }

    public boolean isClientConnected(String str) {
        IServiceSession iServiceSessionSessionService;
        ISServiceAcceptor iSServiceAcceptor = this.acceptors.get(str);
        if (iSServiceAcceptor == null || (iServiceSessionSessionService = iSServiceAcceptor.sessionService()) == null) {
            return false;
        }
        return iServiceSessionSessionService.asBinder().isBinderAlive();
    }

    public void removeAcceptor(String str) {
        this.acceptors.remove(str);
    }

    public void sendClient(TransformData transformData, ServerCallback serverCallback, String str) {
        ISServiceAcceptor acceptor = getAcceptor(str);
        if (acceptor != null) {
            acceptor.sendData(transformData, new ServerCallbackRemote(serverCallback));
        } else if (serverCallback != null) {
            serverCallback.onResponse(ApiResponse.onError(-1, "未找到客户端连接"));
        }
    }

    public void setCommonSessionHandle(ServiceSessionHandle serviceSessionHandle) {
        this.mCommonAcceptor.setSessionListener(serviceSessionHandle);
    }

    private SessionServer() {
        this.mCommonAcceptor = new CommonServiceSessionAcceptor();
        this.acceptors = new ConcurrentHashMap();
    }

    public void sendClient(TransformData transformData, ServerCallback serverCallback) {
        this.mCommonAcceptor.sendData(transformData, new ServerCallbackRemote(serverCallback));
        Collection<ISServiceAcceptor> collectionValues = this.acceptors.values();
        if (collectionValues.isEmpty()) {
            return;
        }
        Iterator<ISServiceAcceptor> it = collectionValues.iterator();
        while (it.hasNext()) {
            it.next().sendData(transformData, new ServerCallbackRemote(serverCallback));
        }
    }
}
