package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import defpackage.blb;
import defpackage.op5;
import defpackage.zi;

public final class b {
    public final AudioManager a;
    public final a b;
    public InterfaceC0077b c;
    public com.google.android.exoplayer2.audio.a d;
    public int f;
    public AudioFocusRequest h;
    public boolean i;
    public float g = 1.0f;
    public int e = 0;

    public class a implements AudioManager.OnAudioFocusChangeListener {
        public final Handler b;

        public a(Handler handler) {
            this.b = handler;
        }

        public final void b(int i) {
            b.this.h(i);
        }

        @Override
        public void onAudioFocusChange(final int i) {
            this.b.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(i);
                }
            });
        }
    }

    public interface InterfaceC0077b {
        void executePlayerCommand(int i);

        void setVolumeMultiplier(float f);
    }

    public b(Context context, Handler handler, InterfaceC0077b interfaceC0077b) {
        this.a = (AudioManager) zi.e((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.c = interfaceC0077b;
        this.b = new a(handler);
    }

    public static int e(com.google.android.exoplayer2.audio.a aVar) {
        if (aVar == null) {
            return 0;
        }
        switch (aVar.d) {
            case 0:
                op5.i("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
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
                if (aVar.b == 1) {
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
                op5.i("AudioFocusManager", "Unidentified audio usage: " + aVar.d);
                return 0;
            case 16:
                return blb.a >= 19 ? 4 : 2;
        }
    }

    public final void a() {
        this.a.abandonAudioFocus(this.b);
    }

    public final void b() {
        if (this.e == 0) {
            return;
        }
        if (blb.a >= 26) {
            c();
        } else {
            a();
        }
        n(0);
    }

    public final void c() {
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest != null) {
            this.a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    public final void f(int i) {
        InterfaceC0077b interfaceC0077b = this.c;
        if (interfaceC0077b != null) {
            interfaceC0077b.executePlayerCommand(i);
        }
    }

    public float g() {
        return this.g;
    }

    public final void h(int i) {
        if (i == -3 || i == -2) {
            if (i != -2 && !q()) {
                n(3);
                return;
            } else {
                f(0);
                n(2);
                return;
            }
        }
        if (i == -1) {
            f(-1);
            b();
        } else if (i == 1) {
            n(1);
            f(1);
        } else {
            op5.i("AudioFocusManager", "Unknown focus change type: " + i);
        }
    }

    public void i() {
        this.c = null;
        b();
    }

    public final int j() {
        if (this.e == 1) {
            return 1;
        }
        if ((blb.a >= 26 ? l() : k()) == 1) {
            n(1);
            return 1;
        }
        n(0);
        return -1;
    }

    public final int k() {
        return this.a.requestAudioFocus(this.b, blb.Z(((com.google.android.exoplayer2.audio.a) zi.e(this.d)).d), this.f);
    }

    public final int l() {
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest == null || this.i) {
            this.h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f) : new AudioFocusRequest.Builder(this.h)).setAudioAttributes(((com.google.android.exoplayer2.audio.a) zi.e(this.d)).b().a).setWillPauseWhenDucked(q()).setOnAudioFocusChangeListener(this.b).build();
            this.i = false;
        }
        return this.a.requestAudioFocus(this.h);
    }

    public void m(com.google.android.exoplayer2.audio.a aVar) {
        if (blb.c(this.d, aVar)) {
            return;
        }
        this.d = aVar;
        int iE = e(aVar);
        this.f = iE;
        boolean z = true;
        if (iE != 1 && iE != 0) {
            z = false;
        }
        zi.b(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public final void n(int i) {
        if (this.e == i) {
            return;
        }
        this.e = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.g == f) {
            return;
        }
        this.g = f;
        InterfaceC0077b interfaceC0077b = this.c;
        if (interfaceC0077b != null) {
            interfaceC0077b.setVolumeMultiplier(f);
        }
    }

    public final boolean o(int i) {
        return i == 1 || this.f != 1;
    }

    public int p(boolean z, int i) {
        if (o(i)) {
            b();
            return z ? 1 : -1;
        }
        if (z) {
            return j();
        }
        return -1;
    }

    public final boolean q() {
        com.google.android.exoplayer2.audio.a aVar = this.d;
        return aVar != null && aVar.b == 1;
    }
}
