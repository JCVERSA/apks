package com.iab.omid.library.bytedance2.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.adsession.DeviceCategory;
import com.iab.omid.library.bytedance2.adsession.OutputDeviceStatus;

public class e {

    private static OutputDeviceStatus f32662a = OutputDeviceStatus.UNKNOWN;

    class a extends BroadcastReceiver {
        a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() == "android.media.action.HDMI_AUDIO_PLUG") {
                int intExtra = intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", -1);
                if (intExtra == 0) {
                    OutputDeviceStatus unused = e.f32662a = OutputDeviceStatus.NOT_DETECTED;
                } else if (intExtra == 1) {
                    OutputDeviceStatus unused2 = e.f32662a = OutputDeviceStatus.UNKNOWN;
                }
            }
        }
    }

    public static OutputDeviceStatus a() {
        return com.iab.omid.library.bytedance2.utils.a.a() != DeviceCategory.CTV ? OutputDeviceStatus.UNKNOWN : f32662a;
    }

    public static void a(@NonNull Context context) {
        context.registerReceiver(new a(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }
}
