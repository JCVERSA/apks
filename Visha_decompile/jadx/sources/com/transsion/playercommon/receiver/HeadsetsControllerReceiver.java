package com.transsion.playercommon.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.Iterator;

public class HeadsetsControllerReceiver extends BroadcastReceiver {
    public static ArrayList a = new ArrayList();

    public interface a {
        void i(int i, KeyEvent keyEvent);
    }

    public static void a(a aVar) {
        if (aVar == null) {
            return;
        }
        a.add(aVar);
    }

    public static void b(a aVar) {
        a.remove(aVar);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        KeyEvent keyEvent;
        try {
            Log.d("MediaButtonIntentReceiver", "onReceive:" + intent);
            if (intent != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null && keyEvent.getAction() == 1) {
                Iterator it = a.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).i(keyEvent.getKeyCode(), keyEvent);
                }
            }
        } catch (Exception e) {
            Log.e("MediaButtonIntentReceiver", "onReceive error: " + e.getMessage());
        }
    }
}
