package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

final class f {

    private final AudioManager f24417a;

    private final a f24418b;

    private b f24419c;

    private com.google.android.exoplayer2.audio.e f24420d;

    private int f24422f;

    private AudioFocusRequest f24424h;

    private boolean f24425i;

    private float f24423g = 1.0f;

    private int f24421e = 0;

    class a implements AudioManager.OnAudioFocusChangeListener {

        private final Handler f24426a;

        public a(Handler handler) {
            this.f24426a = handler;
        }

        public void b(int i10) {
            f.this.h(i10);
        }

        @Override
        public void onAudioFocusChange(final int i10) {
            this.f24426a.post(new Runnable() {
                @Override
                public final void run() {
                    this.f24379a.b(i10);
                }
            });
        }
    }

    public interface b {
        void s(float f10);

        void u(int i10);
    }

    public f(Context context, Handler handler, b bVar) {
        this.f24417a = (AudioManager) com.google.android.exoplayer2.util.a.e((AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        this.f24419c = bVar;
        this.f24418b = new a(handler);
    }

    private void a() {
        this.f24417a.abandonAudioFocus(this.f24418b);
    }

    private void b() {
        if (this.f24421e == 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.p0.f26854a >= 26) {
            c();
        } else {
            a();
        }
        n(0);
    }

    private void c() {
        AudioFocusRequest audioFocusRequest = this.f24424h;
        if (audioFocusRequest != null) {
            this.f24417a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    private static int e(com.google.android.exoplayer2.audio.e eVar) {
        if (eVar == null) {
            return 0;
        }
        switch (eVar.f23946c) {
            case 0:
                com.google.android.exoplayer2.util.s.i("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
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
                if (eVar.f23944a == 1) {
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
                com.google.android.exoplayer2.util.s.i("AudioFocusManager", "Unidentified audio usage: " + eVar.f23946c);
                return 0;
            case 16:
                return com.google.android.exoplayer2.util.p0.f26854a >= 19 ? 4 : 2;
        }
    }

    private void f(int i10) {
        b bVar = this.f24419c;
        if (bVar != null) {
            bVar.u(i10);
        }
    }

    public void h(int i10) {
        if (i10 == -3 || i10 == -2) {
            if (i10 != -2 && !q()) {
                n(3);
                return;
            } else {
                f(0);
                n(2);
                return;
            }
        }
        if (i10 == -1) {
            f(-1);
            b();
        } else if (i10 == 1) {
            n(1);
            f(1);
        } else {
            com.google.android.exoplayer2.util.s.i("AudioFocusManager", "Unknown focus change type: " + i10);
        }
    }

    private int j() {
        if (this.f24421e == 1) {
            return 1;
        }
        if ((com.google.android.exoplayer2.util.p0.f26854a >= 26 ? l() : k()) == 1) {
            n(1);
            return 1;
        }
        n(0);
        return -1;
    }

    private int k() {
        return this.f24417a.requestAudioFocus(this.f24418b, com.google.android.exoplayer2.util.p0.g0(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.f24420d)).f23946c), this.f24422f);
    }

    private int l() {
        AudioFocusRequest.Builder builderA;
        AudioFocusRequest audioFocusRequest = this.f24424h;
        if (audioFocusRequest == null || this.f24425i) {
            if (audioFocusRequest == null) {
                c.a();
                builderA = t1.a.a(this.f24422f);
            } else {
                c.a();
                builderA = com.google.android.exoplayer2.b.a(this.f24424h);
            }
            this.f24424h = builderA.setAudioAttributes(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.f24420d)).b().f23950a).setWillPauseWhenDucked(q()).setOnAudioFocusChangeListener(this.f24418b).build();
            this.f24425i = false;
        }
        return this.f24417a.requestAudioFocus(this.f24424h);
    }

    private void n(int i10) {
        if (this.f24421e == i10) {
            return;
        }
        this.f24421e = i10;
        float f10 = i10 == 3 ? 0.2f : 1.0f;
        if (this.f24423g == f10) {
            return;
        }
        this.f24423g = f10;
        b bVar = this.f24419c;
        if (bVar != null) {
            bVar.s(f10);
        }
    }

    private boolean o(int i10) {
        return i10 == 1 || this.f24422f != 1;
    }

    private boolean q() {
        com.google.android.exoplayer2.audio.e eVar = this.f24420d;
        return eVar != null && eVar.f23944a == 1;
    }

    public float g() {
        return this.f24423g;
    }

    public void i() {
        this.f24419c = null;
        b();
    }

    public void m(com.google.android.exoplayer2.audio.e eVar) {
        if (com.google.android.exoplayer2.util.p0.c(this.f24420d, eVar)) {
            return;
        }
        this.f24420d = eVar;
        int iE = e(eVar);
        this.f24422f = iE;
        boolean z10 = true;
        if (iE != 1 && iE != 0) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int p(boolean z10, int i10) {
        if (o(i10)) {
            b();
            return z10 ? 1 : -1;
        }
        if (z10) {
            return j();
        }
        return -1;
    }
}
