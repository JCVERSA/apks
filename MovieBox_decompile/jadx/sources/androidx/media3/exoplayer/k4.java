package androidx.media3.exoplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

final class k4 {

    private final Context f11746a;

    private final b f11747b;

    private final androidx.media3.common.util.g f11748c;

    private AudioManager f11749d;

    private d f11750e;

    private int f11751f;

    public interface b {
        void l(int i10);

        void r(int i10, boolean z10);
    }

    static final class c {

        public final int f11752a;

        public final int f11753b;

        public final boolean f11754c;

        public final int f11755d;

        public final int f11756e;

        public c(int i10, int i11, boolean z10, int i12, int i13) {
            this.f11752a = i10;
            this.f11753b = i11;
            this.f11754c = z10;
            this.f11755d = i12;
            this.f11756e = i13;
        }
    }

    final class d extends BroadcastReceiver {
        private d() {
        }

        public void b() {
            if (k4.this.f11750e == null) {
                return;
            }
            k4.this.f11748c.i(k4.this.j(((c) k4.this.f11748c.d()).f11752a));
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            k4.this.f11748c.h(new Runnable() {
                @Override
                public final void run() {
                    this.f11791a.b();
                }
            });
        }
    }

    public k4(Context context, b bVar, final int i10, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
        this.f11746a = context.getApplicationContext();
        this.f11747b = bVar;
        androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(new c(i10, 0, false, 0, 0), looper, looper2, iVar, new androidx.media3.common.util.g.a() {
            @Override
            public final void a(Object obj, Object obj2) {
                this.f11315a.s((k4.c) obj, (k4.c) obj2);
            }
        });
        this.f11748c = gVar;
        gVar.h(new Runnable() {
            @Override
            public final void run() {
                this.f11322a.n(i10);
            }
        });
    }

    public c j(int i10) {
        androidx.media3.common.util.a.e(this.f11749d);
        return new c(i10, t1.m.f(this.f11749d, i10), t1.m.g(this.f11749d, i10), t1.m.e(this.f11749d, i10), t1.m.d(this.f11749d, i10));
    }

    public void n(int i10) {
        this.f11749d = (AudioManager) androidx.media3.common.util.a.i((AudioManager) this.f11746a.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        d dVar = new d();
        try {
            this.f11746a.registerReceiver(dVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f11750e = dVar;
        } catch (RuntimeException e10) {
            androidx.media3.common.util.u.i("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
        this.f11748c.i(j(i10));
    }

    public c p(c cVar) {
        d dVar = this.f11750e;
        if (dVar != null) {
            try {
                this.f11746a.unregisterReceiver(dVar);
            } catch (RuntimeException e10) {
                androidx.media3.common.util.u.i("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            this.f11750e = null;
        }
        return cVar;
    }

    public c q(boolean z10, int i10, c cVar) {
        if (cVar.f11754c == z10) {
            return cVar;
        }
        androidx.media3.common.util.a.e(this.f11749d);
        if (androidx.media3.common.util.a1.f10038a >= 23) {
            this.f11749d.adjustStreamVolume(cVar.f11752a, z10 ? -100 : 100, i10);
        } else {
            this.f11749d.setStreamMute(cVar.f11752a, z10);
        }
        return j(cVar.f11752a);
    }

    public c r(boolean z10, c cVar) {
        int i10;
        int i11 = cVar.f11752a;
        if (cVar.f11754c == z10) {
            i10 = cVar.f11753b;
        } else {
            i10 = z10 ? 0 : this.f11751f;
        }
        return new c(i11, i10, z10, cVar.f11755d, cVar.f11756e);
    }

    public void s(c cVar, c cVar2) {
        boolean z10 = cVar.f11754c;
        if (!z10 && cVar2.f11754c) {
            this.f11751f = cVar.f11753b;
        }
        int i10 = cVar.f11753b;
        int i11 = cVar2.f11753b;
        if (i10 != i11 || z10 != cVar2.f11754c) {
            this.f11747b.r(i11, cVar2.f11754c);
        }
        int i12 = cVar.f11752a;
        int i13 = cVar2.f11752a;
        if (i12 == i13 && cVar.f11755d == cVar2.f11755d && cVar.f11756e == cVar2.f11756e) {
            return;
        }
        this.f11747b.l(i13);
    }

    public int k() {
        return ((c) this.f11748c.d()).f11756e;
    }

    public int l() {
        return ((c) this.f11748c.d()).f11755d;
    }

    public boolean m() {
        return ((c) this.f11748c.d()).f11754c;
    }

    public void t() {
        this.f11748c.j(new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return k4.o((k4.c) obj);
            }
        }, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return this.f11737a.p((k4.c) obj);
            }
        });
    }

    public void u(final boolean z10, final int i10) {
        this.f11748c.j(new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return this.f11328a.r(z10, (k4.c) obj);
            }
        }, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return this.f11345a.q(z10, i10, (k4.c) obj);
            }
        });
    }

    public static c o(c cVar) {
        return cVar;
    }
}
