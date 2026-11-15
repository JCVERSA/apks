package com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj;

import android.content.Context;
import com.bytedance.sdk.component.vS.Sj.Dq;

public class vS extends Jcg {
    public vS(Context context, com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
        super(context, sj2);
    }

    @Override
    public byte Sj() {
        return (byte) 1;
    }

    @Override
    public byte TKC() {
        return (byte) 3;
    }

    @Override
    public String sP() {
        return Dq.Jcg().EjP().HiB();
    }

    public static String Sj(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }
}
