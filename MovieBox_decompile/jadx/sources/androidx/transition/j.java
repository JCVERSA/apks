package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class j implements Cloneable {
    private static final Animator[] J = new Animator[0];
    private static final int[] K = {2, 1, 3, 4};
    private static final androidx.transition.g L = new a();
    private static ThreadLocal M = new ThreadLocal();
    t F;
    private e G;
    private androidx.collection.a H;

    private ArrayList f14728t;

    private ArrayList f14729u;

    private f[] f14730v;

    private String f14709a = getClass().getName();

    private long f14710b = -1;

    long f14711c = -1;

    private TimeInterpolator f14712d = null;

    ArrayList f14713e = new ArrayList();

    ArrayList f14714f = new ArrayList();

    private ArrayList f14715g = null;

    private ArrayList f14716h = null;

    private ArrayList f14717i = null;

    private ArrayList f14718j = null;

    private ArrayList f14719k = null;

    private ArrayList f14720l = null;

    private ArrayList f14721m = null;

    private ArrayList f14722n = null;

    private ArrayList f14723o = null;

    private x f14724p = new x();

    private x f14725q = new x();

    u f14726r = null;

    private int[] f14727s = K;

    boolean f14731w = false;

    ArrayList f14732x = new ArrayList();

    private Animator[] f14733y = J;

    int f14734z = 0;
    private boolean A = false;
    boolean B = false;
    private j C = null;
    private ArrayList D = null;
    ArrayList E = new ArrayList();
    private androidx.transition.g I = L;

    class a extends androidx.transition.g {
        a() {
        }

        @Override
        public Path a(float f10, float f11, float f12, float f13) {
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            return path;
        }
    }

    class b extends AnimatorListenerAdapter {

        final androidx.collection.a f14735a;

        b(androidx.collection.a aVar) {
            this.f14735a = aVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f14735a.remove(animator);
            j.this.f14732x.remove(animator);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            j.this.f14732x.add(animator);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            j.this.p();
            animator.removeListener(this);
        }
    }

    private static class d {

        View f14738a;

        String f14739b;

        w f14740c;

        WindowId f14741d;

        j f14742e;

        Animator f14743f;

        d(View view, String str, j jVar, WindowId windowId, w wVar, Animator animator) {
            this.f14738a = view;
            this.f14739b = str;
            this.f14740c = wVar;
            this.f14741d = windowId;
            this.f14742e = jVar;
            this.f14743f = animator;
        }
    }

    public static abstract class e {
    }

    public interface f {
        void a(j jVar);

        void b(j jVar);

        void c(j jVar);

        void d(j jVar, boolean z10);

        void e(j jVar);

        void f(j jVar);

        void g(j jVar, boolean z10);
    }

    interface g {

        public static final g f14744a = new g() {
            @Override
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.g(jVar, z10);
            }
        };

        public static final g f14745b = new g() {
            @Override
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.d(jVar, z10);
            }
        };

        public static final g f14746c = new g() {
            @Override
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.f(jVar);
            }
        };

        public static final g f14747d = new g() {
            @Override
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.c(jVar);
            }
        };

        public static final g f14748e = new g() {
            @Override
            public final void a(j.f fVar, j jVar, boolean z10) {
                fVar.a(jVar);
            }
        };

        void a(f fVar, j jVar, boolean z10);
    }

    private static boolean I(w wVar, w wVar2, String str) {
        Object obj = wVar.f14780a.get(str);
        Object obj2 = wVar2.f14780a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    private void J(androidx.collection.a aVar, androidx.collection.a aVar2, SparseArray sparseArray, SparseArray sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) sparseArray.valueAt(i10);
            if (view2 != null && H(view2) && (view = (View) sparseArray2.get(sparseArray.keyAt(i10))) != null && H(view)) {
                w wVar = (w) aVar.get(view2);
                w wVar2 = (w) aVar2.get(view);
                if (wVar != null && wVar2 != null) {
                    this.f14728t.add(wVar);
                    this.f14729u.add(wVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void K(androidx.collection.a aVar, androidx.collection.a aVar2) {
        w wVar;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.keyAt(size);
            if (view != null && H(view) && (wVar = (w) aVar2.remove(view)) != null && H(wVar.f14781b)) {
                this.f14728t.add((w) aVar.removeAt(size));
                this.f14729u.add(wVar);
            }
        }
    }

    private void L(androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.x xVar, androidx.collection.x xVar2) {
        View view;
        int iN = xVar.n();
        for (int i10 = 0; i10 < iN; i10++) {
            View view2 = (View) xVar.o(i10);
            if (view2 != null && H(view2) && (view = (View) xVar2.e(xVar.j(i10))) != null && H(view)) {
                w wVar = (w) aVar.get(view2);
                w wVar2 = (w) aVar2.get(view);
                if (wVar != null && wVar2 != null) {
                    this.f14728t.add(wVar);
                    this.f14729u.add(wVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void M(androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.a aVar3, androidx.collection.a aVar4) {
        View view;
        int size = aVar3.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) aVar3.valueAt(i10);
            if (view2 != null && H(view2) && (view = (View) aVar4.get(aVar3.keyAt(i10))) != null && H(view)) {
                w wVar = (w) aVar.get(view2);
                w wVar2 = (w) aVar2.get(view);
                if (wVar != null && wVar2 != null) {
                    this.f14728t.add(wVar);
                    this.f14729u.add(wVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void N(x xVar, x xVar2) {
        androidx.collection.a aVar = new androidx.collection.a(xVar.f14783a);
        androidx.collection.a aVar2 = new androidx.collection.a(xVar2.f14783a);
        int i10 = 0;
        while (true) {
            int[] iArr = this.f14727s;
            if (i10 >= iArr.length) {
                c(aVar, aVar2);
                return;
            }
            int i11 = iArr[i10];
            if (i11 == 1) {
                K(aVar, aVar2);
            } else if (i11 == 2) {
                M(aVar, aVar2, xVar.f14786d, xVar2.f14786d);
            } else if (i11 == 3) {
                J(aVar, aVar2, xVar.f14784b, xVar2.f14784b);
            } else if (i11 == 4) {
                L(aVar, aVar2, xVar.f14785c, xVar2.f14785c);
            }
            i10++;
        }
    }

    private void O(j jVar, g gVar, boolean z10) {
        j jVar2 = this.C;
        if (jVar2 != null) {
            jVar2.O(jVar, gVar, z10);
        }
        ArrayList arrayList = this.D;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.D.size();
        f[] fVarArr = this.f14730v;
        if (fVarArr == null) {
            fVarArr = new f[size];
        }
        this.f14730v = null;
        f[] fVarArr2 = (f[]) this.D.toArray(fVarArr);
        for (int i10 = 0; i10 < size; i10++) {
            gVar.a(fVarArr2[i10], jVar, z10);
            fVarArr2[i10] = null;
        }
        this.f14730v = fVarArr2;
    }

    private void V(Animator animator, androidx.collection.a aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            e(animator);
        }
    }

    private void c(androidx.collection.a aVar, androidx.collection.a aVar2) {
        for (int i10 = 0; i10 < aVar.size(); i10++) {
            w wVar = (w) aVar.valueAt(i10);
            if (H(wVar.f14781b)) {
                this.f14728t.add(wVar);
                this.f14729u.add(null);
            }
        }
        for (int i11 = 0; i11 < aVar2.size(); i11++) {
            w wVar2 = (w) aVar2.valueAt(i11);
            if (H(wVar2.f14781b)) {
                this.f14729u.add(wVar2);
                this.f14728t.add(null);
            }
        }
    }

    private static void d(x xVar, View view, w wVar) {
        xVar.f14783a.put(view, wVar);
        int id2 = view.getId();
        if (id2 >= 0) {
            if (xVar.f14784b.indexOfKey(id2) >= 0) {
                xVar.f14784b.put(id2, null);
            } else {
                xVar.f14784b.put(id2, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (xVar.f14786d.containsKey(transitionName)) {
                xVar.f14786d.put(transitionName, null);
            } else {
                xVar.f14786d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (xVar.f14785c.h(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    xVar.f14785c.k(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) xVar.f14785c.e(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    xVar.f14785c.k(itemIdAtPosition, null);
                }
            }
        }
    }

    private void h(View view, boolean z10) {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        ArrayList arrayList = this.f14717i;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id2))) {
            ArrayList arrayList2 = this.f14718j;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList arrayList3 = this.f14719k;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (((Class) this.f14719k.get(i10)).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    w wVar = new w(view);
                    if (z10) {
                        j(wVar);
                    } else {
                        g(wVar);
                    }
                    wVar.f14782c.add(this);
                    i(wVar);
                    if (z10) {
                        d(this.f14724p, view, wVar);
                    } else {
                        d(this.f14725q, view, wVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList arrayList4 = this.f14721m;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id2))) {
                        ArrayList arrayList5 = this.f14722n;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList arrayList6 = this.f14723o;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i11 = 0; i11 < size2; i11++) {
                                    if (((Class) this.f14723o.get(i11)).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                                h(viewGroup.getChildAt(i12), z10);
                            }
                        }
                    }
                }
            }
        }
    }

    private static androidx.collection.a y() {
        androidx.collection.a aVar = (androidx.collection.a) M.get();
        if (aVar != null) {
            return aVar;
        }
        androidx.collection.a aVar2 = new androidx.collection.a();
        M.set(aVar2);
        return aVar2;
    }

    public List A() {
        return this.f14713e;
    }

    public List B() {
        return this.f14715g;
    }

    public List C() {
        return this.f14716h;
    }

    public List D() {
        return this.f14714f;
    }

    public String[] E() {
        return null;
    }

    public w F(View view, boolean z10) {
        u uVar = this.f14726r;
        if (uVar != null) {
            return uVar.F(view, z10);
        }
        return (w) (z10 ? this.f14724p : this.f14725q).f14783a.get(view);
    }

    public boolean G(w wVar, w wVar2) {
        if (wVar == null || wVar2 == null) {
            return false;
        }
        String[] strArrE = E();
        if (strArrE == null) {
            Iterator it = wVar.f14780a.keySet().iterator();
            while (it.hasNext()) {
                if (I(wVar, wVar2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrE) {
            if (!I(wVar, wVar2, str)) {
            }
        }
        return false;
        return true;
    }

    boolean H(View view) {
        ArrayList arrayList;
        ArrayList arrayList2;
        int id2 = view.getId();
        ArrayList arrayList3 = this.f14717i;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id2))) {
            return false;
        }
        ArrayList arrayList4 = this.f14718j;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList arrayList5 = this.f14719k;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (((Class) this.f14719k.get(i10)).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.f14720l != null && ViewCompat.getTransitionName(view) != null && this.f14720l.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        if ((this.f14713e.size() == 0 && this.f14714f.size() == 0 && (((arrayList = this.f14716h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f14715g) == null || arrayList2.isEmpty()))) || this.f14713e.contains(Integer.valueOf(id2)) || this.f14714f.contains(view)) {
            return true;
        }
        ArrayList arrayList6 = this.f14715g;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.f14716h != null) {
            for (int i11 = 0; i11 < this.f14716h.size(); i11++) {
                if (((Class) this.f14716h.get(i11)).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    void P(g gVar, boolean z10) {
        O(this, gVar, z10);
    }

    public void Q(View view) {
        if (this.B) {
            return;
        }
        int size = this.f14732x.size();
        Animator[] animatorArr = (Animator[]) this.f14732x.toArray(this.f14733y);
        this.f14733y = J;
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = animatorArr[i10];
            animatorArr[i10] = null;
            animator.pause();
        }
        this.f14733y = animatorArr;
        P(g.f14747d, false);
        this.A = true;
    }

    void R(ViewGroup viewGroup) {
        d dVar;
        this.f14728t = new ArrayList();
        this.f14729u = new ArrayList();
        N(this.f14724p, this.f14725q);
        androidx.collection.a aVarY = y();
        int size = aVarY.size();
        WindowId windowId = viewGroup.getWindowId();
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = (Animator) aVarY.keyAt(i10);
            if (animator != null && (dVar = (d) aVarY.get(animator)) != null && dVar.f14738a != null && windowId.equals(dVar.f14741d)) {
                w wVar = dVar.f14740c;
                View view = dVar.f14738a;
                w wVarF = F(view, true);
                w wVarT = t(view, true);
                if (wVarF == null && wVarT == null) {
                    wVarT = (w) this.f14725q.f14783a.get(view);
                }
                if ((wVarF != null || wVarT != null) && dVar.f14742e.G(wVar, wVarT)) {
                    dVar.f14742e.x().getClass();
                    if (animator.isRunning() || animator.isStarted()) {
                        animator.cancel();
                    } else {
                        aVarY.remove(animator);
                    }
                }
            }
        }
        o(viewGroup, this.f14724p, this.f14725q, this.f14728t, this.f14729u);
        W();
    }

    public j S(f fVar) {
        j jVar;
        ArrayList arrayList = this.D;
        if (arrayList == null) {
            return this;
        }
        if (!arrayList.remove(fVar) && (jVar = this.C) != null) {
            jVar.S(fVar);
        }
        if (this.D.size() == 0) {
            this.D = null;
        }
        return this;
    }

    public j T(View view) {
        this.f14714f.remove(view);
        return this;
    }

    public void U(View view) {
        if (this.A) {
            if (!this.B) {
                int size = this.f14732x.size();
                Animator[] animatorArr = (Animator[]) this.f14732x.toArray(this.f14733y);
                this.f14733y = J;
                for (int i10 = size - 1; i10 >= 0; i10--) {
                    Animator animator = animatorArr[i10];
                    animatorArr[i10] = null;
                    animator.resume();
                }
                this.f14733y = animatorArr;
                P(g.f14748e, false);
            }
            this.A = false;
        }
    }

    protected void W() {
        d0();
        androidx.collection.a aVarY = y();
        for (Animator animator : this.E) {
            if (aVarY.containsKey(animator)) {
                d0();
                V(animator, aVarY);
            }
        }
        this.E.clear();
        p();
    }

    public j X(long j10) {
        this.f14711c = j10;
        return this;
    }

    public void Y(e eVar) {
        this.G = eVar;
    }

    public j Z(TimeInterpolator timeInterpolator) {
        this.f14712d = timeInterpolator;
        return this;
    }

    public j a(f fVar) {
        if (this.D == null) {
            this.D = new ArrayList();
        }
        this.D.add(fVar);
        return this;
    }

    public void a0(androidx.transition.g gVar) {
        if (gVar == null) {
            this.I = L;
        } else {
            this.I = gVar;
        }
    }

    public j b(View view) {
        this.f14714f.add(view);
        return this;
    }

    public void b0(t tVar) {
        this.F = tVar;
    }

    public j c0(long j10) {
        this.f14710b = j10;
        return this;
    }

    protected void cancel() {
        int size = this.f14732x.size();
        Animator[] animatorArr = (Animator[]) this.f14732x.toArray(this.f14733y);
        this.f14733y = J;
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = animatorArr[i10];
            animatorArr[i10] = null;
            animator.cancel();
        }
        this.f14733y = animatorArr;
        P(g.f14746c, false);
    }

    protected void d0() {
        if (this.f14734z == 0) {
            P(g.f14744a, false);
            this.B = false;
        }
        this.f14734z++;
    }

    protected void e(Animator animator) {
        if (animator == null) {
            p();
            return;
        }
        if (q() >= 0) {
            animator.setDuration(q());
        }
        if (z() >= 0) {
            animator.setStartDelay(z() + animator.getStartDelay());
        }
        if (s() != null) {
            animator.setInterpolator(s());
        }
        animator.addListener(new c());
        animator.start();
    }

    String e0(String str) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(getClass().getSimpleName());
        sb2.append("@");
        sb2.append(Integer.toHexString(hashCode()));
        sb2.append(": ");
        if (this.f14711c != -1) {
            sb2.append("dur(");
            sb2.append(this.f14711c);
            sb2.append(") ");
        }
        if (this.f14710b != -1) {
            sb2.append("dly(");
            sb2.append(this.f14710b);
            sb2.append(") ");
        }
        if (this.f14712d != null) {
            sb2.append("interp(");
            sb2.append(this.f14712d);
            sb2.append(") ");
        }
        if (this.f14713e.size() > 0 || this.f14714f.size() > 0) {
            sb2.append("tgts(");
            if (this.f14713e.size() > 0) {
                for (int i10 = 0; i10 < this.f14713e.size(); i10++) {
                    if (i10 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(this.f14713e.get(i10));
                }
            }
            if (this.f14714f.size() > 0) {
                for (int i11 = 0; i11 < this.f14714f.size(); i11++) {
                    if (i11 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(this.f14714f.get(i11));
                }
            }
            sb2.append(")");
        }
        return sb2.toString();
    }

    public abstract void g(w wVar);

    void i(w wVar) {
        String[] strArrB;
        if (this.F == null || wVar.f14780a.isEmpty() || (strArrB = this.F.b()) == null) {
            return;
        }
        for (String str : strArrB) {
            if (!wVar.f14780a.containsKey(str)) {
                this.F.a(wVar);
                return;
            }
        }
    }

    public abstract void j(w wVar);

    void k(ViewGroup viewGroup, boolean z10) {
        ArrayList arrayList;
        ArrayList arrayList2;
        androidx.collection.a aVar;
        l(z10);
        if ((this.f14713e.size() > 0 || this.f14714f.size() > 0) && (((arrayList = this.f14715g) == null || arrayList.isEmpty()) && ((arrayList2 = this.f14716h) == null || arrayList2.isEmpty()))) {
            for (int i10 = 0; i10 < this.f14713e.size(); i10++) {
                View viewFindViewById = viewGroup.findViewById(((Integer) this.f14713e.get(i10)).intValue());
                if (viewFindViewById != null) {
                    w wVar = new w(viewFindViewById);
                    if (z10) {
                        j(wVar);
                    } else {
                        g(wVar);
                    }
                    wVar.f14782c.add(this);
                    i(wVar);
                    if (z10) {
                        d(this.f14724p, viewFindViewById, wVar);
                    } else {
                        d(this.f14725q, viewFindViewById, wVar);
                    }
                }
            }
            for (int i11 = 0; i11 < this.f14714f.size(); i11++) {
                View view = (View) this.f14714f.get(i11);
                w wVar2 = new w(view);
                if (z10) {
                    j(wVar2);
                } else {
                    g(wVar2);
                }
                wVar2.f14782c.add(this);
                i(wVar2);
                if (z10) {
                    d(this.f14724p, view, wVar2);
                } else {
                    d(this.f14725q, view, wVar2);
                }
            }
        } else {
            h(viewGroup, z10);
        }
        if (z10 || (aVar = this.H) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            arrayList3.add((View) this.f14724p.f14786d.remove((String) this.H.keyAt(i12)));
        }
        for (int i13 = 0; i13 < size; i13++) {
            View view2 = (View) arrayList3.get(i13);
            if (view2 != null) {
                this.f14724p.f14786d.put((String) this.H.valueAt(i13), view2);
            }
        }
    }

    void l(boolean z10) {
        if (z10) {
            this.f14724p.f14783a.clear();
            this.f14724p.f14784b.clear();
            this.f14724p.f14785c.b();
        } else {
            this.f14725q.f14783a.clear();
            this.f14725q.f14784b.clear();
            this.f14725q.f14785c.b();
        }
    }

    @Override
    public j clone() {
        try {
            j jVar = (j) super.clone();
            jVar.E = new ArrayList();
            jVar.f14724p = new x();
            jVar.f14725q = new x();
            jVar.f14728t = null;
            jVar.f14729u = null;
            jVar.C = this;
            jVar.D = null;
            return jVar;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public Animator n(ViewGroup viewGroup, w wVar, w wVar2) {
        return null;
    }

    void o(ViewGroup viewGroup, x xVar, x xVar2, ArrayList arrayList, ArrayList arrayList2) {
        Animator animatorN;
        int i10;
        View view;
        Animator animator;
        w wVar;
        Animator animator2;
        w wVar2;
        androidx.collection.a aVarY = y();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        x().getClass();
        long jMin = Long.MAX_VALUE;
        int i11 = 0;
        while (i11 < size) {
            w wVar3 = (w) arrayList.get(i11);
            w wVar4 = (w) arrayList2.get(i11);
            if (wVar3 != null && !wVar3.f14782c.contains(this)) {
                wVar3 = null;
            }
            if (wVar4 != null && !wVar4.f14782c.contains(this)) {
                wVar4 = null;
            }
            if (!(wVar3 == null && wVar4 == null) && ((wVar3 == null || wVar4 == null || G(wVar3, wVar4)) && (animatorN = n(viewGroup, wVar3, wVar4)) != null)) {
                if (wVar4 != null) {
                    View view2 = wVar4.f14781b;
                    String[] strArrE = E();
                    if (strArrE != null && strArrE.length > 0) {
                        wVar2 = new w(view2);
                        i10 = size;
                        w wVar5 = (w) xVar2.f14783a.get(view2);
                        if (wVar5 != null) {
                            int i12 = 0;
                            while (i12 < strArrE.length) {
                                Map map = wVar2.f14780a;
                                String str = strArrE[i12];
                                map.put(str, wVar5.f14780a.get(str));
                                i12++;
                                strArrE = strArrE;
                            }
                        }
                        int size2 = aVarY.size();
                        int i13 = 0;
                        while (true) {
                            if (i13 >= size2) {
                                animator2 = animatorN;
                                break;
                            }
                            d dVar = (d) aVarY.get((Animator) aVarY.keyAt(i13));
                            if (dVar.f14740c != null && dVar.f14738a == view2 && dVar.f14739b.equals(u()) && dVar.f14740c.equals(wVar2)) {
                                animator2 = null;
                                break;
                            }
                            i13++;
                        }
                    } else {
                        i10 = size;
                        animator2 = animatorN;
                        wVar2 = null;
                    }
                    animator = animator2;
                    view = view2;
                    wVar = wVar2;
                } else {
                    i10 = size;
                    view = wVar3.f14781b;
                    animator = animatorN;
                    wVar = null;
                }
                if (animator != null) {
                    t tVar = this.F;
                    if (tVar != null) {
                        long jC = tVar.c(viewGroup, this, wVar3, wVar4);
                        sparseIntArray.put(this.E.size(), (int) jC);
                        jMin = Math.min(jC, jMin);
                    }
                    aVarY.put(animator, new d(view, u(), this, viewGroup.getWindowId(), wVar, animator));
                    this.E.add(animator);
                    jMin = jMin;
                }
            } else {
                i10 = size;
            }
            i11++;
            size = i10;
        }
        if (sparseIntArray.size() != 0) {
            for (int i14 = 0; i14 < sparseIntArray.size(); i14++) {
                d dVar2 = (d) aVarY.get((Animator) this.E.get(sparseIntArray.keyAt(i14)));
                dVar2.f14743f.setStartDelay((((long) sparseIntArray.valueAt(i14)) - jMin) + dVar2.f14743f.getStartDelay());
            }
        }
    }

    protected void p() {
        int i10 = this.f14734z - 1;
        this.f14734z = i10;
        if (i10 == 0) {
            P(g.f14745b, false);
            for (int i11 = 0; i11 < this.f14724p.f14785c.n(); i11++) {
                View view = (View) this.f14724p.f14785c.o(i11);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i12 = 0; i12 < this.f14725q.f14785c.n(); i12++) {
                View view2 = (View) this.f14725q.f14785c.o(i12);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.B = true;
        }
    }

    public long q() {
        return this.f14711c;
    }

    public e r() {
        return this.G;
    }

    public TimeInterpolator s() {
        return this.f14712d;
    }

    w t(View view, boolean z10) {
        u uVar = this.f14726r;
        if (uVar != null) {
            return uVar.t(view, z10);
        }
        ArrayList arrayList = z10 ? this.f14728t : this.f14729u;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            }
            w wVar = (w) arrayList.get(i10);
            if (wVar == null) {
                return null;
            }
            if (wVar.f14781b == view) {
                break;
            }
            i10++;
        }
        if (i10 >= 0) {
            return (w) (z10 ? this.f14729u : this.f14728t).get(i10);
        }
        return null;
    }

    public String toString() {
        return e0("");
    }

    public String u() {
        return this.f14709a;
    }

    public androidx.transition.g v() {
        return this.I;
    }

    public t w() {
        return this.F;
    }

    public final j x() {
        u uVar = this.f14726r;
        return uVar != null ? uVar.x() : this;
    }

    public long z() {
        return this.f14710b;
    }
}
