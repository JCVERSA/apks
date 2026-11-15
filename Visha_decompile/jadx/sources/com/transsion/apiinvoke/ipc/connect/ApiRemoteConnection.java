package com.transsion.apiinvoke.ipc.connect;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.ipc.ICommonServiceInterface;
import com.transsion.apiinvoke.ipc.session.client.SessionClient;
import java.util.concurrent.atomic.AtomicBoolean;

public class ApiRemoteConnection implements IRemoteConnection<ComponentName>, ServiceConnection, IBinder.DeathRecipient {
    private static final long CONNECT_WAIT_TIME = 200;
    private static final int MAX_RETRY_TIMES = 10;
    private static final String TAG = "ApiRemoteConnection";
    private final AtomicBoolean isConnecting = new AtomicBoolean(false);
    private final ComponentName mComponent;
    private CommonServiceInterfaceGet mServiceInterface;
    private SessionClient mSessionClient;
    private final String packageName;

    public static class ServiceInterfaceGet implements CommonServiceInterfaceGet {
        private ICommonServiceInterface mServiceInterface;

        public ServiceInterfaceGet(ICommonServiceInterface iCommonServiceInterface) {
            updateServiceInterface(iCommonServiceInterface);
        }

        @Override
        public ICommonServiceInterface getInterface() {
            return this.mServiceInterface;
        }

        public void updateServiceInterface(ICommonServiceInterface iCommonServiceInterface) {
            this.mServiceInterface = iCommonServiceInterface;
        }
    }

    public ApiRemoteConnection(ComponentName componentName, String str) {
        this.mComponent = componentName;
        this.packageName = str;
    }

    private boolean checkConnect() {
        if (!isConnected()) {
            return false;
        }
        ApiInvokeLog.logInfo(TAG, "bindServiceAsync already connected component " + this.mComponent);
        this.isConnecting.set(false);
        return true;
    }

    public boolean bindRemoteService(Context context) {
        try {
            String str = TAG;
            ApiInvokeLog.logInfo(str, "bindServiceAsync start component = " + this.mComponent);
            Intent intent = new Intent();
            intent.setComponent(this.mComponent);
            ApiInvokeLog.logInfo(str, "bindServiceAsync end component " + this.mComponent + " success " + context.bindService(intent, this, 1));
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean bindRemoteSync(Context context) {
        return bindServiceAsync(context, 0, 10);
    }

    public boolean bindServiceAsync(Context context, int i, int i2) {
        if (i >= i2) {
            this.isConnecting.set(false);
            ApiInvokeLog.logWarning(TAG, "bindServiceAsync timeout component = " + this.mComponent);
            return false;
        }
        if (!this.isConnecting.get()) {
            this.isConnecting.set(true);
            if (bindRemoteService(context)) {
                return checkConnect();
            }
        }
        if (isConnected()) {
            this.isConnecting.set(false);
            return true;
        }
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Thread.sleep((((long) i) * 200) + 200);
            } else {
                Thread.sleep(((long) i) * 400);
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (Throwable th) {
            throw th;
        }
        int i3 = i + 1;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("bindServiceAsync component ");
        sb.append(this.mComponent);
        sb.append("currentTimes = ");
        sb.append(i3);
        sb.append(" isMainLooper ");
        sb.append(Looper.myLooper() == Looper.getMainLooper());
        ApiInvokeLog.logInfo(str, sb.toString());
        if (!isConnected()) {
            return bindServiceAsync(context, i3, i2);
        }
        this.isConnecting.set(false);
        ApiInvokeLog.logInfo(str, "bindServiceAsync isConnected component " + this.mComponent + " currentTimes = " + i3);
        return true;
    }

    @Override
    public void binderDied() {
        CommonServiceInterfaceGet commonServiceInterfaceGet = this.mServiceInterface;
        if (commonServiceInterfaceGet != null) {
            try {
                ICommonServiceInterface iCommonServiceInterface = commonServiceInterfaceGet.getInterface();
                if (iCommonServiceInterface != null) {
                    iCommonServiceInterface.asBinder().unlinkToDeath(this, 0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        onServiceDisconnected(this.mComponent);
    }

    public ICommonServiceInterface getCommonApiService() {
        ICommonServiceInterface iCommonServiceInterface;
        CommonServiceInterfaceGet commonServiceInterfaceGet = this.mServiceInterface;
        if (commonServiceInterfaceGet == null || (iCommonServiceInterface = commonServiceInterfaceGet.getInterface()) == null || !iCommonServiceInterface.asBinder().isBinderAlive()) {
            return null;
        }
        return iCommonServiceInterface;
    }

    @Override
    public CommonServiceInterfaceGet getServiceInterface() {
        return this.mServiceInterface;
    }

    @Override
    public SessionClient getSession() {
        return this.mSessionClient;
    }

    @Override
    public boolean isConnected() {
        return getCommonApiService() != null;
    }

    @Override
    public boolean isConnecting() {
        return !isConnected() && this.isConnecting.get();
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onServiceConnected channel >> ");
        sb.append(componentName);
        sb.append(" binder != null ");
        sb.append(iBinder != null);
        ApiInvokeLog.logWarning(str, sb.toString());
        try {
            try {
                ICommonServiceInterface iCommonServiceInterfaceAsInterface = ICommonServiceInterface.Stub.asInterface(iBinder);
                iBinder.linkToDeath(this, 0);
                CommonServiceInterfaceGet commonServiceInterfaceGet = this.mServiceInterface;
                if (commonServiceInterfaceGet == null) {
                    this.mServiceInterface = new ServiceInterfaceGet(iCommonServiceInterfaceAsInterface);
                } else if (commonServiceInterfaceGet instanceof ServiceInterfaceGet) {
                    ((ServiceInterfaceGet) commonServiceInterfaceGet).updateServiceInterface(iCommonServiceInterfaceAsInterface);
                }
                String packageName = componentName.getPackageName();
                this.mSessionClient = new SessionClient(iCommonServiceInterfaceAsInterface.getSession(this.packageName), packageName, this.packageName);
                ApiInvokeLog.logWarning(str, "onServiceConnected, CREATE SESSION:: packageName " + this.packageName + " to " + packageName);
            } catch (Exception e) {
                ApiInvokeLog.logWarning(TAG, "onServiceConnected, call connected error " + componentName + "\n");
                e.printStackTrace();
            }
        } finally {
            this.isConnecting.set(false);
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        if (this.mServiceInterface != null) {
            ApiInvokeLog.logWarning(TAG, "onServiceDisconnected channel >> " + componentName);
            this.mServiceInterface = null;
        }
        SessionClient sessionClient = this.mSessionClient;
        if (sessionClient != null) {
            sessionClient.release();
            this.mSessionClient = null;
        }
        this.isConnecting.set(false);
    }

    @Override
    public void unbindRemote(Context context) {
        context.unbindService(this);
        onServiceDisconnected(this.mComponent);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ComponentName remoteDesc() {
        return this.mComponent;
    }
}
