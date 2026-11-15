package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

public final class uo2 extends ContentObserver {
    private final Context a;
    private final AudioManager b;
    private final do2 c;
    private final qo2 d;
    private float e;

    public uo2(Handler handler, Context context, do2 do2Var, qo2 qo2Var) {
        super(handler);
        this.a = context;
        this.b = (AudioManager) context.getSystemService("audio");
        this.c = do2Var;
        this.d = qo2Var;
    }

    private float c() {
        int streamVolume = this.b.getStreamVolume(3);
        int streamMaxVolume = this.b.getStreamMaxVolume(3);
        this.c.getClass();
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            return 0.0f;
        }
        float f = streamVolume / streamMaxVolume;
        if (f > 1.0f) {
            return 1.0f;
        }
        return f;
    }

    public final void a() {
        float fC = c();
        this.e = fC;
        ((cp2) this.d).a(fC);
        this.a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void b() {
        this.a.getContentResolver().unregisterContentObserver(this);
    }

    @Override
    public final void onChange(boolean z) {
        super.onChange(z);
        float fC = c();
        if (fC != this.e) {
            this.e = fC;
            ((cp2) this.d).a(fC);
        }
    }
}
