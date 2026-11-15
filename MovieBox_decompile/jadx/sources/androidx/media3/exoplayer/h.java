package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import com.google.common.base.Suppliers;
import java.util.Objects;

final class h {

    private final com.google.common.base.q f11330a;

    private final Handler f11331b;

    private a f11332c;

    private androidx.media3.common.c f11333d;

    private int f11335f;

    private t1.g f11337h;

    private boolean f11338i;

    private float f11336g = 1.0f;

    private int f11334e = 0;

    public interface a {
        void s(float f10);

        void u(int i10);
    }

    public h(final Context context, Looper looper, a aVar) {
        this.f11330a = Suppliers.a(new com.google.common.base.q() {
            @Override
            public final Object get() {
                return t1.m.c(context);
            }
        });
        this.f11332c = aVar;
        this.f11331b = new Handler(looper);
    }

    private void c() {
        int i10 = this.f11334e;
        if (i10 == 1 || i10 == 0 || this.f11337h == null) {
            return;
        }
        t1.m.b((AudioManager) this.f11330a.get(), this.f11337h);
    }

    private static int d(androidx.media3.common.c cVar) {
        if (cVar == null) {
            return 0;
        }
        switch (cVar.f9603c) {
            case 0:
                androidx.media3.common.util.u.h("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (cVar.f9601a == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                androidx.media3.common.util.u.h("AudioFocusManager", "Unidentified audio usage: " + cVar.f9603c);
                return 0;
            case 16:
                return 4;
        }
    }

    private void e(int i10) {
        a aVar = this.f11332c;
        if (aVar != null) {
            aVar.u(i10);
        }
    }

    public void g(int i10) {
        if (i10 == -3 || i10 == -2) {
            if (i10 != -2 && !p()) {
                m(4);
                return;
            } else {
                e(0);
                m(3);
                return;
            }
        }
        if (i10 == -1) {
            e(-1);
            c();
            m(1);
        } else if (i10 == 1) {
            m(2);
            e(1);
        } else {
            androidx.media3.common.util.u.h("AudioFocusManager", "Unknown focus change type: " + i10);
        }
    }

    private int j() {
        if (this.f11334e == 2) {
            return 1;
        }
        if (k() == 1) {
            m(2);
            return 1;
        }
        m(1);
        return -1;
    }

    private int k() {
        t1.g gVar = this.f11337h;
        if (gVar == null || this.f11338i) {
            this.f11337h = (gVar == null ? new t1.g.b(this.f11335f) : gVar.a()).b((androidx.media3.common.c) androidx.media3.common.util.a.e(this.f11333d)).d(p()).c(new AudioManager.OnAudioFocusChangeListener() {
                @Override
                public final void onAudioFocusChange(int i10) {
                    this.f11316a.g(i10);
                }
            }, this.f11331b).a();
            this.f11338i = false;
        }
        return t1.m.i((AudioManager) this.f11330a.get(), this.f11337h);
    }

    private void m(int i10) {
        if (this.f11334e == i10) {
            return;
        }
        this.f11334e = i10;
        float f10 = i10 == 4 ? 0.2f : 1.0f;
        if (this.f11336g == f10) {
            return;
        }
        this.f11336g = f10;
        a aVar = this.f11332c;
        if (aVar != null) {
            aVar.s(f10);
        }
    }

    private boolean n(int i10) {
        return i10 != 1 && this.f11335f == 1;
    }

    private boolean p() {
        androidx.media3.common.c cVar = this.f11333d;
        return cVar != null && cVar.f9601a == 1;
    }

    public float f() {
        return this.f11336g;
    }

    public void i() {
        this.f11332c = null;
        c();
        m(0);
    }

    public void l(androidx.media3.common.c cVar) {
        if (Objects.equals(this.f11333d, cVar)) {
            return;
        }
        this.f11333d = cVar;
        int iD = d(cVar);
        this.f11335f = iD;
        boolean z10 = true;
        if (iD != 1 && iD != 0) {
            z10 = false;
        }
        androidx.media3.common.util.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int o(boolean z10, int i10) {
        if (!n(i10)) {
            c();
            m(0);
            return 1;
        }
        if (z10) {
            return j();
        }
        int i11 = this.f11334e;
        if (i11 != 1) {
            return i11 != 3 ? 1 : 0;
        }
        return -1;
    }
}
