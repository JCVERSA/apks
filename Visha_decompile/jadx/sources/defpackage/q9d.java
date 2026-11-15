package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;

public final class q9d extends ContentObserver {
    public final Context a;
    public final AudioManager b;
    public final h3d c;
    public final g8d d;
    public float e;

    public q9d(Handler handler, Context context, h3d h3dVar, g8d g8dVar) {
        super(handler);
        this.a = context;
        this.b = (AudioManager) context.getSystemService("audio");
        this.c = h3dVar;
        this.d = g8dVar;
    }

    public final float a() {
        return this.c.a(this.b.getStreamVolume(3), this.b.getStreamMaxVolume(3));
    }

    public final boolean b(float f) {
        return f != this.e;
    }

    public final void c() {
        this.d.a(this.e);
    }

    public void d() {
        this.e = a();
        c();
        this.a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void e() {
        this.a.getContentResolver().unregisterContentObserver(this);
    }

    @Override
    public void onChange(boolean z) {
        super.onChange(z);
        float fA = a();
        if (b(fA)) {
            this.e = fA;
            c();
        }
    }
}
