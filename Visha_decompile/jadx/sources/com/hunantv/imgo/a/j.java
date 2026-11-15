package com.hunantv.imgo.a;

import android.content.Context;
import com.hunantv.imgo.data.LiveAPlayData;
import com.hunantv.imgo.data.VodAPlayData;

public class j extends b {
    private static volatile j d;

    private j(Context context) {
        super(context);
        this.c = context;
    }

    public static j a(Context context) {
        if (d == null) {
            synchronized (j.class) {
                try {
                    if (d == null) {
                        d = new j(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.n();
    }

    @Override
    public void c() {
        this.a = com.hunantv.imgo.report.d.a();
    }

    public void a(VodAPlayData vodAPlayData) {
        if (vodAPlayData == null) {
            return;
        }
        vodAPlayData.setAct("aplay");
        this.a.a(b(), vodAPlayData.createBaseRequestParams().toJson(), (com.hunantv.imgo.report.a) null);
    }

    public void a(LiveAPlayData liveAPlayData) {
        if (liveAPlayData == null) {
            return;
        }
        liveAPlayData.setAct("aplay");
        this.a.a(a(), liveAPlayData.createBaseRequestParams().toJson(), (com.hunantv.imgo.report.a) null);
    }

    public String a() {
        return "https://hw-event.log.mgtv.com/dispatcher.do";
    }
}
