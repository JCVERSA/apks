package com.transsion.magicvideo.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.transsion.magicvideo.R;
import com.transsion.utils.ToastUtils;
import defpackage.hb0;
import defpackage.zg9;

public class OttVideoShortCutReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            Log.d("visha_OttVideoShortCutReceiver", "onReceive: add shortcut success");
            ToastUtils.s(R.string.add_shortcut_succ);
            hb0.markTrackThree("vd_ott_detail_addtohome_add", "videoID", Long.valueOf(zg9.c), "videoname", zg9.d, "status", "sucess");
        } catch (Exception e) {
            Log.e("visha_OttVideoShortCutReceiver", "onReceive error: " + e.getMessage());
        }
    }
}
