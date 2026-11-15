package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

public class Dq implements com.bytedance.sdk.component.vS.Sj.Sj.HiB {
    public static final Dq Sj = new Dq();
    private volatile SQLiteDatabase sP;

    @Override
    public String EjP() {
        return "logstats";
    }

    @Override
    public String HiB() {
        return "logstatsbatch";
    }

    @Override
    public SQLiteDatabase Sj(Context context) {
        if (this.sP == null) {
            synchronized (this) {
                try {
                    if (this.sP == null) {
                        this.sP = com.bytedance.sdk.openadsdk.core.HiB.Sj(context).Sj().Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.sP;
    }

    @Override
    public String TKC() {
        return null;
    }

    @Override
    public String sP() {
        return "adevent";
    }

    @Override
    public String vS() {
        return null;
    }

    @Override
    public String Sj() {
        return "loghighpriority";
    }
}
