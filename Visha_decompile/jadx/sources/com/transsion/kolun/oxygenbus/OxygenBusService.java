package com.transsion.kolun.oxygenbus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.ipc.connect.ApiIInterfaceProxy;
import com.transsion.apiinvoke.monitor.ApiInvokeMonitor;
import com.transsion.apiinvoke.monitor.InvokeMonitor;
import com.transsion.apiinvoke.monitor.RecordItem;
import com.transsion.apiinvoke.subscribe.SubscribeManager;
import com.transsion.kolun.oxygenbus.common.BinderCursor;
import com.transsion.kolun.oxygenbus.common.OxygenBusUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

public class OxygenBusService implements ApiIInterfaceProxy.Callback {
    private static volatile OxygenBusService INSTANCE = null;
    public static final String SERVICE_OXYGEN_BUS = "oxygenBusService";
    public static final String SERVICE_SUBSCRIBE = "subscribeService";
    private static final String TAG = "OxygenBusService";
    private final BusServiceLifecycle lifecycle;
    private final OxygenBusCallable oxygenBusCall;
    private ApiIInterfaceProxy<IOxygenBusServer> oxygenBusServerProxy;
    private final OxygenBusCallable subscribeBusCall;
    private ApiIInterfaceProxy<ISubscribeBusServer> subscribeBusServerProxy;
    public static final Uri CONTENT_URI = Uri.parse("content://com.transsion.kolun.oxygenbus2.serviceBinder/binder");
    private static final byte[] LOCK = new byte[0];
    private static AtomicBoolean sIsBusConnected = new AtomicBoolean(false);
    private static AtomicBoolean sIsSubscribeConnected = new AtomicBoolean(false);
    private static final DeathRetryQueue sDeathRetryQueue = new DeathRetryQueue();

    public static class BusServiceLifecycle implements Runnable, OxygenBusStateChangeListener {
        private int currentState;
        private final AtomicBoolean isOxygenBusConnected;
        private final List<OxygenBusStateChangeListener> mListeners;
        private final ExecutorService mThreadPool;
        private WaitingConnectRunnable mWaitingConnect;

        private void dispatchStateChange(int i) {
            this.mThreadPool.execute(this);
        }

        public void updateState(int i) {
            if (i == 2) {
                this.isOxygenBusConnected.set(true);
                this.mWaitingConnect.cancel();
            } else if (i == -1) {
                if (this.isOxygenBusConnected.get()) {
                    this.isOxygenBusConnected.set(false);
                }
                if (!this.mWaitingConnect.isRunning()) {
                    this.mWaitingConnect.recycle();
                    this.mThreadPool.execute(this.mWaitingConnect);
                }
            }
            ApiInvokeLog.logWarning(OxygenBusService.TAG, "dispatchStateChange oldState " + this.currentState + " newState " + i);
            this.currentState = i;
            dispatchStateChange(i);
        }

