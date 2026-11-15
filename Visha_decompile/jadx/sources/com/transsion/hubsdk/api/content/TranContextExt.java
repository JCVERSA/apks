package com.transsion.hubsdk.api.content;

import android.annotation.RequiresPermission;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import com.transsion.hubsdk.aosp.content.TranAospContext;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.TranThubContext;
import com.transsion.hubsdk.interfaces.content.ITranContextAdapter;

public class TranContextExt {
    private ITranContextAdapter mAospService;
    private ITranContextAdapter mThubService;

    public boolean bindServiceAsUser(Context context, Intent intent, ServiceConnection serviceConnection, int i, UserHandle userHandle) {
        return getService(TranVersion.Core.VERSION_33171).bindServiceAsUser(context, intent, serviceConnection, i, userHandle);
    }

    public Context createPackageContextAsUser(Context context, String str, int i, UserHandle userHandle) throws PackageManager.NameNotFoundException {
        if (str == null) {
            throw new NullPointerException("package name should not be null");
        }
        if (i < 0 || i >= Integer.MAX_VALUE) {
            throw new IllegalArgumentException("input flag wrong");
        }
        return getService(TranVersion.Core.VERSION_33161).createPackageContextAsUser(context, str, i, userHandle);
    }

    public void enableAssetsOverlay() {
        getService(TranVersion.Core.VERSION_33391).enableAssetsOverlay();
    }

    public int getDisplayId(Context context) {
        return getService(TranVersion.Core.VERSION_33151).getDisplayId(context);
    }

    public ITranContextAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            ITranContextAdapter iTranContextAdapter = this.mThubService;
            if (iTranContextAdapter != null) {
                return iTranContextAdapter;
            }
            TranThubContext tranThubContext = new TranThubContext();
            this.mThubService = tranThubContext;
            return tranThubContext;
        }
        ITranContextAdapter iTranContextAdapter2 = this.mAospService;
        if (iTranContextAdapter2 != null) {
            return iTranContextAdapter2;
        }
        TranAospContext tranAospContext = new TranAospContext();
        this.mAospService = tranAospContext;
        return tranAospContext;
    }

    public UserHandle getUser(Context context) {
        if (context != null) {
            return getService(TranVersion.Core.VERSION_33231).getUser(context);
        }
        throw new NullPointerException("context is null");
    }

    public Intent registerReceiverAsUser(Context context, BroadcastReceiver broadcastReceiver, UserHandle userHandle, IntentFilter intentFilter, String str, Handler handler) {
        return getService(TranVersion.Core.VERSION_33141).registerReceiverAsUser(context, broadcastReceiver, userHandle, intentFilter, str, handler);
    }

    public Intent registerReceiverForAllUsers(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        if (context == null) {
            throw new NullPointerException("context should not be null");
        }
        if (intentFilter != null) {
            return getService(TranVersion.Core.VERSION_33411).registerReceiverForAllUsers(context, broadcastReceiver, intentFilter, str, handler, i);
        }
        throw new NullPointerException("filter should not be null");
    }

    public void sendBroadcastAsUser(Context context, Intent intent, UserHandle userHandle) {
        getService(TranVersion.Core.VERSION_33171).sendBroadcastAsUser(context, intent, userHandle);
    }

    public void startActivityAsUser(Context context, @RequiresPermission Intent intent, UserHandle userHandle) {
        getService(TranVersion.Core.VERSION_33131).startActivityAsUser(context, intent, userHandle);
    }

    public ComponentName startServiceAsUser(Context context, Intent intent, UserHandle userHandle) {
        if (context != null) {
            return getService(TranVersion.Core.VERSION_33331).startServiceAsUser(context, intent, userHandle);
        }
        throw new NullPointerException("context is null");
    }

    public void startActivityAsUser(Context context, @RequiresPermission Intent intent, Bundle bundle, UserHandle userHandle) {
        getService(TranVersion.Core.VERSION_33141).startActivityAsUser(context, intent, bundle, userHandle);
    }
}
