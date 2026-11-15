package com.hunantv.media.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import com.hunantv.media.player.pragma.DebugLog;
import com.transsion.livecaption.constant.ICode;

public class AudioUtil {
    private static final String TAG = "AudioUtil";
    private static volatile HeadsetPlugReceiver mHeadsetPlugReceiver;
    private static Object sLock = new Object();

    public static class HeadsetPlugReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            String str;
            try {
                AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                if (audioManager == null || !intent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
                    return;
                }
                int intExtra = intent.getIntExtra(ICode.CALL.CALL_KEY_STATE, 0);
                if (intExtra == 0) {
                    audioManager.setSpeakerphoneOn(true);
                    str = "setSpeakerphoneOn true";
                } else {
                    if (intExtra != 1) {
                        return;
                    }
                    audioManager.setSpeakerphoneOn(false);
                    str = "setSpeakerphoneOn false";
                }
                DebugLog.i(AudioUtil.TAG, str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void abandonAudioFocus(Context context) {
        if (context == null) {
            return;
        }
        DebugLog.i(TAG, "abandonAudioFocus");
        try {
            ((AudioManager) context.getSystemService("audio")).abandonAudioFocus(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean isWired(Context context) {
        if (context == null) {
            return false;
        }
        try {
            for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) context.getSystemService("audio")).getDevices(2)) {
                int type = audioDeviceInfo.getType();
                if (type == 3 || type == 4 || type == 8 || type == 7) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void registerHeadsetReceiverOnce(Context context) {
    }

    public static void requestAudioFocus(Context context) {
        if (context == null) {
            return;
        }
        DebugLog.i(TAG, "requestAudioFocus");
        try {
            ((AudioManager) context.getSystemService("audio")).requestAudioFocus(null, 3, 2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void unRegisterHeadsetReceiver(Context context) {
        Context applicationContext;
        if (mHeadsetPlugReceiver == null || context == null || (applicationContext = context.getApplicationContext()) == null) {
            return;
        }
        synchronized (sLock) {
            applicationContext.unregisterReceiver(mHeadsetPlugReceiver);
            mHeadsetPlugReceiver = null;
        }
    }
}
