package defpackage;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.zzm;

public final class tvg extends pwg {
    public Activity a;
    public zzm b;
    public String c;
    public String d;

    @Override
    public final pwg a(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Null activity");
        }
        this.a = activity;
        return this;
    }

    @Override
    public final pwg b(zzm zzmVar) {
        this.b = zzmVar;
        return this;
    }

    @Override
    public final pwg c(String str) {
        this.c = str;
        return this;
    }

    @Override
    public final pwg d(String str) {
        this.d = str;
        return this;
    }

    @Override
    public final qwg e() {
        Activity activity = this.a;
        if (activity != null) {
            return new vvg(activity, this.b, this.c, this.d, null);
        }
        throw new IllegalStateException("Missing required properties: activity");
    }
}
