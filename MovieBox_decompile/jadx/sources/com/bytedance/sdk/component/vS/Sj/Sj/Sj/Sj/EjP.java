package com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj;

import android.content.Context;
import com.bytedance.sdk.component.vS.Sj.Dq;

public class EjP extends Sj {
    public EjP(Context context, com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        super(context, sj2);
    }

    @Override
    public byte EjP() {
        return (byte) 0;
    }

    @Override
    public byte TKC() {
        return (byte) 1;
    }

    @Override
    public String sP() {
        com.bytedance.sdk.component.vS.Sj.Sj.HiB hiBEjP = Dq.Jcg().EjP();
        if (hiBEjP != null) {
            return hiBEjP.Sj();
        }
        return null;
    }

    public static String TKC(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }
}
