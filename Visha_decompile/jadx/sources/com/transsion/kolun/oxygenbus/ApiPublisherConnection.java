package com.transsion.kolun.oxygenbus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.apiinvoke.ipc.RemoteApiPublisherStub;
import com.transsion.apiinvoke.subscribe.SubscribeManager;
import com.transsion.kolun.oxygenbus.common.OxygenBusUtils;

public class ApiPublisherConnection {
    private static final int CONNECTION_DURING = 5000;
    private static final int MAX_RETRY_TIMES = 30;
    private static final String TAG = "ApiPublisherConnection";
    private int currentTimes;
    private final ScreenActionReceiver mActionReceiver;
    private final Handler mHandler;
    private Runnable mRetryRunning;
    private APIPublisherRegister publisherRegister;
    private final Runnable registerRemoteRunnable;
    private final Runnable unRegisterRemoteRunnable;

    public class APIPublisherRegister {
        private String channelName;
        private Context context;
        private ProcessInfo processInfo;
        private RemoteApiPublisherStub publisherStub;
        private boolean remoteRegistered;

        public void lambda$loopRegisterRemoteSubscribeStub$0() {
            if (ApiPublisherConnection.this.currentTimes > 30) {
                if (ApiPublisherConnection.this.mRetryRunning != null && ApiPublisherConnection.this.mHandler != null) {
                    ApiPublisherConnection.this.mHandler.removeCallbacks(ApiPublisherConnection.this.mRetryRunning);
                }
                ApiPublisherConnection.this.currentTimes = 0;
                ApiInvokeLog.logWarning(ApiPublisherConnection.TAG, "registerRemoteSubscribeStub timeOut ");
                return;
            }
            ApiPublisherConnection.access$1108(ApiPublisherConnection.this);
            boolean zRegisterRemoteSubscribe = registerRemoteSubscribe();
            ApiInvokeLog.logWarning(ApiPublisherConnection.TAG, "registerRemoteSubscribeStub currentTimes " + ApiPublisherConnection.this.currentTimes + " success " + zRegisterRemoteSubscribe);
            if (zRegisterRemoteSubscribe) {
                if (ApiPublisherConnection.this.mRetryRunning != null && ApiPublisherConnection.this.mHandler != null) {
                    ApiPublisherConnection.this.mHandler.removeCallbacks(ApiPublisherConnection.this.mRetryRunning);
                }
                ApiPublisherConnection.this.currentTimes = 0;
                return;
            }
            if (ApiPublisherConnection.this.mRetryRunning == null) {
                ApiPublisherConnection.this.mRetryRunning = new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$loopRegisterRemoteSubscribeStub$0();
                    }
                };
            }
            if (ApiPublisherConnection.this.mHandler != null) {
                ApiPublisherConnection.this.mHandler.postDelayed(ApiPublisherConnection.this.mRetryRunning, 5000L);
            }
        }

        private void registerAPIPublisher(ISubscribeBusServer iSubscribeBusServer, String str, String str2) throws RemoteException {
            if (this.publisherStub == null) {
                this.publisherStub = new RemoteApiPublisherStub();
            }
            iSubscribeBusServer.registerSubscribeManager(str, str2, this.publisherStub);
            try {
                Thread.sleep(20L);
            } catch (InterruptedException unused) {
            }
        }

        public boolean registerRemoteSubscribe() {
            ISubscribeBusServer subscribeServer = OxygenBusService.getSubscribeServer(this.context);
            if (subscribeServer == null) {
                ApiInvokeLog.logInfo(ApiPublisherConnection.TAG, "registerRemoteSubscribeStub == null");
                return false;
            }
            ProcessInfo processInfo = this.processInfo;
            if (processInfo == null || TextUtils.isEmpty(processInfo.process())) {
                ApiInvokeLog.logWarning(ApiPublisherConnection.TAG, "registerRemoteSubscribeStub processName == NULL");
                return false;
            }
            String string = this.processInfo.toString();
            try {
                registerAPIPublisher(subscribeServer, string, this.channelName);
                this.remoteRegistered = true;
                ApiInvokeLog.logWarning(ApiPublisherConnection.TAG, "registerRemoteSubscribeStub success " + string + " >> " + this.channelName);
                return true;
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }

        public boolean remoteRegistered() {
            return this.remoteRegistered;
        }

        public void unRegisterRemoteSubscribe() {
            this.remoteRegistered = false;
            try {
                ApiPublisherConnection.this.publisherRegister.unRegisterRemoteSubscribeStub();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            ApiInvokeLog.logWarning(ApiPublisherConnection.TAG, "unRegisterRemoteSubscribe finish");
        }

        public void unRegisterRemoteSubscribeStub() throws RemoteException {
            ISubscribeBusServer subscribeServer = OxygenBusService.getSubscribeServer(this.context);
            if (subscribeServer == null) {
                ApiInvokeLog.logInfo(ApiPublisherConnection.TAG, "registerRemoteSubscribeStub == NULL");
                return;
            }
            ProcessInfo processInfo = this.processInfo;
            if (processInfo == null || TextUtils.isEmpty(processInfo.process())) {
                ApiInvokeLog.logWarning(ApiPublisherConnection.TAG, "unRegisterRemoteSubscribeStub processName == NULL");
                return;
            }
            String str = this.channelName;
            if (str == null || "".equals(str)) {
                this.channelName = this.processInfo.process();
            }
            ApiInvokeLog.logWarning(ApiPublisherConnection.TAG, "unRegisterRemoteSubscribeStub processInfo = " + this.processInfo);
            subscribeServer.unRegisterSubscribeManager(this.processInfo.toString(), this.channelName);
            this.remoteRegistered = false;
        }

        public void updateProcessInfo(ProcessInfo processInfo, String str) {
            this.processInfo = processInfo;
            this.channelName = str;
        }

        private APIPublisherRegister(Context context, ProcessInfo processInfo, String str) {
            this.remoteRegistered = false;
            this.context = context;
            updateProcessInfo(processInfo, str);
            this.publisherStub = new RemoteApiPublisherStub();
        }
    }

    public static class ApiPublisherConnectionHolder {
        private static volatile ApiPublisherConnection INSTANCE = new ApiPublisherConnection();

        private ApiPublisherConnectionHolder() {
        }
    }

    public static class ScreenActionReceiver extends BroadcastReceiver {
        private boolean isRegistered;

        private ScreenActionReceiver() {
            this.isRegistered = false;
        }

        public static void lambda$onReceive$0(String str) {
            ApiPublisherConnection.getInstance().dispatchReceiveAction(str);
        }

        public void checkRegister(Context context, boolean z) {
            if (z) {
                if (this.isRegistered) {
                    return;
                }
                context.registerReceiver(this, getIntentFilter());
            } else if (this.isRegistered) {
                context.unregisterReceiver(this);
            }
        }

        public IntentFilter getIntentFilter() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            return intentFilter;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            final String action = intent.getAction();
            OxygenBusUtils.postWorkRunnable(new Runnable() {
                @Override
                public final void run() {
                    ApiPublisherConnection.ScreenActionReceiver.lambda$onReceive$0(action);
                }
            });
        }
    }

    public static int access$1108(ApiPublisherConnection apiPublisherConnection) {
        int i = apiPublisherConnection.currentTimes;
        apiPublisherConnection.currentTimes = i + 1;
        return i;
    }

    public synchronized void lambda$new$0() {
        APIPublisherRegister aPIPublisherRegister = this.publisherRegister;
        if (aPIPublisherRegister == null) {
            return;
        }
        if (!aPIPublisherRegister.remoteRegistered()) {
            ApiInvokeLog.logInfo(TAG, "checkPublisherRegisterState call");
            this.publisherRegister.registerRemoteSubscribe();
        }
    }

    public synchronized void lambda$new$1() {
        APIPublisherRegister aPIPublisherRegister = this.publisherRegister;
        if (aPIPublisherRegister == null) {
            return;
        }
        if (aPIPublisherRegister.remoteRegistered()) {
            ApiInvokeLog.logWarning(TAG, "checkPublisherUnRegisterState called");
            this.publisherRegister.unRegisterRemoteSubscribe();
        }
    }

    public void dispatchReceiveAction(String str) {
        if (str == "android.intent.action.SCREEN_ON") {
            if (SubscribeManager.hasLocalSubscribe()) {
                OxygenBusUtils.removeWorkRunnable(this.unRegisterRemoteRunnable);
                OxygenBusUtils.postWorkRunnable(this.registerRemoteRunnable);
                return;
            }
            return;
        }
        if (str == "android.intent.action.SCREEN_OFF") {
            OxygenBusUtils.removeWorkRunnable(this.registerRemoteRunnable);
            OxygenBusUtils.postWorkRunnable(this.unRegisterRemoteRunnable, 5000L);
        }
    }

    public static final ApiPublisherConnection getInstance() {
        return ApiPublisherConnectionHolder.INSTANCE;
    }

    private void unRegisterRemoteSubscribe(Context context, ProcessInfo processInfo, String str) {
        APIPublisherRegister aPIPublisherRegister = this.publisherRegister;
        if (aPIPublisherRegister != null) {
            try {
                aPIPublisherRegister.unRegisterRemoteSubscribeStub();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.publisherRegister = null;
        ApiInvokeLog.logWarning(TAG, "unRegisterRemoteSubscribe processInfo " + processInfo + " channelName " + str);
    }

    public void onSubscribeChange() {
        boolean zHasLocalSubscribe = SubscribeManager.hasLocalSubscribe();
        ApiInvokeLog.logInfo(TAG, "onSubscribeChange hasLocalSubscribe " + zHasLocalSubscribe);
        if (zHasLocalSubscribe) {
            lambda$new$0();
        } else {
            lambda$new$1();
        }
    }

    public void registerRemoteSubscribeStub(Context context, ProcessInfo processInfo, String str) {
        APIPublisherRegister aPIPublisherRegister = this.publisherRegister;
        if (aPIPublisherRegister == null) {
            this.publisherRegister = new APIPublisherRegister(context, processInfo, str);
        } else {
            aPIPublisherRegister.updateProcessInfo(processInfo, str);
        }
        boolean zHasLocalSubscribe = SubscribeManager.hasLocalSubscribe();
        if (zHasLocalSubscribe || processInfo.containChannel(OxygenBusUtils.APP_SERVICE_CHANNEL)) {
            this.publisherRegister.lambda$loopRegisterRemoteSubscribeStub$0();
        }
        this.mActionReceiver.checkRegister(context, true);
        ApiInvokeLog.logWarning(TAG, "registerRemoteSubscribeStub process " + processInfo + " hasLocalPublish " + zHasLocalSubscribe);
    }

    public void unRegisterRemoteSubscribeStub(Context context, ProcessInfo processInfo, String str) {
        unRegisterRemoteSubscribe(context, processInfo, str);
    }

    private ApiPublisherConnection() {
        this.publisherRegister = null;
        this.registerRemoteRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$0();
            }
        };
        this.unRegisterRemoteRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$1();
            }
        };
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mActionReceiver = new ScreenActionReceiver();
    }
}
