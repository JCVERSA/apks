package kotlin.reflect.jvm.internal.impl.renderer;

import defpackage.af5;
import defpackage.de5;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fd7;
import defpackage.g1a;
import defpackage.go8;
import defpackage.l72;
import defpackage.ve3;
import defpackage.xq8;
import defpackage.y45;
import defpackage.ye9;
import java.lang.reflect.Field;
import java.util.Set;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.h;

public final class DescriptorRendererOptionsImpl implements b {
    public static final af5[] X = {xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "withDefinedIn", "getWithDefinedIn()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "modifiers", "getModifiers()Ljava/util/Set;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "startFromName", "getStartFromName()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "debugMode", "getDebugMode()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "verbose", "getVerbose()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "unitReturnType", "getUnitReturnType()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "withoutReturnType", "getWithoutReturnType()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "enhancedTypes", "getEnhancedTypes()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderDefaultModality", "getRenderDefaultModality()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "receiverAfterName", "getReceiverAfterName()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), xq8.f(new MutablePropertyReference1Impl(xq8.b(DescriptorRendererOptionsImpl.class), "informativeErrorType", "getInformativeErrorType()Z"))};
    public final go8 A;
    public final go8 B;
    public final go8 C;
    public final go8 D;
    public final go8 E;
    public final go8 F;
    public final go8 G;
    public final go8 H;
    public final go8 I;
    public final go8 J;
    public final go8 K;
    public final go8 L;
    public final go8 M;
    public final go8 N;
    public final go8 O;
    public final go8 P;
    public final go8 Q;
    public final go8 R;
    public final go8 S;
    public final go8 T;
    public final go8 U;
    public final go8 V;
    public final go8 W;
    public boolean a;
    public final go8 b = o0(kotlin.reflect.jvm.internal.impl.renderer.a.c.a);
    public final go8 c;
    public final go8 d;
    public final go8 e;
    public final go8 f;
    public final go8 g;
    public final go8 h;
    public final go8 i;
    public final go8 j;
    public final go8 k;
    public final go8 l;
    public final go8 m;
    public final go8 n;
    public final go8 o;
    public final go8 p;
    public final go8 q;
    public final go8 r;
    public final go8 s;
    public final go8 t;
    public final go8 u;
    public final go8 v;
    public final go8 w;
    public final go8 x;
    public final go8 y;
    public final go8 z;

    public static final class a extends fd7 {
        public final DescriptorRendererOptionsImpl b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Object obj, DescriptorRendererOptionsImpl descriptorRendererOptionsImpl) {
            super(obj);
            this.b = descriptorRendererOptionsImpl;
        }

        @Override
        public boolean beforeChange(af5 af5Var, Object obj, Object obj2) {
            y45.j(af5Var, "property");
            if (this.b.m0()) {
                throw new IllegalStateException("Cannot modify readonly DescriptorRendererOptions");
            }
            return true;
        }
    }

    public DescriptorRendererOptionsImpl() {
        Boolean bool = Boolean.TRUE;
        this.c = o0(bool);
        this.d = o0(bool);
        this.e = o0(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS);
        Boolean bool2 = Boolean.FALSE;
        this.f = o0(bool2);
        this.g = o0(bool2);
        this.h = o0(bool2);
        this.i = o0(bool2);
        this.j = o0(bool2);
        this.k = o0(bool);
        this.l = o0(bool2);
        this.m = o0(bool2);
        this.n = o0(bool2);
        this.o = o0(bool);
        this.p = o0(bool);
        this.q = o0(bool2);
        this.r = o0(bool2);
        this.s = o0(bool2);
        this.t = o0(bool2);
        this.u = o0(bool2);
        this.v = o0(bool2);
        this.w = o0(bool2);
        this.x = o0(new e74() {
            @Override
            public final eh5 invoke(eh5 eh5Var) {
                y45.j(eh5Var, "it");
                return eh5Var;
            }
        });
        this.y = o0(new e74() {
            @Override
            public final String invoke(h hVar) {
                y45.j(hVar, "it");
                return "...";
            }
        });
        this.z = o0(bool);
        this.A = o0(OverrideRenderingPolicy.RENDER_OPEN);
        this.B = o0(DescriptorRenderer.b.a.a);
        this.C = o0(RenderingFormat.PLAIN);
        this.D = o0(ParameterNameRenderingPolicy.ALL);
        this.E = o0(bool2);
        this.F = o0(bool2);
        this.G = o0(PropertyAccessorRenderingPolicy.DEBUG);
        this.H = o0(bool2);
        this.I = o0(bool2);
        this.J = o0(ye9.f());
        this.K = o0(ve3.a.a());
        this.L = o0(null);
        this.M = o0(AnnotationArgumentsRenderingPolicy.NO_ARGUMENTS);
        this.N = o0(bool2);
        this.O = o0(bool);
        this.P = o0(bool);
        this.Q = o0(bool2);
        this.R = o0(bool);
        this.S = o0(bool);
        this.T = o0(bool2);
        this.U = o0(bool2);
        this.V = o0(bool2);
        this.W = o0(bool);
    }

