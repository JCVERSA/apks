package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zze extends ResultReceiver {

    final TaskCompletionSource f29365a;

    @Override
    public final void onReceiveResult(int i10, Bundle bundle) {
        if (i10 == 1) {
            this.f29365a.trySetResult(-1);
        } else if (i10 != 2) {
            this.f29365a.trySetResult(1);
        } else {
            this.f29365a.trySetResult(0);
        }
    }
}
