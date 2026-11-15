package kotlin.reflect.jvm.internal;

import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import defpackage.by6;
import defpackage.clb;
import defpackage.e74;
import defpackage.eh5;
import defpackage.i81;
import defpackage.ro8;
import defpackage.ti8;
import defpackage.y45;
import java.io.IOException;
import java.util.List;
import kotlin.reflect.KParameter;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;

public final class ReflectionObjectRenderer {
    public static final ReflectionObjectRenderer a = new ReflectionObjectRenderer();
    public static final DescriptorRenderer b = DescriptorRenderer.g;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[KParameter.Kind.values().length];
            try {
                iArr[KParameter.Kind.EXTENSION_RECEIVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KParameter.Kind.INSTANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KParameter.Kind.VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public final void a(StringBuilder sb, ro8 ro8Var) {
        if (ro8Var != null) {
            eh5 type = ro8Var.getType();
            y45.i(type, "receiver.type");
            sb.append(h(type));
            sb.append(Consts.DOT);
        }
    }

    public final void b(StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        ro8 ro8VarI = clb.i(aVar);
        ro8 ro8VarB0 = aVar.b0();
        a(sb, ro8VarI);
        boolean z = (ro8VarI == null || ro8VarB0 == null) ? false : true;
        if (z) {
            sb.append("(");
        }
        a(sb, ro8VarB0);
        if (z) {
            sb.append(")");
        }
    }

    public final String c(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        if (aVar instanceof ti8) {
            return g((ti8) aVar);
        }
        if (aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.e) {
            return d((kotlin.reflect.jvm.internal.impl.descriptors.e) aVar);
        }
        throw new IllegalStateException(("Illegal callable: " + aVar).toString());
    }

    public final String d(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) throws IOException {
        y45.j(eVar, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append("fun ");
        ReflectionObjectRenderer reflectionObjectRenderer = a;
        reflectionObjectRenderer.b(sb, eVar);
        DescriptorRenderer descriptorRenderer = b;
        by6 name = eVar.getName();
        y45.i(name, "descriptor.name");
        sb.append(descriptorRenderer.x(name, true));
        List listF = eVar.f();
        y45.i(listF, "descriptor.valueParameters");
        i81.v0(listF, sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : "(", (124 & 8) == 0 ? ")" : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : new e74() {
            @Override
            public final CharSequence invoke(h hVar) {
                ReflectionObjectRenderer reflectionObjectRenderer2 = ReflectionObjectRenderer.a;
                eh5 type = hVar.getType();
                y45.i(type, "it.type");
                return reflectionObjectRenderer2.h(type);
            }
        });
        sb.append(": ");
        eh5 returnType = eVar.getReturnType();
        y45.g(returnType);
        sb.append(reflectionObjectRenderer.h(returnType));
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String e(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) throws IOException {
        y45.j(eVar, "invoke");
        StringBuilder sb = new StringBuilder();
        ReflectionObjectRenderer reflectionObjectRenderer = a;
        reflectionObjectRenderer.b(sb, eVar);
        List listF = eVar.f();
        y45.i(listF, "invoke.valueParameters");
        i81.v0(listF, sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : "(", (124 & 8) == 0 ? ")" : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : new e74() {
            @Override
            public final CharSequence invoke(h hVar) {
                ReflectionObjectRenderer reflectionObjectRenderer2 = ReflectionObjectRenderer.a;
                eh5 type = hVar.getType();
                y45.i(type, "it.type");
                return reflectionObjectRenderer2.h(type);
            }
        });
        sb.append(" -> ");
        eh5 returnType = eVar.getReturnType();
        y45.g(returnType);
        sb.append(reflectionObjectRenderer.h(returnType));
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String f(KParameterImpl kParameterImpl) {
        y45.j(kParameterImpl, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
        StringBuilder sb = new StringBuilder();
        int i = a.a[kParameterImpl.getKind().ordinal()];
        if (i == 1) {
            sb.append("extension receiver parameter");
        } else if (i == 2) {
            sb.append("instance parameter");
        } else if (i == 3) {
            sb.append("parameter #" + kParameterImpl.getIndex() + ' ' + kParameterImpl.getName());
        }
        sb.append(" of ");
        sb.append(a.c(kParameterImpl.e().D()));
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String g(ti8 ti8Var) {
        y45.j(ti8Var, "descriptor");
        StringBuilder sb = new StringBuilder();
        sb.append(ti8Var.y() ? "var " : "val ");
        ReflectionObjectRenderer reflectionObjectRenderer = a;
        reflectionObjectRenderer.b(sb, ti8Var);
        DescriptorRenderer descriptorRenderer = b;
        by6 name = ti8Var.getName();
        y45.i(name, "descriptor.name");
        sb.append(descriptorRenderer.x(name, true));
        sb.append(": ");
        eh5 type = ti8Var.getType();
        y45.i(type, "descriptor.type");
        sb.append(reflectionObjectRenderer.h(type));
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String h(eh5 eh5Var) {
        y45.j(eh5Var, "type");
        return b.y(eh5Var);
    }
}
