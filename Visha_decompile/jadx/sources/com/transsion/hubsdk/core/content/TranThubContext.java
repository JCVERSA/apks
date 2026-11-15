package com.transsion.hubsdk.core.content;

import android.annotation.RequiresPermission;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import com.transsion.hubsdk.TranContext;
import com.transsion.hubsdk.interfaces.content.ITranContextAdapter;

public class TranThubContext implements ITranContextAdapter {
    @Override
    public boolean bindServiceAsUser(Context context, Intent intent, ServiceConnection serviceConnection, int i, UserHandle userHandle) {
        return false;
    }

    @Override
    public Context createPackageContextAsUser(Context context, String str, int i, UserHandle userHandle) {
        return TranContext.get(context).createPackageContextAsUser(context, str, i, userHandle);
    }

    @Override
    public void enableAssetsOverlay() {
        TranContext.enableAssetsOverlay();
    }

    @Override
    public int getDisplayId(Context context) {
        return TranContext.get(context).getDisplayId(context);
    }

    @Override
    public UserHandle getUser(Context context) {
        return TranContext.get(context).getUser(context);
    }

    @Override
    public Intent registerReceiverAsUser(Context context, BroadcastReceiver broadcastReceiver, UserHandle userHandle, IntentFilter intentFilter, String str, Handler handler) {
        return TranContext.get(context).registerReceiverAsUser(context, broadcastReceiver, userHandle, intentFilter, str, handler);
    }

    @Override
    public Intent registerReceiverForAllUsers(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        return TranContext.get(context).registerReceiverForAllUsers(context, broadcastReceiver, intentFilter, str, handler, i);
    }

    @Override
    public void sendBroadcastAsUser(Context context, Intent intent, UserHandle userHandle) {
    }

    @Override
    public void startActivityAsUser(Context context, @RequiresPermission Intent intent, UserHandle userHandle) {
        TranContext.get(context).startActivityAsUser(context, intent, userHandle);
    }

    @Override
    public ComponentName startServiceAsUser(Context context, Intent intent, UserHandle userHandle) {
        return TranContext.get(context).startServiceAsUser(context, intent, userHandle);
    }

    @Override
    public void startActivityAsUser(Context context, @RequiresPermission Intent intent, Bundle bundle, UserHandle userHandle) {
        TranContext.get(context).startActivityAsUser(context, intent, bundle, userHandle);
    }
}
