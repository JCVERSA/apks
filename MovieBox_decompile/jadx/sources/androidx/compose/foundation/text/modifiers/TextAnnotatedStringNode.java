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
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.style.j;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.y;
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
import z.l;

public final class TextAnnotatedStringNode extends androidx.compose.ui.f.c implements x, n, i1 {
    private Map A;
    private e B;
    private Function1 C;
    private a D;

    private AnnotatedString f2923n;

    private d0 f2924o;

    private androidx.compose.ui.text.font.h.b f2925p;

    private Function1 f2926q;

    private int f2927r;

    private boolean f2928s;

    private int f2929t;

    private int f2930u;

    private List f2931v;

    private Function1 f2932w;

    private h f2933x;

    private x1 f2934y;

    private Function1 f2935z;

    public TextAnnotatedStringNode(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i10, boolean z10, int i11, int i12, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, function1, i10, z10, i11, i12, list, function2, hVar, x1Var, function3);
    }

    public final e L1() {
        if (this.B == null) {
            this.B = new e(this.f2923n, this.f2924o, this.f2925p, this.f2927r, this.f2928s, this.f2929t, this.f2930u, this.f2931v, null);
        }
        e eVar = this.B;
        Intrinsics.e(eVar);
        return eVar;
    }

    private final e M1(o0.e eVar) {
        e eVarA;
        a aVar = this.D;
        if (aVar != null && aVar.c() && (eVarA = aVar.a()) != null) {
            eVarA.h(eVar);
            return eVarA;
        }
        e eVarL1 = L1();
        eVarL1.h(eVar);
        return eVarL1;
    }

    public final void O1() {
        j1.b(this);
        a0.b(this);
        o.a(this);
    }

    public final boolean Q1(AnnotatedString annotatedString) {
        Unit unit;
        a aVar = this.D;
        if (aVar == null) {
            a aVar2 = new a(this.f2923n, annotatedString, false, null, 12, null);
            e eVar = new e(annotatedString, this.f2924o, this.f2925p, this.f2927r, this.f2928s, this.f2929t, this.f2930u, this.f2931v, null);
            eVar.h(L1().a());
            aVar2.d(eVar);
            this.D = aVar2;
            return true;
        }
        if (Intrinsics.c(annotatedString, aVar.b())) {
            return false;
        }
        aVar.f(annotatedString);
        e eVarA = aVar.a();
        if (eVarA != null) {
            eVarA.k(annotatedString, this.f2924o, this.f2925p, this.f2927r, this.f2928s, this.f2929t, this.f2930u, this.f2931v);
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        return unit != null;
    }

    public final void I1() {
        this.D = null;
    }

    public final void J1(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (z11 || z12 || z13) {
            L1().k(this.f2923n, this.f2924o, this.f2925p, this.f2927r, this.f2928s, this.f2929t, this.f2930u, this.f2931v);
        }
        if (j1()) {
            if (z11 || (z10 && this.C != null)) {
                j1.b(this);
            }
            if (z11 || z12 || z13) {
                a0.b(this);
                o.a(this);
            }
            if (z10) {
                o.a(this);
            }
        }
    }

    public final void K1(z.c cVar) {
        n(cVar);
    }

    public final a N1() {
        return this.D;
    }

    @Override
    public boolean O() {
        return true;
    }

    public final v P1(androidx.compose.ui.layout.x xVar, s sVar, long j10) {
        return z(xVar, sVar, j10);
    }

    @Override
    public void Q0(androidx.compose.ui.semantics.n nVar) {
        Function1<List<z>, Boolean> function1 = this.C;
        if (function1 == null) {
            function1 = new Function1<List<z>, Boolean>() {
                {
                    super(1);
                }

                /* JADX WARN: Code duplicated, block: B:11:0x00b8  */
                @Override
                public final Boolean invoke(List<z> list) {
                    z zVarB;
                    z zVarB2 = this.this$0.L1().b();
                    if (zVarB2 != null) {
                        AnnotatedString annotatedStringJ = zVarB2.k().j();
                        d0 d0Var = this.this$0.f2924o;
                        x1 x1Var = this.this$0.f2934y;
                        zVarB = z.b(zVarB2, new y(annotatedStringJ, d0Var.I((16777214 & 1) != 0 ? u1.f4349b.e() : x1Var != null ? x1Var.a() : u1.f4349b.e(), (16777214 & 2) != 0 ? w.f67429b.a() : 0L, (16777214 & 4) != 0 ? null : null, (16777214 & 8) != 0 ? null : null, (16777214 & 16) != 0 ? null : null, (16777214 & 32) != 0 ? null : null, (16777214 & 64) != 0 ? null : null, (16777214 & 128) != 0 ? w.f67429b.a() : 0L, (16777214 & 256) != 0 ? null : null, (16777214 & 512) != 0 ? null : null, (16777214 & 1024) != 0 ? null : null, (16777214 & 2048) != 0 ? u1.f4349b.e() : 0L, (16777214 & 4096) != 0 ? null : null, (16777214 & 8192) != 0 ? null : null, (16777214 & 16384) != 0 ? null : null, (16777214 & 32768) != 0 ? androidx.compose.ui.text.style.h.f6091b.g() : 0, (16777214 & 65536) != 0 ? j.f6105b.f() : 0, (16777214 & 131072) != 0 ? w.f67429b.a() : 0L, (16777214 & 262144) != 0 ? null : null, (16777214 & 524288) != 0 ? null : null, (16777214 & 1048576) != 0 ? androidx.compose.ui.text.style.e.f6057a.b() : 0, (16777214 & 2097152) != 0 ? androidx.compose.ui.text.style.d.f6053a.c() : 0, (16777214 & 4194304) != 0 ? null : null, (16777214 & 8388608) != 0 ? null : null), zVarB2.k().g(), zVarB2.k().e(), zVarB2.k().h(), zVarB2.k().f(), zVarB2.k().b(), zVarB2.k().d(), zVarB2.k().c(), zVarB2.k().a(), (DefaultConstructorMarker) null), 0L, 2, null);
                        if (zVarB != null) {
                            list.add(zVarB);
                        } else {
                            zVarB = null;
                        }
                    } else {
                        zVarB = null;
                    }
                    return Boolean.valueOf(zVarB != null);
                }
            };
            this.C = function1;
        }
        SemanticsPropertiesKt.E(nVar, this.f2923n);
        a aVar = this.D;
        if (aVar != null) {
            SemanticsPropertiesKt.F(nVar, aVar.b());
            SemanticsPropertiesKt.D(nVar, aVar.c());
        }
        SemanticsPropertiesKt.H(nVar, null, new Function1<AnnotatedString, Boolean>() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(AnnotatedString annotatedString) {
                this.this$0.Q1(annotatedString);
                this.this$0.O1();
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
                if (this.this$0.N1() == null) {
                    return Boolean.FALSE;
                }
                Function1 function2 = this.this$0.f2935z;
                if (function2 != null) {
                    TextAnnotatedStringNode.a aVarN1 = this.this$0.N1();
                    Intrinsics.e(aVarN1);
                    function2.invoke(aVarN1);
                }
                TextAnnotatedStringNode.a aVarN2 = this.this$0.N1();
                if (aVarN2 != null) {
                    aVarN2.e(z10);
                }
                this.this$0.O1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.d(nVar, null, new Function0<Boolean>() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() {
                this.this$0.I1();
                this.this$0.O1();
                return Boolean.TRUE;
            }
        }, 1, null);
        SemanticsPropertiesKt.j(nVar, null, function1, 1, null);
    }

    public final boolean R1(Function1 function1, Function1 function2, h hVar, Function1 function3) {
        boolean z10;
        if (this.f2926q != function1) {
            this.f2926q = function1;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f2932w != function2) {
            this.f2932w = function2;
            z10 = true;
        }
        if (!Intrinsics.c(this.f2933x, hVar)) {
            z10 = true;
        }
        if (this.f2935z == function3) {
            return z10;
        }
        this.f2935z = function3;
        return true;
    }

    public final boolean S1(x1 x1Var, d0 d0Var) {
        boolean zC = Intrinsics.c(x1Var, this.f2934y);
        this.f2934y = x1Var;
        return (zC && d0Var.F(this.f2924o)) ? false : true;
    }

    public final boolean T1(d0 d0Var, List list, int i10, int i11, boolean z10, androidx.compose.ui.text.font.h.b bVar, int i12) {
        boolean z11 = !this.f2924o.G(d0Var);
        this.f2924o = d0Var;
        if (!Intrinsics.c(this.f2931v, list)) {
            this.f2931v = list;
            z11 = true;
        }
        if (this.f2930u != i10) {
            this.f2930u = i10;
            z11 = true;
        }
        if (this.f2929t != i11) {
            this.f2929t = i11;
            z11 = true;
        }
        if (this.f2928s != z10) {
            this.f2928s = z10;
            z11 = true;
        }
        if (!Intrinsics.c(this.f2925p, bVar)) {
            this.f2925p = bVar;
            z11 = true;
        }
        if (p.e(this.f2927r, i12)) {
            return z11;
        }
        this.f2927r = i12;
        return true;
    }

    public final boolean U1(AnnotatedString annotatedString) {
        boolean zC = Intrinsics.c(this.f2923n.i(), annotatedString.i());
        boolean z10 = (zC && Intrinsics.c(this.f2923n.g(), annotatedString.g()) && Intrinsics.c(this.f2923n.e(), annotatedString.e()) && this.f2923n.l(annotatedString)) ? false : true;
        if (z10) {
            this.f2923n = annotatedString;
        }
        if (!zC) {
            I1();
        }
        return z10;
    }

    @Override
    public boolean V0() {
        return h1.b(this);
    }

    @Override
    public void n(z.c cVar) {
        if (j1()) {
            m1 m1VarE = cVar.G0().e();
            z zVarC = M1(cVar).c();
            MultiParagraph multiParagraphV = zVarC.v();
            boolean z10 = true;
            boolean z11 = zVarC.i() && !p.e(this.f2927r, p.f6133a.c());
            if (z11) {
                y.i iVarA = y.j.a(y.g.f75999b.c(), y.n.a(t.g(zVarC.y()), t.f(zVarC.y())));
                m1VarE.n();
                l1.e(m1VarE, iVarA, 0, 2, null);
            }
            try {
                androidx.compose.ui.text.style.i iVarA2 = this.f2924o.A();
                if (iVarA2 == null) {
                    iVarA2 = androidx.compose.ui.text.style.i.f6100b.c();
                }
                androidx.compose.ui.text.style.i iVar = iVarA2;
                z4 z4VarX = this.f2924o.x();
                if (z4VarX == null) {
                    z4VarX = z4.f4612d.a();
                }
                z4 z4Var = z4VarX;
                z.h hVarI = this.f2924o.i();
                if (hVarI == null) {
                    hVarI = l.f76454a;
                }
                z.h hVar = hVarI;
                androidx.compose.ui.graphics.j1 j1VarG = this.f2924o.g();
                if (j1VarG != null) {
                    multiParagraphV.z(m1VarE, j1VarG, (64 & 4) != 0 ? Float.NaN : this.f2924o.d(), (64 & 8) != 0 ? null : z4Var, (64 & 16) != 0 ? null : iVar, (64 & 32) != 0 ? null : hVar, (64 & 64) != 0 ? z.g.f76450o1.a() : 0);
                } else {
                    x1 x1Var = this.f2934y;
                    long jA = x1Var != null ? x1Var.a() : u1.f4349b.e();
                    if (jA == 16) {
                        jA = this.f2924o.h() != 16 ? this.f2924o.h() : u1.f4349b.a();
                    }
                    multiParagraphV.x(m1VarE, (32 & 2) != 0 ? u1.f4349b.e() : jA, (32 & 4) != 0 ? null : z4Var, (32 & 8) != 0 ? null : iVar, (32 & 16) == 0 ? hVar : null, (32 & 32) != 0 ? z.g.f76450o1.a() : 0);
                }
                if (z11) {
                    m1VarE.j();
                }
                a aVar = this.D;
                if (!((aVar == null || !aVar.c()) ? i.a(this.f2923n) : false)) {
                    List list = this.f2931v;
                    if (list != null && !list.isEmpty()) {
                        z10 = false;
                    }
                    if (z10) {
                        return;
                    }
                }
                cVar.X0();
            } catch (Throwable th2) {
                if (z11) {
                    m1VarE.j();
                }
                throw th2;
            }
        }
    }

    @Override
    public void w0() {
        m.a(this);
    }

    @Override
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j10) {
        e eVarM1 = M1(xVar);
        boolean zE = eVarM1.e(j10, xVar.getLayoutDirection());
        z zVarC = eVarM1.c();
        zVarC.v().i().b();
        if (zE) {
            a0.a(this);
            Function1 function1 = this.f2926q;
            if (function1 != null) {
                function1.invoke(zVarC);
            }
            Map linkedHashMap = this.A;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap(2);
            }
            linkedHashMap.put(AlignmentLineKt.a(), Integer.valueOf(Math.round(zVarC.h())));
            linkedHashMap.put(AlignmentLineKt.b(), Integer.valueOf(Math.round(zVarC.j())));
            this.A = linkedHashMap;
        }
        Function1 function2 = this.f2932w;
        if (function2 != null) {
            function2.invoke(zVarC.x());
        }
        final g0 g0VarP = sVar.P(o0.b.f67397b.b(t.g(zVarC.y()), t.g(zVarC.y()), t.f(zVarC.y()), t.f(zVarC.y())));
        int iG = t.g(zVarC.y());
        int iF = t.f(zVarC.y());
        Map map = this.A;
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

    private TextAnnotatedStringNode(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i10, boolean z10, int i11, int i12, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3) {
        this.f2923n = annotatedString;
        this.f2924o = d0Var;
        this.f2925p = bVar;
        this.f2926q = function1;
        this.f2927r = i10;
        this.f2928s = z10;
        this.f2929t = i11;
        this.f2930u = i12;
        this.f2931v = list;
        this.f2932w = function2;
        this.f2934y = x1Var;
        this.f2935z = function3;
    }

    public static final class a {

        private final AnnotatedString f2936a;

        private AnnotatedString f2937b;

        private boolean f2938c;

        private e f2939d;

        public a(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z10, e eVar) {
            this.f2936a = annotatedString;
            this.f2937b = annotatedString2;
            this.f2938c = z10;
            this.f2939d = eVar;
        }

        public final e a() {
            return this.f2939d;
        }

        public final AnnotatedString b() {
            return this.f2937b;
        }

        public final boolean c() {
            return this.f2938c;
        }

        public final void d(e eVar) {
            this.f2939d = eVar;
        }

        public final void e(boolean z10) {
            this.f2938c = z10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f2936a, aVar.f2936a) && Intrinsics.c(this.f2937b, aVar.f2937b) && this.f2938c == aVar.f2938c && Intrinsics.c(this.f2939d, aVar.f2939d);
        }

        public final void f(AnnotatedString annotatedString) {
            this.f2937b = annotatedString;
        }

        public int hashCode() {
            int iHashCode = ((((this.f2936a.hashCode() * 31) + this.f2937b.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f2938c)) * 31;
            e eVar = this.f2939d;
            return iHashCode + (eVar == null ? 0 : eVar.hashCode());
        }

        public String toString() {
            return "TextSubstitutionValue(original=" + ((Object) this.f2936a) + ", substitution=" + ((Object) this.f2937b) + ", isShowingSubstitution=" + this.f2938c + ", layoutCache=" + this.f2939d + ')';
        }

        public a(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z10, e eVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(annotatedString, annotatedString2, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? null : eVar);
        }
    }
}
