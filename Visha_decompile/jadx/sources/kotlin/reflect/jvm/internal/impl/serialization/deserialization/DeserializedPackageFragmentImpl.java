package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.aj8;
import defpackage.by6;
import defpackage.c74;
import defpackage.dy6;
import defpackage.e74;
import defpackage.e92;
import defpackage.o54;
import defpackage.p92;
import defpackage.qq6;
import defpackage.r92;
import defpackage.s92;
import defpackage.se0;
import defpackage.vx9;
import defpackage.xw0;
import defpackage.y45;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public abstract class DeserializedPackageFragmentImpl extends r92 {
    public final se0 i;
    public final p92 j;
    public final dy6 k;
    public final aj8 l;
    public ProtoBuf$PackageFragment m;
    public MemberScope n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedPackageFragmentImpl(o54 o54Var, vx9 vx9Var, qq6 qq6Var, ProtoBuf$PackageFragment protoBuf$PackageFragment, se0 se0Var, p92 p92Var) {
        super(o54Var, vx9Var, qq6Var);
        y45.j(o54Var, "fqName");
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "module");
        y45.j(protoBuf$PackageFragment, "proto");
        y45.j(se0Var, "metadataVersion");
        this.i = se0Var;
        this.j = p92Var;
        ProtoBuf$StringTable strings = protoBuf$PackageFragment.getStrings();
        y45.i(strings, "proto.strings");
        ProtoBuf$QualifiedNameTable qualifiedNames = protoBuf$PackageFragment.getQualifiedNames();
        y45.i(qualifiedNames, "proto.qualifiedNames");
        dy6 dy6Var = new dy6(strings, qualifiedNames);
        this.k = dy6Var;
        this.l = new aj8(protoBuf$PackageFragment, dy6Var, se0Var, new e74() {
            {
                super(1);
            }

            @Override
            public final yt9 invoke(xw0 xw0Var) {
                y45.j(xw0Var, "it");
                p92 p92Var2 = this.this$0.j;
                if (p92Var2 != null) {
                    return p92Var2;
                }
                yt9 yt9Var = yt9.a;
                y45.i(yt9Var, "NO_SOURCE");
                return yt9Var;
            }
        });
        this.m = protoBuf$PackageFragment;
    }

    @Override
    public void G0(e92 e92Var) {
        y45.j(e92Var, "components");
        ProtoBuf$PackageFragment protoBuf$PackageFragment = this.m;
        if (protoBuf$PackageFragment == null) {
            throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize");
        }
        this.m = null;
        ProtoBuf$Package protoBuf$Package = protoBuf$PackageFragment.getPackage();
        y45.i(protoBuf$Package, "proto.`package`");
        this.n = new s92(this, protoBuf$Package, this.k, this.i, this.j, e92Var, "scope of " + this, new c74() {
            {
                super(0);
            }

            @Override
            public final Collection<by6> invoke() {
                Collection collectionB = this.this$0.C0().b();
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionB) {
                    xw0 xw0Var = (xw0) obj;
                    if (!xw0Var.l() && !ClassDeserializer.c.a().contains(xw0Var)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((xw0) it.next()).j());
                }
                return arrayList2;
            }
        });
    }

    @Override
    public aj8 C0() {
        return this.l;
    }

    @Override
    public MemberScope p() {
        MemberScope memberScope = this.n;
        if (memberScope != null) {
            return memberScope;
        }
        y45.B("_memberScope");
        return null;
    }
}
