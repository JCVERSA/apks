package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.af5;
import defpackage.c05;
import defpackage.c74;
import defpackage.ce5;
import defpackage.clb;
import defpackage.d92;
import defpackage.id5;
import defpackage.le5;
import defpackage.md;
import defpackage.od5;
import defpackage.qw0;
import defpackage.s82;
import defpackage.ti8;
import defpackage.ve5;
import defpackage.vi8;
import defpackage.xi8;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.y45;
import defpackage.yi5;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.full.IllegalPropertyDelegateAccessException;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

public abstract class KPropertyImpl extends KCallableImpl implements af5 {
    public static final b m = new b(null);
    public static final Object n = new Object();
    public final KDeclarationContainerImpl g;
    public final String h;
    public final String i;
    public final Object j;
    public final yi5 k;
    public final e.a l;

    public static abstract class Getter extends a implements af5.b {
        public static final af5[] i = {xq8.j(new PropertyReference1Impl(xq8.b(Getter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;"))};
        public final e.a g = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final vi8 invoke() {
                vi8 getter = this.this$0.E().D().getGetter();
                return getter == null ? s82.d(this.this$0.E().D(), md.u1.b()) : getter;
            }
        });
        public final yi5 h = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final kotlin.reflect.jvm.internal.calls.a invoke() {
                return d.b(this.this$0, true);
            }
        });

        @Override
        public vi8 D() {
            Object objB = this.g.b(this, i[0]);
            y45.i(objB, "<get-descriptor>(...)");
            return (vi8) objB;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Getter) && y45.e(E(), ((Getter) obj).E());
        }

        @Override
        public String getName() {
            return "<get-" + E().getName() + '>';
        }

        public int hashCode() {
            return E().hashCode();
        }

        public String toString() {
            return "getter of " + E();
        }

