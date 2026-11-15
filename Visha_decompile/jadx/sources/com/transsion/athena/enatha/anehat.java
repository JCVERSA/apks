package com.transsion.athena.enatha;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.taaneh.a;
import com.transsion.athena.taaneh.athena;
import com.transsion.ga.AthenaAnalytics;
import defpackage.c4d;
import defpackage.e4d;

public class anehat implements Runnable {
    private final Handler a;

    public anehat(Handler handler) {
        this.a = handler;
    }

    @Override
    public void run() {
        String strA;
        boolean z;
        Context contextI = AthenaAnalytics.I();
        e4d e4dVarA = e4d.a(contextI);
        String strI = e4dVarA.i("athena_id");
        try {
            strA = athena.b(contextI).a();
        } catch (Exception e) {
            c4d.c("%s", e.getMessage());
            strA = null;
        }
        if (!TextUtils.isEmpty(strA) && !TextUtils.equals(strI, strA)) {
            e4dVarA.g("athena_id", strA);
            if (!TextUtils.isEmpty(strI)) {
                try {
                    if (a.f(contextI, "android.permission.READ_PHONE_STATE") || a.f(contextI, "android.permission.READ_PRIVILEGED_PHONE_STATE")) {
                        z = AthenaAnalytics.R() ? true : !a.l(contextI);
                    } else {
                        z = false;
                    }
                } catch (Exception unused) {
                }
                if (z) {
                    if (TextUtils.isEmpty(athena.q())) {
                        AthenaAnalytics.J(9999).c0("data_discard", new TrackData().add("en", "device_id_transfer", 2).add("cnt", 1, 1), 9999);
                    } else {
                        AthenaAnalytics.J(9999).c0("device_id_transfer", new TrackData().add("pre_gaid", strI).add("sn", athena.q()), 9999);
                    }
                }
            }
            strI = strA;
        }
        if (!TextUtils.isEmpty(strI)) {
            a.h(strI);
        }
        if (!((TextUtils.isEmpty(strI) && TextUtils.isEmpty(athena.c(contextI, 0))) ? false : true)) {
            c4d.c("%s", "device gaid and iid are null");
        }
        this.a.postDelayed(this, 7200000L);
    }
}
