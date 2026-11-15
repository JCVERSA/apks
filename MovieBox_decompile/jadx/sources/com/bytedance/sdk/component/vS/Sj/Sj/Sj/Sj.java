package com.bytedance.sdk.component.vS.Sj.Sj.Sj;

import android.annotation.SuppressLint;
import android.content.Context;

public class Sj extends sP {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Sj Sj;

    private Sj(Context context) {
        super(context);
    }

    @Override
    public sP.C0211sP Sj() {
        return super.Sj();
    }

    public static Sj Sj(Context context) {
        if (Sj == null) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null) {
                        Sj = new Sj(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }
}
