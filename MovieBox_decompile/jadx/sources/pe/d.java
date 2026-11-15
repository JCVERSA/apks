package pe;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public final class d extends ContentObserver {

    private final Context f69147a;

    private final AudioManager f69148b;

    private final a f69149c;

    private final c f69150d;

    private float f69151e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f69147a = context;
        this.f69148b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f69149c = aVar;
        this.f69150d = cVar;
    }

    private float a() {
        return this.f69149c.a(this.f69148b.getStreamVolume(3), this.f69148b.getStreamMaxVolume(3));
    }

    private boolean b(float f10) {
        return f10 != this.f69151e;
    }

    private void c() {
        this.f69150d.a(this.f69151e);
    }

    public void d() {
        this.f69151e = a();
        c();
        this.f69147a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void e() {
        this.f69147a.getContentResolver().unregisterContentObserver(this);
    }

    @Override
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (b(fA)) {
            this.f69151e = fA;
            c();
        }
    }
}
