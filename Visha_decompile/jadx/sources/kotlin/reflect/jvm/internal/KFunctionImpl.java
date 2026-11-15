package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.af5;
import defpackage.c05;
import defpackage.c74;
import defpackage.clb;
import defpackage.f05;
import defpackage.g84;
import defpackage.le5;
import defpackage.qw0;
import defpackage.wq0;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z71;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KParameter;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;

public final class KFunctionImpl extends KCallableImpl implements g84, le5, b {
    public static final af5[] m = {xq8.j(new PropertyReference1Impl(xq8.b(KFunctionImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"))};
    public final KDeclarationContainerImpl g;
    public final String h;
    public final Object i;
    public final e.a j;
    public final yi5 k;
    public final yi5 l;

    public KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, kotlin.reflect.jvm.internal.impl.descriptors.e eVar, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kDeclarationContainerImpl, str, str2, eVar, (i & 16) != 0 ? CallableReference.NO_RECEIVER : obj);
    }

    private final Object M() {
        return c05.a(this.i, D());
    }

    @Override
    public boolean C() {
        return !y45.e(this.i, CallableReference.NO_RECEIVER);
    }

    public final kotlin.reflect.jvm.internal.calls.b I(Constructor constructor, kotlin.reflect.jvm.internal.impl.descriptors.e eVar, boolean z) {
        if (z || !f05.f(eVar)) {
            return C() ? new kotlin.reflect.jvm.internal.calls.b.c(constructor, M()) : new kotlin.reflect.jvm.internal.calls.b.e(constructor);
        }
        return C() ? new kotlin.reflect.jvm.internal.calls.b.a(constructor, M()) : new kotlin.reflect.jvm.internal.calls.b.C0372b(constructor);
    }

    public final kotlin.reflect.jvm.internal.calls.b.h J(Method method) {
        return C() ? new kotlin.reflect.jvm.internal.calls.b.h.a(method, M()) : new kotlin.reflect.jvm.internal.calls.b.h.d(method);
    }

    public final kotlin.reflect.jvm.internal.calls.b.h K(Method method) {
        return C() ? new kotlin.reflect.jvm.internal.calls.b.h.C0375b(method) : new kotlin.reflect.jvm.internal.calls.b.h.e(method);
    }

    public final kotlin.reflect.jvm.internal.calls.b.h L(Method method) {
        return C() ? new kotlin.reflect.jvm.internal.calls.b.h.c(method, M()) : new kotlin.reflect.jvm.internal.calls.b.h.f(method);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.e D() {
        Object objB = this.j.b(this, m[0]);
        y45.i(objB, "<get-descriptor>(...)");
        return (kotlin.reflect.jvm.internal.impl.descriptors.e) objB;
    }

    public boolean equals(Object obj) {
        KFunctionImpl kFunctionImplC = clb.c(obj);
        return kFunctionImplC != null && y45.e(y(), kFunctionImplC.y()) && y45.e(getName(), kFunctionImplC.getName()) && y45.e(this.h, kFunctionImplC.h) && y45.e(this.i, kFunctionImplC.i);
    }

    @Override
    public int getArity() {
        return wq0.a(x());
    }

    @Override
    public String getName() {
        String strB = D().getName().b();
        y45.i(strB, "descriptor.name.asString()");
        return strB;
    }

    public int hashCode() {
        return (((y().hashCode() * 31) + getName().hashCode()) * 31) + this.h.hashCode();
    }

    @Override
    public Object invoke() {
        return b.a.a(this);
    }

    @Override
    public boolean isExternal() {
        return D().isExternal();
    }

    @Override
    public boolean isInfix() {
        return D().isInfix();
    }

    @Override
    public boolean isInline() {
        return D().isInline();
    }

    @Override
    public boolean isOperator() {
        return D().isOperator();
    }

    @Override
    public boolean isSuspend() {
        return D().isSuspend();
    }

    public String toString() {
        return ReflectionObjectRenderer.a.d(D());
    }

    @Override
    public kotlin.reflect.jvm.internal.calls.a x() {
        return (kotlin.reflect.jvm.internal.calls.a) this.k.getValue();
    }

    @Override
    public KDeclarationContainerImpl y() {
        return this.g;
    }

    @Override
    public kotlin.reflect.jvm.internal.calls.a z() {
        return (kotlin.reflect.jvm.internal.calls.a) this.l.getValue();
    }

    @Override
    public Object invoke(Object obj) {
        return b.a.b(this, obj);
    }

    public KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, final String str, String str2, kotlin.reflect.jvm.internal.impl.descriptors.e eVar, Object obj) {
        this.g = kDeclarationContainerImpl;
        this.h = str2;
        this.i = obj;
        this.j = e.d(eVar, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final kotlin.reflect.jvm.internal.impl.descriptors.e invoke() {
                return this.this$0.y().v(str, this.this$0.h);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.k = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final kotlin.reflect.jvm.internal.calls.a invoke() {
                Object objB;
                kotlin.reflect.jvm.internal.calls.a aVarK;
                JvmFunctionSignature jvmFunctionSignatureG = f.a.g(this.this$0.D());
                if (jvmFunctionSignatureG instanceof JvmFunctionSignature.b) {
                    if (this.this$0.B()) {
                        Class clsD = this.this$0.y().d();
                        List parameters = this.this$0.getParameters();
                        ArrayList arrayList = new ArrayList(z71.v(parameters, 10));
                        Iterator it = parameters.iterator();
                        while (it.hasNext()) {
                            String name = ((KParameter) it.next()).getName();
                            y45.g(name);
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(clsD, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    objB = this.this$0.y().r(((JvmFunctionSignature.b) jvmFunctionSignatureG).b());
                } else if (jvmFunctionSignatureG instanceof JvmFunctionSignature.c) {
                    JvmFunctionSignature.c cVar = (JvmFunctionSignature.c) jvmFunctionSignatureG;
                    objB = this.this$0.y().w(cVar.c(), cVar.b());
                } else if (jvmFunctionSignatureG instanceof JvmFunctionSignature.a) {
                    objB = ((JvmFunctionSignature.a) jvmFunctionSignatureG).b();
                } else {
                    if (!(jvmFunctionSignatureG instanceof JvmFunctionSignature.JavaConstructor)) {
                        if (!(jvmFunctionSignatureG instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        List listB = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) jvmFunctionSignatureG).b();
                        Class clsD2 = this.this$0.y().d();
                        List list = listB;
                        ArrayList arrayList2 = new ArrayList(z71.v(list, 10));
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((Method) it2.next()).getName());
                        }
                        return new AnnotationConstructorCaller(clsD2, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, listB);
                    }
                    objB = ((JvmFunctionSignature.JavaConstructor) jvmFunctionSignatureG).b();
                }
                if (objB instanceof Constructor) {
                    KFunctionImpl kFunctionImpl = this.this$0;
                    aVarK = kFunctionImpl.I((Constructor) objB, kFunctionImpl.D(), false);
                } else {
                    if (!(objB instanceof Method)) {
                        throw new KotlinReflectionInternalError("Could not compute caller for function: " + this.this$0.D() + " (member = " + objB + ')');
                    }
                    Method method = (Method) objB;
                    if (Modifier.isStatic(method.getModifiers())) {
                        aVarK = this.this$0.D().getAnnotations().a(clb.j()) != null ? this.this$0.K(method) : this.this$0.L(method);
                    } else {
                        aVarK = this.this$0.J(method);
                    }
                }
                return c05.c(aVarK, this.this$0.D(), false, 2, null);
            }
        });
        this.l = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:35:0x012f  */
            @Override
            public final kotlin.reflect.jvm.internal.calls.a invoke() {
                GenericDeclaration genericDeclarationT;
                kotlin.reflect.jvm.internal.calls.a aVarL;
                JvmFunctionSignature jvmFunctionSignatureG = f.a.g(this.this$0.D());
                if (jvmFunctionSignatureG instanceof JvmFunctionSignature.c) {
                    KDeclarationContainerImpl kDeclarationContainerImplY = this.this$0.y();
                    JvmFunctionSignature.c cVar = (JvmFunctionSignature.c) jvmFunctionSignatureG;
                    String strC = cVar.c();
                    String strB = cVar.b();
                    Member memberB = this.this$0.x().b();
                    y45.g(memberB);
                    genericDeclarationT = kDeclarationContainerImplY.u(strC, strB, !Modifier.isStatic(memberB.getModifiers()));
                } else if (jvmFunctionSignatureG instanceof JvmFunctionSignature.b) {
                    if (this.this$0.B()) {
                        Class clsD = this.this$0.y().d();
                        List parameters = this.this$0.getParameters();
                        ArrayList arrayList = new ArrayList(z71.v(parameters, 10));
                        Iterator it = parameters.iterator();
                        while (it.hasNext()) {
                            String name = ((KParameter) it.next()).getName();
                            y45.g(name);
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(clsD, arrayList, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    genericDeclarationT = this.this$0.y().t(((JvmFunctionSignature.b) jvmFunctionSignatureG).b());
                } else {
                    if (jvmFunctionSignatureG instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor) {
                        List listB = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) jvmFunctionSignatureG).b();
                        Class clsD2 = this.this$0.y().d();
                        List list = listB;
                        ArrayList arrayList2 = new ArrayList(z71.v(list, 10));
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((Method) it2.next()).getName());
                        }
                        return new AnnotationConstructorCaller(clsD2, arrayList2, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.JAVA, listB);
                    }
                    genericDeclarationT = null;
                }
                if (genericDeclarationT instanceof Constructor) {
                    KFunctionImpl kFunctionImpl = this.this$0;
                    aVarL = kFunctionImpl.I((Constructor) genericDeclarationT, kFunctionImpl.D(), true);
                } else if (!(genericDeclarationT instanceof Method)) {
                    aVarL = null;
                } else if (this.this$0.D().getAnnotations().a(clb.j()) != null) {
                    xt1 xt1VarB = this.this$0.D().b();
                    y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    if (((qw0) xt1VarB).h0()) {
                        aVarL = this.this$0.L((Method) genericDeclarationT);
                    } else {
                        aVarL = this.this$0.K((Method) genericDeclarationT);
                    }
                } else {
                    aVarL = this.this$0.L((Method) genericDeclarationT);
                }
                if (aVarL != null) {
                    return c05.b(aVarL, this.this$0.D(), true);
                }
                return null;
            }
        });
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return b.a.c(this, obj, obj2);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return b.a.d(this, obj, obj2, obj3);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return b.a.e(this, obj, obj2, obj3, obj4);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return b.a.f(this, obj, obj2, obj3, obj4, obj5);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return b.a.g(this, obj, obj2, obj3, obj4, obj5, obj6);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        return b.a.h(this, obj, obj2, obj3, obj4, obj5, obj6, obj7);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        this(kDeclarationContainerImpl, str, str2, null, obj);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "name");
        y45.j(str2, "signature");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(eVar, "descriptor");
        String strB = eVar.getName().b();
        y45.i(strB, "descriptor.name.asString()");
        this(kDeclarationContainerImpl, strB, f.a.g(eVar).a(), eVar, null, 16, null);
    }
}
