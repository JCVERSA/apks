package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class ate extends tte {
    public static volatile Long i;
    public static final Object j = new Object();

    public ate(e0 e0Var, String str, String str2, ooe ooeVar, int i2, int i3) {
        super(e0Var, "H4NeENBKOLO5GsuUIu0GvJZls7gDyB61uJDl+ZI/plLYxQkTY7P5qtOjaPRY3afS", "ZSxlKJLhR/xxP0dGh2CPRvOgPQo1U18GKPodZAq8glc=", ooeVar, i2, 22);
    }

    @Override
    public final void a() {
        if (i == null) {
            synchronized (j) {
                try {
                    if (i == null) {
                        i = (Long) this.f.invoke(null, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.w0(i.longValue());
        }
    }
}
