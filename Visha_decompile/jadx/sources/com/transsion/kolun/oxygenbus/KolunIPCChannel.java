package com.transsion.kolun.oxygenbus;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.invoke.InvokePath;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.invoke.api.ApiInterface;
import com.transsion.apiinvoke.invoke.api.ApiPublisher;
import com.transsion.apiinvoke.invoke.api.InvokeChannel;
import com.transsion.apiinvoke.invoke.interceptor.InterceptorManager;
import com.transsion.apiinvoke.invoke.interceptor.InvokeInterceptor;
import com.transsion.apiinvoke.ipc.APISubscribeCenter;
import com.transsion.apiinvoke.ipc.ApiServiceConnect;
import com.transsion.apiinvoke.ipc.IRemoteInterceptor;
import com.transsion.apiinvoke.ipc.ParcelInvokeChain;
import com.transsion.apiinvoke.ipc.ParcelPublishData;
import com.transsion.apiinvoke.ipc.connect.ApiIInterfaceProxy;
import com.transsion.apiinvoke.ipc.connect.IRemoteConnection;
import com.transsion.apiinvoke.ipc.connect.LocalRemoteInterceptor;
import com.transsion.apiinvoke.ipc.connect.RealApiInterface;
import com.transsion.apiinvoke.ipc.session.client.SessionClient;
import com.transsion.apiinvoke.ipc.utils.ApiInvokeUtils;
import com.transsion.apiinvoke.subscribe.PublishData;
import com.transsion.apiinvoke.subscribe.Publisher;
import com.transsion.kolun.oxygenbus.KolunIPCChannel;
import com.transsion.kolun.oxygenbus.common.ApiAsyncUtils;
import com.transsion.kolun.oxygenbus.common.ApiAyncRunnable;
import com.transsion.kolun.oxygenbus.common.OxygenBusUtils;
import com.transsion.kolun.oxygenbus.common.RealRemoteConnection;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;

public class KolunIPCChannel implements InvokeChannel, RealRemoteConnection.OnConnectChangeListener {
    private static final long CONNECT_WAIT_TIME = 200;
    private static final int MAX_RETRY_TIMES = 6;
    private static final String TAG = "KolunIPCChannel";
    private static ApiIInterfaceProxy<IOxygenBusServer> oxygenBusServer;
    private final Runnable disconnectRunnable;
    private final RemoteApiPublisher mApiPublisher;
    private final OxygenBusRemoteConnection mBusRemoteConnection;
    private final String mChannelName;
    private final Context mContext;
    private final RealRemoteConnection realRemoteConnection;

    public static abstract class IPCOnConnectChangeListener implements RealRemoteConnection.OnConnectChangeListener {
        private final WeakReference<ApiCallback> refCallback;

        public IPCOnConnectChangeListener(ApiCallback apiCallback) {
            this.refCallback = new WeakReference<>(apiCallback);
        }

        public ApiCallback getCallback() {
            return this.refCallback.get();
        }
    }

    public static final class OxygenBusRemoteConnection implements IRemoteConnection<String> {
        private String channelName;
        private Set<String> connecting = new HashSet();
        private final RealRemoteConnection mConnection;

        public OxygenBusRemoteConnection(RealRemoteConnection realRemoteConnection) {
            this.mConnection = realRemoteConnection;
            this.channelName = realRemoteConnection.channelName();
        }

