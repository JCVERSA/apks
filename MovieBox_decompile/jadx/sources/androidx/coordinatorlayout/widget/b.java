package androidx.coordinatorlayout.widget;

import androidx.collection.x0;
import androidx.core.util.f;
import androidx.core.util.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class b {

    private final f f7617a = new g(10);

    private final x0 f7618b = new x0();

    private final ArrayList f7619c = new ArrayList();

    private final HashSet f7620d = new HashSet();

    private void e(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) this.f7618b.get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                e(arrayList2.get(i10), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    private ArrayList f() {
        ArrayList arrayList = (ArrayList) this.f7617a.acquire();
        return arrayList == null ? new ArrayList() : arrayList;
    }

    private void k(ArrayList arrayList) {
        arrayList.clear();
        this.f7617a.release(arrayList);
    }

    public void a(Object obj, Object obj2) {
        if (!this.f7618b.containsKey(obj) || !this.f7618b.containsKey(obj2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayListF = (ArrayList) this.f7618b.get(obj);
        if (arrayListF == null) {
            arrayListF = f();
            this.f7618b.put(obj, arrayListF);
        }
        arrayListF.add(obj2);
    }

    public void b(Object obj) {
        if (this.f7618b.containsKey(obj)) {
            return;
        }
        this.f7618b.put(obj, null);
    }

    public void c() {
        int size = this.f7618b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList = (ArrayList) this.f7618b.valueAt(i10);
            if (arrayList != null) {
                k(arrayList);
            }
        }
        this.f7618b.clear();
    }

    public boolean d(Object obj) {
        return this.f7618b.containsKey(obj);
    }

    public List g(Object obj) {
        return (List) this.f7618b.get(obj);
    }

    public List h(Object obj) {
        int size = this.f7618b.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList2 = (ArrayList) this.f7618b.valueAt(i10);
            if (arrayList2 != null && arrayList2.contains(obj)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f7618b.keyAt(i10));
            }
        }
        return arrayList;
    }

    public ArrayList i() {
        this.f7619c.clear();
        this.f7620d.clear();
        int size = this.f7618b.size();
        for (int i10 = 0; i10 < size; i10++) {
            e(this.f7618b.keyAt(i10), this.f7619c, this.f7620d);
        }
        return this.f7619c;
    }

    public boolean j(Object obj) {
        int size = this.f7618b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList = (ArrayList) this.f7618b.valueAt(i10);
            if (arrayList != null && arrayList.contains(obj)) {
                return true;
            }
        }
        return false;
    }
}
