package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import defpackage.ivh;
import defpackage.xuh;
import java.util.concurrent.atomic.AtomicReference;

public final class c6 extends ContentObserver {
    public final Context a;
    public final AudioManager b;
    public final AtomicReference c;
    public final ivh d;

    public c6(Handler handler, Context context, xuh xuhVar, ivh ivhVar) {
        super(handler);
        this.c = new AtomicReference(Float.valueOf(-1.0f));
        this.a = context;
        this.b = (AudioManager) context.getSystemService("audio");
        this.d = ivhVar;
    }

    public static float a(c6 c6Var) {
        AudioManager audioManager = c6Var.b;
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            return 0.0f;
        }
        float f = streamVolume / streamMaxVolume;
        if (f > 1.0f) {
            return 1.0f;
        }
        return f;
    }

    public final void c() {
        f();
        this.a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void d() {
        this.a.getContentResolver().unregisterContentObserver(this);
    }

    public final void f() {
        new Thread(new zzfkm(this)).start();
    }

    @Override
    public final void onChange(boolean z) {
        f();
    }
}
