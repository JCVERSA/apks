package com.hunantv.media.widget.debug;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.hunantv.media.player.pragma.DebugLog;
import java.util.HashMap;

public class TestBroadCastReceiver extends BroadcastReceiver {
    public static final String TAG = "mgtvplayer_report";

    @Override
    public void onReceive(Context context, Intent intent) {
        HashMap map = (HashMap) intent.getSerializableExtra("EXTRA_REPORT_PARAMS");
        if (map != null) {
            DebugLog.i(TAG, map + "");
        }
    }
}
