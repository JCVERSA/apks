package defpackage;

import com.google.android.gms.ads.VideoController;
import java.util.Set;

public final class o9g extends a6g {
    public boolean c;

    public o9g(Set set) {
        super(set);
    }

    public final synchronized void F() {
        E(new m9g());
        this.c = true;
    }

    public final void zza() {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).onVideoEnd();
            }
        });
    }

    public final void zzb() {
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).onVideoPause();
            }
        });
    }

    public final synchronized void zzc() {
        try {
            if (!this.c) {
                E(new m9g());
                this.c = true;
            }
            E(new z5g() {
                @Override
                public final void zza(Object obj) {
                    ((VideoController.VideoLifecycleCallbacks) obj).onVideoPlay();
                }
            });
        } catch (Throwable th) {
            throw th;
        }
    }
}
