package com.transsion.apiinvoke.ipc.connect;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.transsion.apiinvoke.channel.ApiChannel;
import com.transsion.apiinvoke.channel.LocalChannel;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.common.router.ApiRouterManager;
import com.transsion.apiinvoke.invoke.ApiMethodException;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.invoke.api.ApiCallback;

public class CommonRouterApiService extends Service {
    private static final String TAG = "CommonRouterApiService";
    protected final CommonServiceInterfaceStub binder = new CommonServiceInterfaceStub() {
        @Override
        public void doInvokeApi(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback) {
            CommonRouterApiService.this.onInvokeApiASync(apiRequest, invokeChain, apiCallback);
        }
    };

    @Override
    public IBinder onBind(Intent intent) {
        ApiInvokeLog.logWarning(TAG, "onBind call");
        ApiRouterManager.getInstance();
        ApiRouterManager.listRegisterServer();
        return this.binder;
    }

    @Override
    public void onDestroy() {
        ApiInvokeLog.logWarning(TAG, "onDestroy call");
        super.onDestroy();
    }

    public void onInvokeApiASync(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback) {
        try {
            LocalChannel localChannelFindLocalChannel = ApiChannel.getInstance().findLocalChannel(apiRequest.getChannelName());
            if (invokeChain == null) {
                ApiInvokeLog.logInfo(TAG, "onInvokeApiASync " + apiRequest.getRouterUri());
                localChannelFindLocalChannel.invokeApiAsync(apiRequest, InvokeChain.obtain(), apiCallback);
                return;
            }
            if (localChannelFindLocalChannel == null) {
                apiCallback.response(ApiResponse.channelNotFound(apiRequest.getChannelName(), apiRequest.getApiName()));
                return;
            }
            ApiInvokeLog.logInfo(TAG, "onInvokeApiASync with chain " + apiRequest.getRouterUri());
            localChannelFindLocalChannel.invokeApiAsync(apiRequest, invokeChain, apiCallback);
        } catch (ApiMethodException unused) {
            if (apiCallback != null) {
                apiCallback.response(ApiResponse.onError(401, "error invoke target " + apiRequest));
            }
        }
    }

    @Override
    public boolean onUnbind(Intent intent) {
        ApiInvokeLog.logWarning(TAG, "onUnbind call");
        return super.onUnbind(intent);
    }
}
