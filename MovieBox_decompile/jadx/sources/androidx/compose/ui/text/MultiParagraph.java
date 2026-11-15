package androidx.compose.ui.text;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

public final class MultiParagraph {

    private final MultiParagraphIntrinsics f5718a;

    private final int f5719b;

    private final boolean f5720c;

    private final float f5721d;

    private final float f5722e;

    private final int f5723f;

    private final List f5724g;

    private final List f5725h;

    public MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j10, int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, j10, i10, z10);
    }

    private final void B(int i10) {
        if (i10 < 0 || i10 >= b().i().length()) {
            throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0, " + b().length() + ')').toString());
        }
    }

    private final void C(int i10) {
        if (i10 < 0 || i10 > b().i().length()) {
            throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0, " + b().length() + ']').toString());
        }
    }

    private final void D(int i10) {
        if (i10 < 0 || i10 >= this.f5723f) {
            throw new IllegalArgumentException(("lineIndex(" + i10 + ") is out of bounds [0, " + this.f5723f + ')').toString());
        }
    }

    private final AnnotatedString b() {
        return this.f5718a.e();
    }

    public final float[] a(final long j10, final float[] fArr, int i10) {
        B(b0.j(j10));
        C(b0.i(j10));
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i10;
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        i.d(this.f5725h, j10, new Function1<m, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((m) obj);
                return Unit.f64096a;
            }

            public final void invoke(m mVar) {
                long j11 = j10;
                float[] fArr2 = fArr;
                Ref.IntRef intRef2 = intRef;
                Ref.FloatRef floatRef2 = floatRef;
                long jB = c0.b(mVar.m(mVar.f() > b0.j(j11) ? mVar.f() : b0.j(j11)), mVar.m(mVar.b() < b0.i(j11) ? mVar.b() : b0.i(j11)));
                mVar.e().n(jB, fArr2, intRef2.element);
                int iH = intRef2.element + (b0.h(jB) * 4);
                for (int i11 = intRef2.element; i11 < iH; i11 += 4) {
                    int i12 = i11 + 1;
                    float f10 = fArr2[i12];
                    float f11 = floatRef2.element;
                    fArr2[i12] = f10 + f11;
                    int i13 = i11 + 3;
                    fArr2[i13] = fArr2[i13] + f11;
                }
                intRef2.element = iH;
                floatRef2.element += mVar.e().getHeight();
            }
        });
        return fArr;
    }

    public final ResolvedTextDirection c(int i10) {
        C(i10);
        m mVar = (m) this.f5725h.get(i10 == b().length() ? CollectionsKt.n(this.f5725h) : i.a(this.f5725h, i10));
        return mVar.e().r(mVar.m(i10));
    }

    public final y.i d(int i10) {
        B(i10);
        m mVar = (m) this.f5725h.get(i.a(this.f5725h, i10));
        return mVar.i(mVar.e().t(mVar.m(i10)));
    }

    public final y.i e(int i10) {
        C(i10);
        m mVar = (m) this.f5725h.get(i10 == b().length() ? CollectionsKt.n(this.f5725h) : i.a(this.f5725h, i10));
        return mVar.i(mVar.e().d(mVar.m(i10)));
    }

    public final boolean f() {
        return this.f5720c;
    }

    public final float g() {
        if (this.f5725h.isEmpty()) {
            return 0.0f;
        }
        return ((m) this.f5725h.get(0)).e().e();
    }

    public final float h() {
        return this.f5722e;
    }

    public final MultiParagraphIntrinsics i() {
        return this.f5718a;
    }

    public final float j() {
        if (this.f5725h.isEmpty()) {
            return 0.0f;
        }
        m mVar = (m) CollectionsKt.u0(this.f5725h);
        return mVar.l(mVar.e().o());
    }

    public final float k(int i10) {
        D(i10);
        m mVar = (m) this.f5725h.get(i.b(this.f5725h, i10));
        return mVar.l(mVar.e().s(mVar.n(i10)));
    }

    public final int l() {
        return this.f5723f;
    }

    public final int m(int i10, boolean z10) {
        D(i10);
        m mVar = (m) this.f5725h.get(i.b(this.f5725h, i10));
        return mVar.j(mVar.e().g(mVar.n(i10), z10));
    }

    public final int n(int i10) {
        int iA;
        if (i10 >= b().length()) {
            iA = CollectionsKt.n(this.f5725h);
        } else {
            iA = i10 < 0 ? 0 : i.a(this.f5725h, i10);
        }
        m mVar = (m) this.f5725h.get(iA);
        return mVar.k(mVar.e().p(mVar.m(i10)));
    }

    public final int o(float f10) {
        m mVar = (m) this.f5725h.get(i.c(this.f5725h, f10));
        return mVar.d() == 0 ? mVar.g() : mVar.k(mVar.e().l(mVar.o(f10)));
    }

    public final float p(int i10) {
        D(i10);
        m mVar = (m) this.f5725h.get(i.b(this.f5725h, i10));
        return mVar.e().m(mVar.n(i10));
    }

    public final float q(int i10) {
        D(i10);
        m mVar = (m) this.f5725h.get(i.b(this.f5725h, i10));
        return mVar.e().i(mVar.n(i10));
    }

    public final int r(int i10) {
        D(i10);
        m mVar = (m) this.f5725h.get(i.b(this.f5725h, i10));
        return mVar.j(mVar.e().f(mVar.n(i10)));
    }

    public final float s(int i10) {
        D(i10);
        m mVar = (m) this.f5725h.get(i.b(this.f5725h, i10));
        return mVar.l(mVar.e().c(mVar.n(i10)));
    }

    public final ResolvedTextDirection t(int i10) {
        C(i10);
        m mVar = (m) this.f5725h.get(i10 == b().length() ? CollectionsKt.n(this.f5725h) : i.a(this.f5725h, i10));
        return mVar.e().b(mVar.m(i10));
    }

    public final List u() {
        return this.f5725h;
    }

    public final List v() {
        return this.f5724g;
    }

    public final float w() {
        return this.f5721d;
    }

    public final void x(m1 m1Var, long j10, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i10) {
        m1Var.n();
        List list = this.f5725h;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            m mVar = (m) list.get(i11);
            mVar.e().q(m1Var, j10, z4Var, iVar, hVar, i10);
            m1Var.c(0.0f, mVar.e().getHeight());
        }
        m1Var.j();
    }

    public final void z(m1 m1Var, j1 j1Var, float f10, z4 z4Var, androidx.compose.ui.text.style.i iVar, z.h hVar, int i10) {
        androidx.compose.ui.text.platform.b.a(this, m1Var, j1Var, f10, z4Var, iVar, hVar, i10);
    }

    private MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j10, int i10, boolean z10) {
        boolean z11;
        this.f5718a = multiParagraphIntrinsics;
        this.f5719b = i10;
        if (o0.b.n(j10) != 0 || o0.b.m(j10) != 0) {
            throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        ArrayList arrayList = new ArrayList();
        List listF = multiParagraphIntrinsics.f();
        int size = listF.size();
        int i11 = 0;
        int i12 = 0;
        float f10 = 0.0f;
        int i13 = 0;
        while (true) {
            if (i13 >= size) {
                z11 = false;
                break;
            }
            n nVar = (n) listF.get(i13);
            l lVarC = q.c(nVar.b(), o0.c.b(0, o0.b.l(j10), 0, o0.b.g(j10) ? RangesKt.e(o0.b.k(j10) - q.d(f10), i11) : o0.b.k(j10), 5, null), this.f5719b - i12, z10);
            float height = f10 + lVarC.getHeight();
            int iH = i12 + lVarC.h();
            List list = listF;
            arrayList.add(new m(lVarC, nVar.c(), nVar.a(), i12, iH, f10, height));
            if (lVarC.k() || (iH == this.f5719b && i13 != CollectionsKt.n(this.f5718a.f()))) {
                z11 = true;
                i12 = iH;
                f10 = height;
                break;
            } else {
                i13++;
                i12 = iH;
                f10 = height;
                i11 = 0;
                listF = list;
            }
        }
        this.f5722e = f10;
        this.f5723f = i12;
        this.f5720c = z11;
        this.f5725h = arrayList;
        this.f5721d = o0.b.l(j10);
        List arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i14 = 0; i14 < size2; i14++) {
            m mVar = (m) arrayList.get(i14);
            List listU = mVar.e().u();
            ArrayList arrayList3 = new ArrayList(listU.size());
            int size3 = listU.size();
            for (int i15 = 0; i15 < size3; i15++) {
                y.i iVar = (y.i) listU.get(i15);
                arrayList3.add(iVar != null ? mVar.i(iVar) : null);
            }
            CollectionsKt.B(arrayList2, arrayList3);
        }
        if (arrayList2.size() < this.f5718a.g().size()) {
            int size4 = this.f5718a.g().size() - arrayList2.size();
            ArrayList arrayList4 = new ArrayList(size4);
            for (int i16 = 0; i16 < size4; i16++) {
                arrayList4.add(null);
            }
            arrayList2 = CollectionsKt.B0(arrayList2, arrayList4);
        }
        this.f5724g = arrayList2;
    }
}
