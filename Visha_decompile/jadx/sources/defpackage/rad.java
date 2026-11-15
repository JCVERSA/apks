package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.iab.omid.library.hisavana.adsession.DeviceCategory;
import com.iab.omid.library.hisavana.adsession.OutputDeviceStatus;

public abstract class rad {
    public static OutputDeviceStatus a = OutputDeviceStatus.UNKNOWN;

    public class a extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            OutputDeviceStatus outputDeviceStatus;
            if (intent.getAction() == "android.media.action.HDMI_AUDIO_PLUG") {
                int intExtra = intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", -1);
                if (intExtra == 0) {
                    outputDeviceStatus = OutputDeviceStatus.NOT_DETECTED;
                } else if (intExtra != 1) {
                    return;
                } else {
                    outputDeviceStatus = OutputDeviceStatus.UNKNOWN;
                }
                OutputDeviceStatus unused = rad.a = outputDeviceStatus;
            }
        }
    }

    public static OutputDeviceStatus a() {
        return t1d.a() != DeviceCategory.CTV ? OutputDeviceStatus.UNKNOWN : a;
    }

    public static void c(Context context) {
        context.registerReceiver(new a(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }
}
