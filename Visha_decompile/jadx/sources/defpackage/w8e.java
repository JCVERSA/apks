package defpackage;

import com.google.android.gms.internal.common.zzah;
import java.util.Iterator;

public final class w8e extends y5e {
    public w8e() {
        super(4);
    }

    public final w8e b(Object obj) {
        super.a(obj);
        return this;
    }

    public final w8e c(Iterator it) {
        while (it.hasNext()) {
            super.a(it.next());
        }
        return this;
    }

    public final zzah d() {
        this.c = true;
        return zzah.zzq(this.a, this.b);
    }

    public w8e(int i) {
        super(4);
    }
}
