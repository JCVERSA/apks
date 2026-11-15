package t1;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.media3.common.util.a1;
import java.util.Objects;

public final class g {

    private final int f72448a;

    private final AudioManager.OnAudioFocusChangeListener f72449b;

    private final Handler f72450c;

    private final androidx.media3.common.c f72451d;

    private final boolean f72452e;

    private final Object f72453f;

    public static final class b {

        private int f72454a;

        private AudioManager.OnAudioFocusChangeListener f72455b;

        private Handler f72456c;

        private androidx.media3.common.c f72457d;

        private boolean f72458e;

        public g a() {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.f72455b;
            if (onAudioFocusChangeListener != null) {
                return new g(this.f72454a, onAudioFocusChangeListener, (Handler) androidx.media3.common.util.a.e(this.f72456c), this.f72457d, this.f72458e);
            }
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }

        public b b(androidx.media3.common.c cVar) {
            androidx.media3.common.util.a.e(cVar);
            this.f72457d = cVar;
            return this;
        }

        public b c(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            androidx.media3.common.util.a.e(onAudioFocusChangeListener);
            androidx.media3.common.util.a.e(handler);
            this.f72455b = onAudioFocusChangeListener;
            this.f72456c = handler;
            return this;
        }

        public b d(boolean z10) {
            this.f72458e = z10;
            return this;
        }

        public b(int i10) {
            this.f72457d = androidx.media3.common.c.f9595g;
            this.f72454a = i10;
        }

        private b(g gVar) {
            this.f72454a = gVar.e();
            this.f72455b = gVar.f();
            this.f72456c = gVar.d();
            this.f72457d = gVar.b();
            this.f72458e = gVar.g();
        }
    }

    static class c implements AudioManager.OnAudioFocusChangeListener {

        private final Handler f72459a;

        private final AudioManager.OnAudioFocusChangeListener f72460b;

        c(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.f72460b = onAudioFocusChangeListener;
            this.f72459a = a1.z(handler.getLooper(), null);
        }

        public void b(int i10) {
            this.f72460b.onAudioFocusChange(i10);
        }

        @Override
        public void onAudioFocusChange(final int i10) {
            a1.b1(this.f72459a, new Runnable() {
                @Override
                public final void run() {
                    this.f72461a.b(i10);
                }
            });
        }
    }

    g(int i10, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, androidx.media3.common.c cVar, boolean z10) {
        this.f72448a = i10;
        this.f72450c = handler;
        this.f72451d = cVar;
        this.f72452e = z10;
        int i11 = a1.f10038a;
        if (i11 < 26) {
            this.f72449b = new c(onAudioFocusChangeListener, handler);
        } else {
            this.f72449b = onAudioFocusChangeListener;
        }
        if (i11 >= 26) {
            this.f72453f = t1.a.a(i10).setAudioAttributes(cVar.a().f9607a).setWillPauseWhenDucked(z10).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        } else {
            this.f72453f = null;
        }
    }

    public b a() {
        return new b();
    }

    public androidx.media3.common.c b() {
        return this.f72451d;
    }

    AudioFocusRequest c() {
        return f.a(androidx.media3.common.util.a.e(this.f72453f));
    }

    public Handler d() {
        return this.f72450c;
    }

    public int e() {
        return this.f72448a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f72448a == gVar.f72448a && this.f72452e == gVar.f72452e && Objects.equals(this.f72449b, gVar.f72449b) && Objects.equals(this.f72450c, gVar.f72450c) && Objects.equals(this.f72451d, gVar.f72451d);
    }

    public AudioManager.OnAudioFocusChangeListener f() {
        return this.f72449b;
    }

    public boolean g() {
        return this.f72452e;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f72448a), this.f72449b, this.f72450c, this.f72451d, Boolean.valueOf(this.f72452e));
    }
}
