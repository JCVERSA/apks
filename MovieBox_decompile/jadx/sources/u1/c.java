package u1;

import android.os.Bundle;
import android.text.Spannable;
import android.text.Spanned;
import androidx.media3.common.util.a1;
import java.util.ArrayList;

abstract class c {

    private static final String f72979a = a1.C0(0);

    private static final String f72980b = a1.C0(1);

    private static final String f72981c = a1.C0(2);

    private static final String f72982d = a1.C0(3);

    private static final String f72983e = a1.C0(4);

    public static ArrayList a(Spanned spanned) {
        ArrayList arrayList = new ArrayList();
        for (f fVar : (f[]) spanned.getSpans(0, spanned.length(), f.class)) {
            arrayList.add(b(spanned, fVar, 1, fVar.b()));
        }
        for (h hVar : (h[]) spanned.getSpans(0, spanned.length(), h.class)) {
            arrayList.add(b(spanned, hVar, 2, hVar.b()));
        }
        for (d dVar : (d[]) spanned.getSpans(0, spanned.length(), d.class)) {
            arrayList.add(b(spanned, dVar, 3, null));
        }
        for (i iVar : (i[]) spanned.getSpans(0, spanned.length(), i.class)) {
            arrayList.add(b(spanned, iVar, 4, iVar.b()));
        }
        return arrayList;
    }

    private static Bundle b(Spanned spanned, Object obj, int i10, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f72979a, spanned.getSpanStart(obj));
        bundle2.putInt(f72980b, spanned.getSpanEnd(obj));
        bundle2.putInt(f72981c, spanned.getSpanFlags(obj));
        bundle2.putInt(f72982d, i10);
        if (bundle != null) {
            bundle2.putBundle(f72983e, bundle);
        }
        return bundle2;
    }

    public static void c(Bundle bundle, Spannable spannable) {
        int i10 = bundle.getInt(f72979a);
        int i11 = bundle.getInt(f72980b);
        int i12 = bundle.getInt(f72981c);
        int i13 = bundle.getInt(f72982d, -1);
        Bundle bundle2 = bundle.getBundle(f72983e);
        if (i13 == 1) {
            spannable.setSpan(f.a((Bundle) androidx.media3.common.util.a.e(bundle2)), i10, i11, i12);
            return;
        }
        if (i13 == 2) {
            spannable.setSpan(h.a((Bundle) androidx.media3.common.util.a.e(bundle2)), i10, i11, i12);
        } else if (i13 == 3) {
            spannable.setSpan(new d(), i10, i11, i12);
        } else {
            if (i13 != 4) {
                return;
            }
            spannable.setSpan(i.a((Bundle) androidx.media3.common.util.a.e(bundle2)), i10, i11, i12);
        }
    }
}
