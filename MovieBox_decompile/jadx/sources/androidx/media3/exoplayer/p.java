package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import android.os.Handler;
import android.os.Looper;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

final class p implements m4 {

    private final m4 f12120a;

    static final class b implements m4 {

        private AudioManager f12121a;

        private AudioDeviceCallback f12122b;

        private androidx.media3.common.util.g f12123c;

        class a extends AudioDeviceCallback {
            a() {
            }

            @Override
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                b.this.f12123c.i(Boolean.valueOf(b.this.h()));
            }

            @Override
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                b.this.f12123c.i(Boolean.valueOf(b.this.h()));
            }
        }

        private b() {
        }

        public boolean h() {
            for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) androidx.media3.common.util.a.i(this.f12121a)).getDevices(2)) {
                if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 5 || audioDeviceInfo.getType() == 6 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    return true;
                }
                int i10 = androidx.media3.common.util.a1.f10038a;
                if (i10 >= 26 && audioDeviceInfo.getType() == 22) {
                    return true;
                }
                if (i10 >= 28 && audioDeviceInfo.getType() == 23) {
                    return true;
                }
                if (i10 >= 31 && (audioDeviceInfo.getType() == 26 || audioDeviceInfo.getType() == 27)) {
                    return true;
                }
                if (i10 >= 33 && audioDeviceInfo.getType() == 30) {
                    return true;
                }
            }
            return false;
        }

        public void i() {
            AudioManager audioManager = this.f12121a;
            if (audioManager != null) {
                audioManager.unregisterAudioDeviceCallback((AudioDeviceCallback) androidx.media3.common.util.a.e(this.f12122b));
            }
        }

        public static void j(m4.a aVar, Boolean bool, Boolean bool2) {
            aVar.a(bool2.booleanValue());
        }

        public void k(Context context) {
            AudioManager audioManager;
            androidx.media3.common.util.a.e(this.f12123c);
            if (androidx.media3.common.util.a1.L0(context) && (audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                this.f12121a = audioManager;
                a aVar = new a();
                this.f12122b = aVar;
                audioManager.registerAudioDeviceCallback(aVar, new Handler((Looper) androidx.media3.common.util.a.e(Looper.myLooper())));
                this.f12123c.i(Boolean.valueOf(h()));
            }
        }

        @Override
        public boolean a() {
            androidx.media3.common.util.g gVar = this.f12123c;
            if (gVar == null) {
                return true;
            }
            return ((Boolean) gVar.d()).booleanValue();
        }

        @Override
        public void b(final m4.a aVar, final Context context, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
            androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(Boolean.TRUE, looper2, looper, iVar, new androidx.media3.common.util.g.a() {
                @Override
                public final void a(Object obj, Object obj2) {
                    p.b.j(aVar, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.f12123c = gVar;
            gVar.h(new Runnable() {
                @Override
                public final void run() {
                    this.f12253a.k(context);
                }
            });
        }

        @Override
        public void disable() {
            ((androidx.media3.common.util.g) androidx.media3.common.util.a.e(this.f12123c)).h(new Runnable() {
                @Override
                public final void run() {
                    this.f12142a.i();
                }
            });
        }
    }

    static final class c implements m4 {

        private static final RouteDiscoveryPreference f12125e;

        private MediaRouter2 f12126a;

        private MediaRouter2$RouteCallback f12127b;

        private MediaRouter2$ControllerCallback f12128c;

        private androidx.media3.common.util.g f12129d;

        class a extends MediaRouter2$RouteCallback {
            a() {
            }
        }

        class b extends MediaRouter2$ControllerCallback {
            b() {
            }

            public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
                c.this.f12129d.i(Boolean.valueOf(c.j(c.this.f12126a)));
            }
        }

        static {
            c0.a();
            f12125e = t.a(ImmutableList.of(), false).build();
        }

        private c() {
        }

        private static boolean i(MediaRoute2Info mediaRoute2Info, int i10, boolean z10) {
            int suitabilityStatus = mediaRoute2Info.getSuitabilityStatus();
            if (suitabilityStatus == 1) {
                return (i10 == 1 || i10 == 2) && z10;
            }
            return suitabilityStatus == 0;
        }

        public static boolean j(MediaRouter2 mediaRouter2) {
            int transferReason = h0.a(androidx.media3.common.util.a.e(mediaRouter2)).getSystemController().getRoutingSessionInfo().getTransferReason();
            boolean zWasTransferInitiatedBySelf = mediaRouter2.getSystemController().wasTransferInitiatedBySelf();
            Iterator it = mediaRouter2.getSystemController().getSelectedRoutes().iterator();
            while (it.hasNext()) {
                if (i(a0.a(it.next()), transferReason, zWasTransferInitiatedBySelf)) {
                    return true;
                }
            }
            return false;
        }

        public void k() {
            h0.a(androidx.media3.common.util.a.e(this.f12126a)).unregisterControllerCallback(i0.a(androidx.media3.common.util.a.e(this.f12128c)));
            this.f12128c = null;
            this.f12126a.unregisterRouteCallback(k0.a(androidx.media3.common.util.a.e(this.f12127b)));
        }

        public static void l(m4.a aVar, Boolean bool, Boolean bool2) {
            aVar.a(bool2.booleanValue());
        }

        public void m(Context context) {
            androidx.media3.common.util.a.e(this.f12129d);
            this.f12126a = MediaRouter2.getInstance(context);
            this.f12127b = new a();
            final androidx.media3.common.util.g gVar = this.f12129d;
            Objects.requireNonNull(gVar);
            Executor executor = new Executor() {
                @Override
                public final void execute(Runnable runnable) {
                    gVar.h(runnable);
                }
            };
            this.f12126a.registerRouteCallback(executor, this.f12127b, f12125e);
            b bVar = new b();
            this.f12128c = bVar;
            this.f12126a.registerControllerCallback(executor, bVar);
            this.f12129d.i(Boolean.valueOf(j(this.f12126a)));
        }

        @Override
        public boolean a() {
            androidx.media3.common.util.g gVar = this.f12129d;
            if (gVar == null) {
                return true;
            }
            return ((Boolean) gVar.d()).booleanValue();
        }

        @Override
        public void b(final m4.a aVar, final Context context, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
            androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(Boolean.TRUE, looper2, looper, iVar, new androidx.media3.common.util.g.a() {
                @Override
                public final void a(Object obj, Object obj2) {
                    p.c.l(aVar, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.f12129d = gVar;
            gVar.h(new Runnable() {
                @Override
                public final void run() {
                    this.f11961a.m(context);
                }
            });
        }

        @Override
        public void disable() {
            ((androidx.media3.common.util.g) androidx.media3.common.util.a.i(this.f12129d)).h(new Runnable() {
                @Override
                public final void run() {
                    this.f11784a.k();
                }
            });
        }
    }

    public p() {
        int i10 = androidx.media3.common.util.a1.f10038a;
        if (i10 >= 35) {
            this.f12120a = new c();
        } else if (i10 >= 23) {
            this.f12120a = new b();
        } else {
            this.f12120a = null;
        }
    }

    @Override
    public boolean a() {
        m4 m4Var = this.f12120a;
        return m4Var == null || m4Var.a();
    }

    @Override
    public void b(m4.a aVar, Context context, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
        m4 m4Var = this.f12120a;
        if (m4Var != null) {
            m4Var.b(aVar, context, looper, looper2, iVar);
        }
    }

    @Override
    public void disable() {
        m4 m4Var = this.f12120a;
        if (m4Var != null) {
            m4Var.disable();
        }
    }
}
