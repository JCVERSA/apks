package com.transsion.apiinvoke.ipc.connect;

import android.os.RemoteException;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.interceptor.InvokeInterceptor;
import com.transsion.apiinvoke.invoke.interceptor.InvokeInterceptor2;
import com.transsion.apiinvoke.ipc.IRemoteInterceptor;
import com.transsion.apiinvoke.ipc.ParcelInvokeChain;
import com.transsion.apiinvoke.ipc.ParcelResponse;

public class LocalRemoteInterceptor extends IRemoteInterceptor.Stub {
    private static final String TAG = "LocalRemoteInterceptor";
    private InvokeInterceptor interceptor;
    private InvokeInterceptor2 interceptorV2;
    private ParcelResponse responseEmpty;

    public LocalRemoteInterceptor(InvokeInterceptor invokeInterceptor) {
        this.interceptor = invokeInterceptor;
    }

    @Override
    public boolean processChain(ParcelInvokeChain parcelInvokeChain) throws RemoteException {
        if (parcelInvokeChain == null || this.interceptor == null) {
            ApiInvokeLog.logWarning(TAG, "processChain or interceptor == null ");
            return true;
        }
        ApiInvokeLog.logInfo(TAG, "processChain >> " + parcelInvokeChain.invokeChain());
        return this.interceptor.processChain(parcelInvokeChain.invokeChain());
    }

    @Override
    public ParcelResponse processChainV2(ParcelInvokeChain parcelInvokeChain) throws RemoteException {
        if (parcelInvokeChain == null || this.interceptorV2 == null) {
            ApiInvokeLog.logWarning(TAG, "processChain or interceptorV2 == null ");
            return this.responseEmpty;
        }
        ApiInvokeLog.logInfo(TAG, "processChainV2 >> " + parcelInvokeChain.invokeChain());
        ApiResponse apiResponseProcessChainV2 = this.interceptorV2.processChainV2(parcelInvokeChain.invokeChain());
        if (apiResponseProcessChainV2 == null) {
            apiResponseProcessChainV2 = ApiResponse.empty(503);
        }
        return new ParcelResponse(apiResponseProcessChainV2);
    }

    public LocalRemoteInterceptor(InvokeInterceptor2 invokeInterceptor2) {
        this.interceptorV2 = invokeInterceptor2;
        this.responseEmpty = new ParcelResponse(ApiResponse.success(Boolean.TRUE));
    }
}
