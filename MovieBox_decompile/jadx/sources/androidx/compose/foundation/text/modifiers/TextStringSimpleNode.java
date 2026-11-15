package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.graphics.l1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.graphics.z4;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.node.a0;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.node.m;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.o;
import androidx.compose.ui.node.x;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.k;
import androidx.compose.ui.text.l;
import androidx.compose.ui.text.style.j;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.z;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.t;
import o0.w;

public final class TextStringSimpleNode extends androidx.compose.ui.f.c implements x, n, i1 {

    private String f2948n;

    private d0 f2949o;

    private androidx.compose.ui.text.font.h.b f2950p;

    private int f2951q;

    private boolean f2952r;

    private int f2953s;

    private int f2954t;

    private x1 f2955u;

    private Map f2956v;

    private f f2957w;

    private Function1 f2958x;

    private a f2959y;

    public TextStringSimpleNode(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12, x1 x1Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, d0Var, bVar, i10, z10, i11, i12, x1Var);
    }

    public final void J1() {
        this.f2959y = null;
    }

    public final f L1() {
        if (this.f2957w == null) {
            this.f2957w = new f(this.f2948n, this.f2949o, this.f2950p, this.f2951q, this.f2952r, this.f2953s, this.f2954t, null);
        }
        f fVar = this.f2957w;
        Intrinsics.e(fVar);
        return fVar;
    }

    private final f M1(o0.e eVar) {
        f fVarA;
        a aVar = this.f2959y;
        if (aVar != null && aVar.c() && (fVarA = aVar.a()) != null) {
            fVarA.j(eVar);
            return fVarA;
        }
        f fVarL1 = L1();
        fVarL1.j(eVar);
        return fVarL1;
    }

    public final void N1() {
        j1.b(this);
        a0.b(this);
        o.a(this);
    }

    public final boolean O1(String str) {
        Unit unit;
        a aVar = this.f2959y;
        if (aVar == null) {
            a aVar2 = new a(this.f2948n, str, false, null, 12, null);
            f fVar = new f(str, this.f2949o, this.f2950p, this.f2951q, this.f2952r, this.f2953s, this.f2954t, null);
            fVar.j(L1().a());
            aVar2.d(fVar);
            this.f2959y = aVar2;
            return true;
        }
        if (Intrinsics.c(str, aVar.b())) {
            return false;
        }
        aVar.f(str);
        f fVarA = aVar.a();
        if (fVarA != null) {
            fVarA.m(str, this.f2949o, this.f2950p, this.f2951q, this.f2952r, this.f2953s, this.f2954t);
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        return unit != null;
    }

    public final void K1(boolean z10, boolean z11, boolean z12) {
        if (z11 || z12) {
            L1().m(this.f2948n, this.f2949o, this.f2950p, this.f2951q, this.f2952r, this.f2953s, this.f2954t);
        }
        if (j1()) {
            if (z11 || (z10 && this.f2958x != null)) {
                j1.b(this);
            }
            if (z11 || z12) {
                a0.b(this);
                o.a(this);
            }
            if (z10) {
                o.a(this);
            }
        }
    }

    @Override
    public boolean O() {
        return h1.a(this);
    }

    public final boolean P1(x1 x1Var, d0 d0Var) {
        boolean zC = Intrinsics.c(x1Var, this.f2955u);
        this.f2955u = x1Var;
        return (zC && d0Var.F(this.f2949o)) ? false : true;
    }

    @Override
    public void Q0(androidx.compose.ui.semantics.n nVar) {
        Function1<List<z>, Boolean> function1 = this.f2958x;
        if (function1 == null) {
            function1 = new Function1<List<z>, Boolean>() {
                {
                    super(1);
                }

                @Override
                public final Boolean invoke(List<z> list) {
                    f fVarL1 = this.this$0.L1();
                    d0 d0Var = this.this$0.f2949o;
                    x1 x1Var = this.this$0.f2955u;
                    z zVarL = fVarL1.l(d0Var.I((16777214 & 1) != 0 ? u1.f4349b.e() : x1Var != null ? x1Var.a() : u1.f4349b.e(), (16777214 & 2) != 0 ? w.f67429b.a() : 0L, (16777214 & 4) != 0 ? null : null, (16777214 & 8) != 0 ? null : null, (16777214 & 16) != 0 ? null : null, (16777214 & 32) != 0 ? null : null, (16777214 & 64) != 0 ? null : null, (16777214 & 128) != 0 ? w.f67429b.a() : 0L, (16777214 & 256) != 0 ? null : null, (16777214 & 512) != 0 ? null : null, (16777214 & 1024) != 0 ? null : null, (16777214 & 2048) != 0 ? u1.f4349b.e() : 0L, (16777214 & 4096) != 0 ? null : null, (16777214 & 8192) != 0 ? null : null, (16777214 & 16384) != 0 ? null : null, (16777214 & 32768) != 0 ? androidx.compose.ui.text.style.h.f6091b.g() : 0, (16777214 & 65536) != 0 ? j.f6105b.f() : 0, (16777214 & 131072) != 0 ? w.f67429b.a() : 0L, (16777214 & 262144) != 0 ? null : null, (16777214 & 524288) != 0 ? null : null, (16777214 & 1048576) != 0 ? androidx.compose.ui.text.style.e.f6057a.b() : 0, (16777214 & 2097152) != 0 ? androidx.compose.ui.text.style.d.f6053a.c() : 0, (16777214 & 4194304) != 0 ? null : null, (16777214 & 8388608) != 0 ? null : null));
                    if (zVarL != null) {
                        list.add(zVarL);
                    } else {
                        zVarL = null;
                    }
                    return Boolean.valueOf(zVarL != null);
                }
            };
            this.f2958x = function1;
        }
        SemanticsPropertiesKt.E(nVar, new AnnotatedString(this.f2948n, null, null, 6, null));
        a aVar = this.f2959y;
        if (aVar != null) {
            SemanticsPropertiesKt.D(nVar, aVar.c());
            SemanticsPropertiesKt.F(nVar, new AnnotatedString(aVar.b(), null, null, 6, null));
        }
        SemanticsPropertiesKt.H(nVar, null, new Function1<AnnotatedString, Boolean>() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(AnnotatedString annotatedString) {
                this.this$0.O1(annotatedString.i());
                this.this$0.N1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.M(nVar, null, new Function1<Boolean, Boolean>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Boolean) obj).booleanValue());
            }

            public final Boolean invoke(boolean z10) {
                if (this.this$0.f2959y == null) {
                    return Boolean.FALSE;
                }
                TextStringSimpleNode.a aVar2 = this.this$0.f2959y;
                if (aVar2 != null) {
                    aVar2.e(z10);
                }
                this.this$0.N1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.d(nVar, null, new Function0<Boolean>() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() {
                this.this$0.J1();
                this.this$0.N1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.j(nVar, null, function1, 1, null);
    }

    public final boolean Q1(d0 d0Var, int i10, int i11, boolean z10, androidx.compose.ui.text.font.h.b bVar, int i12) {
        boolean z11 = !this.f2949o.G(d0Var);
        this.f2949o = d0Var;
        if (this.f2954t != i10) {
            this.f2954t = i10;
            z11 = true;
        }
        if (this.f2953s != i11) {
            this.f2953s = i11;
            z11 = true;
        }
        if (this.f2952r != z10) {
            this.f2952r = z10;
            z11 = true;
        }
        if (!Intrinsics.c(this.f2950p, bVar)) {
            this.f2950p = bVar;
            z11 = true;
        }
        if (p.e(this.f2951q, i12)) {
            return z11;
        }
        this.f2951q = i12;
        return true;
    }

    public final boolean R1(String str) {
        if (Intrinsics.c(this.f2948n, str)) {
            return false;
        }
        this.f2948n = str;
        J1();
        return true;
    }

    @Override
    public boolean V0() {
        return h1.b(this);
    }

    @Override
    public void n(z.c cVar) {
        if (j1()) {
            f fVarM1 = M1(cVar);
            l lVarE = fVarM1.e();
            if (lVarE == null) {
                throw new IllegalArgumentException(("no paragraph (layoutCache=" + this.f2957w + ", textSubstitution=" + this.f2959y + ')').toString());
            }
            m1 m1VarE = cVar.G0().e();
            boolean zB = fVarM1.b();
            if (zB) {
                float fG = t.g(fVarM1.c());
                float f10 = t.f(fVarM1.c());
                m1VarE.n();
                l1.d(m1VarE, 0.0f, 0.0f, fG, f10, 0, 16, null);
            }
            try {
                androidx.compose.ui.text.style.i iVarA = this.f2949o.A();
                if (iVarA == null) {
                    iVarA = androidx.compose.ui.text.style.i.f6100b.c();
                }
                androidx.compose.ui.text.style.i iVar = iVarA;
                z4 z4VarX = this.f2949o.x();
                if (z4VarX == null) {
                    z4VarX = z4.f4612d.a();
                }
                z4 z4Var = z4VarX;
                z.h hVarI = this.f2949o.i();
                if (hVarI == null) {
                    hVarI = z.l.f76454a;
                }
                z.h hVar = hVarI;
                androidx.compose.ui.graphics.j1 j1VarG = this.f2949o.g();
                if (j1VarG != null) {
                    k.b(lVarE, m1VarE, j1VarG, this.f2949o.d(), z4Var, iVar, hVar, 0, 64, null);
                } else {
                    x1 x1Var = this.f2955u;
                    long jA = x1Var != null ? x1Var.a() : u1.f4349b.e();
                    if (jA == 16) {
                        jA = this.f2949o.h() != 16 ? this.f2949o.h() : u1.f4349b.a();
                    }
                    k.a(lVarE, m1VarE, jA, z4Var, iVar, hVar, 0, 32, null);
                }
            } finally {
                if (zB) {
                    m1VarE.j();
                }
            }
        }
    }

    @Override
    public void w0() {
        m.a(this);
    }

    @Override
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j10) {
        f fVarM1 = M1(xVar);
        boolean zG = fVarM1.g(j10, xVar.getLayoutDirection());
        fVarM1.d();
        l lVarE = fVarM1.e();
        Intrinsics.e(lVarE);
        long jC = fVarM1.c();
        if (zG) {
            a0.a(this);
            Map linkedHashMap = this.f2956v;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap(2);
            }
            linkedHashMap.put(AlignmentLineKt.a(), Integer.valueOf(Math.round(lVarE.e())));
            linkedHashMap.put(AlignmentLineKt.b(), Integer.valueOf(Math.round(lVarE.o())));
            this.f2956v = linkedHashMap;
        }
        final g0 g0VarP = sVar.P(o0.b.f67397b.b(t.g(jC), t.g(jC), t.f(jC), t.f(jC)));
        int iG = t.g(jC);
        int iF = t.f(jC);
        Map map = this.f2956v;
        Intrinsics.e(map);
        return xVar.p0(iG, iF, map, new Function1<g0.a, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(g0.a aVar) {
                g0.a.h(aVar, g0VarP, 0, 0, 0.0f, 4, null);
            }
        });
    }

    private TextStringSimpleNode(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12, x1 x1Var) {
        this.f2948n = str;
        this.f2949o = d0Var;
        this.f2950p = bVar;
        this.f2951q = i10;
        this.f2952r = z10;
        this.f2953s = i11;
        this.f2954t = i12;
        this.f2955u = x1Var;
    }

    public static final class a {

        private final String f2960a;

        private String f2961b;

        private boolean f2962c;

        private f f2963d;

        public a(String str, String str2, boolean z10, f fVar) {
            this.f2960a = str;
            this.f2961b = str2;
            this.f2962c = z10;
            this.f2963d = fVar;
        }

        public final f a() {
            return this.f2963d;
        }

        public final String b() {
            return this.f2961b;
        }

        public final boolean c() {
            return this.f2962c;
        }

        public final void d(f fVar) {
            this.f2963d = fVar;
        }

        public final void e(boolean z10) {
            this.f2962c = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f2960a, aVar.f2960a) && Intrinsics.c(this.f2961b, aVar.f2961b) && this.f2962c == aVar.f2962c && Intrinsics.c(this.f2963d, aVar.f2963d);
        }

        public final void f(String str) {
            this.f2961b = str;
        }

        public int hashCode() {
            int iHashCode = ((((this.f2960a.hashCode() * 31) + this.f2961b.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f2962c)) * 31;
            f fVar = this.f2963d;
            return iHashCode + (fVar == null ? 0 : fVar.hashCode());
        }

        public String toString() {
            return "TextSubstitution(layoutCache=" + this.f2963d + ", isShowingSubstitution=" + this.f2962c + ')';
        }

        public a(String str, String str2, boolean z10, f fVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? null : fVar);
        }
    }
}
