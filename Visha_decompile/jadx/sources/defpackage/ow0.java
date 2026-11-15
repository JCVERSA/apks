package defpackage;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;

public final class ow0 {
    public final cy6 a;
    public final ProtoBuf$Class b;
    public final se0 c;
    public final yt9 d;

    public ow0(cy6 cy6Var, ProtoBuf$Class protoBuf$Class, se0 se0Var, yt9 yt9Var) {
        y45.j(cy6Var, "nameResolver");
        y45.j(protoBuf$Class, "classProto");
        y45.j(se0Var, "metadataVersion");
        y45.j(yt9Var, "sourceElement");
        this.a = cy6Var;
        this.b = protoBuf$Class;
        this.c = se0Var;
        this.d = yt9Var;
    }

    public final cy6 a() {
        return this.a;
    }

    public final ProtoBuf$Class b() {
        return this.b;
    }

    public final se0 c() {
        return this.c;
    }

    public final yt9 d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ow0)) {
            return false;
        }
        ow0 ow0Var = (ow0) obj;
        return y45.e(this.a, ow0Var.a) && y45.e(this.b, ow0Var.b) && y45.e(this.c, ow0Var.c) && y45.e(this.d, ow0Var.d);
    }

    public int hashCode() {
        return (((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public String toString() {
        return "ClassData(nameResolver=" + this.a + ", classProto=" + this.b + ", metadataVersion=" + this.c + ", sourceElement=" + this.d + ')';
    }
}