    public boolean A() {
        return ((Boolean) this.I.getValue(this, X[33])).booleanValue();
    }

    public Set B() {
        return (Set) this.J.getValue(this, X[34]);
    }

    public boolean C() {
        return ((Boolean) this.R.getValue(this, X[42])).booleanValue();
    }

    public boolean D() {
        return b.a.a(this);
    }

    public boolean E() {
        return b.a.b(this);
    }

    public boolean F() {
        return ((Boolean) this.u.getValue(this, X[19])).booleanValue();
    }

    public boolean G() {
        return ((Boolean) this.W.getValue(this, X[47])).booleanValue();
    }

    public Set H() {
        return (Set) this.e.getValue(this, X[3]);
    }

    public boolean I() {
        return ((Boolean) this.n.getValue(this, X[12])).booleanValue();
    }

    public OverrideRenderingPolicy J() {
        return (OverrideRenderingPolicy) this.A.getValue(this, X[25]);
    }

    public ParameterNameRenderingPolicy K() {
        return (ParameterNameRenderingPolicy) this.D.getValue(this, X[28]);
    }

    public boolean L() {
        return ((Boolean) this.S.getValue(this, X[43])).booleanValue();
    }

    public boolean M() {
        return ((Boolean) this.U.getValue(this, X[45])).booleanValue();
    }

    public PropertyAccessorRenderingPolicy N() {
        return (PropertyAccessorRenderingPolicy) this.G.getValue(this, X[31]);
    }

    public boolean O() {
        return ((Boolean) this.E.getValue(this, X[29])).booleanValue();
    }

    public boolean P() {
        return ((Boolean) this.F.getValue(this, X[30])).booleanValue();
    }

    public boolean Q() {
        return ((Boolean) this.q.getValue(this, X[15])).booleanValue();
    }

    public boolean R() {
        return ((Boolean) this.O.getValue(this, X[39])).booleanValue();
    }

    public boolean S() {
        return ((Boolean) this.H.getValue(this, X[32])).booleanValue();
    }

    public boolean T() {
        return ((Boolean) this.p.getValue(this, X[14])).booleanValue();
    }

    public boolean U() {
        return ((Boolean) this.o.getValue(this, X[13])).booleanValue();
    }

    public boolean V() {
        return ((Boolean) this.r.getValue(this, X[16])).booleanValue();
    }

    public boolean W() {
        return ((Boolean) this.Q.getValue(this, X[41])).booleanValue();
    }

    public boolean X() {
        return ((Boolean) this.P.getValue(this, X[40])).booleanValue();
    }

    public boolean Y() {
        return ((Boolean) this.z.getValue(this, X[24])).booleanValue();
    }

    public boolean Z() {
        return ((Boolean) this.g.getValue(this, X[5])).booleanValue();
    }

    @Override
    public void a(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        y45.j(parameterNameRenderingPolicy, "<set-?>");
        this.D.setValue(this, X[28], parameterNameRenderingPolicy);
    }

    public boolean a0() {
        return ((Boolean) this.f.getValue(this, X[4])).booleanValue();
    }

    @Override
    public boolean b() {
        return ((Boolean) this.m.getValue(this, X[11])).booleanValue();
    }

    public RenderingFormat b0() {
        return (RenderingFormat) this.C.getValue(this, X[27]);
    }

    @Override
    public Set c() {
        return (Set) this.K.getValue(this, X[35]);
    }

    public e74 c0() {
        return (e74) this.x.getValue(this, X[22]);
    }

    @Override
    public boolean d() {
        return ((Boolean) this.h.getValue(this, X[6])).booleanValue();
    }

    public boolean d0() {
        return ((Boolean) this.t.getValue(this, X[18])).booleanValue();
    }

    @Override
    public AnnotationArgumentsRenderingPolicy e() {
        return (AnnotationArgumentsRenderingPolicy) this.M.getValue(this, X[37]);
    }

    public boolean e0() {
        return ((Boolean) this.k.getValue(this, X[9])).booleanValue();
    }

    @Override
    public void f(Set set) {
        y45.j(set, "<set-?>");
        this.K.setValue(this, X[35], set);
    }

    public DescriptorRenderer.b f0() {
        return (DescriptorRenderer.b) this.B.getValue(this, X[26]);
    }

    @Override
    public void g(Set set) {
        y45.j(set, "<set-?>");
        this.e.setValue(this, X[3], set);
    }

