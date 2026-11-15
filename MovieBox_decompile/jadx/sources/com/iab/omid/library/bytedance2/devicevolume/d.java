package com.iab.omid.library.bytedance2.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public final class d extends ContentObserver {

    private final Context f32598a;

    private final AudioManager f32599b;

    private final a f32600c;

    private final c f32601d;

    private float f32602e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f32598a = context;
        this.f32599b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f32600c = aVar;
        this.f32601d = cVar;
    }

    private float a() {
        return this.f32600c.a(this.f32599b.getStreamVolume(3), this.f32599b.getStreamMaxVolume(3));
    }

    private void b() {
        this.f32601d.a(this.f32602e);
    }

    public void c() {
        this.f32602e = a();
        b();
        this.f32598a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f32598a.getContentResolver().unregisterContentObserver(this);
    }

    @Override
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (a(fA)) {
            this.f32602e = fA;
            b();
        }
    }

    private boolean a(float f10) {
        return f10 != this.f32602e;
    }
}
