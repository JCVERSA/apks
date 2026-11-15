package xe;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.iab.omid.library.vungle.adsession.DeviceCategory;
import com.iab.omid.library.vungle.adsession.OutputDeviceStatus;

public abstract class e {

    private static OutputDeviceStatus f75329a = OutputDeviceStatus.UNKNOWN;

    class a extends BroadcastReceiver {
        a() {
        }

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
                OutputDeviceStatus unused = e.f75329a = outputDeviceStatus;
            }
        }
    }

    public static OutputDeviceStatus a() {
        return xe.a.a() != DeviceCategory.CTV ? OutputDeviceStatus.UNKNOWN : f75329a;
    }

    public static void c(Context context) {
        context.registerReceiver(new a(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }
}
