package com.transsion.audio.shortcut;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.utils.ToastUtils;
import defpackage.h27;
import defpackage.sy5;

public class AudioShortcutReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            Log.d("AudioShortcutReceiver", "onReceive: add success");
            ToastUtils.s(R.string.shortcut_add_success);
            sy5.b(true);
            MMKV.p().y("MMKV_SHORTCUT_DO_NOT_REMIND", true);
            h27.c().e(1169, Boolean.FALSE);
        } catch (Exception e) {
            Log.e("AudioShortcutReceiver", "onReceive error: " + e.getMessage());
        }
    }
}
