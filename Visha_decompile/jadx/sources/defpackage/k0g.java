package defpackage;

import android.os.Bundle;
import android.text.Spanned;
import java.util.ArrayList;

public abstract class k0g {
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;

    static {
        int i = kfh.a;
        a = Integer.toString(0, 36);
        b = Integer.toString(1, 36);
        c = Integer.toString(2, 36);
        d = Integer.toString(3, 36);
        e = Integer.toString(4, 36);
    }

    public static ArrayList a(Spanned spanned) {
        ArrayList arrayList = new ArrayList();
        for (o2g o2gVar : (o2g[]) spanned.getSpans(0, spanned.length(), o2g.class)) {
            arrayList.add(b(spanned, o2gVar, 1, o2gVar.a()));
        }
        for (h5g h5gVar : (h5g[]) spanned.getSpans(0, spanned.length(), h5g.class)) {
            arrayList.add(b(spanned, h5gVar, 2, h5gVar.a()));
        }
        for (n1g n1gVar : (n1g[]) spanned.getSpans(0, spanned.length(), n1g.class)) {
            arrayList.add(b(spanned, n1gVar, 3, null));
        }
        for (i6g i6gVar : (i6g[]) spanned.getSpans(0, spanned.length(), i6g.class)) {
            arrayList.add(b(spanned, i6gVar, 4, i6gVar.a()));
        }
        return arrayList;
    }

    public static Bundle b(Spanned spanned, Object obj, int i, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(a, spanned.getSpanStart(obj));
        bundle2.putInt(b, spanned.getSpanEnd(obj));
        bundle2.putInt(c, spanned.getSpanFlags(obj));
        bundle2.putInt(d, i);
        if (bundle != null) {
            bundle2.putBundle(e, bundle);
        }
        return bundle2;
    }
}
