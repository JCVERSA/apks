package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.BeyondBoundsLayoutKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;

public final class f implements androidx.compose.ui.modifier.j, androidx.compose.ui.layout.d {

    public static final b f2732g = new b(null);

    private static final a f2733h = new a();

    private final h f2734b;

    private final e f2735c;

    private final boolean f2736d;

    private final LayoutDirection f2737e;

    private final Orientation f2738f;

    public static final class a implements androidx.compose.ui.layout.d.a {

        private final boolean f2739a;

        a() {
        }

        @Override
        public boolean a() {
            return this.f2739a;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public class c {

        public static final int[] f2740a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f2740a = iArr;
        }
    }

    public static final class d implements androidx.compose.ui.layout.d.a {

        final Ref.ObjectRef f2742b;

        final int f2743c;

        d(Ref.ObjectRef objectRef, int i10) {
            this.f2742b = objectRef;
            this.f2743c = i10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean a() {
            return f.this.l((e.a) this.f2742b.element, this.f2743c);
        }
    }

    public f(h hVar, e eVar, boolean z10, LayoutDirection layoutDirection, Orientation orientation) {
        this.f2734b = hVar;
        this.f2735c = eVar;
        this.f2736d = z10;
        this.f2737e = layoutDirection;
        this.f2738f = orientation;
    }

    private final e.a j(e.a aVar, int i10) {
        int iB = aVar.b();
        int iA = aVar.a();
        if (m(i10)) {
            iA++;
        } else {
            iB--;
        }
        return this.f2735c.a(iB, iA);
    }

    public final boolean l(e.a aVar, int i10) {
        if (o(i10)) {
            return false;
        }
        if (m(i10)) {
            if (aVar.a() >= this.f2734b.getItemCount() - 1) {
                return false;
            }
        } else if (aVar.b() <= 0) {
            return false;
        }
        return true;
    }

    private final boolean m(int i10) {
        androidx.compose.ui.layout.d.b.a aVar = androidx.compose.ui.layout.d.b.f4859a;
        if (androidx.compose.ui.layout.d.b.h(i10, aVar.c())) {
            return false;
        }
        if (!androidx.compose.ui.layout.d.b.h(i10, aVar.b())) {
            if (androidx.compose.ui.layout.d.b.h(i10, aVar.a())) {
                return this.f2736d;
            }
            if (androidx.compose.ui.layout.d.b.h(i10, aVar.d())) {
                if (this.f2736d) {
                    return false;
                }
            } else if (androidx.compose.ui.layout.d.b.h(i10, aVar.e())) {
                int i11 = c.f2740a[this.f2737e.ordinal()];
                if (i11 == 1) {
                    return this.f2736d;
                }
                if (i11 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                if (this.f2736d) {
                    return false;
                }
            } else {
                if (!androidx.compose.ui.layout.d.b.h(i10, aVar.f())) {
                    g.c();
                    throw new KotlinNothingValueException();
                }
                int i12 = c.f2740a[this.f2737e.ordinal()];
                if (i12 != 1) {
                    if (i12 == 2) {
                        return this.f2736d;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                if (this.f2736d) {
                    return false;
                }
            }
        }
        return true;
    }

    private final boolean o(int i10) {
        androidx.compose.ui.layout.d.b.a aVar = androidx.compose.ui.layout.d.b.f4859a;
        if (!(androidx.compose.ui.layout.d.b.h(i10, aVar.a()) ? true : androidx.compose.ui.layout.d.b.h(i10, aVar.d()))) {
            if (!(androidx.compose.ui.layout.d.b.h(i10, aVar.e()) ? true : androidx.compose.ui.layout.d.b.h(i10, aVar.f()))) {
                if (!(androidx.compose.ui.layout.d.b.h(i10, aVar.c()) ? true : androidx.compose.ui.layout.d.b.h(i10, aVar.b()))) {
                    g.c();
                    throw new KotlinNothingValueException();
                }
            } else if (this.f2738f == Orientation.Vertical) {
                return true;
            }
        } else if (this.f2738f == Orientation.Horizontal) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, androidx.compose.foundation.lazy.layout.e$a] */
    /* JADX WARN: Type inference failed for: r0v8, types: [T, androidx.compose.foundation.lazy.layout.e$a] */
    @Override
    public Object a(int i10, Function1 function1) {
        if (this.f2734b.getItemCount() <= 0 || !this.f2734b.b()) {
            return function1.invoke(f2733h);
        }
        int iD = m(i10) ? this.f2734b.d() : this.f2734b.c();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = this.f2735c.a(iD, iD);
        Object objInvoke = null;
        while (objInvoke == null && l((e.a) objectRef.element, i10)) {
            ?? J = j((e.a) objectRef.element, i10);
            this.f2735c.e((e.a) objectRef.element);
            objectRef.element = J;
            this.f2734b.a();
            objInvoke = function1.invoke(new d(objectRef, i10));
        }
        this.f2735c.e((e.a) objectRef.element);
        this.f2734b.a();
        return objInvoke;
    }

    @Override
    public Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override
    public boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override
    public androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override
    public androidx.compose.ui.modifier.l getKey() {
        return BeyondBoundsLayoutKt.a();
    }

    @Override
    public androidx.compose.ui.layout.d getValue() {
        return this;
    }
}
