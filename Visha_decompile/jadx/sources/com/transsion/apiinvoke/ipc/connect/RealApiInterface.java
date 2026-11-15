package com.transsion.apiinvoke.ipc.connect;

import android.os.Bundle;
import android.os.RemoteException;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.invoke.TransformData;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.invoke.api.ApiInterface;
import com.transsion.apiinvoke.invoke.interceptor.InvokeInterceptor;
import com.transsion.apiinvoke.ipc.ICommonServiceInterface;
import com.transsion.apiinvoke.ipc.IRemoteCallback;
import com.transsion.apiinvoke.ipc.IRemoteInterceptor;
import com.transsion.apiinvoke.ipc.IServiceClient;
import com.transsion.apiinvoke.ipc.IServiceSession;
import com.transsion.apiinvoke.ipc.ParcelInvokeChain;
import com.transsion.apiinvoke.ipc.ParcelRequest;
import com.transsion.apiinvoke.ipc.ParcelResponse;
import com.transsion.apiinvoke.ipc.ParcelTransformData;
import com.transsion.apiinvoke.ipc.utils.ApiInvokeUtils;

public class RealApiInterface implements ApiInterface, ServiceClientInterface, CommonServiceInterfaceGet {
    public static final String OXYGENBUS_VERSION_KEY = "oxygenBusVersion";
    private static final String TAG = "RealApiInterface";
    private final String channelName;
    private Bundle extras;
    private final IRemoteInterceptor mRemoteInterceptor;
    private ApiIInterfaceProxy<ICommonServiceInterface> mServiceInterface;
    private String oxygenBusVersion;
    private boolean supportInvokeChain;
    private String supportServiceVersion;

    public static class ApiInvokeRemoteCallbackStub extends IRemoteCallback.Stub {
        private ApiCallback mCallback;

        @Override
        public void response(ParcelResponse parcelResponse) throws RemoteException {
            ApiInvokeLog.logInfo(RealApiInterface.TAG, "ApiInvokeRemoteCallbackStub, Receive response...");
            ApiCallback apiCallback = this.mCallback;
            if (apiCallback != null) {
                apiCallback.response(parcelResponse.getResponse());
            }
        }

        private ApiInvokeRemoteCallbackStub(ApiCallback apiCallback) {
            this.mCallback = apiCallback;
        }
    }

    public static class RemoteCallbackWrapper extends IRemoteCallback.Stub {
        ParcelResponse mResult;

        private RemoteCallbackWrapper() {
        }

        @Override
        public void response(ParcelResponse parcelResponse) throws RemoteException {
            this.mResult = parcelResponse;
        }
    }

    public RealApiInterface(ICommonServiceInterface iCommonServiceInterface, ApiIInterfaceProxy.Callback callback, InvokeInterceptor invokeInterceptor, Bundle bundle, String str) {
        this.oxygenBusVersion = "";
        this.mServiceInterface = new ApiIInterfaceProxy<>(iCommonServiceInterface, callback);
        this.mRemoteInterceptor = new LocalRemoteInterceptor(invokeInterceptor);
        this.channelName = str;
        try {
            this.extras = bundle;
            this.oxygenBusVersion = bundle != null ? bundle.getString(OXYGENBUS_VERSION_KEY, ApiInvokeUtils.DEFAULT_OXYGENBUS_VERSION) : ApiInvokeUtils.DEFAULT_OXYGENBUS_VERSION;
            this.supportServiceVersion = iCommonServiceInterface.getServiceVersion();
        } catch (Throwable unused) {
            ApiInvokeLog.logWarning(TAG, "get supportServiceVersion error, RemoteException");
            this.supportServiceVersion = ApiInvokeUtils.DEFAULT_OXYGENBUS_VERSION;
        }
        this.supportInvokeChain = supportInvokeChain();
        ApiInvokeLog.logInfo(TAG, "RealApiInterface create:: oxygenBusVersion " + this.oxygenBusVersion + " supportServiceVersion " + this.supportServiceVersion + " supportInvokeChain " + this.supportInvokeChain + " channelName " + this.channelName);
    }

