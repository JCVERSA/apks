package com.transsion.apiinvoke.ipc.session.server;

import android.os.RemoteException;
import android.text.TextUtils;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.TransformData;
import com.transsion.apiinvoke.ipc.IRemoteCallback;
import com.transsion.apiinvoke.ipc.IServiceClient;
import com.transsion.apiinvoke.ipc.IServiceSession;
import com.transsion.apiinvoke.ipc.ParcelInvokeChain;
import com.transsion.apiinvoke.ipc.ParcelTransformData;
import com.transsion.apiinvoke.ipc.connect.ApiIInterfaceProxy;
import com.transsion.apiinvoke.ipc.session.client.RemoteCallback;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class CommonServiceSessionAcceptor extends IServiceSession.Stub implements ISServiceAcceptor {
    private static final String TAG = "CommonServiceAcceptor";
    private final Map<String, ApiIInterfaceProxy<IServiceClient>> clientMap = new ConcurrentHashMap(4);
    private ServiceSessionHandle mSessionHandle;

    @Override
    public boolean isClientRegistered(String str) {
        return this.clientMap.containsKey(str);
    }

    @Override
    public final void onAcceptClientData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback, String str) {
        if (parcelTransformData == null) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("onAcceptData: sessionName ");
            sb.append(str);
            sb.append(" withCallback ");
            sb.append(iRemoteCallback != null);
            ApiInvokeLog.logWarning(TAG, sb.toString());
            ServiceSessionHandle serviceSessionHandle = this.mSessionHandle;
            if (serviceSessionHandle != null) {
                serviceSessionHandle.onAcceptData(parcelTransformData.getData(), new RemoteCallback(iRemoteCallback), str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    @Deprecated
    public boolean postClientData(ParcelTransformData parcelTransformData, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) {
        ApiInvokeLog.logError(TAG, "postClientData, called wrong api ");
        return false;
    }

    @Override
    @Deprecated
    public boolean register(IServiceClient iServiceClient, ParcelInvokeChain parcelInvokeChain) {
        ApiInvokeLog.logError(TAG, "register, called wrong api, use registerClient instead");
        return false;
    }

    @Override
    public boolean registerClient(IServiceClient iServiceClient, String str) {
        if (iServiceClient == null) {
            ApiInvokeLog.logInfo(TAG, "client == null ");
            return false;
        }
        ApiIInterfaceProxy<IServiceClient> apiIInterfaceProxy = this.clientMap.get(str);
        if (apiIInterfaceProxy != null) {
            apiIInterfaceProxy.remove();
        }
        this.clientMap.put(str, new ApiIInterfaceProxy<>(iServiceClient));
        ApiInvokeLog.logInfo(TAG, "registerClient sessionName " + str);
        return true;
    }

    @Override
    public boolean sendData(TransformData transformData, IRemoteCallback iRemoteCallback) {
        if (transformData == null) {
            ApiInvokeLog.logWarning(TAG, "sendData error null data");
            return false;
        }
        Set<String> setKeySet = this.clientMap.keySet();
        if (setKeySet.isEmpty()) {
            ApiInvokeLog.logWarning(TAG, "sendData client is null");
            return false;
        }
        try {
            for (String str : setKeySet) {
                ApiIInterfaceProxy<IServiceClient> apiIInterfaceProxy = this.clientMap.get(str);
                if (apiIInterfaceProxy != null && apiIInterfaceProxy.isConnected()) {
                    IServiceClient iServiceClient = (IServiceClient) apiIInterfaceProxy.getInterface();
                    if (iServiceClient != null) {
                        iServiceClient.onReceiveData(new ParcelTransformData(transformData), iRemoteCallback);
                    }
                    ApiInvokeLog.logWarning(TAG, "sendData success to client " + str);
                }
            }
            return true;
        } catch (RemoteException e) {
            ApiInvokeLog.logError(TAG, "sendData error " + e.getMessage());
            return false;
        }
    }

    @Override
    public IServiceSession sessionService() {
        return this;
    }

    public void setSessionListener(ServiceSessionHandle serviceSessionHandle) {
        this.mSessionHandle = serviceSessionHandle;
    }

    @Override
    @Deprecated
    public void unRegister(IServiceClient iServiceClient) {
        ApiInvokeLog.logError(TAG, "unRegister, called wrong api, use unRegisterClient instead");
    }

    @Override
    public void unRegisterClient(String str) {
        if (TextUtils.isEmpty(str)) {
            ApiInvokeLog.logInfo(TAG, "unRegister sessionName == null ");
            return;
        }
        ApiIInterfaceProxy<IServiceClient> apiIInterfaceProxy = this.clientMap.get(str);
        if (apiIInterfaceProxy != null) {
            apiIInterfaceProxy.remove();
            this.clientMap.remove(str);
            ApiInvokeLog.logInfo(TAG, "unRegisterClient sessionName " + str);
        }
    }
}
