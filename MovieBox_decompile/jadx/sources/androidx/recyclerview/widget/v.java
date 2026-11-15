package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.List;

interface v {

    public static class a implements v {

        SparseArray f14123a = new SparseArray();

        int f14124b = 0;

        class C0107a implements c {

            private SparseIntArray f14125a = new SparseIntArray(1);

            private SparseIntArray f14126b = new SparseIntArray(1);

            final k f14127c;

            C0107a(k kVar) {
                this.f14127c = kVar;
            }

            @Override
            public int a(int i10) {
                int iIndexOfKey = this.f14126b.indexOfKey(i10);
                if (iIndexOfKey >= 0) {
                    return this.f14126b.valueAt(iIndexOfKey);
                }
                throw new IllegalStateException("requested global type " + i10 + " does not belong to the adapter:" + this.f14127c.f14086c);
            }

            @Override
            public int b(int i10) {
                int iIndexOfKey = this.f14125a.indexOfKey(i10);
                if (iIndexOfKey > -1) {
                    return this.f14125a.valueAt(iIndexOfKey);
                }
                int iC = a.this.c(this.f14127c);
                this.f14125a.put(i10, iC);
                this.f14126b.put(iC, i10);
                return iC;
            }
        }

        @Override
        public k a(int i10) {
            k kVar = (k) this.f14123a.get(i10);
            if (kVar != null) {
                return kVar;
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i10);
        }

        @Override
        public c b(k kVar) {
            return new C0107a(kVar);
        }

        int c(k kVar) {
            int i10 = this.f14124b;
            this.f14124b = i10 + 1;
            this.f14123a.put(i10, kVar);
            return i10;
        }
    }

    public interface c {
        int a(int i10);

        int b(int i10);
    }

    k a(int i10);

    c b(k kVar);

    public static class b implements v {

        SparseArray f14129a = new SparseArray();

        @Override
        public k a(int i10) {
            List list = (List) this.f14129a.get(i10);
            if (list != null && !list.isEmpty()) {
                return (k) list.get(0);
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i10);
        }

        @Override
        public c b(k kVar) {
            return new a(kVar);
        }

        class a implements c {

            final k f14130a;

            a(k kVar) {
                this.f14130a = kVar;
            }

            @Override
            public int b(int i10) {
                List arrayList = (List) b.this.f14129a.get(i10);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    b.this.f14129a.put(i10, arrayList);
                }
                if (!arrayList.contains(this.f14130a)) {
                    arrayList.add(this.f14130a);
                }
                return i10;
            }

            @Override
            public int a(int i10) {
                return i10;
            }
        }
    }
}
