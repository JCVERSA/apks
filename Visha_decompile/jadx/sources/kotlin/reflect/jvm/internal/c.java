package kotlin.reflect.jvm.internal;

import defpackage.b92;
import defpackage.cj8;
import defpackage.cy6;
import defpackage.dv7;
import defpackage.fy6;
import defpackage.id5;
import defpackage.nd5;
import defpackage.od5;
import defpackage.p92;
import defpackage.t92;
import defpackage.ti8;
import defpackage.xc5;
import defpackage.xcb;
import defpackage.xt1;
import defpackage.y45;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;

public abstract class c {

    public static final class a extends c {
        public final Field a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Field field) {
            super(null);
            y45.j(field, "field");
            this.a = field;
        }

        @Override
        public String a() {
            StringBuilder sb = new StringBuilder();
            String name = this.a.getName();
            y45.i(name, "field.name");
            sb.append(xc5.b(name));
            sb.append("()");
            Class<?> type = this.a.getType();
            y45.i(type, "field.type");
            sb.append(ReflectClassUtilKt.b(type));
            return sb.toString();
        }

        public final Field b() {
            return this.a;
        }
    }

    public static final class b extends c {
        public final Method a;
        public final Method b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Method method, Method method2) {
            super(null);
            y45.j(method, "getterMethod");
            this.a = method;
            this.b = method2;
        }

        @Override
        public String a() {
            return RuntimeTypeMapperKt.b(this.a);
        }

        public final Method b() {
            return this.a;
        }

        public final Method c() {
            return this.b;
        }
    }

    public static final class C0370c extends c {
        public final ti8 a;
        public final ProtoBuf$Property b;
        public final JvmProtoBuf.JvmPropertySignature c;
        public final cy6 d;
        public final xcb e;
        public final String f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0370c(ti8 ti8Var, ProtoBuf$Property protoBuf$Property, JvmProtoBuf.JvmPropertySignature jvmPropertySignature, cy6 cy6Var, xcb xcbVar) {
            String str;
            super(null);
            y45.j(ti8Var, "descriptor");
            y45.j(protoBuf$Property, "proto");
            y45.j(jvmPropertySignature, "signature");
            y45.j(cy6Var, "nameResolver");
            y45.j(xcbVar, "typeTable");
            this.a = ti8Var;
            this.b = protoBuf$Property;
            this.c = jvmPropertySignature;
            this.d = cy6Var;
            this.e = xcbVar;
            if (jvmPropertySignature.hasGetter()) {
                str = cy6Var.getString(jvmPropertySignature.getGetter().getName()) + cy6Var.getString(jvmPropertySignature.getGetter().getDesc());
            } else {
                id5.a aVarD = od5.d(od5.a, protoBuf$Property, cy6Var, xcbVar, false, 8, null);
                if (aVarD == null) {
                    throw new KotlinReflectionInternalError("No field signature for property: " + ti8Var);
                }
                String strD = aVarD.d();
                str = xc5.b(strD) + c() + "()" + aVarD.e();
            }
            this.f = str;
        }

        @Override
        public String a() {
            return this.f;
        }

        public final ti8 b() {
            return this.a;
        }

        public final String c() {
            String string;
            xt1 xt1VarB = this.a.b();
            y45.i(xt1VarB, "descriptor.containingDeclaration");
            if (y45.e(this.a.getVisibility(), b92.d) && (xt1VarB instanceof DeserializedClassDescriptor)) {
                ProtoBuf$Class protoBuf$ClassV0 = ((DeserializedClassDescriptor) xt1VarB).V0();
                GeneratedMessageLite.e eVar = JvmProtoBuf.i;
                y45.i(eVar, "classModuleName");
                Integer num = (Integer) cj8.a(protoBuf$ClassV0, eVar);
                if (num == null || (string = this.d.getString(num.intValue())) == null) {
                    string = "main";
                }
                return '$' + fy6.b(string);
            }
            if (!y45.e(this.a.getVisibility(), b92.a) || !(xt1VarB instanceof dv7)) {
                return "";
            }
            ti8 ti8Var = this.a;
            y45.h(ti8Var, "null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.descriptors.DeserializedPropertyDescriptor");
            p92 p92VarY = ((t92) ti8Var).Y();
            if (!(p92VarY instanceof nd5)) {
                return "";
            }
            nd5 nd5Var = (nd5) p92VarY;
            if (nd5Var.f() == null) {
                return "";
            }
            return '$' + nd5Var.h().b();
        }

        public final cy6 d() {
            return this.d;
        }

        public final ProtoBuf$Property e() {
            return this.b;
        }

        public final JvmProtoBuf.JvmPropertySignature f() {
            return this.c;
        }

        public final xcb g() {
            return this.e;
        }
    }

    public static final class d extends c {
        public final JvmFunctionSignature.c a;
        public final JvmFunctionSignature.c b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(JvmFunctionSignature.c cVar, JvmFunctionSignature.c cVar2) {
            super(null);
            y45.j(cVar, "getterSignature");
            this.a = cVar;
            this.b = cVar2;
        }

        @Override
        public String a() {
            return this.a.a();
        }

        public final JvmFunctionSignature.c b() {
            return this.a;
        }

        public final JvmFunctionSignature.c c() {
            return this.b;
        }
    }

    public c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String a();

    public c() {
    }
}
