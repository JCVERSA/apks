package com.hunantv.imgo.a;

import android.content.Context;
import com.hunantv.imgo.data.BigDataWifiData;

public class k extends b {
    private k(Context context) {
        super(context);
    }

    public static k a(Context context) {
        return new k(context);
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.r();
    }

    public void a() {
        this.a.a(b(), new BigDataWifiData().getRequestParams().toJson(), (com.hunantv.imgo.report.a) null);
    }
}
