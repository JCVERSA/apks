package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;

public final class o {

    private final List f4709a;

    private final g f4710b;

    private final int f4711c;

    private final int f4712d;

    private int f4713e;

    public o(List list, g gVar) {
        this.f4709a = list;
        this.f4710b = gVar;
        MotionEvent motionEventD = d();
        this.f4711c = n.a(motionEventD != null ? motionEventD.getButtonState() : 0);
        MotionEvent motionEventD2 = d();
        this.f4712d = g0.b(motionEventD2 != null ? motionEventD2.getMetaState() : 0);
        this.f4713e = a();
    }

    private final int a() {
        MotionEvent motionEventD = d();
        if (motionEventD == null) {
            List list = this.f4709a;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                w wVar = (w) list.get(i10);
                if (p.d(wVar)) {
                    return q.f4714a.e();
                }
                if (p.b(wVar)) {
                    return q.f4714a.d();
                }
            }
            return q.f4714a.c();
        }
        int actionMasked = motionEventD.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    switch (actionMasked) {
                        case 5:
                            break;
                        case 6:
                            break;
                        case 7:
                            break;
                        case 8:
                            return q.f4714a.f();
                        case 9:
                            return q.f4714a.a();
                        case 10:
                            return q.f4714a.b();
                        default:
                            return q.f4714a.g();
                    }
                }
                return q.f4714a.c();
            }
            return q.f4714a.e();
        }
        return q.f4714a.d();
    }

    public final List b() {
        return this.f4709a;
    }

    public final g c() {
        return this.f4710b;
    }

    public final MotionEvent d() {
        g gVar = this.f4710b;
        if (gVar != null) {
            return gVar.c();
        }
        return null;
    }

    public final int e() {
        return this.f4713e;
    }

    public final void f(int i10) {
        this.f4713e = i10;
    }

    public o(List list) {
        this(list, null);
    }
}
