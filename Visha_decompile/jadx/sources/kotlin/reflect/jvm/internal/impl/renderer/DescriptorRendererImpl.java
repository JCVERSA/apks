package kotlin.reflect.jvm.internal.impl.renderer;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.b92;
import defpackage.bn6;
import defpackage.bu1;
import defpackage.by6;
import defpackage.c74;
import defpackage.c92;
import defpackage.dd;
import defpackage.du1;
import defpackage.dv7;
import defpackage.e74;
import defpackage.ebb;
import defpackage.ee5;
import defpackage.eh5;
import defpackage.fh5;
import defpackage.fy3;
import defpackage.g1a;
import defpackage.g72;
import defpackage.gd;
import defpackage.gd3;
import defpackage.hcb;
import defpackage.hd3;
import defpackage.i81;
import defpackage.id3;
import defpackage.j1a;
import defpackage.j2;
import defpackage.kpc;
import defpackage.kr0;
import defpackage.l1a;
import defpackage.ld;
import defpackage.ld8;
import defpackage.mcb;
import defpackage.mgb;
import defpackage.ns8;
import defpackage.o54;
import defpackage.p54;
import defpackage.pf1;
import defpackage.pv7;
import defpackage.px0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.qx0;
import defpackage.ro8;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.su9;
import defpackage.ti8;
import defpackage.tu9;
import defpackage.vh;
import defpackage.vi8;
import defpackage.wp3;
import defpackage.x71;
import defpackage.xi8;
import defpackage.xnb;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.y82;
import defpackage.yi5;
import defpackage.z71;
import defpackage.ze9;
import defpackage.zfb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import org.apache.commons.text.StringSubstitutor;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.mozilla.javascript.ES6Iterator;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class DescriptorRendererImpl extends DescriptorRenderer implements kotlin.reflect.jvm.internal.impl.renderer.b {
    public final DescriptorRendererOptionsImpl l;
    public final yi5 m;

    public final class a implements bu1 {

        public class C0404a {
            public static final int[] a;

            static {
                int[] iArr = new int[PropertyAccessorRenderingPolicy.values().length];
                try {
                    iArr[PropertyAccessorRenderingPolicy.PRETTY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[PropertyAccessorRenderingPolicy.DEBUG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[PropertyAccessorRenderingPolicy.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        public a() {
        }

        public void A(h hVar, StringBuilder sb) {
            y45.j(hVar, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.U1(hVar, true, sb, true);
        }

        @Override
        public Object a(h hVar, Object obj) {
            A(hVar, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object b(xi8 xi8Var, Object obj) throws IOException {
            w(xi8Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object c(dv7 dv7Var, Object obj) {
            r(dv7Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object d(c cVar, Object obj) throws IOException {
            o(cVar, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object e(qq6 qq6Var, Object obj) {
            q(qq6Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object f(ro8 ro8Var, Object obj) {
            x(ro8Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object g(vi8 vi8Var, Object obj) throws IOException {
            v(vi8Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object h(qw0 qw0Var, Object obj) throws IOException {
            n(qw0Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object i(ti8 ti8Var, Object obj) throws IOException {
            u(ti8Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object j(pv7 pv7Var, Object obj) {
            s(pv7Var, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object k(ebb ebbVar, Object obj) {
            y(ebbVar, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object l(e eVar, Object obj) throws IOException {
            p(eVar, (StringBuilder) obj);
            return zfb.a;
        }

        @Override
        public Object m(hcb hcbVar, Object obj) {
            z(hcbVar, (StringBuilder) obj);
            return zfb.a;
        }

        public void n(qw0 qw0Var, StringBuilder sb) throws IOException {
            y45.j(qw0Var, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.Z0(qw0Var, sb);
        }

        public void o(c cVar, StringBuilder sb) throws IOException {
            y45.j(cVar, "constructorDescriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.e1(cVar, sb);
        }

        public void p(e eVar, StringBuilder sb) throws IOException {
            y45.j(eVar, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.k1(eVar, sb);
        }

        public void q(qq6 qq6Var, StringBuilder sb) {
            y45.j(qq6Var, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.u1(qq6Var, sb, true);
        }

        public void r(dv7 dv7Var, StringBuilder sb) {
            y45.j(dv7Var, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.y1(dv7Var, sb);
        }

        public void s(pv7 pv7Var, StringBuilder sb) {
            y45.j(pv7Var, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.A1(pv7Var, sb);
        }

        public final void t(f fVar, StringBuilder sb, String str) throws IOException {
            int i = C0404a.a[DescriptorRendererImpl.this.n0().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                p(fVar, sb);
                return;
            }
            DescriptorRendererImpl.this.T0(fVar, sb);
            sb.append(str + " for ");
            DescriptorRendererImpl descriptorRendererImpl = DescriptorRendererImpl.this;
            ti8 ti8VarE0 = fVar.e0();
            y45.i(ti8VarE0, "descriptor.correspondingProperty");
            descriptorRendererImpl.C1(ti8VarE0, sb);
        }

        public void u(ti8 ti8Var, StringBuilder sb) throws IOException {
            y45.j(ti8Var, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.C1(ti8Var, sb);
        }

        public void v(vi8 vi8Var, StringBuilder sb) throws IOException {
            y45.j(vi8Var, "descriptor");
            y45.j(sb, "builder");
            t(vi8Var, sb, "getter");
        }

        public void w(xi8 xi8Var, StringBuilder sb) throws IOException {
            y45.j(xi8Var, "descriptor");
            y45.j(sb, "builder");
            t(xi8Var, sb, "setter");
        }

        public void x(ro8 ro8Var, StringBuilder sb) {
            y45.j(ro8Var, "descriptor");
            y45.j(sb, "builder");
            sb.append(ro8Var.getName());
        }

        public void y(ebb ebbVar, StringBuilder sb) {
            y45.j(ebbVar, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.K1(ebbVar, sb);
        }

        public void z(hcb hcbVar, StringBuilder sb) {
            y45.j(hcbVar, "descriptor");
            y45.j(sb, "builder");
            DescriptorRendererImpl.this.P1(hcbVar, sb, true);
        }
    }

    public class b {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[RenderingFormat.values().length];
            try {
                iArr[RenderingFormat.PLAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderingFormat.HTML.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
            int[] iArr2 = new int[ParameterNameRenderingPolicy.values().length];
            try {
                iArr2[ParameterNameRenderingPolicy.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ParameterNameRenderingPolicy.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            b = iArr2;
        }
    }

    public DescriptorRendererImpl(DescriptorRendererOptionsImpl descriptorRendererOptionsImpl) {
        y45.j(descriptorRendererOptionsImpl, "options");
        this.l = descriptorRendererOptionsImpl;
        descriptorRendererOptionsImpl.m0();
        this.m = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final DescriptorRendererImpl invoke() {
                DescriptorRenderer descriptorRendererA = this.this$0.A(new e74() {
                    @Override
                    public Object invoke(Object obj) {
                        invoke((b) obj);
                        return zfb.a;
                    }

                    public final void invoke(b bVar) {
                        y45.j(bVar, "$this$withOptions");
                        bVar.f(ze9.m(bVar.c(), y71.n(kotlin.reflect.jvm.internal.impl.builtins.e.a.C, kotlin.reflect.jvm.internal.impl.builtins.e.a.D)));
                    }
                });
                y45.h(descriptorRendererA, "null cannot be cast to non-null type org.jetbrains.kotlin.renderer.DescriptorRendererImpl");
                return (DescriptorRendererImpl) descriptorRendererA;
            }
        });
    }

    public static void O1(DescriptorRendererImpl descriptorRendererImpl, StringBuilder sb, eh5 eh5Var, sbb sbbVar, int i, Object obj) {
        if ((i & 2) != 0) {
            sbbVar = eh5Var.I0();
        }
        descriptorRendererImpl.N1(sb, eh5Var, sbbVar);
    }

    public static void T1(DescriptorRendererImpl descriptorRendererImpl, xnb xnbVar, StringBuilder sb, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        descriptorRendererImpl.S1(xnbVar, sb, z);
    }

    public static void X0(DescriptorRendererImpl descriptorRendererImpl, StringBuilder sb, dd ddVar, AnnotationUseSiteTarget annotationUseSiteTarget, int i, Object obj) {
        if ((i & 2) != 0) {
            annotationUseSiteTarget = null;
        }
        descriptorRendererImpl.W0(sb, ddVar, annotationUseSiteTarget);
    }

    public boolean A0() {
        return this.l.a0();
    }

    public final void A1(pv7 pv7Var, StringBuilder sb) {
        z1(pv7Var.d(), "package", sb);
        if (d()) {
            sb.append(" in context of ");
            u1(pv7Var.A0(), sb, false);
        }
    }

    public RenderingFormat B0() {
        return this.l.b0();
    }

    public final void B1(StringBuilder sb, ld8 ld8Var) {
        ld8 ld8VarC = ld8Var.c();
        if (ld8VarC != null) {
            B1(sb, ld8VarC);
            sb.append('.');
            by6 name = ld8Var.b().getName();
            y45.i(name, "possiblyInnerType.classifierDescriptor.name");
            sb.append(x(name, false));
        } else {
            sbb sbbVarM = ld8Var.b().m();
            y45.i(sbbVarM, "possiblyInnerType.classi…escriptor.typeConstructor");
            sb.append(M1(sbbVarM));
        }
        sb.append(L1(ld8Var.a()));
    }

    public e74 C0() {
        return this.l.c0();
    }

    public final void C1(ti8 ti8Var, StringBuilder sb) throws IOException {
        if (!A0()) {
            if (!z0()) {
                D1(ti8Var, sb);
                List listY0 = ti8Var.y0();
                y45.i(listY0, "property.contextReceiverParameters");
                f1(listY0, sb);
                c92 visibility = ti8Var.getVisibility();
                y45.i(visibility, "property.visibility");
                X1(visibility, sb);
                boolean z = false;
                t1(sb, g0().contains(DescriptorRendererModifier.CONST) && ti8Var.isConst(), StringLookupFactory.KEY_CONST);
                p1(ti8Var, sb);
                s1(ti8Var, sb);
                x1(ti8Var, sb);
                if (g0().contains(DescriptorRendererModifier.LATEINIT) && ti8Var.z0()) {
                    z = true;
                }
                t1(sb, z, "lateinit");
                o1(ti8Var, sb);
            }
            T1(this, ti8Var, sb, false, 4, null);
            List typeParameters = ti8Var.getTypeParameters();
            y45.i(typeParameters, "property.typeParameters");
            R1(typeParameters, sb, true);
            E1(ti8Var, sb);
        }
        u1(ti8Var, sb, true);
        sb.append(": ");
        eh5 type = ti8Var.getType();
        y45.i(type, "property.type");
        sb.append(y(type));
        F1(ti8Var, sb);
        m1(ti8Var, sb);
        List typeParameters2 = ti8Var.getTypeParameters();
        y45.i(typeParameters2, "property.typeParameters");
        Y1(typeParameters2, sb);
    }

    public boolean D0() {
        return this.l.d0();
    }

    public final void D1(ti8 ti8Var, StringBuilder sb) {
        if (g0().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            X0(this, sb, ti8Var, null, 2, null);
            wp3 wp3VarL = ti8Var.L();
            if (wp3VarL != null) {
                W0(sb, wp3VarL, AnnotationUseSiteTarget.FIELD);
            }
            wp3 wp3VarZ = ti8Var.z();
            if (wp3VarZ != null) {
                W0(sb, wp3VarZ, AnnotationUseSiteTarget.PROPERTY_DELEGATE_FIELD);
            }
            if (n0() == PropertyAccessorRenderingPolicy.NONE) {
                vi8 getter = ti8Var.getGetter();
                if (getter != null) {
                    W0(sb, getter, AnnotationUseSiteTarget.PROPERTY_GETTER);
                }
                xi8 setter = ti8Var.getSetter();
                if (setter != null) {
                    W0(sb, setter, AnnotationUseSiteTarget.PROPERTY_SETTER);
                    List listF = setter.f();
                    y45.i(listF, "setter.valueParameters");
                    h hVar = (h) i81.O0(listF);
                    y45.i(hVar, "it");
                    W0(sb, hVar, AnnotationUseSiteTarget.SETTER_PARAMETER);
                }
            }
        }
    }

    public boolean E0() {
        return this.l.e0();
    }

    public final void E1(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        ro8 ro8VarB0 = aVar.b0();
        if (ro8VarB0 != null) {
            W0(sb, ro8VarB0, AnnotationUseSiteTarget.RECEIVER);
            eh5 type = ro8VarB0.getType();
            y45.i(type, "receiver.type");
            sb.append(i1(type));
            sb.append(Consts.DOT);
        }
    }

    public DescriptorRenderer.b F0() {
        return this.l.f0();
    }

    public final void F1(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        ro8 ro8VarB0;
        if (o0() && (ro8VarB0 = aVar.b0()) != null) {
            sb.append(" on ");
            eh5 type = ro8VarB0.getType();
            y45.i(type, "receiver.type");
            sb.append(y(type));
        }
    }

    public boolean G0() {
        return this.l.g0();
    }

    public final void G1(StringBuilder sb, sm9 sm9Var) {
        if (y45.e(sm9Var, n.b) || n.k(sm9Var)) {
            sb.append("???");
            return;
        }
        if (id3.o(sm9Var)) {
            if (!D0()) {
                sb.append("???");
                return;
            }
            sbb sbbVarI0 = sm9Var.I0();
            y45.h(sbbVarI0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor");
            sb.append(h1(((hd3) sbbVarI0).f(0)));
            return;
        }
        if (fh5.a(sm9Var)) {
            g1(sb, sm9Var);
        } else if (Z1(sm9Var)) {
            l1(sb, sm9Var);
        } else {
            g1(sb, sm9Var);
        }
    }

    public boolean H0() {
        return this.l.h0();
    }

    public final void H1(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    public boolean I0() {
        return this.l.i0();
    }

    public final void I1(qw0 qw0Var, StringBuilder sb) throws IOException {
        if (K0() || d.n0(qw0Var.q())) {
            return;
        }
        Collection collectionK = qw0Var.m().k();
        y45.i(collectionK, "klass.typeConstructor.supertypes");
        if (collectionK.isEmpty()) {
            return;
        }
        if (collectionK.size() == 1 && d.b0((eh5) collectionK.iterator().next())) {
            return;
        }
        H1(sb);
        sb.append(": ");
        i81.v0(collectionK, sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : new e74() {
            {
                super(1);
            }

            @Override
            public final CharSequence invoke(eh5 eh5Var) {
                DescriptorRendererImpl descriptorRendererImpl = this.this$0;
                y45.i(eh5Var, "it");
                return descriptorRendererImpl.y(eh5Var);
            }
        });
    }

    public boolean J0() {
        return this.l.j0();
    }

    public final void J1(e eVar, StringBuilder sb) {
        t1(sb, eVar.isSuspend(), "suspend");
    }

    public boolean K0() {
        return this.l.k0();
    }

    public final void K1(ebb ebbVar, StringBuilder sb) {
        X0(this, sb, ebbVar, null, 2, null);
        c92 visibility = ebbVar.getVisibility();
        y45.i(visibility, "typeAlias.visibility");
        X1(visibility, sb);
        p1(ebbVar, sb);
        sb.append(n1("typealias"));
        sb.append(" ");
        u1(ebbVar, sb, true);
        List listR = ebbVar.r();
        y45.i(listR, "typeAlias.declaredTypeParameters");
        R1(listR, sb, false);
        Y0(ebbVar, sb);
        sb.append(" = ");
        sb.append(y(ebbVar.w0()));
    }

    public boolean L0() {
        return this.l.l0();
    }

    public String L1(List list) throws IOException {
        y45.j(list, "typeArguments");
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Q0());
        O(sb, list);
        sb.append(M0());
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String M0() {
        return Q(">");
    }

    public String M1(sbb sbbVar) {
        y45.j(sbbVar, "typeConstructor");
        px0 px0VarC = sbbVar.c();
        if (px0VarC instanceof hcb ? true : px0VarC instanceof qw0 ? true : px0VarC instanceof ebb) {
            return b1(px0VarC);
        }
        if (px0VarC == null) {
            return sbbVar instanceof IntersectionTypeConstructor ? ((IntersectionTypeConstructor) sbbVar).h(new e74() {
                @Override
                public final Object invoke(eh5 eh5Var) {
                    y45.j(eh5Var, "it");
                    return eh5Var;
                }
            }) : sbbVar.toString();
        }
        throw new IllegalStateException(("Unexpected classifier: " + px0VarC.getClass()).toString());
    }

    public final void N(StringBuilder sb, xt1 xt1Var) {
        xt1 xt1VarB;
        String name;
        if ((xt1Var instanceof dv7) || (xt1Var instanceof pv7) || (xt1VarB = xt1Var.b()) == null || (xt1VarB instanceof qq6)) {
            return;
        }
        sb.append(" ");
        sb.append(q1("defined in"));
        sb.append(" ");
        p54 p54VarM = y82.m(xt1VarB);
        y45.i(p54VarM, "getFqName(containingDeclaration)");
        sb.append(p54VarM.e() ? "root package" : w(p54VarM));
        if (I0() && (xt1VarB instanceof dv7) && (xt1Var instanceof du1) && (name = ((du1) xt1Var).getSource().b().getName()) != null) {
            sb.append(" ");
            sb.append(q1("in file"));
            sb.append(" ");
            sb.append(name);
        }
    }

    public final boolean N0(eh5 eh5Var) {
        return kotlin.reflect.jvm.internal.impl.builtins.c.q(eh5Var) || !eh5Var.getAnnotations().isEmpty();
    }

    public final void N1(StringBuilder sb, eh5 eh5Var, sbb sbbVar) {
        ld8 ld8VarA = TypeParameterUtilsKt.a(eh5Var);
        if (ld8VarA != null) {
            B1(sb, ld8VarA);
        } else {
            sb.append(M1(sbbVar));
            sb.append(L1(eh5Var.G0()));
        }
    }

    public final void O(StringBuilder sb, List list) throws IOException {
        i81.v0(list, sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : new e74() {
            {
                super(1);
            }

            @Override
            public final CharSequence invoke(mcb mcbVar) {
                y45.j(mcbVar, "it");
                if (mcbVar.b()) {
                    return "*";
                }
                DescriptorRendererImpl descriptorRendererImpl = this.this$0;
                eh5 type = mcbVar.getType();
                y45.i(type, "it.type");
                String strY = descriptorRendererImpl.y(type);
                if (mcbVar.c() == Variance.INVARIANT) {
                    return strY;
                }
                return mcbVar.c() + ' ' + strY;
            }
        });
    }

    public final Modality O0(bn6 bn6Var) {
        if (bn6Var instanceof qw0) {
            return ((qw0) bn6Var).getKind() == ClassKind.INTERFACE ? Modality.ABSTRACT : Modality.FINAL;
        }
        xt1 xt1VarB = bn6Var.b();
        qw0 qw0Var = xt1VarB instanceof qw0 ? (qw0) xt1VarB : null;
        if (qw0Var != null && (bn6Var instanceof CallableMemberDescriptor)) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) bn6Var;
            Collection collectionE = callableMemberDescriptor.e();
            y45.i(collectionE, "this.overriddenDescriptors");
            if (!collectionE.isEmpty() && qw0Var.j() != Modality.FINAL) {
                return Modality.OPEN;
            }
            if (qw0Var.getKind() != ClassKind.INTERFACE || y45.e(callableMemberDescriptor.getVisibility(), b92.a)) {
                return Modality.FINAL;
            }
            Modality modalityJ = callableMemberDescriptor.j();
            Modality modality = Modality.ABSTRACT;
            return modalityJ == modality ? modality : Modality.OPEN;
        }
        return Modality.FINAL;
    }

    public final String P() {
        int i = b.a[B0().ordinal()];
        if (i == 1) {
            return Q("->");
        }
        if (i == 2) {
            return "&rarr;";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final boolean P0(gd gdVar) {
        return y45.e(gdVar.d(), kotlin.reflect.jvm.internal.impl.builtins.e.a.E);
    }

    public final void P1(hcb hcbVar, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(Q0());
        }
        if (G0()) {
            sb.append("/*");
            sb.append(hcbVar.getIndex());
            sb.append("*/ ");
        }
        t1(sb, hcbVar.u(), "reified");
        String label = hcbVar.h().getLabel();
        boolean z2 = true;
        t1(sb, label.length() > 0, label);
        X0(this, sb, hcbVar, null, 2, null);
        u1(hcbVar, sb, z);
        int size = hcbVar.getUpperBounds().size();
        if ((size > 1 && !z) || size == 1) {
            eh5 eh5Var = (eh5) hcbVar.getUpperBounds().iterator().next();
            if (!d.j0(eh5Var)) {
                sb.append(" : ");
                y45.i(eh5Var, "upperBound");
                sb.append(y(eh5Var));
            }
        } else if (z) {
            for (eh5 eh5Var2 : hcbVar.getUpperBounds()) {
                if (!d.j0(eh5Var2)) {
                    if (z2) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    y45.i(eh5Var2, "upperBound");
                    sb.append(y(eh5Var2));
                    z2 = false;
                }
            }
        }
        if (z) {
            sb.append(M0());
        }
    }

    public final String Q(String str) {
        return B0().escape(str);
    }

    public final String Q0() {
        return Q("<");
    }

    public final void Q1(StringBuilder sb, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            P1((hcb) it.next(), sb, false);
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
    }

    public boolean R() {
        return this.l.t();
    }

    public final boolean R0(CallableMemberDescriptor callableMemberDescriptor) {
        return !callableMemberDescriptor.e().isEmpty();
    }

    public final void R1(List list, StringBuilder sb, boolean z) {
        if (L0() || list.isEmpty()) {
            return;
        }
        sb.append(Q0());
        Q1(sb, list);
        sb.append(M0());
        if (z) {
            sb.append(" ");
        }
    }

    public boolean S() {
        return this.l.u();
    }

    public final void S0(StringBuilder sb, j2 j2Var) {
        RenderingFormat renderingFormatB0 = B0();
        RenderingFormat renderingFormat = RenderingFormat.HTML;
        if (renderingFormatB0 == renderingFormat) {
            sb.append("<font color=\"808080\"><i>");
        }
        sb.append(" /* = ");
        w1(sb, j2Var.W());
        sb.append(" */");
        if (B0() == renderingFormat) {
            sb.append("</i></font>");
        }
    }

    public final void S1(xnb xnbVar, StringBuilder sb, boolean z) {
        if (z || !(xnbVar instanceof h)) {
            sb.append(n1(xnbVar.y() ? "var" : "val"));
            sb.append(" ");
        }
    }

    public e74 T() {
        return this.l.v();
    }

    public final void T0(f fVar, StringBuilder sb) {
        p1(fVar, sb);
    }

    public boolean U() {
        return this.l.w();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b  */
    public final void U0(e eVar, StringBuilder sb) {
        boolean z;
        boolean z2 = false;
        if (eVar.isOperator()) {
            Collection collectionE = eVar.e();
            y45.i(collectionE, "functionDescriptor.overriddenDescriptors");
            Collection collection = collectionE;
            if (!collection.isEmpty()) {
                Iterator it = collection.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((e) it.next()).isOperator()) {
                            if (!S()) {
                                z = false;
                            }
                        }
                    }
                }
            }
            z = true;
        } else {
            z = false;
        }
        if (eVar.isInfix()) {
            Collection collectionE2 = eVar.e();
            y45.i(collectionE2, "functionDescriptor.overriddenDescriptors");
            Collection collection2 = collectionE2;
            if (collection2.isEmpty()) {
                z2 = true;
            } else {
                Iterator it2 = collection2.iterator();
                while (it2.hasNext()) {
                    if (((e) it2.next()).isInfix()) {
                        if (S()) {
                            break;
                        }
                    }
                }
                z2 = true;
            }
        }
        t1(sb, eVar.v(), "tailrec");
        J1(eVar, sb);
        t1(sb, eVar.isInline(), "inline");
        t1(sb, z2, "infix");
        t1(sb, z, "operator");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0060  */
    public final void U1(h hVar, boolean z, StringBuilder sb, boolean z2) {
        boolean z3;
        if (z2) {
            sb.append(n1("value-parameter"));
            sb.append(" ");
        }
        if (G0()) {
            sb.append("/*");
            sb.append(hVar.getIndex());
            sb.append("*/ ");
        }
        X0(this, sb, hVar, null, 2, null);
        t1(sb, hVar.u0(), "crossinline");
        t1(sb, hVar.r0(), "noinline");
        boolean z4 = false;
        if (v0()) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarB = hVar.b();
            kotlin.reflect.jvm.internal.impl.descriptors.b bVar = aVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.b ? (kotlin.reflect.jvm.internal.impl.descriptors.b) aVarB : null;
            if (bVar == null || !bVar.i0()) {
                z3 = false;
            } else {
                z3 = true;
            }
        } else {
            z3 = false;
        }
        if (z3) {
            t1(sb, R(), "actual");
        }
        W1(hVar, z, sb, z2, z3);
        if (X() != null) {
            if (d() ? hVar.N() : DescriptorUtilsKt.c(hVar)) {
                z4 = true;
            }
        }
        if (z4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" = ");
            e74 e74VarX = X();
            y45.g(e74VarX);
            sb2.append((String) e74VarX.invoke(hVar));
            sb.append(sb2.toString());
        }
    }

    public boolean V() {
        return this.l.x();
    }

    public final List V0(gd gdVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.b bVarW;
        List listF;
        Map mapF = gdVar.f();
        List listK = null;
        qw0 qw0VarI = s0() ? DescriptorUtilsKt.i(gdVar) : null;
        if (qw0VarI != null && (bVarW = qw0VarI.w()) != null && (listF = bVarW.f()) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : listF) {
                if (((h) obj).N()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((h) it.next()).getName());
            }
            listK = arrayList2;
        }
        if (listK == null) {
            listK = y71.k();
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listK) {
            by6 by6Var = (by6) obj2;
            y45.i(by6Var, "it");
            if (!mapF.containsKey(by6Var)) {
                arrayList3.add(obj2);
            }
        }
        ArrayList arrayList4 = new ArrayList(z71.v(arrayList3, 10));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((by6) it2.next()).b() + " = ...");
        }
        Set<Map.Entry> setEntrySet = mapF.entrySet();
        ArrayList arrayList5 = new ArrayList(z71.v(setEntrySet, 10));
        for (Map.Entry entry : setEntrySet) {
            by6 by6Var2 = (by6) entry.getKey();
            pf1 pf1Var = (pf1) entry.getValue();
            StringBuilder sb = new StringBuilder();
            sb.append(by6Var2.b());
            sb.append(" = ");
            sb.append(!listK.contains(by6Var2) ? d1(pf1Var) : "...");
            arrayList5.add(sb.toString());
        }
        return i81.R0(i81.J0(arrayList4, arrayList5));
    }

    public final void V1(Collection collection, boolean z, StringBuilder sb) {
        boolean zA2 = a2(z);
        int size = collection.size();
        F0().a(size, sb);
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            h hVar = (h) it.next();
            F0().c(hVar, i, size, sb);
            U1(hVar, zA2, sb, false);
            F0().d(hVar, i, size, sb);
            i++;
        }
        F0().b(size, sb);
    }

    public kotlin.reflect.jvm.internal.impl.renderer.a W() {
        return this.l.y();
    }

    public final void W0(StringBuilder sb, dd ddVar, AnnotationUseSiteTarget annotationUseSiteTarget) {
        if (g0().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            Set setC = ddVar instanceof eh5 ? c() : Z();
            e74 e74VarT = T();
            for (gd gdVar : ddVar.getAnnotations()) {
                if (!i81.d0(setC, gdVar.d()) && !P0(gdVar) && (e74VarT == null || ((Boolean) e74VarT.invoke(gdVar)).booleanValue())) {
                    sb.append(t(gdVar, annotationUseSiteTarget));
                    if (Y()) {
                        sb.append('\n');
                        y45.i(sb, "append('\\n')");
                    } else {
                        sb.append(" ");
                    }
                }
            }
        }
    }

    public final void W1(xnb xnbVar, boolean z, StringBuilder sb, boolean z2, boolean z3) {
        eh5 type = xnbVar.getType();
        y45.i(type, "variable.type");
        h hVar = xnbVar instanceof h ? (h) xnbVar : null;
        eh5 eh5VarX0 = hVar != null ? hVar.x0() : null;
        eh5 eh5Var = eh5VarX0 == null ? type : eh5VarX0;
        t1(sb, eh5VarX0 != null, "vararg");
        if (z3 || (z2 && !A0())) {
            S1(xnbVar, sb, z3);
        }
        if (z) {
            u1(xnbVar, sb, z2);
            sb.append(": ");
        }
        sb.append(y(eh5Var));
        m1(xnbVar, sb);
        if (!G0() || eh5VarX0 == null) {
            return;
        }
        sb.append(" /*");
        sb.append(y(type));
        sb.append("*/");
    }

    public e74 X() {
        return this.l.z();
    }

    public final boolean X1(c92 c92Var, StringBuilder sb) {
        if (!g0().contains(DescriptorRendererModifier.VISIBILITY)) {
            return false;
        }
        if (h0()) {
            c92Var = c92Var.f();
        }
        if (!u0() && y45.e(c92Var, b92.l)) {
            return false;
        }
        sb.append(n1(c92Var.c()));
        sb.append(" ");
        return true;
    }

    public boolean Y() {
        return this.l.A();
    }

    public final void Y0(qx0 qx0Var, StringBuilder sb) {
        List listR = qx0Var.r();
        y45.i(listR, "classifier.declaredTypeParameters");
        List parameters = qx0Var.m().getParameters();
        y45.i(parameters, "classifier.typeConstructor.parameters");
        if (G0() && qx0Var.g() && parameters.size() > listR.size()) {
            sb.append(" /*captured type parameters: ");
            Q1(sb, parameters.subList(listR.size(), parameters.size()));
            sb.append("*/");
        }
    }

    public final void Y1(List list, StringBuilder sb) throws IOException {
        if (L0()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            hcb hcbVar = (hcb) it.next();
            List upperBounds = hcbVar.getUpperBounds();
            y45.i(upperBounds, "typeParameter.upperBounds");
            for (eh5 eh5Var : i81.f0(upperBounds, 1)) {
                StringBuilder sb2 = new StringBuilder();
                by6 name = hcbVar.getName();
                y45.i(name, "typeParameter.name");
                sb2.append(x(name, false));
                sb2.append(" : ");
                y45.i(eh5Var, "it");
                sb2.append(y(eh5Var));
                arrayList.add(sb2.toString());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        sb.append(" ");
        sb.append(n1("where"));
        sb.append(" ");
        i81.v0(arrayList, sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null);
    }

    public Set Z() {
        return this.l.B();
    }

    public final void Z0(qw0 qw0Var, StringBuilder sb) throws IOException {
        kotlin.reflect.jvm.internal.impl.descriptors.b bVarW;
        boolean z = qw0Var.getKind() == ClassKind.ENUM_ENTRY;
        if (!A0()) {
            X0(this, sb, qw0Var, null, 2, null);
            List listG0 = qw0Var.g0();
            y45.i(listG0, "klass.contextReceivers");
            f1(listG0, sb);
            if (!z) {
                c92 visibility = qw0Var.getVisibility();
                y45.i(visibility, "klass.visibility");
                X1(visibility, sb);
            }
            if ((qw0Var.getKind() != ClassKind.INTERFACE || qw0Var.j() != Modality.ABSTRACT) && (!qw0Var.getKind().isSingleton() || qw0Var.j() != Modality.FINAL)) {
                Modality modalityJ = qw0Var.j();
                y45.i(modalityJ, "klass.modality");
                r1(modalityJ, sb, O0(qw0Var));
            }
            p1(qw0Var, sb);
            t1(sb, g0().contains(DescriptorRendererModifier.INNER) && qw0Var.g(), "inner");
            t1(sb, g0().contains(DescriptorRendererModifier.DATA) && qw0Var.E0(), "data");
            t1(sb, g0().contains(DescriptorRendererModifier.INLINE) && qw0Var.isInline(), "inline");
            t1(sb, g0().contains(DescriptorRendererModifier.VALUE) && qw0Var.s(), ES6Iterator.VALUE_PROPERTY);
            t1(sb, g0().contains(DescriptorRendererModifier.FUN) && qw0Var.j0(), "fun");
            a1(qw0Var, sb);
        }
        if (y82.x(qw0Var)) {
            c1(qw0Var, sb);
        } else {
            if (!A0()) {
                H1(sb);
            }
            u1(qw0Var, sb, true);
        }
        if (z) {
            return;
        }
        List listR = qw0Var.r();
        y45.i(listR, "klass.declaredTypeParameters");
        R1(listR, sb, false);
        Y0(qw0Var, sb);
        if (!qw0Var.getKind().isSingleton() && V() && (bVarW = qw0Var.w()) != null) {
            sb.append(" ");
            X0(this, sb, bVarW, null, 2, null);
            c92 visibility2 = bVarW.getVisibility();
            y45.i(visibility2, "primaryConstructor.visibility");
            X1(visibility2, sb);
            sb.append(n1("constructor"));
            List listF = bVarW.f();
            y45.i(listF, "primaryConstructor.valueParameters");
            V1(listF, bVarW.k0(), sb);
        }
        I1(qw0Var, sb);
        Y1(listR, sb);
    }

    public final boolean Z1(eh5 eh5Var) {
        if (kotlin.reflect.jvm.internal.impl.builtins.c.o(eh5Var)) {
            List listG0 = eh5Var.G0();
            if (!(listG0 instanceof Collection) || !listG0.isEmpty()) {
                Iterator it = listG0.iterator();
                while (it.hasNext()) {
                    if (((mcb) it.next()).b()) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public void a(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        y45.j(parameterNameRenderingPolicy, "<set-?>");
        this.l.a(parameterNameRenderingPolicy);
    }

    public final DescriptorRendererImpl a0() {
        return (DescriptorRendererImpl) this.m.getValue();
    }

    public final void a1(qw0 qw0Var, StringBuilder sb) {
        sb.append(n1(DescriptorRenderer.a.a(qw0Var)));
    }

    public final boolean a2(boolean z) {
        int i = b.b[k0().ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
        } else if (!z) {
            return true;
        }
        return false;
    }

    @Override
    public boolean b() {
        return this.l.b();
    }

    public boolean b0() {
        return this.l.C();
    }

    public String b1(px0 px0Var) {
        y45.j(px0Var, "klass");
        return id3.m(px0Var) ? px0Var.m().toString() : W().a(px0Var, this);
    }

    @Override
    public Set c() {
        return this.l.c();
    }

    public boolean c0() {
        return this.l.D();
    }

    public final void c1(xt1 xt1Var, StringBuilder sb) {
        if (p0()) {
            if (A0()) {
                sb.append("companion object");
            }
            H1(sb);
            xt1 xt1VarB = xt1Var.b();
            if (xt1VarB != null) {
                sb.append("of ");
                by6 name = xt1VarB.getName();
                y45.i(name, "containingDeclaration.name");
                sb.append(x(name, false));
            }
        }
        if (G0() || !y45.e(xt1Var.getName(), su9.d)) {
            if (!A0()) {
                H1(sb);
            }
            by6 name2 = xt1Var.getName();
            y45.i(name2, "descriptor.name");
            sb.append(x(name2, true));
        }
    }

    @Override
    public boolean d() {
        return this.l.d();
    }

    public boolean d0() {
        return this.l.E();
    }

    public final String d1(pf1 pf1Var) {
        if (pf1Var instanceof vh) {
            return i81.y0((Iterable) ((vh) pf1Var).b(), ", ", "{", StringSubstitutor.DEFAULT_VAR_END, 0, null, new e74() {
                {
                    super(1);
                }

                @Override
                public final CharSequence invoke(pf1 pf1Var2) {
                    y45.j(pf1Var2, "it");
                    return this.this$0.d1(pf1Var2);
                }
            }, 24, null);
        }
        if (pf1Var instanceof ld) {
            return j1a.F0(DescriptorRenderer.u(this, (gd) ((ld) pf1Var).b(), null, 2, null), "@");
        }
        if (!(pf1Var instanceof ee5)) {
            return pf1Var.toString();
        }
        ee5.b bVar = (ee5.b) ((ee5) pf1Var).b();
        if (bVar instanceof ee5.b.a) {
            return ((ee5.b.a) bVar).a() + "::class";
        }
        if (!(bVar instanceof ee5.b.C0341b)) {
            throw new NoWhenBranchMatchedException();
        }
        ee5.b.C0341b c0341b = (ee5.b.C0341b) bVar;
        String strB = c0341b.b().b().b();
        y45.i(strB, "classValue.classId.asSingleFqName().asString()");
        for (int i = 0; i < c0341b.a(); i++) {
            strB = "kotlin.Array<" + strB + '>';
        }
        return strB + "::class";
    }

    @Override
    public AnnotationArgumentsRenderingPolicy e() {
        return this.l.e();
    }

    public boolean e0() {
        return this.l.F();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0037  */
    public final void e1(c cVar, StringBuilder sb) throws IOException {
        boolean z;
        kotlin.reflect.jvm.internal.impl.descriptors.b bVarW;
        X0(this, sb, cVar, null, 2, null);
        if (this.l.U() || cVar.F().j() != Modality.SEALED) {
            c92 visibility = cVar.getVisibility();
            y45.i(visibility, "constructor.visibility");
            if (X1(visibility, sb)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        o1(cVar, sb);
        boolean z2 = r0() || !cVar.i0() || z;
        if (z2) {
            sb.append(n1("constructor"));
        }
        qx0 qx0VarB = cVar.b();
        y45.i(qx0VarB, "constructor.containingDeclaration");
        if (y0()) {
            if (z2) {
                sb.append(" ");
            }
            u1(qx0VarB, sb, true);
            List typeParameters = cVar.getTypeParameters();
            y45.i(typeParameters, "constructor.typeParameters");
            R1(typeParameters, sb, false);
        }
        List listF = cVar.f();
        y45.i(listF, "constructor.valueParameters");
        V1(listF, cVar.k0(), sb);
        if (q0() && !cVar.i0() && (qx0VarB instanceof qw0) && (bVarW = ((qw0) qx0VarB).w()) != null) {
            List listF2 = bVarW.f();
            y45.i(listF2, "primaryConstructor.valueParameters");
            ArrayList arrayList = new ArrayList();
            for (Object obj : listF2) {
                h hVar = (h) obj;
                if (!hVar.N() && hVar.x0() == null) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                sb.append(" : ");
                sb.append(n1("this"));
                sb.append(i81.y0(arrayList, ", ", "(", ")", 0, null, new e74() {
                    @Override
                    public final CharSequence invoke(h hVar2) {
                        return "";
                    }
                }, 24, null));
            }
        }
        if (y0()) {
            List typeParameters2 = cVar.getTypeParameters();
            y45.i(typeParameters2, "constructor.typeParameters");
            Y1(typeParameters2, sb);
        }
    }

    @Override
    public void f(Set set) {
        y45.j(set, "<set-?>");
        this.l.f(set);
    }

    public boolean f0() {
        return this.l.G();
    }

    public final void f1(List list, StringBuilder sb) {
        if (list.isEmpty()) {
            return;
        }
        sb.append("context(");
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            ro8 ro8Var = (ro8) it.next();
            W0(sb, ro8Var, AnnotationUseSiteTarget.RECEIVER);
            eh5 type = ro8Var.getType();
            y45.i(type, "contextReceiver.type");
            sb.append(i1(type));
            if (i == y71.m(list)) {
                sb.append(") ");
            } else {
                sb.append(", ");
            }
            i = i2;
        }
    }

    @Override
    public void g(Set set) {
        y45.j(set, "<set-?>");
        this.l.g(set);
    }

    public Set g0() {
        return this.l.H();
    }

    public final void g1(StringBuilder sb, eh5 eh5Var) {
        X0(this, sb, eh5Var, null, 2, null);
        g72 g72Var = eh5Var instanceof g72 ? (g72) eh5Var : null;
        if (g72Var != null) {
            g72Var.U0();
        }
        if (!fh5.a(eh5Var)) {
            O1(this, sb, eh5Var, null, 2, null);
        } else if (TypeUtilsKt.u(eh5Var) && m0()) {
            sb.append(h1(id3.a.p(eh5Var)));
        } else {
            if (!(eh5Var instanceof gd3) || f0()) {
                sb.append(eh5Var.I0().toString());
            } else {
                sb.append(((gd3) eh5Var).R0());
            }
            sb.append(L1(eh5Var.G0()));
        }
        if (eh5Var.J0()) {
            sb.append("?");
        }
        if (tu9.c(eh5Var)) {
            sb.append(" & Any");
        }
    }

    @Override
    public void h(boolean z) {
        this.l.h(z);
    }

    public boolean h0() {
        return this.l.I();
    }

    public final String h1(String str) {
        int i = b.a[B0().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "<font color=red><b>" + str + "</b></font>";
    }

    @Override
    public void i(boolean z) {
        this.l.i(z);
    }

    public final DescriptorRendererOptionsImpl i0() {
        return this.l;
    }

    public final String i1(eh5 eh5Var) {
        String strY = y(eh5Var);
        if ((!Z1(eh5Var) || n.l(eh5Var)) && !(eh5Var instanceof g72)) {
            return strY;
        }
        return '(' + strY + ')';
    }

    @Override
    public void j(boolean z) {
        this.l.j(z);
    }

    public OverrideRenderingPolicy j0() {
        return this.l.J();
    }

    public final String j1(List list) {
        return Q(ns8.c(list));
    }

    @Override
    public void k(boolean z) {
        this.l.k(z);
    }

    public ParameterNameRenderingPolicy k0() {
        return this.l.K();
    }

    public final void k1(e eVar, StringBuilder sb) throws IOException {
        if (!A0()) {
            if (!z0()) {
                X0(this, sb, eVar, null, 2, null);
                List listY0 = eVar.y0();
                y45.i(listY0, "function.contextReceiverParameters");
                f1(listY0, sb);
                c92 visibility = eVar.getVisibility();
                y45.i(visibility, "function.visibility");
                X1(visibility, sb);
                s1(eVar, sb);
                if (b0()) {
                    p1(eVar, sb);
                }
                x1(eVar, sb);
                if (b0()) {
                    U0(eVar, sb);
                } else {
                    J1(eVar, sb);
                }
                o1(eVar, sb);
                if (G0()) {
                    if (eVar.B0()) {
                        sb.append("/*isHiddenToOvercomeSignatureClash*/ ");
                    }
                    if (eVar.P()) {
                        sb.append("/*isHiddenForResolutionEverywhereBesideSupercalls*/ ");
                    }
                }
            }
            sb.append(n1("fun"));
            sb.append(" ");
            List typeParameters = eVar.getTypeParameters();
            y45.i(typeParameters, "function.typeParameters");
            R1(typeParameters, sb, true);
            E1(eVar, sb);
        }
        u1(eVar, sb, true);
        List listF = eVar.f();
        y45.i(listF, "function.valueParameters");
        V1(listF, eVar.k0(), sb);
        F1(eVar, sb);
        eh5 returnType = eVar.getReturnType();
        if (!J0() && (E0() || returnType == null || !d.C0(returnType))) {
            sb.append(": ");
            sb.append(returnType == null ? "[NULL]" : y(returnType));
        }
        List typeParameters2 = eVar.getTypeParameters();
        y45.i(typeParameters2, "function.typeParameters");
        Y1(typeParameters2, sb);
    }

    @Override
    public void l(boolean z) {
        this.l.l(z);
    }

    public boolean l0() {
        return this.l.L();
    }

    public final void l1(StringBuilder sb, eh5 eh5Var) {
        by6 by6VarD;
        int length = sb.length();
        X0(a0(), sb, eh5Var, null, 2, null);
        boolean z = sb.length() != length;
        eh5 eh5VarJ = kotlin.reflect.jvm.internal.impl.builtins.c.j(eh5Var);
        List listE = kotlin.reflect.jvm.internal.impl.builtins.c.e(eh5Var);
        if (!listE.isEmpty()) {
            sb.append("context(");
            Iterator it = listE.subList(0, y71.m(listE)).iterator();
            while (it.hasNext()) {
                v1(sb, (eh5) it.next());
                sb.append(", ");
            }
            v1(sb, (eh5) i81.A0(listE));
            sb.append(") ");
        }
        boolean zQ = kotlin.reflect.jvm.internal.impl.builtins.c.q(eh5Var);
        boolean zJ0 = eh5Var.J0();
        boolean z2 = zJ0 || (z && eh5VarJ != null);
        if (z2) {
            if (zQ) {
                sb.insert(length, '(');
            } else {
                if (z) {
                    kotlin.text.a.c(l1a.q1(sb));
                    if (sb.charAt(j1a.g0(sb) - 1) != ')') {
                        sb.insert(j1a.g0(sb), "()");
                    }
                }
                sb.append("(");
            }
        }
        t1(sb, zQ, "suspend");
        if (eh5VarJ != null) {
            boolean z3 = (Z1(eh5VarJ) && !eh5VarJ.J0()) || N0(eh5VarJ) || (eh5VarJ instanceof g72);
            if (z3) {
                sb.append("(");
            }
            v1(sb, eh5VarJ);
            if (z3) {
                sb.append(")");
            }
            sb.append(Consts.DOT);
        }
        sb.append("(");
        if (!kotlin.reflect.jvm.internal.impl.builtins.c.m(eh5Var) || eh5Var.G0().size() > 1) {
            int i = 0;
            for (mcb mcbVar : kotlin.reflect.jvm.internal.impl.builtins.c.l(eh5Var)) {
                int i2 = i + 1;
                if (i > 0) {
                    sb.append(", ");
                }
                if (l0()) {
                    eh5 type = mcbVar.getType();
                    y45.i(type, "typeProjection.type");
                    by6VarD = kotlin.reflect.jvm.internal.impl.builtins.c.d(type);
                } else {
                    by6VarD = null;
                }
                if (by6VarD != null) {
                    sb.append(x(by6VarD, false));
                    sb.append(": ");
                }
                sb.append(z(mcbVar));
                i = i2;
            }
        } else {
            sb.append("???");
        }
        sb.append(") ");
        sb.append(P());
        sb.append(" ");
        v1(sb, kotlin.reflect.jvm.internal.impl.builtins.c.k(eh5Var));
        if (z2) {
            sb.append(")");
        }
        if (zJ0) {
            sb.append("?");
        }
    }

    @Override
    public void m(boolean z) {
        this.l.m(z);
    }

    public boolean m0() {
        return this.l.M();
    }

    public final void m1(xnb xnbVar, StringBuilder sb) {
        pf1 pf1VarP0;
        if (!e0() || (pf1VarP0 = xnbVar.p0()) == null) {
            return;
        }
        sb.append(" = ");
        sb.append(Q(d1(pf1VarP0)));
    }

    @Override
    public void n(boolean z) {
        this.l.n(z);
    }

    public PropertyAccessorRenderingPolicy n0() {
        return this.l.N();
    }

    public final String n1(String str) {
        int i = b.a[B0().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        if (U()) {
            return str;
        }
        return "<b>" + str + "</b>";
    }

    @Override
    public void o(RenderingFormat renderingFormat) {
        y45.j(renderingFormat, "<set-?>");
        this.l.o(renderingFormat);
    }

    public boolean o0() {
        return this.l.O();
    }

    public final void o1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (g0().contains(DescriptorRendererModifier.MEMBER_KIND) && G0() && callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.DECLARATION) {
            sb.append("/*");
            sb.append(kr0.f(callableMemberDescriptor.getKind().name()));
            sb.append("*/ ");
        }
    }

    @Override
    public void p(AnnotationArgumentsRenderingPolicy annotationArgumentsRenderingPolicy) {
        y45.j(annotationArgumentsRenderingPolicy, "<set-?>");
        this.l.p(annotationArgumentsRenderingPolicy);
    }

    public boolean p0() {
        return this.l.P();
    }

    public final void p1(bn6 bn6Var, StringBuilder sb) {
        t1(sb, bn6Var.isExternal(), "external");
        boolean z = false;
        t1(sb, g0().contains(DescriptorRendererModifier.EXPECT) && bn6Var.m0(), "expect");
        if (g0().contains(DescriptorRendererModifier.ACTUAL) && bn6Var.f0()) {
            z = true;
        }
        t1(sb, z, "actual");
    }

    @Override
    public void q(kotlin.reflect.jvm.internal.impl.renderer.a aVar) {
        y45.j(aVar, "<set-?>");
        this.l.q(aVar);
    }

    public boolean q0() {
        return this.l.Q();
    }

    public String q1(String str) {
        y45.j(str, "message");
        int i = b.a[B0().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return "<i>" + str + "</i>";
    }

    @Override
    public void r(boolean z) {
        this.l.r(z);
    }

    public boolean r0() {
        return this.l.R();
    }

    public final void r1(Modality modality, StringBuilder sb, Modality modality2) {
        if (t0() || modality != modality2) {
            t1(sb, g0().contains(DescriptorRendererModifier.MODALITY), kr0.f(modality.name()));
        }
    }

    @Override
    public String s(xt1 xt1Var) {
        y45.j(xt1Var, "declarationDescriptor");
        StringBuilder sb = new StringBuilder();
        xt1Var.q0(new a(), sb);
        if (H0()) {
            N(sb, xt1Var);
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean s0() {
        return this.l.S();
    }

    public final void s1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (y82.J(callableMemberDescriptor) && callableMemberDescriptor.j() == Modality.FINAL) {
            return;
        }
        if (j0() == OverrideRenderingPolicy.RENDER_OVERRIDE && callableMemberDescriptor.j() == Modality.OPEN && R0(callableMemberDescriptor)) {
            return;
        }
        Modality modalityJ = callableMemberDescriptor.j();
        y45.i(modalityJ, "callable.modality");
        r1(modalityJ, sb, O0(callableMemberDescriptor));
    }

    @Override
    public String t(gd gdVar, AnnotationUseSiteTarget annotationUseSiteTarget) throws IOException {
        y45.j(gdVar, "annotation");
        StringBuilder sb = new StringBuilder();
        sb.append('@');
        if (annotationUseSiteTarget != null) {
            sb.append(annotationUseSiteTarget.getRenderName() + ':');
        }
        eh5 type = gdVar.getType();
        sb.append(y(type));
        if (c0()) {
            List listV0 = V0(gdVar);
            if (d0() || !listV0.isEmpty()) {
                i81.v0(listV0, sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : "(", (124 & 8) == 0 ? ")" : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null);
            }
        }
        if (G0() && (fh5.a(type) || (type.I0().c() instanceof NotFoundClasses.b))) {
            sb.append(" /* annotation class not found */");
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean t0() {
        return this.l.T();
    }

    public final void t1(StringBuilder sb, boolean z, String str) {
        if (z) {
            sb.append(n1(str));
            sb.append(" ");
        }
    }

    public boolean u0() {
        return this.l.U();
    }

    public final void u1(xt1 xt1Var, StringBuilder sb, boolean z) {
        by6 name = xt1Var.getName();
        y45.i(name, "descriptor.name");
        sb.append(x(name, z));
    }

    @Override
    public String v(String str, String str2, d dVar) {
        y45.j(str, "lowerRendered");
        y45.j(str2, "upperRendered");
        y45.j(dVar, "builtIns");
        if (ns8.f(str, str2)) {
            if (!g1a.R(str2, "(", false, 2, null)) {
                return str + '!';
            }
            return '(' + str + ")!";
        }
        kotlin.reflect.jvm.internal.impl.renderer.a aVarW = W();
        qw0 qw0VarW = dVar.w();
        y45.i(qw0VarW, "builtIns.collection");
        String strE1 = j1a.e1(aVarW.a(qw0VarW, this), "Collection", null, 2, null);
        String strD = ns8.d(str, strE1 + "Mutable", str2, strE1, strE1 + "(Mutable)");
        if (strD != null) {
            return strD;
        }
        String strD2 = ns8.d(str, strE1 + "MutableMap.MutableEntry", str2, strE1 + "Map.Entry", strE1 + "(Mutable)Map.(Mutable)Entry");
        if (strD2 != null) {
            return strD2;
        }
        kotlin.reflect.jvm.internal.impl.renderer.a aVarW2 = W();
        qw0 qw0VarJ = dVar.j();
        y45.i(qw0VarJ, "builtIns.array");
        String strE2 = j1a.e1(aVarW2.a(qw0VarJ, this), "Array", null, 2, null);
        String strD3 = ns8.d(str, strE2 + Q("Array<"), str2, strE2 + Q("Array<out "), strE2 + Q("Array<(out) "));
        if (strD3 != null) {
            return strD3;
        }
        return '(' + str + FileTree.PARENT_DIR + str2 + ')';
    }

    public boolean v0() {
        return this.l.V();
    }

    public final void v1(StringBuilder sb, eh5 eh5Var) {
        mgb mgbVarL0 = eh5Var.L0();
        j2 j2Var = mgbVarL0 instanceof j2 ? (j2) mgbVarL0 : null;
        if (j2Var == null) {
            w1(sb, eh5Var);
            return;
        }
        if (w0()) {
            w1(sb, j2Var.W());
            return;
        }
        w1(sb, j2Var.U0());
        if (x0()) {
            S0(sb, j2Var);
        }
    }

    @Override
    public String w(p54 p54Var) {
        y45.j(p54Var, "fqName");
        List listH = p54Var.h();
        y45.i(listH, "fqName.pathSegments()");
        return j1(listH);
    }

    public boolean w0() {
        return this.l.W();
    }

    public final void w1(StringBuilder sb, eh5 eh5Var) {
        if ((eh5Var instanceof kpc) && d() && !((kpc) eh5Var).N0()) {
            sb.append("<Not computed yet>");
            return;
        }
        mgb mgbVarL0 = eh5Var.L0();
        if (mgbVarL0 instanceof fy3) {
            sb.append(((fy3) mgbVarL0).S0(this, this));
        } else if (mgbVarL0 instanceof sm9) {
            G1(sb, (sm9) mgbVarL0);
        }
    }

    @Override
    public String x(by6 by6Var, boolean z) {
        y45.j(by6Var, "name");
        String strQ = Q(ns8.b(by6Var));
        if (!U() || B0() != RenderingFormat.HTML || !z) {
            return strQ;
        }
        return "<b>" + strQ + "</b>";
    }

    public boolean x0() {
        return this.l.X();
    }

    public final void x1(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (g0().contains(DescriptorRendererModifier.OVERRIDE) && R0(callableMemberDescriptor) && j0() != OverrideRenderingPolicy.RENDER_OPEN) {
            t1(sb, true, "override");
            if (G0()) {
                sb.append("/*");
                sb.append(callableMemberDescriptor.e().size());
                sb.append("*/ ");
            }
        }
    }

    @Override
    public String y(eh5 eh5Var) {
        y45.j(eh5Var, "type");
        StringBuilder sb = new StringBuilder();
        v1(sb, (eh5) C0().invoke(eh5Var));
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean y0() {
        return this.l.Y();
    }

    public final void y1(dv7 dv7Var, StringBuilder sb) {
        z1(dv7Var.d(), "package-fragment", sb);
        if (d()) {
            sb.append(" in ");
            u1(dv7Var.b(), sb, false);
        }
    }

    @Override
    public String z(mcb mcbVar) throws IOException {
        y45.j(mcbVar, "typeProjection");
        StringBuilder sb = new StringBuilder();
        O(sb, x71.e(mcbVar));
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public boolean z0() {
        return this.l.Z();
    }

    public final void z1(o54 o54Var, String str, StringBuilder sb) {
        sb.append(n1(str));
        p54 p54VarJ = o54Var.j();
        y45.i(p54VarJ, "fqName.toUnsafe()");
        String strW = w(p54VarJ);
        if (strW.length() > 0) {
            sb.append(" ");
            sb.append(strW);
        }
    }
}
