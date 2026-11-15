package com.transsion.apiinvoke.ipc;

import android.content.ComponentName;
import android.content.Context;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.ipc.connect.ApiRemoteConnection;
import com.transsion.apiinvoke.ipc.connect.CommonServiceInterfaceGet;
import com.transsion.apiinvoke.ipc.connect.IRemoteConnection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ApiServiceConnect {
    private static final String TAG = "ApiServiceConnect";
    private final Map<Object, IRemoteConnection<?>> connectionMap;

    public static final class ApiServiceConnectHolder {
        private static final ApiServiceConnect INSTANCE = new ApiServiceConnect();

        private ApiServiceConnectHolder() {
        }
    }

    public static ApiServiceConnect getInstance() {
        return ApiServiceConnectHolder.INSTANCE;
    }

    private boolean isRemoteConnect(Object obj) {
        ICommonServiceInterface serviceInterface = getServiceInterface(obj);
        return serviceInterface != null && serviceInterface.asBinder().isBinderAlive();
    }

    public boolean connect(Context context, ComponentName componentName) {
        IRemoteConnection<?> apiRemoteConnection = this.connectionMap.get(componentName);
        if (apiRemoteConnection == null) {
            apiRemoteConnection = new ApiRemoteConnection(componentName, context.getPackageName());
        }
        return connectRemote(context, apiRemoteConnection);
    }

    public boolean connectRemote(Context context, IRemoteConnection<?> iRemoteConnection) {
        Object objRemoteDesc = iRemoteConnection.remoteDesc();
        if (iRemoteConnection.isConnected() && this.connectionMap.containsKey(objRemoteDesc)) {
            return true;
        }
        ApiInvokeLog.logInfo(TAG, "connect component:" + objRemoteDesc);
        this.connectionMap.put(objRemoteDesc, iRemoteConnection);
        return iRemoteConnection.bindRemoteSync(context);
    }

    public void disConnect(Context context, Object obj) {
        ApiInvokeLog.logInfo(TAG, "disConnect remote:" + obj);
        IRemoteConnection<?> iRemoteConnection = this.connectionMap.get(obj);
        if (iRemoteConnection != null) {
            iRemoteConnection.unbindRemote(context);
        }
    }

    public ICommonServiceInterface getServiceInterface(Object obj) {
        CommonServiceInterfaceGet serviceInterface;
        IRemoteConnection<?> iRemoteConnection = this.connectionMap.get(obj);
        if (iRemoteConnection == null || (serviceInterface = iRemoteConnection.getServiceInterface()) == null) {
            return null;
        }
        return serviceInterface.getInterface();
    }

    public boolean isConnect(String str) {
        return isRemoteConnect(str);
    }

    public boolean isConnecting(Object obj) {
        IRemoteConnection<?> iRemoteConnection = this.connectionMap.get(obj);
        if (iRemoteConnection != null) {
            return iRemoteConnection.isConnecting();
        }
        return false;
    }

    private ApiServiceConnect() {
        this.connectionMap = new ConcurrentHashMap(4);
    }

    public boolean isConnect(ComponentName componentName) {
        return isRemoteConnect(componentName);
    }
}
