package com.hunantv.imgo.a;

import android.content.Context;
import com.hunantv.imgo.data.PlayErrorData;

public class i extends b {
    public i(Context context) {
        super(context);
    }

    public static i a(Context context) {
        return new i(context);
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.s();
    }

    public void a(PlayErrorData playErrorData) {
        this.a.a(b(), playErrorData.getRequestParams().toJson(), (com.hunantv.imgo.report.a) null);
    }
}
