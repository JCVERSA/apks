package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.by6;
import defpackage.c74;
import defpackage.eh5;
import defpackage.ey6;
import defpackage.f3;
import defpackage.gd;
import defpackage.gj8;
import defpackage.i81;
import defpackage.i92;
import defpackage.ij8;
import defpackage.l92;
import defpackage.md;
import defpackage.t6a;
import defpackage.vx9;
import defpackage.x71;
import defpackage.xt1;
import defpackage.y45;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;

public final class DeserializedTypeParameterDescriptor extends f3 {
    public final i92 l;
    public final ProtoBuf$TypeParameter m;
    public final l92 n;

    /* JADX WARN: Illegal instructions before constructor call */
    public DeserializedTypeParameterDescriptor(i92 i92Var, ProtoBuf$TypeParameter protoBuf$TypeParameter, int i) {
        y45.j(i92Var, "c");
        y45.j(protoBuf$TypeParameter, "proto");
        vx9 vx9VarH = i92Var.h();
        xt1 xt1VarE = i92Var.e();
        md mdVarB = md.u1.b();
        by6 by6VarB = ey6.b(i92Var.g(), protoBuf$TypeParameter.getName());
        gj8 gj8Var = gj8.a;
        ProtoBuf$TypeParameter.Variance variance = protoBuf$TypeParameter.getVariance();
        y45.i(variance, "proto.variance");
        super(vx9VarH, xt1VarE, mdVarB, by6VarB, gj8Var.d(variance), protoBuf$TypeParameter.getReified(), i, yt9.a, t6a.a.a);
        this.l = i92Var;
        this.m = protoBuf$TypeParameter;
        this.n = new l92(i92Var.h(), new c74() {
            {
                super(0);
            }

            @Override
            public final List<gd> invoke() {
                return i81.b1(this.this$0.l.c().d().e(this.this$0.J0(), this.this$0.l.g()));
            }
        });
    }

    @Override
    public List G0() {
        List listS = ij8.s(this.m, this.l.j());
        if (listS.isEmpty()) {
            return x71.e(DescriptorUtilsKt.j(this).y());
        }
        List list = listS;
        TypeDeserializer typeDeserializerI = this.l.i();
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(typeDeserializerI.q((ProtoBuf$Type) it.next()));
        }
        return arrayList;
    }

    @Override
    public l92 getAnnotations() {
        return this.n;
    }

    public final ProtoBuf$TypeParameter J0() {
        return this.m;
    }

    @Override
    public Void F0(eh5 eh5Var) {
        y45.j(eh5Var, "type");
        throw new IllegalStateException("There should be no cycles for deserialized type parameters, but found for: " + this);
    }
}
