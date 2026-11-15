package defpackage;

import android.content.Context;
import android.media.AudioManager;

public final class fhf implements AudioManager.OnAudioFocusChangeListener {
    public final AudioManager b;
    public final ehf c;
    public boolean d;
    public boolean e;
    public boolean f;
    public float g = 1.0f;

    public fhf(Context context, ehf ehfVar) {
        this.b = (AudioManager) context.getSystemService("audio");
        this.c = ehfVar;
    }

    public final float a() {
        float f = this.f ? 0.0f : this.g;
        if (this.d) {
            return f;
        }
        return 0.0f;
    }

    public final void b() {
        this.e = true;
        f();
    }

    public final void c() {
        this.e = false;
        f();
    }

    public final void d(boolean z) {
        this.f = z;
        f();
    }

    public final void e(float f) {
        this.g = f;
        f();
    }

    public final void f() {
        if (!this.e || this.f || this.g <= 0.0f) {
            if (this.d) {
                AudioManager audioManager = this.b;
                if (audioManager != null) {
                    this.d = audioManager.abandonAudioFocus(this) == 0;
                }
                this.c.zzn();
                return;
            }
            return;
        }
        if (this.d) {
            return;
        }
        AudioManager audioManager2 = this.b;
        if (audioManager2 != null) {
            this.d = audioManager2.requestAudioFocus(this, 3, 2) == 1;
        }
        this.c.zzn();
    }

    @Override
    public final void onAudioFocusChange(int i) {
        this.d = i > 0;
        this.c.zzn();
    }
}
