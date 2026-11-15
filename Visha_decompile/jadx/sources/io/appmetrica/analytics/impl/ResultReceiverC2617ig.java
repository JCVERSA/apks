package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

public final class ResultReceiverC2617ig extends ResultReceiver {
    public final Sf a;

    public ResultReceiverC2617ig(Handler handler, Sf sf) {
        super(handler);
        this.a = sf;
    }

    public static void a(ResultReceiver resultReceiver, C2468cg c2468cg) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putByteArray("referrer", c2468cg == null ? null : c2468cg.a());
            resultReceiver.send(1, bundle);
        }
    }

    @Override
    public final void onReceiveResult(int i, Bundle bundle) {
        if (i == 1) {
            C2468cg c2468cg = null;
            try {
                byte[] byteArray = bundle.getByteArray("referrer");
                if (byteArray != null && byteArray.length != 0) {
                    c2468cg = new C2468cg(byteArray);
                }
            } catch (Throwable unused) {
            }
            this.a.a(c2468cg);
        }
    }
}
