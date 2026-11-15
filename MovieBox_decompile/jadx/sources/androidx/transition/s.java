package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class s {

    private static j f14767c = new androidx.transition.a();

    private static ThreadLocal f14768d = new ThreadLocal();

    static ArrayList f14769e = new ArrayList();

    private androidx.collection.a f14770a = new androidx.collection.a();

    private androidx.collection.a f14771b = new androidx.collection.a();

    public static void a(ViewGroup viewGroup, j jVar) {
        if (f14769e.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        f14769e.add(viewGroup);
        if (jVar == null) {
            jVar = f14767c;
        }
        j jVarClone = jVar.clone();
        d(viewGroup, jVarClone);
        i.b(viewGroup, null);
        c(viewGroup, jVarClone);
    }

    static androidx.collection.a b() {
        androidx.collection.a aVar;
        WeakReference weakReference = (WeakReference) f14768d.get();
        if (weakReference != null && (aVar = (androidx.collection.a) weakReference.get()) != null) {
            return aVar;
        }
        androidx.collection.a aVar2 = new androidx.collection.a();
        f14768d.set(new WeakReference(aVar2));
        return aVar2;
    }

    private static void c(ViewGroup viewGroup, j jVar) {
        if (jVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(jVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void d(ViewGroup viewGroup, j jVar) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).Q(viewGroup);
            }
        }
        if (jVar != null) {
            jVar.k(viewGroup, true);
        }
        i.a(viewGroup);
    }

    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        j f14772a;

        ViewGroup f14773b;

        class C0121a extends r {

            final androidx.collection.a f14774a;

            C0121a(androidx.collection.a aVar) {
                this.f14774a = aVar;
            }

            @Override
            public void e(j jVar) {
                ((ArrayList) this.f14774a.get(a.this.f14773b)).remove(jVar);
                jVar.S(this);
            }
        }

        a(j jVar, ViewGroup viewGroup) {
            this.f14772a = jVar;
            this.f14773b = viewGroup;
        }

        private void a() {
            this.f14773b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f14773b.removeOnAttachStateChangeListener(this);
        }

        @Override
        public boolean onPreDraw() {
            a();
            if (!s.f14769e.remove(this.f14773b)) {
                return true;
            }
            androidx.collection.a aVarB = s.b();
            ArrayList arrayList = (ArrayList) aVarB.get(this.f14773b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList();
                aVarB.put(this.f14773b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f14772a);
            this.f14772a.a(new C0121a(aVarB));
            this.f14772a.k(this.f14773b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((j) it.next()).U(this.f14773b);
                }
            }
            this.f14772a.R(this.f14773b);
            return true;
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            a();
            s.f14769e.remove(this.f14773b);
            ArrayList arrayList = (ArrayList) s.b().get(this.f14773b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((j) it.next()).U(this.f14773b);
                }
            }
            this.f14772a.l(true);
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }
    }
}
