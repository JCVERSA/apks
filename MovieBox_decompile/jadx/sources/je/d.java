package je;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public final class d extends ContentObserver {

    private final Context f63100a;

    private final AudioManager f63101b;

    private final a f63102c;

    private final c f63103d;

    private float f63104e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f63100a = context;
        this.f63101b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f63102c = aVar;
        this.f63103d = cVar;
    }

    private float a() {
        return this.f63102c.a(this.f63101b.getStreamVolume(3), this.f63101b.getStreamMaxVolume(3));
    }

    private boolean b(float f10) {
        return f10 != this.f63104e;
    }

    private void c() {
        this.f63103d.a(this.f63104e);
    }

    public void d() {
        this.f63104e = a();
        c();
        this.f63100a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void e() {
        this.f63100a.getContentResolver().unregisterContentObserver(this);
    }

    @Override
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (b(fA)) {
            this.f63104e = fA;
            c();
        }
    }
}
