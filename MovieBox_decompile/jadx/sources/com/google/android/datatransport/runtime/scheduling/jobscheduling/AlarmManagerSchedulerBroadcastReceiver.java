package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.google.android.datatransport.runtime.o;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.google.android.datatransport.runtime.t;
import com.hisavana.common.tracking.TrackingKey;

public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter(TrackingKey.PRIORITY)).intValue();
        int i10 = intent.getExtras().getInt("attemptNumber");
        t.f(context);
        o.a aVarD = o.a().b(queryParameter).d(f9.a.b(iIntValue));
        if (queryParameter2 != null) {
            aVarD.c(Base64.decode(queryParameter2, 0));
        }
        t.c().e().v(aVarD.a(), i10, new Runnable() {
            @Override
            public final void run() {
                AlarmManagerSchedulerBroadcastReceiver.b();
            }
        });
    }

    public static void b() {
    }
}
