package com.transsion.apiinvoke.ipc.connect;

import android.os.RemoteException;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.invoke.interceptor.InterceptorManager;
import com.transsion.apiinvoke.ipc.ICommonServiceInterface;
import com.transsion.apiinvoke.ipc.IRemoteCallback;
import com.transsion.apiinvoke.ipc.IServiceSession;
import com.transsion.apiinvoke.ipc.ParcelInvokeChain;
import com.transsion.apiinvoke.ipc.ParcelRequest;
import com.transsion.apiinvoke.ipc.ParcelResponse;
import com.transsion.apiinvoke.ipc.session.server.ISServiceAcceptor;
import com.transsion.apiinvoke.ipc.session.server.SessionServer;

public abstract class CommonServiceInterfaceStub extends ICommonServiceInterface.Stub {
    private static final String TAG = "CommonServiceInterfaceStub";

    public static class RemoteCallbackWrapper implements ApiCallback {
        private IRemoteCallback mCallback;

        @Override
        public void response(ApiResponse apiResponse) {
            try {
                IRemoteCallback iRemoteCallback = this.mCallback;
                if (iRemoteCallback != null) {
                    iRemoteCallback.response(new ParcelResponse(apiResponse));
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        private RemoteCallbackWrapper(IRemoteCallback iRemoteCallback) {
            this.mCallback = iRemoteCallback;
        }
    }

    public abstract void doInvokeApi(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback);

    @Override
    public String getServiceVersion() {
        return ApiInvokeLog.VERSION;
    }

    @Override
    public IServiceSession getSession(String str) {
        ISServiceAcceptor acceptor = SessionServer.getInstance().getAcceptor(str);
        if (acceptor != null) {
            return acceptor.sessionService();
        }
        return null;
    }

    @Override
    public boolean serviceCall(ParcelRequest parcelRequest, IRemoteCallback iRemoteCallback) {
        doInvokeApi(parcelRequest.getRequest(), null, new RemoteCallbackWrapper(iRemoteCallback));
        return true;
    }

    @Override
    public boolean serviceCallWithChain(ParcelRequest parcelRequest, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) {
        ApiRequest request = parcelRequest.getRequest();
        try {
            InvokeChain invokeChain = parcelInvokeChain.invokeChain();
            ApiResponse apiResponseProcessChainV2 = InterceptorManager.getInstance().processChainV2(invokeChain);
            String routerUri = request.getRouterUri();
            if (apiResponseProcessChainV2.isSuccess()) {
                ApiInvokeLog.logInfo(TAG, "serviceCall processChain = true; routerUri" + routerUri);
                doInvokeApi(request, invokeChain, new RemoteCallbackWrapper(iRemoteCallback));
            } else {
                ApiInvokeLog.logInfo(TAG, "serviceCall onRequestRemotePrevent routerUri" + routerUri);
                if (iRemoteCallback != null) {
                    iRemoteCallback.response(new ParcelResponse(apiResponseProcessChainV2.applyMsg(routerUri)));
                }
            }
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override
    public void updateApiSwitchConfig(String str) throws RemoteException {
        ApiInvokeLog.logWarning(TAG, "updateApiSwitchConfig config = " + str);
    }
}