    private synchronized IServiceSession getValidApiSessionService(String str) {
        if (!isBinderAlive()) {
            ApiInvokeLog.logInfo(TAG, "postToService isBinderAlive false");
            return null;
        }
        ICommonServiceInterface iCommonServiceInterface = (ICommonServiceInterface) this.mServiceInterface.getInterface();
        if (iCommonServiceInterface == null) {
            ApiInvokeLog.logWarning(TAG, "postToService serviceInterface == null");
            return null;
        }
        try {
            if (this.supportInvokeChain) {
                return iCommonServiceInterface.getSession(str);
            }
            ApiInvokeLog.logWarning(TAG, "getValidApiSessionService supportInvokeChain false");
            return null;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public ApiResponse apiInvoke(ApiRequest apiRequest, InvokeChain invokeChain) {
        ApiIInterfaceProxy<ICommonServiceInterface> apiIInterfaceProxy = this.mServiceInterface;
        if (apiIInterfaceProxy != null && apiIInterfaceProxy.isConnected()) {
            try {
                RemoteCallbackWrapper remoteCallbackWrapper = new RemoteCallbackWrapper();
                ICommonServiceInterface iCommonServiceInterface = (ICommonServiceInterface) this.mServiceInterface.getInterface();
                if (this.supportInvokeChain ? iCommonServiceInterface.serviceCallWithChain(new ParcelRequest(apiRequest), new ParcelInvokeChain(invokeChain), remoteCallbackWrapper) : iCommonServiceInterface.serviceCall(new ParcelRequest(apiRequest), remoteCallbackWrapper)) {
                    ParcelResponse parcelResponse = remoteCallbackWrapper.mResult;
                    return parcelResponse == null ? ApiResponse.success(null) : parcelResponse.getResponse();
                }
            } catch (Exception e) {
                e.printStackTrace();
                return ApiResponse.knowError(apiRequest.getApiName(), apiRequest.getApiMethod(), e);
            }
        }
        return ApiResponse.serviceConnectFault(apiRequest.getApiName());
    }

    @Override
    public void apiInvokeAsync(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback) {
        ApiIInterfaceProxy<ICommonServiceInterface> apiIInterfaceProxy = this.mServiceInterface;
        if (apiIInterfaceProxy == null || !apiIInterfaceProxy.isConnected()) {
            return;
        }
        try {
            ICommonServiceInterface iCommonServiceInterface = (ICommonServiceInterface) this.mServiceInterface.getInterface();
            ApiInvokeRemoteCallbackStub apiInvokeRemoteCallbackStub = new ApiInvokeRemoteCallbackStub(apiCallback);
            if (this.supportInvokeChain) {
                iCommonServiceInterface.serviceCallWithChain(new ParcelRequest(apiRequest), new ParcelInvokeChain(invokeChain), apiInvokeRemoteCallbackStub);
            } else {
                iCommonServiceInterface.serviceCall(new ParcelRequest(apiRequest), apiInvokeRemoteCallbackStub);
            }
        } catch (Exception unused) {
            if (apiCallback != null) {
                apiCallback.response(ApiResponse.invokeRemoteError(apiRequest.getApiName(), apiRequest.getApiMethod()));
            }
        }
    }

    @Override
    public ICommonServiceInterface getInterface() {
        ApiIInterfaceProxy<ICommonServiceInterface> apiIInterfaceProxy = this.mServiceInterface;
        if (apiIInterfaceProxy != null) {
            return (ICommonServiceInterface) apiIInterfaceProxy.getInterface();
        }
        return null;
    }

    public boolean isBinderAlive() {
        ApiIInterfaceProxy<ICommonServiceInterface> apiIInterfaceProxy = this.mServiceInterface;
        return apiIInterfaceProxy != null && apiIInterfaceProxy.isConnected();
    }

    public void onDestroy() {
        ApiInvokeLog.logWarning(TAG, "onDestroy");
        if (this.mServiceInterface != null) {
            this.mServiceInterface = null;
        }
    }

    @Override
    public boolean postToService(String str, TransformData transformData, ApiCallback apiCallback) {
        try {
            if (!this.supportInvokeChain) {
                ApiInvokeLog.logInfo(TAG, "service version not support  postToService channelName " + this.channelName);
                return false;
            }
            IServiceSession validApiSessionService = getValidApiSessionService(str);
            ApiInvokeLog.logInfo(TAG, "postToService serviceSession " + validApiSessionService + " channelName " + this.channelName);
            if (validApiSessionService != null) {
                return validApiSessionService.postClientData(new ParcelTransformData(transformData), new ParcelInvokeChain(InvokeChain.obtain().autoChain(this.channelName)), new ApiInvokeRemoteCallbackStub(apiCallback));
            }
            return false;
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean registerClient(String str, IServiceClient iServiceClient) {
        try {
            if (this.supportInvokeChain) {
                IServiceSession validApiSessionService = getValidApiSessionService(str);
                if (validApiSessionService != null) {
                    return validApiSessionService.register(iServiceClient, new ParcelInvokeChain(InvokeChain.obtain().autoChain(this.channelName)));
                }
                return false;
            }
            ApiInvokeLog.logInfo(TAG, "registerClient service version not support serviceChannel " + str);
            return false;
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean supportInvokeChain() {
        return ApiInvokeUtils.compareVersion(this.supportServiceVersion, ApiInvokeUtils.DEFAULT_OXYGENBUS_VERSION) >= 0 && ApiInvokeUtils.compareVersion(this.oxygenBusVersion, ApiInvokeUtils.DEFAULT_OXYGENBUS_VERSION) >= 0;
    }

    @Override
    public void unRegisterClient(String str, IServiceClient iServiceClient) {
        try {
            if (this.supportInvokeChain) {
                IServiceSession validApiSessionService = getValidApiSessionService(str);
                if (validApiSessionService != null) {
                    validApiSessionService.unRegister(iServiceClient);
                    return;
                }
                return;
            }
            ApiInvokeLog.logInfo(TAG, "unRegisterClient service version not support  serviceChannel " + str);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
