package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class d {

    private SparseIntArray f7553a = new SparseIntArray();

    private HashMap f7554b = new HashMap();

    public interface a {
    }

    public void a(int i10, a aVar) {
        HashSet hashSet = (HashSet) this.f7554b.get(Integer.valueOf(i10));
        if (hashSet == null) {
            hashSet = new HashSet();
            this.f7554b.put(Integer.valueOf(i10), hashSet);
        }
        hashSet.add(new WeakReference(aVar));
    }

    public void b(int i10, a aVar) {
        HashSet<WeakReference> hashSet = (HashSet) this.f7554b.get(Integer.valueOf(i10));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (WeakReference weakReference : hashSet) {
            a aVar2 = (a) weakReference.get();
            if (aVar2 == null || aVar2 == aVar) {
                arrayList.add(weakReference);
            }
        }
        hashSet.removeAll(arrayList);
    }
}
