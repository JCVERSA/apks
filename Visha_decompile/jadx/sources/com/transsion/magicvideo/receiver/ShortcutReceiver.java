package com.transsion.magicvideo.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.tencent.mmkv.MMKV;
import defpackage.b16;
import defpackage.zg9;

public class ShortcutReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            Log.d("magicmovie_ShortcutReceiver", "onReceive: add success");
            MMKV.p().y("launcher_icon_added", true);
            b16.c(zg9.a, zg9.b);
        } catch (Exception e) {
            Log.e("magicmovie_ShortcutReceiver", "onReceive error: " + e.getMessage());
        }
    }
}
