package com.transsion.playercommon.utils.storage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.Log;
import defpackage.maa;
import defpackage.xb;

public class MountReceiver extends BroadcastReceiver {
    public static MountReceiver a(Context context) {
        MountReceiver mountReceiver = new MountReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
        intentFilter.addDataScheme("file");
        xb.b(context, mountReceiver, intentFilter, true);
        if (maa.e()) {
            new IntentFilter().addAction("com.mediatek.SD_SWAP");
            xb.b(context, mountReceiver, intentFilter, true);
        }
        return mountReceiver;
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            String action = intent.getAction();
            Uri data = intent.getData();
            String path = data != null ? data.getPath() : null;
            Log.d("MountReceiver", "onReceive: " + action + " mountPoint: " + path);
            if ("com.mediatek.SD_SWAP".equals(action)) {
                synchronized (this) {
                    MountPointManager.f().r();
                }
            }
            if (path != null && data != null) {
                if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
                    MountPointManager.f().o(path);
                } else if ("android.intent.action.MEDIA_UNMOUNTED".equals(action)) {
                    MountPointManager.f().s(path);
                } else if ("android.intent.action.MEDIA_EJECT".equals(action)) {
                    MountPointManager.f().b(path);
                }
            }
        } catch (Exception e) {
            Log.e("MountReceiver", "onReceive error: " + e.getMessage());
        }
    }
}
