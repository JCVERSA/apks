package com.transsion.kolun.oxygenbus.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.transsion.apiinvoke.common.ApiInvokeLog;

class OxygenBusProcess implements Runnable {
    private static final int MAX_RETRY_TIMES = 3;
    private static final int RETRY_CALL_DURING = 1000;
    private static int RETRY_TIMES = 0;
    private static final String TAG = "OxygenBusProcess";
    private static volatile OxygenBusProcess clientInstance;
    private static volatile OxygenBusProcess serverInstance;
    private Context appContext;
    private Callback callback;
    private final boolean isClientRunnable;
    private TimeTickBroadcastReceiver mReceiver;

    public interface Callback {
        void onOxygenProcessFault();

        void onOxygenProcessStart();
    }

    public static final class TimeTickBroadcastReceiver extends BroadcastReceiver {
        private TimeTickBroadcastReceiver() {
        }

        private void checkRunnable(Context context) {
            if (OxygenBusProcess.serverInstance != null) {
                int unused = OxygenBusProcess.RETRY_TIMES = 0;
                OxygenBusProcess.postServerInstance(context);
            } else if (OxygenBusProcess.clientInstance != null) {
                int unused2 = OxygenBusProcess.RETRY_TIMES = 0;
                OxygenBusProcess.postClientInstance(context);
            }
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (context == null || intent == null) {
                return;
            }
            if ("android.intent.action.TIME_TICK".equals(intent.getAction()) || "android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                checkRunnable(context);
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                if (OxygenBusProcess.clientInstance != null) {
                    OxygenBusUtils.removeWorkRunnable(OxygenBusProcess.clientInstance);
                }
                if (OxygenBusProcess.serverInstance != null) {
                    OxygenBusUtils.removeWorkRunnable(OxygenBusProcess.serverInstance);
                }
            }
        }
    }

    private OxygenBusProcess(Context context, boolean z) {
        this.appContext = context;
        this.isClientRunnable = z;
    }

    public static void postClient(Context context, Callback callback) {
        if (context == null) {
            ApiInvokeLog.logError(TAG, "postClient error for context is null");
            return;
        }
        if (clientInstance == null) {
            synchronized (OxygenBusProcess.class) {
                try {
                    if (clientInstance == null) {
                        clientInstance = new OxygenBusProcess(context, true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        clientInstance.updateCallback(callback);
        postClientInstance(context);
    }

    public static void postClientInstance(Context context) {
        if (serverInstance != null) {
            ApiInvokeLog.logWarning(TAG, "OxygenBusProcess postClient waiting service callback");
            return;
        }
        OxygenBusUtils.removeWorkRunnable(clientInstance);
        if (clientInstance != null) {
            clientInstance.appContext = context;
            OxygenBusUtils.postWorkRunnable(clientInstance, 1000L);
        }
    }

    public static void postServer(Context context, Callback callback) {
        if (serverInstance == null) {
            synchronized (OxygenBusProcess.class) {
                try {
                    if (serverInstance == null) {
                        serverInstance = new OxygenBusProcess(context, false);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        serverInstance.updateCallback(callback);
        postServerInstance(context);
    }

    public static void postServerInstance(Context context) {
        if (clientInstance != null) {
            OxygenBusUtils.removeWorkRunnable(clientInstance);
            ApiInvokeLog.logWarning(TAG, "OxygenBusProcess postServer remove clientInstance ");
        }
        if (serverInstance == null) {
            synchronized (OxygenBusProcess.class) {
                try {
                    if (serverInstance == null) {
                        serverInstance = new OxygenBusProcess(context, false);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            OxygenBusUtils.removeWorkRunnable(serverInstance);
        }
        OxygenBusUtils.postWorkRunnable(serverInstance, 1000L);
    }

    private void recycle(boolean z) {
        Callback callback = this.callback;
        if (callback == null) {
            return;
        }
        if (!z) {
            callback.onOxygenProcessFault();
            return;
        }
        callback.onOxygenProcessStart();
        this.appContext = null;
        if (this.isClientRunnable) {
            clientInstance = null;
        } else {
            serverInstance = null;
        }
        this.callback = null;
    }

    private void registerTimeTickBroadcast() {
        if (this.appContext != null && this.mReceiver == null) {
            this.mReceiver = new TimeTickBroadcastReceiver();
            IntentFilter intentFilter = new IntentFilter("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.appContext.registerReceiver(this.mReceiver, intentFilter);
        }
    }

    private void unRegisterTimeTickBroadcast() {
        TimeTickBroadcastReceiver timeTickBroadcastReceiver;
        Context context = this.appContext;
        if (context == null || (timeTickBroadcastReceiver = this.mReceiver) == null) {
            return;
        }
        context.unregisterReceiver(timeTickBroadcastReceiver);
    }

    private void updateCallback(Callback callback) {
        this.callback = callback;
    }

    @Override
    public void run() {
        ApiInvokeLog.logInfo(TAG, "OxygenBusProcess run start ");
        if (OxygenBusUtils.isAppServiceProcessStarted(this.appContext)) {
            ApiInvokeLog.logWarning(TAG, "OxygenBusProcess onAPPServiceStart ");
            recycle(true);
            unRegisterTimeTickBroadcast();
            return;
        }
        int i = RETRY_TIMES;
        if (i <= 3) {
            RETRY_TIMES = i + 1;
            registerTimeTickBroadcast();
            OxygenBusUtils.postWorkRunnable(this, 2000L);
        } else {
            recycle(false);
            OxygenBusUtils.removeRunnable(this);
            ApiInvokeLog.logWarning(TAG, "OxygenBusProcess onAPPServiceFault reTryTimes " + RETRY_TIMES);
        }
    }
}
