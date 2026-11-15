package defpackage;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.LinkedList;

public class td8 {
    public final d a = new d();
    public b b = d22.d();

    public class a implements c {
        public a() {
        }

        @Override
        public void a(int i, View view) {
            td8.this.a.e(i, view);
        }
    }

    public interface b {
        void a(ViewGroup viewGroup, int i, c cVar);

        View b(ViewGroup viewGroup, int i);
    }

    public interface c {
        void a(int i, View view);
    }

    public static class d {
        public final SparseArray a;

        public View a(int i) {
            return b(c(i));
        }

        public final View b(LinkedList linkedList) {
            if (linkedList.isEmpty()) {
                return null;
            }
            View view = (View) ((SoftReference) linkedList.pop()).get();
            return view == null ? b(linkedList) : view;
        }

        public LinkedList c(int i) {
            LinkedList linkedList = (LinkedList) this.a.get(i);
            if (linkedList != null) {
                return linkedList;
            }
            LinkedList linkedList2 = new LinkedList();
            this.a.put(i, linkedList2);
            return linkedList2;
        }

        public int d(int i) {
            Iterator it = c(i).iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (((SoftReference) it.next()).get() != null) {
                    i2++;
                } else {
                    it.remove();
                }
            }
            return i2;
        }

        public void e(int i, View view) {
            if (view == null) {
                return;
            }
            c(i).offer(new SoftReference(view));
        }

        public d() {
            this.a = new SparseArray();
        }
    }

    public View b(ViewGroup viewGroup, int i) {
        return c(viewGroup, i, 5);
    }

    public View c(ViewGroup viewGroup, int i, int i2) {
        View viewA = this.a.a(i);
        if (viewA == null) {
            return this.b.b(viewGroup, i);
        }
        h(viewGroup, i, i2);
        return viewA;
    }

    public final void d(ViewGroup viewGroup, int i) {
        this.b.a(viewGroup, i, new a());
    }

    public void e(ViewGroup viewGroup, int i, int i2) {
        f(viewGroup, i, i2, 0);
    }

    public void f(ViewGroup viewGroup, int i, int i2, int i3) {
        int iD = this.a.d(i);
        if (iD >= i2) {
            return;
        }
        int iMin = i2 - iD;
        if (i3 > 0) {
            iMin = Math.min(i3, iMin);
        }
        for (int i4 = 0; i4 < iMin; i4++) {
            d(viewGroup, i);
        }
    }

    public void g(ViewGroup viewGroup, int i) {
        h(viewGroup, i, 5);
    }

    public void h(ViewGroup viewGroup, int i, int i2) {
        f(viewGroup, i, i2, 1);
    }

    public View i(int i) {
        return this.a.a(i);
    }
}
