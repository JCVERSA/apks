package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class t {

    private final MotionLayout f7224a;

    private HashSet f7226c;

    ArrayList f7228e;

    private ArrayList f7225b = new ArrayList();

    private String f7227d = "ViewTransitionController";

    ArrayList f7229f = new ArrayList();

    class a implements androidx.constraintlayout.widget.d.a {

        final s f7230a;

        final int f7231b;

        final boolean f7232c;

        final int f7233d;

        a(s sVar, int i10, boolean z10, int i11) {
            this.f7230a = sVar;
            this.f7231b = i10;
            this.f7232c = z10;
            this.f7233d = i11;
        }
    }

    public t(MotionLayout motionLayout) {
        this.f7224a = motionLayout;
    }

    private void h(s sVar, boolean z10) {
        ConstraintLayout.getSharedValues().a(sVar.h(), new a(sVar, sVar.h(), z10, sVar.g()));
    }

    private void l(s sVar, View... viewArr) {
        int currentState = this.f7224a.getCurrentState();
        if (sVar.f7190e == 2) {
            sVar.c(this, this.f7224a, currentState, null, viewArr);
            return;
        }
        if (currentState != -1) {
            androidx.constraintlayout.widget.b constraintSet = this.f7224a.getConstraintSet(currentState);
            if (constraintSet == null) {
                return;
            }
            sVar.c(this, this.f7224a, currentState, constraintSet, viewArr);
            return;
        }
        Log.w(this.f7227d, "No support for ViewTransition within transition yet. Currently: " + this.f7224a.toString());
    }

    public void a(s sVar) {
        this.f7225b.add(sVar);
        this.f7226c = null;
        if (sVar.i() == 4) {
            h(sVar, true);
        } else if (sVar.i() == 5) {
            h(sVar, false);
        }
    }

    void b(s.b bVar) {
        if (this.f7228e == null) {
            this.f7228e = new ArrayList();
        }
        this.f7228e.add(bVar);
    }

    void c() {
        ArrayList arrayList = this.f7228e;
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((s.b) it.next()).a();
        }
        this.f7228e.removeAll(this.f7229f);
        this.f7229f.clear();
        if (this.f7228e.isEmpty()) {
            this.f7228e = null;
        }
    }

    boolean d(int i10, m mVar) {
        for (s sVar : this.f7225b) {
            if (sVar.e() == i10) {
                sVar.f7191f.a(mVar);
                return true;
            }
        }
        return false;
    }

    void e(int i10, boolean z10) {
        for (s sVar : this.f7225b) {
            if (sVar.e() == i10) {
                sVar.n(z10);
                return;
            }
        }
    }

    void f() {
        this.f7224a.invalidate();
    }

    boolean g(int i10) {
        for (s sVar : this.f7225b) {
            if (sVar.e() == i10) {
                return sVar.j();
            }
        }
        return false;
    }

    void i(s.b bVar) {
        this.f7229f.add(bVar);
    }

    void j(MotionEvent motionEvent) {
        int currentState = this.f7224a.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.f7226c == null) {
            this.f7226c = new HashSet();
            for (s sVar : this.f7225b) {
                int childCount = this.f7224a.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = this.f7224a.getChildAt(i10);
                    if (sVar.l(childAt)) {
                        childAt.getId();
                        this.f7226c.add(childAt);
                    }
                }
            }
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f7228e;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it = this.f7228e.iterator();
            while (it.hasNext()) {
                ((s.b) it.next()).d(action, x10, y10);
            }
        }
        if (action == 0 || action == 1) {
            androidx.constraintlayout.widget.b constraintSet = this.f7224a.getConstraintSet(currentState);
            for (s sVar2 : this.f7225b) {
                if (sVar2.o(action)) {
                    for (View view : this.f7226c) {
                        if (sVar2.l(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x10, (int) y10)) {
                                sVar2.c(this, this.f7224a, currentState, constraintSet, view);
                            }
                            sVar2 = sVar2;
                        }
                    }
                }
            }
        }
    }

    void k(int i10, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        s sVar = null;
        for (s sVar2 : this.f7225b) {
            if (sVar2.e() == i10) {
                for (View view : viewArr) {
                    if (sVar2.d(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    l(sVar2, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                sVar = sVar2;
            }
        }
        if (sVar == null) {
            Log.e(this.f7227d, " Could not find ViewTransition");
        }
    }
}
