package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.af5;
import defpackage.c74;
import defpackage.i81;
import defpackage.n8;
import defpackage.qq6;
import defpackage.ux9;
import defpackage.v18;
import defpackage.vx9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y45;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;

public final class JvmBuiltIns extends d {
    public static final af5[] k = {xq8.j(new PropertyReference1Impl(xq8.b(JvmBuiltIns.class), "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"))};
    public final Kind h;
    public c74 i;
    public final x17 j;

    public enum Kind {
        FROM_DEPENDENCIES,
        FROM_CLASS_LOADER,
        FALLBACK
    }

    public static final class a {
        public final qq6 a;
        public final boolean b;

        public a(qq6 qq6Var, boolean z) {
            y45.j(qq6Var, "ownerModuleDescriptor");
            this.a = qq6Var;
            this.b = z;
        }

        public final qq6 a() {
            return this.a;
        }

        public final boolean b() {
            return this.b;
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[Kind.values().length];
            try {
                iArr[Kind.FROM_DEPENDENCIES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Kind.FROM_CLASS_LOADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Kind.FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmBuiltIns(final vx9 vx9Var, Kind kind) {
        super(vx9Var);
        y45.j(vx9Var, "storageManager");
        y45.j(kind, "kind");
        this.h = kind;
        this.j = vx9Var.c(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final JvmBuiltInsCustomizer invoke() {
                ModuleDescriptorImpl moduleDescriptorImplR = this.this$0.r();
                y45.i(moduleDescriptorImplR, "builtInsModule");
                vx9 vx9Var2 = vx9Var;
                final JvmBuiltIns jvmBuiltIns = this.this$0;
                return new JvmBuiltInsCustomizer(moduleDescriptorImplR, vx9Var2, new c74() {
                    {
                        super(0);
                    }

                    @Override
                    public final JvmBuiltIns.a invoke() {
                        c74 c74Var = jvmBuiltIns.i;
                        if (c74Var == null) {
                            throw new AssertionError("JvmBuiltins instance has not been initialized properly");
                        }
                        JvmBuiltIns.a aVar = (JvmBuiltIns.a) c74Var.invoke();
                        jvmBuiltIns.i = null;
                        return aVar;
                    }
                });
            }
        });
        int i = b.a[kind.ordinal()];
        if (i == 2) {
            f(false);
        } else {
            if (i != 3) {
                return;
            }
            f(true);
        }
    }

    @Override
    public List v() {
        Iterable iterableV = super.v();
        y45.i(iterableV, "super.getClassDescriptorFactories()");
        vx9 vx9VarU = U();
        y45.i(vx9VarU, "storageManager");
        ModuleDescriptorImpl moduleDescriptorImplR = r();
        y45.i(moduleDescriptorImplR, "builtInsModule");
        return i81.I0(iterableV, new JvmBuiltInClassDescriptorFactory(vx9VarU, moduleDescriptorImplR, null, 4, null));
    }

    public final JvmBuiltInsCustomizer I0() {
        return (JvmBuiltInsCustomizer) ux9.a(this.j, this, k[0]);
    }

    public final void J0(final qq6 qq6Var, final boolean z) {
        y45.j(qq6Var, "moduleDescriptor");
        K0(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final JvmBuiltIns.a invoke() {
                return new JvmBuiltIns.a(qq6Var, z);
            }
        });
    }

    public final void K0(c74 c74Var) {
        y45.j(c74Var, "computation");
        this.i = c74Var;
    }

    @Override
    public v18 M() {
        return I0();
    }

    @Override
    public n8 g() {
        return I0();
    }
}
