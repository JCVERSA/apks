package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class ConstraintAnchor {

    private int f6538b;

    private boolean f6539c;

    public final ConstraintWidget f6540d;

    public final Type f6541e;

    public ConstraintAnchor f6542f;

    SolverVariable f6545i;

    private HashSet f6537a = null;

    public int f6543g = 0;

    int f6544h = Integer.MIN_VALUE;

    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    static class a {

        static final int[] f6546a;

        static {
            int[] iArr = new int[Type.values().length];
            f6546a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6546a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6546a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6546a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6546a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6546a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6546a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6546a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6546a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.f6540d = constraintWidget;
        this.f6541e = type;
    }

    public boolean a(ConstraintAnchor constraintAnchor, int i10) {
        return b(constraintAnchor, i10, Integer.MIN_VALUE, false);
    }

    public boolean b(ConstraintAnchor constraintAnchor, int i10, int i11, boolean z10) {
        if (constraintAnchor == null) {
            q();
            return true;
        }
        if (!z10 && !p(constraintAnchor)) {
            return false;
        }
        this.f6542f = constraintAnchor;
        if (constraintAnchor.f6537a == null) {
            constraintAnchor.f6537a = new HashSet();
        }
        HashSet hashSet = this.f6542f.f6537a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f6543g = i10;
        this.f6544h = i11;
        return true;
    }

    public void c(int i10, ArrayList arrayList, m mVar) {
        HashSet hashSet = this.f6537a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.core.widgets.analyzer.g.a(((ConstraintAnchor) it.next()).f6540d, i10, arrayList, mVar);
            }
        }
    }

    public HashSet d() {
        return this.f6537a;
    }

    public int e() {
        if (this.f6539c) {
            return this.f6538b;
        }
        return 0;
    }

    public int f() {
        ConstraintAnchor constraintAnchor;
        if (this.f6540d.X() == 8) {
            return 0;
        }
        return (this.f6544h == Integer.MIN_VALUE || (constraintAnchor = this.f6542f) == null || constraintAnchor.f6540d.X() != 8) ? this.f6543g : this.f6544h;
    }

    public final ConstraintAnchor g() {
        switch (a.f6546a[this.f6541e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f6540d.S;
            case 3:
                return this.f6540d.Q;
            case 4:
                return this.f6540d.T;
            case 5:
                return this.f6540d.R;
            default:
                throw new AssertionError(this.f6541e.name());
        }
    }

    public ConstraintWidget h() {
        return this.f6540d;
    }

    public SolverVariable i() {
        return this.f6545i;
    }

    public ConstraintAnchor j() {
        return this.f6542f;
    }

    public Type k() {
        return this.f6541e;
    }

    public boolean l() {
        HashSet hashSet = this.f6537a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ConstraintAnchor) it.next()).g().o()) {
                return true;
            }
        }
        return false;
    }

    public boolean m() {
        HashSet hashSet = this.f6537a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean n() {
        return this.f6539c;
    }

    public boolean o() {
        return this.f6542f != null;
    }

    public boolean p(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        Type typeK = constraintAnchor.k();
        Type type = this.f6541e;
        if (typeK == type) {
            return type != Type.BASELINE || (constraintAnchor.h().b0() && h().b0());
        }
        switch (a.f6546a[type.ordinal()]) {
            case 1:
                return (typeK == Type.BASELINE || typeK == Type.CENTER_X || typeK == Type.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z10 = typeK == Type.LEFT || typeK == Type.RIGHT;
                if (constraintAnchor.h() instanceof f) {
                    return z10 || typeK == Type.CENTER_X;
                }
                return z10;
            case 4:
            case 5:
                boolean z11 = typeK == Type.TOP || typeK == Type.BOTTOM;
                if (constraintAnchor.h() instanceof f) {
                    return z11 || typeK == Type.CENTER_Y;
                }
                return z11;
            case 6:
                return (typeK == Type.LEFT || typeK == Type.RIGHT) ? false : true;
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f6541e.name());
        }
    }

    public void q() {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor = this.f6542f;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f6537a) != null) {
            hashSet.remove(this);
            if (this.f6542f.f6537a.size() == 0) {
                this.f6542f.f6537a = null;
            }
        }
        this.f6537a = null;
        this.f6542f = null;
        this.f6543g = 0;
        this.f6544h = Integer.MIN_VALUE;
        this.f6539c = false;
        this.f6538b = 0;
    }

    public void r() {
        this.f6539c = false;
        this.f6538b = 0;
    }

    public void s(androidx.constraintlayout.core.c cVar) {
        SolverVariable solverVariable = this.f6545i;
        if (solverVariable == null) {
            this.f6545i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.f();
        }
    }

    public void t(int i10) {
        this.f6538b = i10;
        this.f6539c = true;
    }

    public String toString() {
        return this.f6540d.v() + ":" + this.f6541e.toString();
    }

    public void u(int i10) {
        if (o()) {
            this.f6544h = i10;
        }
    }
}