    public boolean g0() {
        return ((Boolean) this.j.getValue(this, X[8])).booleanValue();
    }

    @Override
    public void h(boolean z) {
        this.j.setValue(this, X[8], Boolean.valueOf(z));
    }

    public boolean h0() {
        return ((Boolean) this.c.getValue(this, X[1])).booleanValue();
    }

    @Override
    public void i(boolean z) {
        this.h.setValue(this, X[6], Boolean.valueOf(z));
    }

    public boolean i0() {
        return ((Boolean) this.d.getValue(this, X[2])).booleanValue();
    }

    @Override
    public void j(boolean z) {
        this.v.setValue(this, X[20], Boolean.valueOf(z));
    }

    public boolean j0() {
        return ((Boolean) this.l.getValue(this, X[10])).booleanValue();
    }

    @Override
    public void k(boolean z) {
        this.f.setValue(this, X[4], Boolean.valueOf(z));
    }

    public boolean k0() {
        return ((Boolean) this.w.getValue(this, X[21])).booleanValue();
    }

    @Override
    public void l(boolean z) {
        this.c.setValue(this, X[1], Boolean.valueOf(z));
    }

    public boolean l0() {
        return ((Boolean) this.v.getValue(this, X[20])).booleanValue();
    }

    @Override
    public void m(boolean z) {
        this.w.setValue(this, X[21], Boolean.valueOf(z));
    }

    public final boolean m0() {
        return this.a;
    }

    @Override
    public void n(boolean z) {
        this.E.setValue(this, X[29], Boolean.valueOf(z));
    }

    public final void n0() {
        this.a = true;
    }

    @Override
    public void o(RenderingFormat renderingFormat) {
        y45.j(renderingFormat, "<set-?>");
        this.C.setValue(this, X[27], renderingFormat);
    }

    public final go8 o0(Object obj) {
        l72 l72Var = l72.a;
        return new a(obj, this);
    }

    @Override
    public void p(AnnotationArgumentsRenderingPolicy annotationArgumentsRenderingPolicy) {
        y45.j(annotationArgumentsRenderingPolicy, "<set-?>");
        this.M.setValue(this, X[37], annotationArgumentsRenderingPolicy);
    }

    @Override
    public void q(kotlin.reflect.jvm.internal.impl.renderer.a aVar) {
        y45.j(aVar, "<set-?>");
        this.b.setValue(this, X[0], aVar);
    }

    @Override
    public void r(boolean z) {
        this.F.setValue(this, X[30], Boolean.valueOf(z));
    }

    public final DescriptorRendererOptionsImpl s() {
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = new DescriptorRendererOptionsImpl();
        Field[] declaredFields = DescriptorRendererOptionsImpl.class.getDeclaredFields();
        y45.i(declaredFields, "this::class.java.declaredFields");
        for (Field field : declaredFields) {
            if ((field.getModifiers() & 8) == 0) {
                field.setAccessible(true);
                Object obj = field.get(this);
                fd7 fd7Var = obj instanceof fd7 ? (fd7) obj : null;
                if (fd7Var != null) {
                    String name = field.getName();
                    y45.i(name, "field.name");
                    g1a.R(name, "is", false, 2, null);
                    de5 de5VarB = xq8.b(DescriptorRendererOptionsImpl.class);
                    String name2 = field.getName();
                    StringBuilder sb = new StringBuilder();
                    sb.append("get");
                    String name3 = field.getName();
                    y45.i(name3, "field.name");
                    if (name3.length() > 0) {
                        char upperCase = Character.toUpperCase(name3.charAt(0));
                        String strSubstring = name3.substring(1);
                        y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                        name3 = upperCase + strSubstring;
                    }
                    sb.append(name3);
                    field.set(descriptorRendererOptionsImpl, descriptorRendererOptionsImpl.o0(fd7Var.getValue(this, new PropertyReference1Impl(de5VarB, name2, sb.toString()))));
                }
            }
        }
        return descriptorRendererOptionsImpl;
    }

    public boolean t() {
        return ((Boolean) this.s.getValue(this, X[17])).booleanValue();
    }

    public boolean u() {
        return ((Boolean) this.N.getValue(this, X[38])).booleanValue();
    }

    public e74 v() {
        return (e74) this.L.getValue(this, X[36]);
    }

    public boolean w() {
        return ((Boolean) this.V.getValue(this, X[46])).booleanValue();
    }

    public boolean x() {
        return ((Boolean) this.i.getValue(this, X[7])).booleanValue();
    }

    public kotlin.reflect.jvm.internal.impl.renderer.a y() {
        return (kotlin.reflect.jvm.internal.impl.renderer.a) this.b.getValue(this, X[0]);
    }

    public e74 z() {
        return (e74) this.y.getValue(this, X[23]);
    }
}
