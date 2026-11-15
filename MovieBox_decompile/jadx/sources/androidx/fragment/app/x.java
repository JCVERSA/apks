package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

abstract class x {

    static final FragmentTransitionImpl f9192a = new y();

    static final FragmentTransitionImpl f9193b = c();

    static void a(Fragment fragment, Fragment fragment2, boolean z10, androidx.collection.a aVar, boolean z11) {
        androidx.core.app.a0 enterTransitionCallback = z10 ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList2.add((String) aVar.keyAt(i10));
                arrayList.add((View) aVar.valueAt(i10));
            }
            if (z11) {
                enterTransitionCallback.g(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.f(arrayList2, arrayList, null);
            }
        }
    }

    static String b(androidx.collection.a aVar, String str) {
        int size = aVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (str.equals(aVar.valueAt(i10))) {
                return (String) aVar.keyAt(i10);
            }
        }
        return null;
    }

    private static FragmentTransitionImpl c() {
        try {
            return (FragmentTransitionImpl) androidx.transition.e.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }

    static void d(androidx.collection.a aVar, androidx.collection.a aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey((String) aVar.valueAt(size))) {
                aVar.removeAt(size);
            }
        }
    }

    static void e(ArrayList arrayList, int i10) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i10);
        }
    }
}