        public void addOxygenBusStateChangeListener(OxygenBusStateChangeListener oxygenBusStateChangeListener) {
            synchronized (this.mListeners) {
                try {
                    if (!this.mListeners.contains(oxygenBusStateChangeListener)) {
                        this.mListeners.add(oxygenBusStateChangeListener);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean isConnected() {
            return this.isOxygenBusConnected.get();
        }

        @Override
        public void onOxygenBusServerStateChange(int i) {
            if (i != 2) {
                if (i == -1) {
                    this.isOxygenBusConnected.set(false);
                    return;
                }
                return;
            }
            this.isOxygenBusConnected.set(true);
            this.currentState = 2;
            ApiInvokeLog.logWarning(OxygenBusService.TAG, "onOxygenBusServerStateChange connected  state " + this.currentState);
            dispatchStateChange(i);
        }

        public void removeOxygenBusStateChangeListener(OxygenBusStateChangeListener oxygenBusStateChangeListener) {
            synchronized (this.mListeners) {
                this.mListeners.remove(oxygenBusStateChangeListener);
            }
        }

        @Override
        public void run() {
            ApiInvokeLog.logWarning(OxygenBusService.TAG, "dispatchStateChange run size " + this.mListeners.size() + " state " + this.currentState);
            synchronized (this.mListeners) {
                try {
                    Iterator<OxygenBusStateChangeListener> it = this.mListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onOxygenBusServerStateChange(this.currentState);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void startListen() {
            this.isOxygenBusConnected.set(false);
            this.mThreadPool.execute(this.mWaitingConnect);
        }

        private BusServiceLifecycle(Context context, ExecutorService executorService) {
            this.isOxygenBusConnected = new AtomicBoolean(false);
            this.mListeners = new CopyOnWriteArrayList();
            this.mThreadPool = executorService;
            this.mWaitingConnect = new WaitingConnectRunnable(context, this);
        }
    }

    public static class DeathRetryQueue implements InvokeMonitor {
        private static final int MAX_RETRY_SIZE = 20;
        private List<RetryCacheBean> retryRecordList;

        public static void lambda$requestAgain$0(RecordItem recordItem, ApiCallback apiCallback, ApiResponse apiResponse) {
            StringBuilder sb = new StringBuilder();
            sb.append("requestAgain response url ");
            sb.append(recordItem.getRouterUri());
            sb.append(" result ");
            sb.append(apiResponse != null && apiResponse.isSuccess());
            ApiInvokeLog.logInfo(OxygenBusService.TAG, sb.toString());
            if (apiCallback != null) {
                apiCallback.response(apiResponse);
            }
        }

        private synchronized void requestAgain(final RecordItem recordItem, final ApiCallback apiCallback) throws Exception {
            if (recordItem != null) {
                try {
                    if (!recordItem.success) {
                        if (recordItem.supportRetry() && !TextUtils.isEmpty(recordItem.getChannelName())) {
                            int i = recordItem.recordType;
                            if (i == RecordItem.RECORD_TYPE_REQUEST) {
                                recordItem.clearRetryOnReConnect();
                                ApiInvokeLog.logWarning(OxygenBusService.TAG, "requestAgain start request url " + recordItem.getRouterUri());
                                recordItem.createRequest().invokeAsync(new ApiCallback() {
                                    @Override
                                    public final void response(ApiResponse apiResponse) {
                                        OxygenBusService.DeathRetryQueue.lambda$requestAgain$0(recordItem, apiCallback, apiResponse);
                                    }
                                });
                            } else if (i == RecordItem.RECORD_TYPE_PUBLISH) {
                                if (recordItem.publishItem == null) {
                                    return;
                                }
                                ApiRequest apiRequestCreateRequest = recordItem.createRequest();
                                RecordItem.PublishRecordItem publishRecordItem = recordItem.publishItem;
                                apiRequestCreateRequest.publishData(publishRecordItem.matcher, publishRecordItem.publishData);
                                ApiInvokeLog.logInfo(OxygenBusService.TAG, "requestAgain publishData matcher " + recordItem.publishItem.matcher);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void checkRetryList() {
            if (this.retryRecordList.isEmpty()) {
                return;
            }
            int size = this.retryRecordList.size();
            for (int i = 0; i < size; i++) {
                try {
                    if (i >= this.retryRecordList.size()) {
                        return;
                    }
                    RetryCacheBean retryCacheBean = this.retryRecordList.get(i);
                    if (retryCacheBean != null) {
                        requestAgain(retryCacheBean.request, retryCacheBean.callback());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.retryRecordList.clear();
        }

        @Override
        public void onInvokeEnd(RecordItem recordItem, ApiCallback apiCallback) {
            if (recordItem != null && recordItem.shouldRetryOnReConnect()) {
                this.retryRecordList.add(new RetryCacheBean(recordItem, apiCallback));
            }
            if (this.retryRecordList.size() > 20) {
                this.retryRecordList.remove(0);
            }
        }

        @Override
        public void onInvokeStart(RecordItem recordItem) {
        }

        private DeathRetryQueue() {
            this.retryRecordList = new CopyOnWriteArrayList();
        }
    }

    public static class OxygenBusCallable implements Callable<IBinder> {
        private long leastRequestErrorTime;
        private Context mContext;
        private String mServiceName;

        public OxygenBusCallable(Context context, String str) {
            this.mContext = context;
            this.mServiceName = str;
        }

        public String serviceName() {
            return this.mServiceName;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public IBinder call() {
            ApiInvokeLog.logWarning(OxygenBusService.TAG, "OxygenBusCallable call start " + this.mServiceName);
            IBinder kolunServiceBinder = null;
            try {
                if (OxygenBusUtils.isAppServiceProcessStarted(this.mContext)) {
                    kolunServiceBinder = OxygenBusService.getKolunServiceBinder(this.mContext, this.mServiceName);
                } else {
                    ApiInvokeLog.logError(OxygenBusService.TAG, "AIService not started please check AIService process ..." + this.mServiceName);
                }
            } catch (Exception e) {
                this.leastRequestErrorTime = System.currentTimeMillis();
                e.printStackTrace();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("OxygenBusCallable call end ");
            sb.append(this.mServiceName);
            sb.append(" success ");
            sb.append(kolunServiceBinder != null);
            ApiInvokeLog.logWarning(OxygenBusService.TAG, sb.toString());
            return kolunServiceBinder;
        }
    }

    public static class OxygenbusBroadcastReceiver extends BroadcastReceiver {
        private Context mContext;
        private IntentFilter mFilter;
        private BusServiceLifecycle mLifecycle;

        private OxygenbusBroadcastReceiver(Context context, BusServiceLifecycle busServiceLifecycle) {
            this.mContext = context;
            this.mLifecycle = busServiceLifecycle;
        }

        public void listen() {
            if (this.mFilter != null) {
                IntentFilter intentFilter = new IntentFilter();
                this.mFilter = intentFilter;
                intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
                this.mFilter.addAction("android.intent.action.PACKAGE_CHANGED");
                this.mContext.registerReceiver(this, this.mFilter);
            }
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String dataString = intent.getDataString();
            if (action == null || !TextUtils.equals(OxygenBusUtils.OXYGENBUS_PROCESS, dataString)) {
                return;
            }
            if (TextUtils.equals(action, "android.intent.action.PACKAGE_ADDED") || TextUtils.equals(action, "android.intent.action.PACKAGE_CHANGED")) {
                ApiInvokeLog.logWarning(OxygenBusService.TAG, "OxygenbusBroadcastReceiver receive action " + action);
                this.mLifecycle.startListen();
            }
        }

        public void unListen() {
            if (this.mFilter != null) {
                this.mContext.unregisterReceiver(this);
            }
        }
    }

    public static class RetryCacheBean {
        WeakReference<ApiCallback> callback;
        RecordItem request;

        public ApiCallback callback() {
            WeakReference<ApiCallback> weakReference = this.callback;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        private RetryCacheBean(RecordItem recordItem, ApiCallback apiCallback) {
            this.request = recordItem;
            if (apiCallback != null) {
                this.callback = new WeakReference<>(apiCallback);
            }
        }
    }

    public static class WaitingConnectRunnable implements Runnable {
        private static final int MAX_WAITING_TIMES = 100;
        private boolean cancel;
        private Context context;
        private int currentTimes;
        private boolean isRunning;
        private OxygenBusStateChangeListener mCallback;

        private int calcWaitingDuring() {
            int i = this.currentTimes;
            if (i <= 10) {
                return 1000;
            }
            return i <= 30 ? 2000 : 5000;
        }

        public void recycle() {
            this.currentTimes = 0;
            this.cancel = false;
            this.isRunning = false;
        }

        public void cancel() {
            this.cancel = true;
        }

        public boolean isRunning() {
            return this.isRunning;
        }

        @Override
        public void run() {
            this.isRunning = true;
            this.mCallback.onOxygenBusServerStateChange(1);
            while (true) {
                if (this.currentTimes >= 100 || this.cancel) {
                    break;
                }
                boolean zIsAppServiceProcessStarted = OxygenBusUtils.isAppServiceProcessStarted(this.context);
                String str = "WaitingConnectRunnable try connect isAppService Started " + zIsAppServiceProcessStarted + " currentTimes " + this.currentTimes;
                int i = this.currentTimes;
                if (i < 5 || i % 5 != 0) {
                    ApiInvokeLog.logInfo(OxygenBusService.TAG, str);
                } else {
                    ApiInvokeLog.logWarning(OxygenBusService.TAG, str);
                }
                if (zIsAppServiceProcessStarted && OxygenBusService.getInstance(this.context).tryOxygenBusConnect()) {
                    recycle();
                    OxygenBusStateChangeListener oxygenBusStateChangeListener = this.mCallback;
                    if (oxygenBusStateChangeListener != null) {
                        oxygenBusStateChangeListener.onOxygenBusServerStateChange(2);
                    }
                    ApiInvokeLog.logWarning(OxygenBusService.TAG, "WaitingConnectRunnable connected currentTimes " + this.currentTimes);
                    return;
                }
                this.currentTimes++;
                try {
                    Thread.sleep(calcWaitingDuring());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.mCallback != null) {
                this.mCallback.onOxygenBusServerStateChange(OxygenBusService.getInstance(this.context).tryOxygenBusConnect() ? 2 : -1);
            }
            recycle();
        }

        private WaitingConnectRunnable(Context context, OxygenBusStateChangeListener oxygenBusStateChangeListener) {
            this.context = context;
            this.mCallback = oxygenBusStateChangeListener;
        }
    }

    private OxygenBusService(Context context) {
        this.lifecycle = new BusServiceLifecycle(context, OxygenBusUtils.threadPool());
        this.oxygenBusCall = new OxygenBusCallable(context, SERVICE_OXYGEN_BUS);
        this.subscribeBusCall = new OxygenBusCallable(context, SERVICE_SUBSCRIBE);
        ApiInvokeLog.logInfo(TAG, "OxygenBusService created success ");
    }

    private static int calcTimeOutDuring() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return 150;
        }
        return ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
    }

    private synchronized IOxygenBusServer currentOxygenBusServer(Context context) {
        if (isOxygenBusConnected()) {
            sIsBusConnected.set(true);
            return (IOxygenBusServer) this.oxygenBusServerProxy.getInterface();
        }
        this.lifecycle.updateState(1);
        IBinder iBinderTryGetProvider = tryGetProvider(this.oxygenBusCall, 0);
        if (iBinderTryGetProvider != null && iBinderTryGetProvider.isBinderAlive()) {
            IOxygenBusServer iOxygenBusServerAsInterface = IOxygenBusServer.Stub.asInterface(iBinderTryGetProvider);
            if (this.oxygenBusServerProxy == null && iOxygenBusServerAsInterface != null) {
                this.oxygenBusServerProxy = new ApiIInterfaceProxy<>(iOxygenBusServerAsInterface, this);
            }
            ApiIInterfaceProxy<IOxygenBusServer> apiIInterfaceProxy = this.oxygenBusServerProxy;
            IOxygenBusServer iOxygenBusServer = apiIInterfaceProxy != null ? (IOxygenBusServer) apiIInterfaceProxy.getInterface() : null;
            if (iOxygenBusServer != null) {
                if (!this.lifecycle.isConnected()) {
                    ApiInvokeLog.logInfo(TAG, "currentOxygenBusServer, re connected ");
                }
                setReConnectSuccess();
            }
            return iOxygenBusServer;
        }
        this.lifecycle.updateState(-1);
        ApiInvokeLog.logWarning(TAG, "=============>>>> currentOxygenBusServer IBinder = null or not alive");
        return null;
    }

    private synchronized ISubscribeBusServer currentSubscribeServer(Context context) {
        ApiIInterfaceProxy<ISubscribeBusServer> apiIInterfaceProxy = this.subscribeBusServerProxy;
        if (apiIInterfaceProxy != null && apiIInterfaceProxy.isConnected()) {
            sIsSubscribeConnected.set(true);
            return (ISubscribeBusServer) this.subscribeBusServerProxy.getInterface();
        }
        IBinder iBinderTryGetProvider = tryGetProvider(this.subscribeBusCall, 0);
        if (iBinderTryGetProvider != null && iBinderTryGetProvider.isBinderAlive()) {
            ISubscribeBusServer iSubscribeBusServerAsInterface = ISubscribeBusServer.Stub.asInterface(iBinderTryGetProvider);
            if (this.subscribeBusServerProxy == null && iSubscribeBusServerAsInterface != null) {
                this.subscribeBusServerProxy = new ApiIInterfaceProxy<>(iSubscribeBusServerAsInterface, this);
            }
            ApiIInterfaceProxy<ISubscribeBusServer> apiIInterfaceProxy2 = this.subscribeBusServerProxy;
            ISubscribeBusServer iSubscribeBusServer = apiIInterfaceProxy2 != null ? (ISubscribeBusServer) apiIInterfaceProxy2.getInterface() : null;
            if (iSubscribeBusServer != null) {
                if (!this.lifecycle.isConnected()) {
                    ApiInvokeLog.logInfo(TAG, "currentSubscribeServer, re connected");
                }
                setReConnectSuccess();
            }
            return iSubscribeBusServer;
        }
        ApiInvokeLog.logWarning(TAG, "=============>>>> currentSubscribeServer IBinder = null or not alive");
        return null;
    }

    public static OxygenBusService getInstance(Context context) {
        initInstance(context);
        return INSTANCE;
    }

    public static IBinder getKolunServiceBinder(Context context, String str) {
        Cursor cursor;
        boolean z;
        try {
            int threadPriority = Process.getThreadPriority(Process.myPid());
            if (threadPriority < 10) {
                ApiInvokeLog.logInfo(TAG, "getKolunServiceBinder, modify priority current is" + threadPriority);
                Process.setThreadPriority(10);
                z = true;
            } else {
                z = false;
            }
            try {
                Cursor cursorQuery = context.getContentResolver().query(CONTENT_URI, null, null, new String[]{str}, null);
                if (cursorQuery == null) {
                    if (z) {
                        Process.setThreadPriority(0);
                        ApiInvokeLog.logInfo(TAG, "getKolunServiceBinder, reset priority ");
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    IBinder serviceBinder = getServiceBinder(cursorQuery);
                    if (z) {
                        Process.setThreadPriority(0);
                        ApiInvokeLog.logInfo(TAG, "getKolunServiceBinder, reset priority ");
                    }
                    cursorQuery.close();
                    return serviceBinder;
                } catch (Throwable th) {
                    cursor = cursorQuery;
                    th = th;
                    try {
                        th.printStackTrace();
                        return null;
                    } finally {
                        if (z) {
                            Process.setThreadPriority(0);
                            ApiInvokeLog.logInfo(TAG, "getKolunServiceBinder, reset priority ");
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            z = false;
        }
    }

    public static BusServiceLifecycle getLifeCycle(Context context) {
        return getInstance(context).lifecycle;
    }

    public static IOxygenBusServer getOxygenBusServer(Context context) {
        return getInstance(context).currentOxygenBusServer(context);
    }

    private static IBinder getServiceBinder(Cursor cursor) {
        Bundle extras = cursor.getExtras();
        extras.setClassLoader(BinderCursor.BinderParcelable.class.getClassLoader());
        return ((BinderCursor.BinderParcelable) extras.getParcelable("binder")).mBinder;
    }

    public static ISubscribeBusServer getSubscribeServer(Context context) {
        return getInstance(context).currentSubscribeServer(context);
    }

    @Deprecated
    public static void initInstance(Context context) {
        if (INSTANCE == null) {
            synchronized (OxygenBusService.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new OxygenBusService(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static boolean isOxygenBusConnected(Context context) {
        return getInstance(context).isOxygenBusConnectedInner();
    }

    private synchronized boolean isOxygenBusConnectedInner() {
        ApiIInterfaceProxy<IOxygenBusServer> apiIInterfaceProxy;
        apiIInterfaceProxy = this.oxygenBusServerProxy;
        return apiIInterfaceProxy != null && apiIInterfaceProxy.isConnected();
    }

    public static boolean isOxygenbusRegister(Context context) {
        return isOxygenbusRegister(context, OxygenBusUtils.getCurProcessName(context));
    }

    private void setReConnectSuccess() {
        ApiInvokeMonitor apiInvokeMonitor = ApiInvokeMonitor.getInstance();
        DeathRetryQueue deathRetryQueue = sDeathRetryQueue;
        apiInvokeMonitor.removeMonitor(deathRetryQueue);
        deathRetryQueue.checkRetryList();
        this.lifecycle.updateState(2);
        ApiInvokeLog.logWarning(TAG, "DeathRecipient setReConnectSuccess");
    }

    private IBinder tryGetProvider(OxygenBusCallable oxygenBusCallable, int i) {
        IBinder iBinder;
        ApiInvokeLog.logInfo(TAG, "tryGetProvider start " + oxygenBusCallable.serviceName());
        if (System.currentTimeMillis() - oxygenBusCallable.leastRequestErrorTime < 2000) {
            ApiInvokeLog.logError(TAG, "tryGetProvider end " + oxygenBusCallable.serviceName() + " error, leastRequestErrorTime " + oxygenBusCallable.leastRequestErrorTime);
            return null;
        }
        synchronized (LOCK) {
            try {
                iBinder = (IBinder) OxygenBusUtils.submit(oxygenBusCallable, calcTimeOutDuring());
                if (iBinder == null) {
                    iBinder = (IBinder) OxygenBusUtils.submit(oxygenBusCallable, 300);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (iBinder == null) {
            ApiInvokeLog.logError(TAG, "tryGetProvider fault for " + oxygenBusCallable.serviceName() + " fault, check if aiService started ");
        } else {
            ApiInvokeLog.logInfo(TAG, "tryGetProvider end " + oxygenBusCallable.serviceName() + " success ");
        }
        return iBinder;
    }

    public boolean tryOxygenBusConnect() {
        return (this.oxygenBusCall.call() == null || this.subscribeBusCall.call() == null) ? false : true;
    }

    @Override
    public void binderDied() {
        ApiInvokeLog.logWarning(TAG, "binderDied oxygenBus service died ");
        sIsBusConnected.set(false);
        sIsSubscribeConnected.set(false);
        if (!sIsBusConnected.get()) {
            this.oxygenBusServerProxy = null;
        }
        if (!sIsSubscribeConnected.get()) {
            this.subscribeBusServerProxy = null;
        }
        SubscribeManager.setGlobalSubscribeNotify(null);
        ApiInvokeMonitor.getInstance().addMonitor(sDeathRetryQueue);
        this.lifecycle.updateState(-1);
    }

    public static synchronized boolean isOxygenBusConnected() {
        return (INSTANCE == null || INSTANCE.oxygenBusServerProxy == null || !INSTANCE.oxygenBusServerProxy.isConnected()) ? false : true;
    }

    public static boolean isOxygenbusRegister(Context context, String str) {
        IOxygenBusServer oxygenBusServer;
        if (!getInstance(context).isOxygenBusConnectedInner() || (oxygenBusServer = getOxygenBusServer(context)) == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return oxygenBusServer.isChannelRegistered(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
