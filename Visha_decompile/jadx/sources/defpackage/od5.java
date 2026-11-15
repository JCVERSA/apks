package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.d;

public final class od5 {
    public static final od5 a = new od5();
    public static final d b;

    static {
        d dVarD = d.d();
        JvmProtoBuf.a(dVarD);
        y45.i(dVarD, "newInstance().apply(JvmP…f::registerAllExtensions)");
        b = dVarD;
    }

    public static id5.a d(od5 od5Var, ProtoBuf$Property protoBuf$Property, cy6 cy6Var, xcb xcbVar, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        return od5Var.c(protoBuf$Property, cy6Var, xcbVar, z);
    }

    public static final boolean f(ProtoBuf$Property protoBuf$Property) {
        y45.j(protoBuf$Property, "proto");
        ay3.b bVarA = hd5.a.a();
        Object extension = protoBuf$Property.getExtension(JvmProtoBuf.e);
        y45.i(extension, "proto.getExtension(JvmProtoBuf.flags)");
        Boolean boolD = bVarA.d(((Number) extension).intValue());
        y45.i(boolD, "JvmFlags.IS_MOVED_FROM_I…nsion(JvmProtoBuf.flags))");
        return boolD.booleanValue();
    }

    public static final Pair h(byte[] bArr, String[] strArr) {
        y45.j(bArr, "bytes");
        y45.j(strArr, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        return new Pair(a.k(byteArrayInputStream, strArr), ProtoBuf$Class.parseFrom(byteArrayInputStream, b));
    }

    public static final Pair i(String[] strArr, String[] strArr2) {
        y45.j(strArr, "data");
        y45.j(strArr2, "strings");
        byte[] bArrE = xe0.e(strArr);
        y45.i(bArrE, "decodeBytes(data)");
        return h(bArrE, strArr2);
    }

    public static final Pair j(String[] strArr, String[] strArr2) {
        y45.j(strArr, "data");
        y45.j(strArr2, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(xe0.e(strArr));
        return new Pair(a.k(byteArrayInputStream, strArr2), ProtoBuf$Function.parseFrom(byteArrayInputStream, b));
    }

    public static final Pair l(byte[] bArr, String[] strArr) {
        y45.j(bArr, "bytes");
        y45.j(strArr, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        return new Pair(a.k(byteArrayInputStream, strArr), ProtoBuf$Package.parseFrom(byteArrayInputStream, b));
    }

    public static final Pair m(String[] strArr, String[] strArr2) {
        y45.j(strArr, "data");
        y45.j(strArr2, "strings");
        byte[] bArrE = xe0.e(strArr);
        y45.i(bArrE, "decodeBytes(data)");
        return l(bArrE, strArr2);
    }

    public final d a() {
        return b;
    }

    public final id5.b b(ProtoBuf$Constructor protoBuf$Constructor, cy6 cy6Var, xcb xcbVar) {
        String strY0;
        y45.j(protoBuf$Constructor, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        GeneratedMessageLite.e eVar = JvmProtoBuf.a;
        y45.i(eVar, "constructorSignature");
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) cj8.a(protoBuf$Constructor, eVar);
        String string = (jvmMethodSignature == null || !jvmMethodSignature.hasName()) ? MethodDecl.initName : cy6Var.getString(jvmMethodSignature.getName());
        if (jvmMethodSignature == null || !jvmMethodSignature.hasDesc()) {
            List<ProtoBuf$ValueParameter> valueParameterList = protoBuf$Constructor.getValueParameterList();
            y45.i(valueParameterList, "proto.valueParameterList");
            List<ProtoBuf$ValueParameter> list = valueParameterList;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list) {
                od5 od5Var = a;
                y45.i(protoBuf$ValueParameter, "it");
                String strG = od5Var.g(ij8.q(protoBuf$ValueParameter, xcbVar), cy6Var);
                if (strG == null) {
                    return null;
                }
                arrayList.add(strG);
            }
            strY0 = i81.y0(arrayList, "", "(", ")V", 0, null, null, 56, null);
        } else {
            strY0 = cy6Var.getString(jvmMethodSignature.getDesc());
        }
        return new id5.b(string, strY0);
    }

    public final id5.a c(ProtoBuf$Property protoBuf$Property, cy6 cy6Var, xcb xcbVar, boolean z) {
        String strG;
        y45.j(protoBuf$Property, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        GeneratedMessageLite.e eVar = JvmProtoBuf.d;
        y45.i(eVar, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) cj8.a(protoBuf$Property, eVar);
        if (jvmPropertySignature == null) {
            return null;
        }
        JvmProtoBuf.JvmFieldSignature field = jvmPropertySignature.hasField() ? jvmPropertySignature.getField() : null;
        if (field == null && z) {
            return null;
        }
        int name = (field == null || !field.hasName()) ? protoBuf$Property.getName() : field.getName();
        if (field == null || !field.hasDesc()) {
            strG = g(ij8.n(protoBuf$Property, xcbVar), cy6Var);
            if (strG == null) {
                return null;
            }
        } else {
            strG = cy6Var.getString(field.getDesc());
        }
        return new id5.a(cy6Var.getString(name), strG);
    }

    public final id5.b e(ProtoBuf$Function protoBuf$Function, cy6 cy6Var, xcb xcbVar) {
        String string;
        y45.j(protoBuf$Function, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        GeneratedMessageLite.e eVar = JvmProtoBuf.b;
        y45.i(eVar, "methodSignature");
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) cj8.a(protoBuf$Function, eVar);
        int name = (jvmMethodSignature == null || !jvmMethodSignature.hasName()) ? protoBuf$Function.getName() : jvmMethodSignature.getName();
        if (jvmMethodSignature == null || !jvmMethodSignature.hasDesc()) {
            List listO = y71.o(ij8.k(protoBuf$Function, xcbVar));
            List<ProtoBuf$ValueParameter> valueParameterList = protoBuf$Function.getValueParameterList();
            y45.i(valueParameterList, "proto.valueParameterList");
            List<ProtoBuf$ValueParameter> list = valueParameterList;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list) {
                y45.i(protoBuf$ValueParameter, "it");
                arrayList.add(ij8.q(protoBuf$ValueParameter, xcbVar));
            }
            List listJ0 = i81.J0(listO, arrayList);
            ArrayList arrayList2 = new ArrayList(z71.v(listJ0, 10));
            Iterator it = listJ0.iterator();
            while (it.hasNext()) {
                String strG = a.g((ProtoBuf$Type) it.next(), cy6Var);
                if (strG == null) {
                    return null;
                }
                arrayList2.add(strG);
            }
            String strG2 = g(ij8.m(protoBuf$Function, xcbVar), cy6Var);
            if (strG2 == null) {
                return null;
            }
            string = i81.y0(arrayList2, "", "(", ")", 0, null, null, 56, null) + strG2;
        } else {
            string = cy6Var.getString(jvmMethodSignature.getDesc());
        }
        return new id5.b(cy6Var.getString(name), string);
    }

    public final String g(ProtoBuf$Type protoBuf$Type, cy6 cy6Var) {
        if (protoBuf$Type.hasClassName()) {
            return ax0.b(cy6Var.a(protoBuf$Type.getClassName()));
        }
        return null;
    }

    public final kd5 k(InputStream inputStream, String[] strArr) throws IOException {
        JvmProtoBuf.StringTableTypes delimitedFrom = JvmProtoBuf.StringTableTypes.parseDelimitedFrom(inputStream, b);
        y45.i(delimitedFrom, "parseDelimitedFrom(this, EXTENSION_REGISTRY)");
        return new kd5(delimitedFrom, strArr);
    }
}
