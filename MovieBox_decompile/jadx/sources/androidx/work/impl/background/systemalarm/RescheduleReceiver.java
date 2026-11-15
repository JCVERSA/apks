package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.d0;
import androidx.work.j;

public class RescheduleReceiver extends BroadcastReceiver {

    private static final String f15194a = j.i("RescheduleReceiver");

    @Override
    public void onReceive(Context context, Intent intent) {
        j.e().a(f15194a, "Received intent " + intent);
        try {
            d0.o(context).y(goAsync());
        } catch (IllegalStateException e10) {
            j.e().d(f15194a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e10);
        }
    }
}
