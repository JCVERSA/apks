package kotlin.reflect.jvm.internal.impl.renderer;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import defpackage.by6;
import defpackage.e74;
import defpackage.ebb;
import defpackage.eh5;
import defpackage.gd;
import defpackage.mcb;
import defpackage.p54;
import defpackage.qw0;
import defpackage.qx0;
import defpackage.xt1;
import defpackage.y45;
import defpackage.ye9;
import defpackage.zfb;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.h;

public abstract class DescriptorRenderer {
    public static final a a;
    public static final DescriptorRenderer b;
    public static final DescriptorRenderer c;
    public static final DescriptorRenderer d;
    public static final DescriptorRenderer e;
    public static final DescriptorRenderer f;
    public static final DescriptorRenderer g;
    public static final DescriptorRenderer h;
    public static final DescriptorRenderer i;
    public static final DescriptorRenderer j;
    public static final DescriptorRenderer k;

    public static final class a {

        public class C0403a {
            public static final int[] a;

            static {
                int[] iArr = new int[ClassKind.values().length];
                try {
                    iArr[ClassKind.CLASS.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ClassKind.INTERFACE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ClassKind.ENUM_CLASS.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ClassKind.OBJECT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[ClassKind.ANNOTATION_CLASS.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[ClassKind.ENUM_ENTRY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                a = iArr;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(qx0 qx0Var) {
            y45.j(qx0Var, "classifier");
            if (qx0Var instanceof ebb) {
                return "typealias";
            }
            if (!(qx0Var instanceof qw0)) {
                throw new AssertionError("Unexpected classifier: " + qx0Var);
            }
            qw0 qw0Var = (qw0) qx0Var;
            if (qw0Var.h0()) {
                return "companion object";
            }
            switch (C0403a.a[qw0Var.getKind().ordinal()]) {
                case 1:
                    return "class";
                case 2:
                    return "interface";
                case 3:
                    return "enum class";
                case 4:
                    return "object";
                case 5:
                    return "annotation class";
                case 6:
                    return "enum entry";
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final DescriptorRenderer b(e74 e74Var) {
            y45.j(e74Var, "changeOptions");
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = new DescriptorRendererOptionsImpl();
            e74Var.invoke(descriptorRendererOptionsImpl);
            descriptorRendererOptionsImpl.n0();
            return new DescriptorRendererImpl(descriptorRendererOptionsImpl);
        }

        public a() {
        }
    }

    public interface b {

        public static final class a implements b {
            public static final a a = new a();

            @Override
            public void a(int i, StringBuilder sb) {
                y45.j(sb, "builder");
                sb.append("(");
            }

            @Override
            public void b(int i, StringBuilder sb) {
                y45.j(sb, "builder");
                sb.append(")");
            }

            @Override
            public void c(h hVar, int i, int i2, StringBuilder sb) {
                y45.j(hVar, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
                y45.j(sb, "builder");
            }

            @Override
            public void d(h hVar, int i, int i2, StringBuilder sb) {
                y45.j(hVar, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
                y45.j(sb, "builder");
                if (i != i2 - 1) {
                    sb.append(", ");
                }
            }
        }

        void a(int i, StringBuilder sb);

        void b(int i, StringBuilder sb);

        void c(h hVar, int i, int i2, StringBuilder sb);

        void d(h hVar, int i, int i2, StringBuilder sb);
    }

    static {
        a aVar = new a(null);
        a = aVar;
        b = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.l(false);
            }
        });
        c = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.l(false);
                bVar.g(ye9.f());
            }
        });
        d = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.l(false);
                bVar.g(ye9.f());
                bVar.m(true);
            }
        });
        e = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.g(ye9.f());
                bVar.q(a.b.a);
                bVar.a(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
            }
        });
        f = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.l(false);
                bVar.g(ye9.f());
                bVar.q(a.b.a);
                bVar.j(true);
                bVar.a(ParameterNameRenderingPolicy.NONE);
                bVar.n(true);
                bVar.r(true);
                bVar.m(true);
                bVar.k(true);
            }
        });
        g = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.g(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS);
            }
        });
        h = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.g(DescriptorRendererModifier.ALL);
            }
        });
        i = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.q(a.b.a);
                bVar.a(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
            }
        });
        j = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.i(true);
                bVar.q(a.C0405a.a);
                bVar.g(DescriptorRendererModifier.ALL);
            }
        });
        k = aVar.b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((b) obj);
                return zfb.a;
            }

            public final void invoke(b bVar) {
                y45.j(bVar, "$this$withOptions");
                bVar.o(RenderingFormat.HTML);
                bVar.g(DescriptorRendererModifier.ALL);
            }
        });
    }

    public static String u(DescriptorRenderer descriptorRenderer, gd gdVar, AnnotationUseSiteTarget annotationUseSiteTarget, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: renderAnnotation");
        }
        if ((i2 & 2) != 0) {
            annotationUseSiteTarget = null;
        }
        return descriptorRenderer.t(gdVar, annotationUseSiteTarget);
    }

    public final DescriptorRenderer A(e74 e74Var) {
        y45.j(e74Var, "changeOptions");
        y45.h(this, "null cannot be cast to non-null type org.jetbrains.kotlin.renderer.DescriptorRendererImpl");
        DescriptorRendererOptionsImpl descriptorRendererOptionsImplS = ((DescriptorRendererImpl) this).i0().s();
        e74Var.invoke(descriptorRendererOptionsImplS);
        descriptorRendererOptionsImplS.n0();
        return new DescriptorRendererImpl(descriptorRendererOptionsImplS);
    }

    public abstract String s(xt1 xt1Var);

    public abstract String t(gd gdVar, AnnotationUseSiteTarget annotationUseSiteTarget);

    public abstract String v(String str, String str2, d dVar);

    public abstract String w(p54 p54Var);

    public abstract String x(by6 by6Var, boolean z);

    public abstract String y(eh5 eh5Var);

    public abstract String z(mcb mcbVar);
}
