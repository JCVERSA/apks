package defpackage;

import com.google.android.gms.ads.internal.util.client.zzv;
import java.util.List;

public final class x8g {
    public final List a;
    public final wth b;
    public final zzv c;
    public boolean d;

    public x8g(hmh hmhVar, wth wthVar) {
        this.a = hmhVar.p;
        this.b = wthVar;
        this.c = hmhVar.x0;
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.b.e(this.a, this.c);
        this.d = true;
    }
}
