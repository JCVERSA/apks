package defpackage;

import android.view.View;
import com.google.android.gms.internal.ads.zzfkc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class gvh {
    public static final Pattern b = Pattern.compile("^[a-zA-Z0-9 ]+$");
    public final List a = new ArrayList();

    public final List a() {
        return this.a;
    }

    public final void b(View view, zzfkc zzfkcVar, String str) {
        fvh fvhVar;
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
        if (!b.matcher("Ad overlay").matches()) {
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
        }
        List list = this.a;
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                fvhVar = null;
                break;
            }
            fvhVar = (fvh) it.next();
        } while (fvhVar.b().get() != view);
        if (fvhVar == null) {
            list.add(new fvh(view, zzfkcVar, "Ad overlay"));
        }
    }

    public final void c() {
        this.a.clear();
    }
}
