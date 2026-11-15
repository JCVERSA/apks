package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.ay3;
import defpackage.cy6;
import defpackage.ey6;
import defpackage.o54;
import defpackage.xcb;
import defpackage.xw0;
import defpackage.y45;
import defpackage.yt9;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;

public abstract class d {
    public final cy6 a;
    public final xcb b;
    public final yt9 c;

    public static final class a extends d {
        public final ProtoBuf$Class d;
        public final a e;
        public final xw0 f;
        public final ProtoBuf$Class.Kind g;
        public final boolean h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ProtoBuf$Class protoBuf$Class, cy6 cy6Var, xcb xcbVar, yt9 yt9Var, a aVar) {
            super(cy6Var, xcbVar, yt9Var, null);
            y45.j(protoBuf$Class, "classProto");
            y45.j(cy6Var, "nameResolver");
            y45.j(xcbVar, "typeTable");
            this.d = protoBuf$Class;
            this.e = aVar;
            this.f = ey6.a(cy6Var, protoBuf$Class.getFqName());
            ProtoBuf$Class.Kind kind = (ProtoBuf$Class.Kind) ay3.f.d(protoBuf$Class.getFlags());
            this.g = kind == null ? ProtoBuf$Class.Kind.CLASS : kind;
            Boolean boolD = ay3.g.d(protoBuf$Class.getFlags());
            y45.i(boolD, "IS_INNER.get(classProto.flags)");
            this.h = boolD.booleanValue();
        }

        @Override
        public o54 a() {
            o54 o54VarB = this.f.b();
            y45.i(o54VarB, "classId.asSingleFqName()");
            return o54VarB;
        }

        public final xw0 e() {
            return this.f;
        }

        public final ProtoBuf$Class f() {
            return this.d;
        }

        public final ProtoBuf$Class.Kind g() {
            return this.g;
        }

        public final a h() {
            return this.e;
        }

        public final boolean i() {
            return this.h;
        }
    }

    public static final class b extends d {
        public final o54 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(o54 o54Var, cy6 cy6Var, xcb xcbVar, yt9 yt9Var) {
            super(cy6Var, xcbVar, yt9Var, null);
            y45.j(o54Var, "fqName");
            y45.j(cy6Var, "nameResolver");
            y45.j(xcbVar, "typeTable");
            this.d = o54Var;
        }

        @Override
        public o54 a() {
            return this.d;
        }
    }

    public d(cy6 cy6Var, xcb xcbVar, yt9 yt9Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(cy6Var, xcbVar, yt9Var);
    }

    public abstract o54 a();

    public final cy6 b() {
        return this.a;
    }

    public final yt9 c() {
        return this.c;
    }

    public final xcb d() {
        return this.b;
    }

    public String toString() {
        return getClass().getSimpleName() + ": " + a();
    }

    public d(cy6 cy6Var, xcb xcbVar, yt9 yt9Var) {
        this.a = cy6Var;
        this.b = xcbVar;
        this.c = yt9Var;
    }
}
