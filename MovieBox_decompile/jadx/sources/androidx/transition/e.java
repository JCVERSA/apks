package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransitionImpl;
import java.util.ArrayList;
import java.util.List;

public class e extends FragmentTransitionImpl {

    class a extends j.e {

        final Rect f14689a;

        a(Rect rect) {
            this.f14689a = rect;
        }
    }

    class c extends r {

        final Object f14694a;

        final ArrayList f14695b;

        final Object f14696c;

        final ArrayList f14697d;

        final Object f14698e;

        final ArrayList f14699f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f14694a = obj;
            this.f14695b = arrayList;
            this.f14696c = obj2;
            this.f14697d = arrayList2;
            this.f14698e = obj3;
            this.f14699f = arrayList3;
        }

        @Override
        public void b(j jVar) {
            Object obj = this.f14694a;
            if (obj != null) {
                e.this.y(obj, this.f14695b, null);
            }
            Object obj2 = this.f14696c;
            if (obj2 != null) {
                e.this.y(obj2, this.f14697d, null);
            }
            Object obj3 = this.f14698e;
            if (obj3 != null) {
                e.this.y(obj3, this.f14699f, null);
            }
        }

        @Override
        public void e(j jVar) {
            jVar.S(this);
        }
    }

    class C0120e extends j.e {

        final Rect f14703a;

        C0120e(Rect rect) {
            this.f14703a = rect;
        }
    }

    private static boolean w(j jVar) {
        return (FragmentTransitionImpl.i(jVar.A()) && FragmentTransitionImpl.i(jVar.B()) && FragmentTransitionImpl.i(jVar.C())) ? false : true;
    }

    public static void x(Runnable runnable, j jVar, Runnable runnable2) {
        if (runnable != null) {
            runnable.run();
        } else {
            jVar.cancel();
            runnable2.run();
        }
    }

    @Override
    public void a(Object obj, View view) {
        if (obj != null) {
            ((j) obj).b(view);
        }
    }

    @Override
    public void b(Object obj, ArrayList arrayList) {
        j jVar = (j) obj;
        if (jVar == null) {
            return;
        }
        int i10 = 0;
        if (jVar instanceof u) {
            u uVar = (u) jVar;
            int iK0 = uVar.k0();
            while (i10 < iK0) {
                b(uVar.j0(i10), arrayList);
                i10++;
            }
            return;
        }
        if (w(jVar) || !FragmentTransitionImpl.i(jVar.D())) {
            return;
        }
        int size = arrayList.size();
        while (i10 < size) {
            jVar.b((View) arrayList.get(i10));
            i10++;
        }
    }

    @Override
    public void c(ViewGroup viewGroup, Object obj) {
        s.a(viewGroup, (j) obj);
    }

    @Override
    public boolean e(Object obj) {
        return obj instanceof j;
    }

    @Override
    public Object f(Object obj) {
        if (obj != null) {
            return ((j) obj).clone();
        }
        return null;
    }

    @Override
    public Object j(Object obj, Object obj2, Object obj3) {
        j jVarP0 = (j) obj;
        j jVar = (j) obj2;
        j jVar2 = (j) obj3;
        if (jVarP0 != null && jVar != null) {
            jVarP0 = new u().h0(jVarP0).h0(jVar).p0(1);
        } else if (jVarP0 == null) {
            jVarP0 = jVar != null ? jVar : null;
        }
        if (jVar2 == null) {
            return jVarP0;
        }
        u uVar = new u();
        if (jVarP0 != null) {
            uVar.h0(jVarP0);
        }
        uVar.h0(jVar2);
        return uVar;
    }

    @Override
    public Object k(Object obj, Object obj2, Object obj3) {
        u uVar = new u();
        if (obj != null) {
            uVar.h0((j) obj);
        }
        if (obj2 != null) {
            uVar.h0((j) obj2);
        }
        if (obj3 != null) {
            uVar.h0((j) obj3);
        }
        return uVar;
    }

    @Override
    public void m(Object obj, View view, ArrayList arrayList) {
        ((j) obj).a(new b(view, arrayList));
    }

    @Override
    public void n(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((j) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override
    public void o(Object obj, Rect rect) {
        if (obj != null) {
            ((j) obj).Y(new C0120e(rect));
        }
    }

    @Override
    public void p(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            h(view, rect);
            ((j) obj).Y(new a(rect));
        }
    }

    @Override
    public void q(Fragment fragment, Object obj, androidx.core.os.e eVar, Runnable runnable) {
        z(fragment, obj, eVar, null, runnable);
    }

    @Override
    public void s(Object obj, View view, ArrayList arrayList) {
        u uVar = (u) obj;
        List listD = uVar.D();
        listD.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransitionImpl.d(listD, (View) arrayList.get(i10));
        }
        listD.add(view);
        arrayList.add(view);
        b(uVar, arrayList);
    }

    @Override
    public void t(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        u uVar = (u) obj;
        if (uVar != null) {
            uVar.D().clear();
            uVar.D().addAll(arrayList2);
            y(uVar, arrayList, arrayList2);
        }
    }

    @Override
    public Object u(Object obj) {
        if (obj == null) {
            return null;
        }
        u uVar = new u();
        uVar.h0((j) obj);
        return uVar;
    }

    public void y(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        j jVar = (j) obj;
        int i10 = 0;
        if (jVar instanceof u) {
            u uVar = (u) jVar;
            int iK0 = uVar.k0();
            while (i10 < iK0) {
                y(uVar.j0(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (w(jVar)) {
            return;
        }
        List listD = jVar.D();
        if (listD.size() == arrayList.size() && listD.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i10 < size) {
                jVar.b((View) arrayList2.get(i10));
                i10++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                jVar.T((View) arrayList.get(size2));
            }
        }
    }

    public void z(Fragment fragment, Object obj, androidx.core.os.e eVar, final Runnable runnable, final Runnable runnable2) {
        final j jVar = (j) obj;
        eVar.b(new androidx.core.os.e.a() {
            @Override
            public final void onCancel() {
                e.x(runnable, jVar, runnable2);
            }
        });
        jVar.a(new d(runnable2));
    }

    class b implements j.f {

        final View f14691a;

        final ArrayList f14692b;

        b(View view, ArrayList arrayList) {
            this.f14691a = view;
            this.f14692b = arrayList;
        }

        @Override
        public void b(j jVar) {
            jVar.S(this);
            jVar.a(this);
        }

        @Override
        public void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override
        public void e(j jVar) {
            jVar.S(this);
            this.f14691a.setVisibility(8);
            int size = this.f14692b.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((View) this.f14692b.get(i10)).setVisibility(0);
            }
        }

        @Override
        public void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override
        public void a(j jVar) {
        }

        @Override
        public void c(j jVar) {
        }

        @Override
        public void f(j jVar) {
        }
    }

    class d implements j.f {

        final Runnable f14701a;

        d(Runnable runnable) {
            this.f14701a = runnable;
        }

        @Override
        public void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override
        public void e(j jVar) {
            this.f14701a.run();
        }

        @Override
        public void g(j jVar, boolean z10) {
            k.b(this, jVar, z10);
        }

        @Override
        public void a(j jVar) {
        }

        @Override
        public void b(j jVar) {
        }

        @Override
        public void c(j jVar) {
        }

        @Override
        public void f(j jVar) {
        }
    }
}
