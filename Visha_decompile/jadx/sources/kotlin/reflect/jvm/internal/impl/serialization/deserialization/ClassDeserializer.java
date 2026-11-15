package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.by6;
import defpackage.cy6;
import defpackage.dv7;
import defpackage.e74;
import defpackage.e92;
import defpackage.fv7;
import defpackage.gv7;
import defpackage.i92;
import defpackage.o54;
import defpackage.ow0;
import defpackage.qob;
import defpackage.qw0;
import defpackage.r92;
import defpackage.se0;
import defpackage.sw0;
import defpackage.xcb;
import defpackage.xe9;
import defpackage.xw0;
import defpackage.y45;
import defpackage.yt9;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;

public final class ClassDeserializer {
    public static final b c = new b(null);
    public static final Set d = xe9.d(xw0.m(e.a.d.l()));
    public final e92 a;
    public final e74 b;

    public static final class a {
        public final xw0 a;
        public final ow0 b;

        public a(xw0 xw0Var, ow0 ow0Var) {
            y45.j(xw0Var, "classId");
            this.a = xw0Var;
            this.b = ow0Var;
        }

        public final ow0 a() {
            return this.b;
        }

        public final xw0 b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Set a() {
            return ClassDeserializer.d;
        }

        public b() {
        }
    }

    public ClassDeserializer(e92 e92Var) {
        y45.j(e92Var, "components");
        this.a = e92Var;
        this.b = e92Var.u().a(new e74() {
            {
                super(1);
            }

            @Override
            public final qw0 invoke(ClassDeserializer.a aVar) {
                y45.j(aVar, "key");
                return this.this$0.c(aVar);
            }
        });
    }

    public static qw0 e(ClassDeserializer classDeserializer, xw0 xw0Var, ow0 ow0Var, int i, Object obj) {
        if ((i & 2) != 0) {
            ow0Var = null;
        }
        return classDeserializer.d(xw0Var, ow0Var);
    }

    public final qw0 c(a aVar) {
        Object next;
        i92 i92VarA;
        dv7 dv7Var;
        by6 by6VarJ;
        xw0 xw0VarB = aVar.b();
        Iterator it = this.a.k().iterator();
        while (it.hasNext()) {
            qw0 qw0VarB = ((sw0) it.next()).b(xw0VarB);
            if (qw0VarB != null) {
                return qw0VarB;
            }
        }
        if (d.contains(xw0VarB)) {
            return null;
        }
        ow0 ow0VarA = aVar.a();
        if (ow0VarA == null && (ow0VarA = this.a.e().a(xw0VarB)) == null) {
            return null;
        }
        cy6 cy6VarA = ow0VarA.a();
        ProtoBuf$Class protoBuf$ClassB = ow0VarA.b();
        se0 se0VarC = ow0VarA.c();
        yt9 yt9VarD = ow0VarA.d();
        xw0 xw0VarG = xw0VarB.g();
        if (xw0VarG != null) {
            qw0 qw0VarE = e(this, xw0VarG, null, 2, null);
            DeserializedClassDescriptor deserializedClassDescriptor = qw0VarE instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) qw0VarE : null;
            if (deserializedClassDescriptor == null) {
                return null;
            }
            by6 by6VarJ2 = xw0VarB.j();
            y45.i(by6VarJ2, "classId.shortClassName");
            if (!deserializedClassDescriptor.b1(by6VarJ2)) {
                return null;
            }
            i92VarA = deserializedClassDescriptor.U0();
        } else {
            fv7 fv7VarR = this.a.r();
            o54 o54VarH = xw0VarB.h();
            y45.i(o54VarH, "classId.packageFqName");
            Iterator it2 = gv7.c(fv7VarR, o54VarH).iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                dv7Var = (dv7) next;
                if (!(dv7Var instanceof r92)) {
                    break;
                }
                by6VarJ = xw0VarB.j();
                y45.i(by6VarJ, "classId.shortClassName");
            } while (!((r92) dv7Var).F0(by6VarJ));
            dv7 dv7Var2 = (dv7) next;
            if (dv7Var2 == null) {
                return null;
            }
            e92 e92Var = this.a;
            ProtoBuf$TypeTable typeTable = protoBuf$ClassB.getTypeTable();
            y45.i(typeTable, "classProto.typeTable");
            xcb xcbVar = new xcb(typeTable);
            qob.a aVar2 = qob.b;
            ProtoBuf$VersionRequirementTable versionRequirementTable = protoBuf$ClassB.getVersionRequirementTable();
            y45.i(versionRequirementTable, "classProto.versionRequirementTable");
            i92VarA = e92Var.a(dv7Var2, cy6VarA, xcbVar, aVar2.a(versionRequirementTable), se0VarC, null);
        }
        return new DeserializedClassDescriptor(i92VarA, protoBuf$ClassB, cy6VarA, se0VarC, yt9VarD);
    }

    public final qw0 d(xw0 xw0Var, ow0 ow0Var) {
        y45.j(xw0Var, "classId");
        return (qw0) this.b.invoke(new a(xw0Var, ow0Var));
    }
}