        private boolean bindServiceAsync(Context context, String str, int i, int i2) {
            boolean zIsConnect = ApiServiceConnect.getInstance().isConnect(str);
            if (zIsConnect || i >= i2) {
                this.connecting.remove(str);
                ApiInvokeLog.logWarning(KolunIPCChannel.TAG, zIsConnect ? "bindServiceAsync already connected... " : "bindServiceAsync timeout... ");
                return zIsConnect;
            }
            ApiIInterfaceProxy oxygenBusServer = KolunIPCChannel.getOxygenBusServer(context);
            if (oxygenBusServer != null && oxygenBusServer.isConnected()) {
                if (checkConnect(str)) {
                    ApiInvokeLog.logInfo(KolunIPCChannel.TAG, "bindServiceAsync already connected channelName " + str);
                    return true;
                }
                if (!this.connecting.contains(str)) {
                    this.connecting.add(str);
                    try {
                        ApiInvokeLog.logInfo(KolunIPCChannel.TAG, "bindServiceAsync start channelName = " + str);
                        IOxygenBusServer iOxygenBusServer = (IOxygenBusServer) oxygenBusServer.getInterface();
                        if (iOxygenBusServer != null) {
                            boolean zBindRemoteServer = iOxygenBusServer.bindRemoteServer(str, new Bundle(), this.mConnection);
                            ApiInvokeLog.logInfo(KolunIPCChannel.TAG, "bindServiceAsync end channelName " + str + " bindRemoteServer success " + zBindRemoteServer);
                            if (zBindRemoteServer) {
                                return checkConnect(str);
                            }
                        }
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
            try {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    Thread.sleep(200L);
                } else {
                    Thread.sleep(400L);
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            } catch (Throwable th) {
                throw th;
            }
            int i3 = i + 1;
            StringBuilder sb = new StringBuilder();
            sb.append("bindServiceAsync currentTimes = ");
            sb.append(i3);
            sb.append(" isMainLooper ");
            sb.append(Looper.myLooper() == Looper.getMainLooper());
            ApiInvokeLog.logWarning(KolunIPCChannel.TAG, sb.toString());
            if (!isConnected()) {
                return bindServiceAsync(context, str, i3, i2);
            }
            this.connecting.remove(str);
            ApiInvokeLog.logInfo(KolunIPCChannel.TAG, "bindServiceAsync isConnected currentTimes = " + i3);
            return true;
        }

        private boolean checkConnect(String str) {
            if (!isConnected()) {
                return false;
            }
            ApiInvokeLog.logInfo(KolunIPCChannel.TAG, "bindServiceAsync already connected " + str);
            this.connecting.remove(str);
            return true;
        }

        @Override
        public boolean bindRemoteSync(Context context) {
            return bindServiceAsync(context, this.channelName, 0, 6);
        }

        @Override
        public SessionClient getSession() {
            return null;
        }

        @Override
        public boolean isConnected() {
            return KolunIPCChannel.isRealConnected(this.mConnection);
        }

        @Override
        public boolean isConnecting() {
            return this.connecting.contains(this.channelName);
        }

        @Override
        public void unbindRemote(Context context) {
            ApiIInterfaceProxy oxygenBusServer = KolunIPCChannel.getOxygenBusServer(context);
            if (oxygenBusServer != null) {
                try {
                    IOxygenBusServer iOxygenBusServer = (IOxygenBusServer) oxygenBusServer.getInterface();
                    if (iOxygenBusServer != null) {
                        iOxygenBusServer.disconnectChannel(this.channelName);
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("unbindRemote channelName ");
            sb.append(this.channelName);
            sb.append(" oxygenBus connected: ");
            sb.append(oxygenBusServer != null);
            ApiInvokeLog.logWarning(KolunIPCChannel.TAG, sb.toString());
        }

        @Override
        public RealApiInterface getServiceInterface() {
            if (KolunIPCChannel.isRealConnected(this.mConnection)) {
                return this.mConnection.getRealApiInterface();
            }
            return null;
        }

        @Override
        public String remoteDesc() {
            return this.channelName;
        }
    }

    public static class RemoteApiPublisher implements ApiPublisher {
        private final Context mContext;
        private final IRemoteInterceptor mRemoteInterceptor;
        private String subscribeCenterVersion;

        public RemoteApiPublisher(Context context, InvokeInterceptor invokeInterceptor) {
            this.mContext = context;
            this.mRemoteInterceptor = new LocalRemoteInterceptor(invokeInterceptor);
        }

        private void appendChain(InvokeChain invokeChain, Publisher publisher) {
            invokeChain.put(InvokePath.createPublish(publisher.getChannel(), publisher.host.apiName, publisher.matcher));
        }

        private synchronized boolean subscribeCenterSupportChain(APISubscribeCenter aPISubscribeCenter) {
            String str;
            if (aPISubscribeCenter == null) {
                return false;
            }
            String str2 = this.subscribeCenterVersion;
            if (str2 != null && !"".equals(str2)) {
                str = this.subscribeCenterVersion;
                if (str != null) {
                }
                return false;
            }
            try {
                this.subscribeCenterVersion = aPISubscribeCenter.getServiceVersion();
            } catch (Throwable unused) {
                ApiInvokeLog.logInfo(KolunIPCChannel.TAG, "subscribeCenterSupportChain getServiceVersion error ");
            }
            str = this.subscribeCenterVersion;
            if (str != null || "".equals(str)) {
                return false;
            }
            return ApiInvokeUtils.compareVersion(this.subscribeCenterVersion, ApiInvokeUtils.DEFAULT_OXYGENBUS_VERSION) > 0;
            throw th;
        }

        @Override
        public void publishData(Publisher publisher, InvokeChain invokeChain, Serializable serializable) {
            ISubscribeBusServer subscribeServer = OxygenBusService.getSubscribeServer(this.mContext);
            if (subscribeServer == null) {
                return;
            }
            try {
                APISubscribeCenter subscribeCenter = subscribeServer.getSubscribeCenter();
                if (subscribeCenter == null) {
                    ApiInvokeLog.logWarning(KolunIPCChannel.TAG, "subscribeCenter == NULL");
                    return;
                }
                PublishData publishDataCreate = PublishData.create(publisher, serializable);
                if (!subscribeCenterSupportChain(subscribeCenter)) {
                    subscribeCenter.onPublishData(new ParcelPublishData(publishDataCreate));
                } else {
                    appendChain(invokeChain, publisher);
                    subscribeCenter.onSafePublishData(new ParcelPublishData(publishDataCreate), new ParcelInvokeChain(invokeChain), this.mRemoteInterceptor);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public KolunIPCChannel(Context context, String str) {
        this.mContext = context;
        this.mChannelName = str;
        InterceptorManager interceptorManager = InterceptorManager.getInstance();
        RealRemoteConnection realRemoteConnection = new RealRemoteConnection(str, interceptorManager);
        this.realRemoteConnection = realRemoteConnection;
        realRemoteConnection.listen(this);
        this.mBusRemoteConnection = new OxygenBusRemoteConnection(realRemoteConnection);
        this.mApiPublisher = new RemoteApiPublisher(context, interceptorManager);
        this.disconnectRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
    }

    private ApiInterface connectApiInterfaceOnce() {
        ApiInvokeLog.logInfo(TAG, "tryConnectApiInterface, connect second time ");
        connectChannel();
        ApiInterface apiInterfaceWaitApiInterfaceConnect = waitApiInterfaceConnect(0, 6);
        StringBuilder sb = new StringBuilder();
        sb.append("tryConnectApiInterface, connect success ");
        sb.append(apiInterfaceWaitApiInterfaceConnect != null);
        ApiInvokeLog.logInfo(TAG, sb.toString());
        return apiInterfaceWaitApiInterfaceConnect;
    }

    public static synchronized ApiIInterfaceProxy<IOxygenBusServer> getOxygenBusServer(Context context) {
        IOxygenBusServer oxygenBusServer2;
        try {
            if (oxygenBusServer == null && (oxygenBusServer2 = OxygenBusService.getOxygenBusServer(context)) != null) {
                oxygenBusServer = new ApiIInterfaceProxy<>(oxygenBusServer2, new ApiIInterfaceProxy.Callback() {
                    @Override
                    public final void binderDied() {
                        KolunIPCChannel.oxygenBusServer = null;
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
        return oxygenBusServer;
    }

    public static boolean isRealConnected(RealRemoteConnection realRemoteConnection) {
        RealApiInterface realApiInterface = realRemoteConnection.getRealApiInterface();
        return realApiInterface != null && realApiInterface.isBinderAlive();
    }

    public void lambda$requestAsync$1(boolean z, final ApiCallback apiCallback, final ApiResponse apiResponse) {
        ApiInvokeLog.logInfo(TAG, "ApiCallback ApiAyncRunnable run in main: " + z);
        if (z) {
            OxygenBusUtils.postRunnable(new ApiAyncRunnable() {
                @Override
                public void run() {
                    ApiCallback apiCallback2 = apiCallback;
                    if (apiCallback2 != null) {
                        apiCallback2.response(apiResponse);
                    }
                }
            });
        } else if (apiCallback != null) {
            apiCallback.response(apiResponse);
        }
    }

    private void postDisconnectDelay(long j) {
        if (j < 0) {
            OxygenBusUtils.removeRunnable(this.disconnectRunnable);
        } else {
            OxygenBusUtils.removeRunnable(this.disconnectRunnable);
            OxygenBusUtils.postRunnable(this.disconnectRunnable, j);
        }
    }

    public void requestAsync(ApiInterface apiInterface, ApiRequest apiRequest, InvokeChain invokeChain, final ApiCallback apiCallback, final boolean z) {
        invokeChain.autoRequest(apiRequest.getChannelName(), apiRequest.getApiName(), apiRequest.getApiMethod());
        apiInterface.apiInvokeAsync(apiRequest, invokeChain, new ApiCallback() {
            @Override
            public final void response(ApiResponse apiResponse) {
                this.a.lambda$requestAsync$1(z, apiCallback, apiResponse);
            }
        });
    }

    public void tryAsyncConnectApiInterface(RealRemoteConnection.OnConnectChangeListener onConnectChangeListener) {
        ApiInterface apiInterface = getApiInterface();
        if (isConnected(apiInterface)) {
            if (onConnectChangeListener != null) {
                onConnectChangeListener.onConnected(apiInterface, this.mChannelName);
                return;
            }
            return;
        }
        this.realRemoteConnection.listen(onConnectChangeListener);
        ApiInvokeLog.logWarning(TAG, "tryAsyncConnectApiInterface, connectRemote success " + ApiServiceConnect.getInstance().connectRemote(this.mContext, this.mBusRemoteConnection) + " channelName " + this.mChannelName);
    }

    private ApiInterface tryConnectApiInterface() {
        ApiInterface apiInterface = getApiInterface();
        if (!isConnected(apiInterface)) {
            ApiInvokeLog.logInfo(TAG, "tryConnectApiInterface, try connect once");
            apiInterface = connectApiInterfaceOnce();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("tryConnectApiInterface connect success ");
        sb.append(apiInterface != null);
        ApiInvokeLog.logInfo(TAG, sb.toString());
        return apiInterface;
    }

    private ApiInterface waitApiInterfaceConnect(int i, int i2) {
        if (i >= i2) {
            ApiInvokeLog.logWarning(TAG, "waitApiInterfaceConnect timeout retryTimes " + i2);
            return null;
        }
        ApiInterface apiInterface = getApiInterface();
        ApiInvokeLog.logWarning(TAG, "waitApiInterfaceConnect currentTimes " + i);
        if (apiInterface == null) {
            try {
                Thread.sleep(30L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            apiInterface = getApiInterface();
            if (apiInterface == null) {
                return waitApiInterfaceConnect(i + 1, i2);
            }
            ApiInvokeLog.logInfo(TAG, "waitApiInterfaceConnect getApiInterface success times=" + i);
        }
        return apiInterface;
    }

    @Override
    public void connectChannel() {
        ApiInvokeLog.logWarning(TAG, "connectChannel " + this.mChannelName);
        boolean zConnectRemote = ApiServiceConnect.getInstance().connectRemote(this.mContext, this.mBusRemoteConnection);
        if (!zConnectRemote) {
            this.realRemoteConnection.onDisconnected(this.mChannelName);
        }
        ApiInvokeLog.logInfo(TAG, "connectChannel, bindServiceAsync  success " + zConnectRemote);
    }

    @Override
    public void lambda$new$0() {
        ApiInvokeLog.logInfo(TAG, "disconnectChannel, mChannelName " + this.mChannelName);
        ApiServiceConnect.getInstance().disConnect(this.mContext, this.mChannelName);
    }

    @Override
    public ApiInterface getApiInterface() {
        if (!isConnected()) {
            ApiInvokeLog.logWarning(TAG, "getApiInterface isBinderAlive == false");
        }
        return this.realRemoteConnection.getRealApiInterface();
    }

    @Override
    public ApiPublisher<? extends Serializable> getApiPublisher(Publisher.Host host) {
        return this.mApiPublisher;
    }

    @Override
    public ApiResponse invokeApi(ApiRequest apiRequest, InvokeChain invokeChain) {
        ApiInvokeLog.logWarning(TAG, "invokeApi " + apiRequest.getRouterUri());
        ApiInterface apiInterfaceTryConnectApiInterface = tryConnectApiInterface();
        if (apiInterfaceTryConnectApiInterface == null) {
            return ApiResponse.channelNotConnect(this.mChannelName);
        }
        invokeChain.autoRequest(apiRequest.getChannelName(), apiRequest.getApiName(), apiRequest.getApiMethod());
        ApiResponse apiResponseApiInvoke = apiInterfaceTryConnectApiInterface.apiInvoke(apiRequest, invokeChain);
        postDisconnectDelay(apiRequest.livingTime());
        return apiResponseApiInvoke;
    }

    @Override
    public void invokeApiAsync(final ApiRequest apiRequest, final InvokeChain invokeChain, final ApiCallback apiCallback) {
        ApiInvokeLog.logWarning(TAG, "invokeApiAsync " + apiRequest.getRouterUri() + " livingTime " + apiRequest.keepLiving());
        ApiAsyncUtils.submit(new ApiAyncRunnable() {
            @Override
            public void run() {
                super.run();
                KolunIPCChannel.this.tryAsyncConnectApiInterface(new IPCOnConnectChangeListener(apiCallback) {
                    @Override
                    public void onConnected(ApiInterface apiInterface, String str) {
                        KolunIPCChannel.this.realRemoteConnection.unListen(this);
                        ApiCallback callback = getCallback();
                        StringBuilder sb = new StringBuilder();
                        sb.append("invokeApiAsync, onConnected ");
                        sb.append(str);
                        sb.append(" has callback ");
                        sb.append(callback != null);
                        ApiInvokeLog.logInfo(KolunIPCChannel.TAG, sb.toString());
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        KolunIPCChannel.this.requestAsync(apiInterface, apiRequest, invokeChain, callback, anonymousClass1.isMainThreadCall);
                    }

                    @Override
                    public void onDisconnected(final String str) {
                        KolunIPCChannel.this.realRemoteConnection.unListen(this);
                        final ApiCallback callback = getCallback();
                        ApiInvokeLog.logInfo(KolunIPCChannel.TAG, "onDisconnected ApiAyncRunnable run in main: " + AnonymousClass1.this.isMainThreadCall);
                        if (AnonymousClass1.this.isMainThreadCall) {
                            OxygenBusUtils.postRunnable(new ApiAyncRunnable() {
                                @Override
                                public void run() {
                                    ApiCallback apiCallback2 = callback;
                                    if (apiCallback2 != null) {
                                        apiCallback2.response(ApiResponse.channelConnectFault(str));
                                    }
                                }
                            });
                        } else if (callback != null) {
                            callback.response(ApiResponse.channelConnectFault(str));
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("invokeApiAsync, onDisconnected ");
                        sb.append(str);
                        sb.append(" has callback ");
                        sb.append(callback != null);
                        ApiInvokeLog.logInfo(KolunIPCChannel.TAG, sb.toString());
                    }
                });
            }
        });
        postDisconnectDelay(apiRequest.livingTime());
    }

    public boolean isConnected() {
        RealApiInterface realApiInterface = this.realRemoteConnection.getRealApiInterface();
        return realApiInterface != null && realApiInterface.isBinderAlive();
    }

    @Override
    public boolean isInChannel(String str) {
        String strFindChannel;
        ApiIInterfaceProxy<IOxygenBusServer> oxygenBusServer2 = getOxygenBusServer(this.mContext);
        if (oxygenBusServer2 == null || !oxygenBusServer2.isConnected()) {
            return false;
        }
        try {
            IOxygenBusServer iOxygenBusServer = (IOxygenBusServer) oxygenBusServer2.getInterface();
            if (iOxygenBusServer != null && (strFindChannel = iOxygenBusServer.findChannel(str)) != null) {
                "".equals(strFindChannel);
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override
    public void onConnected(ApiInterface apiInterface, String str) {
        if (TextUtils.equals(this.mChannelName, str)) {
            ApiInvokeLog.logInfo(TAG, "onConnected channelName=" + str);
        }
    }

    @Override
    public void onDisconnected(String str) {
        if (TextUtils.equals(this.mChannelName, str)) {
            ApiInvokeLog.logInfo(TAG, "onDisconnected channelName=" + str);
        }
    }

    public static boolean isConnected(ApiInterface apiInterface) {
        if (apiInterface != null && (apiInterface instanceof RealApiInterface)) {
            return ((RealApiInterface) apiInterface).isBinderAlive();
        }
        return false;
    }
}