        @Override
        public kotlin.reflect.jvm.internal.calls.a x() {
            return (kotlin.reflect.jvm.internal.calls.a) this.h.getValue();
        }
    }

    public static abstract class Setter extends a implements ve5.a {
        public static final af5[] i = {xq8.j(new PropertyReference1Impl(xq8.b(Setter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"))};
        public final e.a g = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final xi8 invoke() {
                xi8 setter = this.this$0.E().D().getSetter();
                if (setter != null) {
                    return setter;
                }
                ti8 ti8VarD = this.this$0.E().D();
                md.a aVar = md.u1;
                return s82.e(ti8VarD, aVar.b(), aVar.b());
            }
        });
        public final yi5 h = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final kotlin.reflect.jvm.internal.calls.a invoke() {
                return d.b(this.this$0, false);
            }
        });

        @Override
        public xi8 D() {
            Object objB = this.g.b(this, i[0]);
            y45.i(objB, "<get-descriptor>(...)");
            return (xi8) objB;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Setter) && y45.e(E(), ((Setter) obj).E());
        }

        @Override
        public String getName() {
            return "<set-" + E().getName() + '>';
        }

        public int hashCode() {
            return E().hashCode();
        }

        public String toString() {
            return "setter of " + E();
        }

        @Override
        public kotlin.reflect.jvm.internal.calls.a x() {
            return (kotlin.reflect.jvm.internal.calls.a) this.h.getValue();
        }
    }

    public static abstract class a extends KCallableImpl implements le5, af5.a {
        @Override
        public boolean C() {
            return E().C();
        }

        public abstract kotlin.reflect.jvm.internal.impl.descriptors.f D();

        public abstract KPropertyImpl E();

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

        @Override
        public KDeclarationContainerImpl y() {
            return E().y();
        }

        @Override
        public kotlin.reflect.jvm.internal.calls.a z() {
            return null;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    public KPropertyImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, ti8 ti8Var, Object obj) {
        this.g = kDeclarationContainerImpl;
        this.h = str;
        this.i = str2;
        this.j = obj;
        this.k = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final Field invoke() {
                Class<?> enclosingClass;
                c cVarF = f.a.f(this.this$0.D());
                if (!(cVarF instanceof c.C0370c)) {
                    if (cVarF instanceof c.a) {
                        return ((c.a) cVarF).b();
                    }
                    if ((cVarF instanceof c.b) || (cVarF instanceof c.d)) {
                        return null;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                c.C0370c c0370c = (c.C0370c) cVarF;
                ti8 ti8VarB = c0370c.b();
                id5.a aVarD = od5.d(od5.a, c0370c.e(), c0370c.d(), c0370c.g(), false, 8, null);
                if (aVarD == null) {
                    return null;
                }
                KPropertyImpl kPropertyImpl = this.this$0;
                if (d92.e(ti8VarB) || od5.f(c0370c.e())) {
                    enclosingClass = kPropertyImpl.y().d().getEnclosingClass();
                } else {
                    xt1 xt1VarB = ti8VarB.b();
                    enclosingClass = xt1VarB instanceof qw0 ? clb.p((qw0) xt1VarB) : kPropertyImpl.y().d();
                }
                if (enclosingClass == null) {
                    return null;
                }
                try {
                    return enclosingClass.getDeclaredField(aVarD.c());
                } catch (NoSuchFieldException unused) {
                    return null;
                }
            }
        });
        e.a aVarD = e.d(ti8Var, new c74() {
            {
                super(0);
            }

            @Override
            public final ti8 invoke() {
                return this.this$0.y().x(this.this$0.getName(), this.this$0.J());
            }
        });
        y45.i(aVarD, "lazySoft(descriptorIniti…or(name, signature)\n    }");
        this.l = aVarD;
    }

    @Override
    public boolean C() {
        return !y45.e(this.j, CallableReference.NO_RECEIVER);
    }

    public final Member D() {
        if (!D().U()) {
            return null;
        }
        c cVarF = f.a.f(D());
        if (cVarF instanceof c.C0370c) {
            c.C0370c c0370c = (c.C0370c) cVarF;
            if (c0370c.f().hasDelegateMethod()) {
                JvmProtoBuf.JvmMethodSignature delegateMethod = c0370c.f().getDelegateMethod();
                if (!delegateMethod.hasName() || !delegateMethod.hasDesc()) {
                    return null;
                }
                return y().w(c0370c.d().getString(delegateMethod.getName()), c0370c.d().getString(delegateMethod.getDesc()));
            }
        }
        return I();
    }

    public final Object E() {
        return c05.a(this.j, D());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object F(Member member, Object obj, Object obj2) throws IllegalPropertyDelegateAccessException {
        try {
            Object obj3 = n;
            if ((obj == obj3 || obj2 == obj3) && D().b0() == null) {
                throw new RuntimeException('\'' + this + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
            }
            Object objE = C() ? E() : obj;
            if (objE == obj3) {
                objE = null;
            }
            if (!C()) {
                obj = obj2;
            }
            if (obj == obj3) {
                obj = null;
            }
            AccessibleObject accessibleObject = member instanceof AccessibleObject ? (AccessibleObject) member : null;
            if (accessibleObject != null) {
                accessibleObject.setAccessible(ce5.a(this));
            }
            if (member == 0) {
                return null;
            }
            if (member instanceof Field) {
                return ((Field) member).get(objE);
            }
            if (!(member instanceof Method)) {
                throw new AssertionError("delegate field/method " + member + " neither field nor method");
            }
            int length = ((Method) member).getParameterTypes().length;
            if (length == 0) {
                return ((Method) member).invoke(null, null);
            }
            if (length == 1) {
                Method method = (Method) member;
                if (objE == null) {
                    Class<?> cls = ((Method) member).getParameterTypes()[0];
                    y45.i(cls, "fieldOrMethod.parameterTypes[0]");
                    objE = clb.g(cls);
                }
                return method.invoke(null, objE);
            }
            if (length != 2) {
                throw new AssertionError("delegate method " + member + " should take 0, 1, or 2 parameters");
            }
            Method method2 = (Method) member;
            if (obj == null) {
                Class<?> cls2 = ((Method) member).getParameterTypes()[1];
                y45.i(cls2, "fieldOrMethod.parameterTypes[1]");
                obj = clb.g(cls2);
            }
            return method2.invoke(null, objE, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalPropertyDelegateAccessException(e);
        }
    }

    @Override
    public ti8 D() {
        Object objInvoke = this.l.invoke();
        y45.i(objInvoke, "_descriptor()");
        return (ti8) objInvoke;
    }

    public abstract Getter H();

    public final Field I() {
        return (Field) this.k.getValue();
    }

    public final String J() {
        return this.i;
    }

    public boolean equals(Object obj) {
        KPropertyImpl kPropertyImplD = clb.d(obj);
        return kPropertyImplD != null && y45.e(y(), kPropertyImplD.y()) && y45.e(getName(), kPropertyImplD.getName()) && y45.e(this.i, kPropertyImplD.i) && y45.e(this.j, kPropertyImplD.j);
    }

    @Override
    public String getName() {
        return this.h;
    }

    public int hashCode() {
        return (((y().hashCode() * 31) + getName().hashCode()) * 31) + this.i.hashCode();
    }

    @Override
    public boolean isConst() {
        return D().isConst();
    }

    @Override
    public boolean isLateinit() {
        return D().z0();
    }

    @Override
    public boolean isSuspend() {
        return false;
    }

    public String toString() {
        return ReflectionObjectRenderer.a.g(D());
    }

    @Override
    public kotlin.reflect.jvm.internal.calls.a x() {
        return H().x();
    }

    @Override
    public KDeclarationContainerImpl y() {
        return this.g;
    }

    @Override
    public kotlin.reflect.jvm.internal.calls.a z() {
        return H().z();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KPropertyImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        this(kDeclarationContainerImpl, str, str2, null, obj);
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "name");
        y45.j(str2, "signature");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KPropertyImpl(KDeclarationContainerImpl kDeclarationContainerImpl, ti8 ti8Var) {
        y45.j(kDeclarationContainerImpl, TtmlNode.RUBY_CONTAINER);
        y45.j(ti8Var, "descriptor");
        String strB = ti8Var.getName().b();
        y45.i(strB, "descriptor.name.asString()");
        this(kDeclarationContainerImpl, strB, f.a.f(ti8Var).a(), ti8Var, CallableReference.NO_RECEIVER);
    }
}
