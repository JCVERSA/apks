package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;

final class th {
    private final AudioManager a;
    private final a b;

    @Nullable
    private b c;

    @Nullable
    private ph d;
    private int f;
    private AudioFocusRequest h;
    private float g = 1.0f;
    private int e = 0;

    public class a implements AudioManager.OnAudioFocusChangeListener {
        private final Handler a;

        public a(Handler handler) {
            this.a = handler;
        }

        @Override
        public final void onAudioFocusChange(final int i) {
            this.a.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.a(i);
                }
            });
        }

        public void a(int i) {
            ph phVar;
            th thVar = th.this;
            if (i == -3 || i == -2) {
                if (i != -2 && ((phVar = thVar.d) == null || phVar.b != 1)) {
                    thVar.a(3);
                    return;
                }
                b bVar = thVar.c;
                if (bVar != null) {
                    ((r60.b) bVar).a(0);
                }
                thVar.a(2);
                return;
            }
            if (i == -1) {
                b bVar2 = thVar.c;
                if (bVar2 != null) {
                    ((r60.b) bVar2).a(-1);
                }
                thVar.a();
                return;
            }
            if (i != 1) {
                thVar.getClass();
                et0.d("AudioFocusManager", "Unknown focus change type: " + i);
                return;
            }
            thVar.a(1);
            b bVar3 = thVar.c;
            if (bVar3 != null) {
                ((r60.b) bVar3).a(1);
            }
        }
    }

    public interface b {
    }

    public th(Context context, Handler handler, b bVar) {
        this.a = (AudioManager) hg.a((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.c = bVar;
        this.b = new a(handler);
    }

    public void a() {
        if (this.e == 0) {
            return;
        }
        if (f92.a >= 26) {
            AudioFocusRequest audioFocusRequest = this.h;
            if (audioFocusRequest != null) {
                this.a.abandonAudioFocusRequest(audioFocusRequest);
            }
        } else {
            this.a.abandonAudioFocus(this.b);
        }
        a(0);
    }

    public final float b() {
        return this.g;
    }

    public final void c() {
        this.c = null;
        a();
    }

    public final void d() {
        if (f92.a(this.d, (Object) null)) {
            return;
        }
        this.d = null;
        this.f = 0;
    }

    public void a(int i) {
        if (this.e == i) {
            return;
        }
        this.e = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.g == f) {
            return;
        }
        this.g = f;
        b bVar = this.c;
        if (bVar != null) {
            ((r60.b) bVar).e();
        }
    }

    public final int a(boolean z, int i) {
        int iRequestAudioFocus;
        AudioFocusRequest.Builder builder;
        if (i == 1 || this.f != 1) {
            a();
            return z ? 1 : -1;
        }
        if (!z) {
            return -1;
        }
        if (this.e != 1) {
            if (f92.a >= 26) {
                AudioFocusRequest audioFocusRequest = this.h;
                if (audioFocusRequest == null) {
                    if (audioFocusRequest == null) {
                        builder = new AudioFocusRequest.Builder(this.f);
                    } else {
                        builder = new AudioFocusRequest.Builder(this.h);
                    }
                    ph phVar = this.d;
                    boolean z2 = phVar != null && phVar.b == 1;
                    phVar.getClass();
                    this.h = builder.setAudioAttributes(phVar.a().a).setWillPauseWhenDucked(z2).setOnAudioFocusChangeListener(this.b).build();
                }
                iRequestAudioFocus = this.a.requestAudioFocus(this.h);
            } else {
                AudioManager audioManager = this.a;
                a aVar = this.b;
                ph phVar2 = this.d;
                phVar2.getClass();
                iRequestAudioFocus = audioManager.requestAudioFocus(aVar, f92.c(phVar2.d), this.f);
            }
            if (iRequestAudioFocus == 1) {
                a(1);
            } else {
                a(0);
                return -1;
            }
        }
        return 1;
    }
}
