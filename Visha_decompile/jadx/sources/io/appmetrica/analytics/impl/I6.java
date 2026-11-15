package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

public final class I6 extends ResultReceiver {
    public final H6 a;

    public I6(Handler handler, H6 h6) {
        super(handler);
        this.a = h6;
    }

    public static void a(ResultReceiver resultReceiver, C2655k4 c2655k4) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            c2655k4.b(bundle);
            resultReceiver.send(1, bundle);
        }
    }

    @Override
    public final void onReceiveResult(int i, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.a.a(i, bundle);
    }

    public static void a(ResultReceiver resultReceiver, EnumC2697ll enumC2697ll, C2655k4 c2655k4) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("startup_error_key_code", enumC2697ll.a);
            c2655k4.b(bundle);
            resultReceiver.send(2, bundle);
        }
    }
}
