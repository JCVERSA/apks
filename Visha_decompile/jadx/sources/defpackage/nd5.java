package defpackage;

import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import org.apache.commons.io.IOUtils;

public final class nd5 implements p92 {
    public final fd5 b;
    public final fd5 c;
    public final cz4 d;
    public final boolean e;
    public final DeserializedContainerAbiStability f;
    public final c g;
    public final String h;

    public nd5(fd5 fd5Var, fd5 fd5Var2, ProtoBuf$Package protoBuf$Package, cy6 cy6Var, cz4 cz4Var, boolean z, DeserializedContainerAbiStability deserializedContainerAbiStability, c cVar) {
        String string;
        y45.j(fd5Var, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
        y45.j(protoBuf$Package, "packageProto");
        y45.j(cy6Var, "nameResolver");
        y45.j(deserializedContainerAbiStability, "abiStability");
        this.b = fd5Var;
        this.c = fd5Var2;
        this.d = cz4Var;
        this.e = z;
        this.f = deserializedContainerAbiStability;
        this.g = cVar;
        GeneratedMessageLite.e eVar = JvmProtoBuf.m;
        y45.i(eVar, "packageModuleName");
        Integer num = (Integer) cj8.a(protoBuf$Package, eVar);
        this.h = (num == null || (string = cy6Var.getString(num.intValue())) == null) ? "main" : string;
    }

    @Override
    public String a() {
        return "Class '" + d().b().b() + '\'';
    }

    @Override
    public zt9 b() {
        zt9 zt9Var = zt9.a;
        y45.i(zt9Var, "NO_SOURCE_FILE");
        return zt9Var;
    }

    public final xw0 d() {
        return new xw0(e().g(), h());
    }

    public fd5 e() {
        return this.b;
    }

    public fd5 f() {
        return this.c;
    }

    public final c g() {
        return this.g;
    }

    public final by6 h() {
        String strF = e().f();
        y45.i(strF, "className.internalName");
        by6 by6VarG = by6.g(j1a.a1(strF, IOUtils.DIR_SEPARATOR_UNIX, null, 2, null));
        y45.i(by6VarG, "identifier(className.int….substringAfterLast('/'))");
        return by6VarG;
    }

    public String toString() {
        return nd5.class.getSimpleName() + ": " + e();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public nd5(c cVar, ProtoBuf$Package protoBuf$Package, cy6 cy6Var, cz4 cz4Var, boolean z, DeserializedContainerAbiStability deserializedContainerAbiStability) {
        y45.j(cVar, "kotlinClass");
        y45.j(protoBuf$Package, "packageProto");
        y45.j(cy6Var, "nameResolver");
        y45.j(deserializedContainerAbiStability, "abiStability");
        fd5 fd5VarB = fd5.b(cVar.c());
        y45.i(fd5VarB, "byClassId(kotlinClass.classId)");
        String strE = cVar.b().e();
        fd5 fd5VarD = null;
        if (strE != null && strE.length() > 0) {
            fd5VarD = fd5.d(strE);
        }
        this(fd5VarB, fd5VarD, protoBuf$Package, cy6Var, cz4Var, z, deserializedContainerAbiStability, cVar);
    }
}
