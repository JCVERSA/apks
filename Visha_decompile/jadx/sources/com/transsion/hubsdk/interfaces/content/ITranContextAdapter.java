package com.transsion.hubsdk.interfaces.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;

public interface ITranContextAdapter {
    boolean bindServiceAsUser(Context context, Intent intent, ServiceConnection serviceConnection, int i, UserHandle userHandle);

    Context createPackageContextAsUser(Context context, String str, int i, UserHandle userHandle);

    void enableAssetsOverlay();

    int getDisplayId(Context context);

    UserHandle getUser(Context context);

    Intent registerReceiverAsUser(Context context, BroadcastReceiver broadcastReceiver, UserHandle userHandle, IntentFilter intentFilter, String str, Handler handler);

    Intent registerReceiverForAllUsers(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i);

    void sendBroadcastAsUser(Context context, Intent intent, UserHandle userHandle);

    void startActivityAsUser(Context context, Intent intent, Bundle bundle, UserHandle userHandle);

    void startActivityAsUser(Context context, Intent intent, UserHandle userHandle);

    ComponentName startServiceAsUser(Context context, Intent intent, UserHandle userHandle);
}
