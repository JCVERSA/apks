package com.bytedance.sdk.component.vS.Sj.Sj.Sj;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

public class HiB implements com.bytedance.sdk.component.vS.Sj.Sj.HiB {
    public static final HiB Sj = new HiB();
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
                        this.sP = new EjP(context).getWritableDatabase();
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
