package com.hunantv.imgo.a;

import android.content.Context;
import com.hunantv.imgo.net.RequestParams;

public class c extends b {
    private c(Context context) {
        super(context);
        this.c = context;
    }

    public static c a(Context context) {
        return new c(context);
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.o();
    }

    public void a(RequestParams requestParams) {
        this.a.a(b(), requestParams.toJson(), (com.hunantv.imgo.report.a) null);
    }
}
