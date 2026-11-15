package com.transsion.hubsdk.aosp.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.content.ITranContextAdapter;
import java.lang.reflect.Method;

public class TranAospContext implements ITranContextAdapter {
    @Override
    public boolean bindServiceAsUser(Context context, Intent intent, ServiceConnection serviceConnection, int i, UserHandle userHandle) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "bindServiceAsUser", Intent.class, ServiceConnection.class, Integer.TYPE, UserHandle.class), context, intent, serviceConnection, Integer.valueOf(i), userHandle);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public Context createPackageContextAsUser(Context context, String str, int i, UserHandle userHandle) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "createPackageContextAsUser", String.class, Integer.TYPE, UserHandle.class), context, str, Integer.valueOf(i), userHandle);
        if (objInvokeMethod instanceof Context) {
            return (Context) objInvokeMethod;
        }
        return null;
    }

    @Override
    public void enableAssetsOverlay() {
        Method method = TranDoorMan.getMethod(AssetManager.class, "enableAssetsOverlay", new Class[0]);
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, new Object[0]);
        }
    }

    @Override
    public int getDisplayId(Context context) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "getDisplayId", new Class[0]), context, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public UserHandle getUser(Context context) {
        return (UserHandle) TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "getUser", new Class[0]), context, new Object[0]);
    }

    @Override
    public Intent registerReceiverAsUser(Context context, BroadcastReceiver broadcastReceiver, UserHandle userHandle, IntentFilter intentFilter, String str, Handler handler) {
        return (Intent) TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "registerReceiverAsUser", BroadcastReceiver.class, UserHandle.class, IntentFilter.class, String.class, Handler.class), context, broadcastReceiver, userHandle, intentFilter, str, handler);
    }

    @Override
    public Intent registerReceiverForAllUsers(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        return (Intent) TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "registerReceiverForAllUsers", BroadcastReceiver.class, IntentFilter.class, String.class, Handler.class, Integer.TYPE), context, broadcastReceiver, intentFilter, str, handler, Integer.valueOf(i));
    }

    @Override
    public void sendBroadcastAsUser(Context context, Intent intent, UserHandle userHandle) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "sendBroadcastAsUser", Intent.class, UserHandle.class), context, intent, userHandle);
    }

    @Override
    public void startActivityAsUser(Context context, Intent intent, UserHandle userHandle) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "startActivityAsUser", Intent.class, UserHandle.class), context, intent, userHandle);
    }

    @Override
    public ComponentName startServiceAsUser(Context context, Intent intent, UserHandle userHandle) {
        return (ComponentName) TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "startServiceAsUser", Intent.class, UserHandle.class), context, intent, userHandle);
    }

    @Override
    public void startActivityAsUser(Context context, Intent intent, Bundle bundle, UserHandle userHandle) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(context.getClass(), "startActivityAsUser", Intent.class, Bundle.class, UserHandle.class), context, intent, bundle, userHandle);
    }
}
