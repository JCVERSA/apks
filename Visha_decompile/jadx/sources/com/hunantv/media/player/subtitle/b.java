package com.hunantv.media.player.subtitle;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.accessibility.CaptioningManager;
import java.util.Iterator;
import java.util.Locale;
import java.util.Vector;

public class b {
    static final boolean a = true;
    private com.hunantv.media.player.b.a b;
    private d e;
    private CaptioningManager g;
    private Handler h;
    private CaptioningManager.CaptioningChangeListener j;
    private a m;
    private InterfaceC0137b n;
    private final Handler.Callback i = new Handler.Callback() {
        @Override
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                b.this.h();
                return true;
            }
            if (i == 2) {
                b.this.i();
                return true;
            }
            if (i == 3) {
                b.this.b((d) message.obj);
                return true;
            }
            if (i != 4) {
                return false;
            }
            b.this.g();
            return true;
        }
    };
    private boolean k = false;
    private boolean l = false;
    private Vector<Object> c = new Vector<>();
    private boolean f = false;
    private Vector<d> d = new Vector<>();

    public interface a {
        Looper getSubtitleLooper();

        void setSubtitleWidget(d.c cVar);
    }

    public interface InterfaceC0137b {
        void onSubtitleTrackSelected(d dVar);
    }

    public b(Context context, com.hunantv.media.player.b.a aVar, InterfaceC0137b interfaceC0137b) {
        this.b = aVar;
        this.n = interfaceC0137b;
        if (com.hunantv.media.player.subtitle.a.a()) {
            this.g = (CaptioningManager) context.getSystemService("captioning");
            this.j = new CaptioningManager.CaptioningChangeListener() {
                @Override
                public void onEnabledChanged(boolean z) {
                    b.this.b();
                }

                @Override
                public void onLocaleChanged(Locale locale) {
                    b.this.b();
                }
            };
        }
    }

    private d.c f() {
        d dVar = this.e;
        if (dVar == null) {
            return null;
        }
        return dVar.c();
    }

    public void g() {
        d dVar;
        if (!this.k) {
            d dVarA = a();
            if (dVarA != null) {
                a(dVarA);
                this.k = false;
                if (this.l) {
                    return;
                }
                d();
                this.l = false;
                return;
            }
            return;
        }
        if (this.l) {
            return;
        }
        if (com.hunantv.media.player.subtitle.a.b(this.g) || !((dVar = this.e) == null || dVar.b().getInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE, 0) == 0)) {
            d();
        } else {
            d dVar2 = this.e;
            if (dVar2 != null && dVar2.h() == 4) {
                e();
            }
        }
        this.l = false;
    }

    public void h() {
        this.f = true;
        this.l = true;
        d dVar = this.e;
        if (dVar != null) {
            dVar.f();
        }
    }

    public void i() {
        this.l = true;
        d dVar = this.e;
        if (dVar != null) {
            dVar.g();
        }
        this.f = false;
    }

    private void j() {
        boolean z = a;
        if (!z && this.h == null) {
            throw new AssertionError("Should have a looper already");
        }
        if (!z && Looper.myLooper() != this.h.getLooper()) {
            throw new AssertionError("Must be called from the anchor's looper");
        }
    }

    public d a() {
        d next;
        Locale localeA = com.hunantv.media.player.subtitle.a.a(this.g);
        Locale locale = localeA == null ? Locale.getDefault() : localeA;
        boolean zB = com.hunantv.media.player.subtitle.a.b(this.g);
        synchronized (this.d) {
            try {
                Iterator<d> it = this.d.iterator();
                next = null;
                int i = -1;
                while (it.hasNext()) {
                    next = it.next();
                    MediaFormat mediaFormatB = next.b();
                    String string = mediaFormatB.getString("language");
                    int i2 = 0;
                    int i3 = 1;
                    boolean z = mediaFormatB.getInteger(MediaFormat.KEY_IS_FORCED_SUBTITLE, 0) != 0;
                    boolean z2 = mediaFormatB.getInteger(MediaFormat.KEY_IS_AUTOSELECT, 1) != 0;
                    boolean z3 = mediaFormatB.getInteger(MediaFormat.KEY_IS_DEFAULT, 0) != 0;
                    if (locale != null && !locale.getLanguage().equals("") && !locale.getISO3Language().equals(string) && !locale.getLanguage().equals(string)) {
                        i3 = 0;
                    }
                    int i4 = (z ? 0 : 8) + ((localeA == null && z3) ? 4 : 0);
                    if (!z2) {
                        i2 = 2;
                    }
                    int i5 = i4 + i2 + i3;
                    if (zB || z) {
                        if ((localeA == null && z3) || (i3 != 0 && (z2 || z || localeA != null))) {
                            if (i5 > i) {
                                i = i5;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return next;
    }

    public void b() {
        a(this.h.obtainMessage(4));
    }

    public void c() {
        j();
        e();
        a((d) null);
        this.d.clear();
        this.k = false;
        this.l = false;
        if (this.g == null || !com.hunantv.media.player.subtitle.a.a()) {
            return;
        }
        this.g.removeCaptioningChangeListener(this.j);
    }

    public void d() {
        a(this.h.obtainMessage(1));
    }

    public void e() {
        a(this.h.obtainMessage(2));
    }

    public void finalize() throws Throwable {
        if (this.g != null && com.hunantv.media.player.subtitle.a.a()) {
            this.g.removeCaptioningChangeListener(this.j);
        }
        super.finalize();
    }

    public d a(d.c cVar, MediaFormat mediaFormat) {
        if (mediaFormat == null || !"application/x-subrip".equals(mediaFormat.getString("mime"))) {
            return null;
        }
        com.hunantv.media.player.subtitle.a.a aVar = new com.hunantv.media.player.subtitle.a.a(cVar, mediaFormat);
        synchronized (this.d) {
            try {
                if (this.d.size() == 0 && this.g != null && com.hunantv.media.player.subtitle.a.a()) {
                    this.g.addCaptioningChangeListener(this.j);
                }
                this.d.add(aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    private void a(Message message) {
        if (!a && this.h == null) {
            throw new AssertionError("Should have a looper already");
        }
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.h.getLooper();
        Handler handler = this.h;
        if (looperMyLooper == looper) {
            handler.dispatchMessage(message);
        } else {
            handler.sendMessage(message);
        }
    }

    public void b(d dVar) {
        this.k = true;
        d dVar2 = this.e;
        if (dVar2 == dVar) {
            return;
        }
        if (dVar2 != null) {
            dVar2.g();
            this.e.a((com.hunantv.media.player.b.a) null);
        }
        this.e = dVar;
        a aVar = this.m;
        if (aVar != null) {
            aVar.setSubtitleWidget(f());
        }
        d dVar3 = this.e;
        if (dVar3 != null) {
            dVar3.a(this.b);
            this.e.f();
        }
        InterfaceC0137b interfaceC0137b = this.n;
        if (interfaceC0137b != null) {
            interfaceC0137b.onSubtitleTrackSelected(dVar);
        }
    }

    public void a(a aVar) {
        a aVar2 = this.m;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            j();
            this.m.setSubtitleWidget(null);
        }
        this.m = aVar;
        this.h = null;
        if (aVar != null) {
            this.h = new Handler(this.m.getSubtitleLooper(), this.i);
            j();
            this.m.setSubtitleWidget(f());
        }
    }

    public boolean a(d dVar) {
        if (dVar != null && !this.d.contains(dVar)) {
            return false;
        }
        a(this.h.obtainMessage(3, dVar));
        return true;
    }
}
