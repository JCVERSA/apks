package ve;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public final class d extends ContentObserver {

    private final Context f73594a;

    private final AudioManager f73595b;

    private final a f73596c;

    private final c f73597d;

    private float f73598e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f73594a = context;
        this.f73595b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f73596c = aVar;
        this.f73597d = cVar;
    }

    private float a() {
        return this.f73596c.a(this.f73595b.getStreamVolume(3), this.f73595b.getStreamMaxVolume(3));
    }

    private boolean b(float f10) {
        return f10 != this.f73598e;
    }

    private void c() {
        this.f73597d.a(this.f73598e);
    }

    public void d() {
        this.f73598e = a();
        c();
        this.f73594a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void e() {
        this.f73594a.getContentResolver().unregisterContentObserver(this);
    }

    @Override
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (b(fA)) {
            this.f73598e = fA;
            c();
        }
    }
}
