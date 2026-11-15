package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.WorkManager;
import androidx.work.impl.workers.DiagnosticsWorker;
import androidx.work.j;
import androidx.work.k;

public class DiagnosticsReceiver extends BroadcastReceiver {

    private static final String f15267a = j.i("DiagnosticsRcvr");

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        j.e().a(f15267a, "Requesting diagnostics");
        try {
            WorkManager.f(context).c(k.e(DiagnosticsWorker.class));
        } catch (IllegalStateException e10) {
            j.e().d(f15267a, "WorkManager is not initialized", e10);
        }
    }
}
