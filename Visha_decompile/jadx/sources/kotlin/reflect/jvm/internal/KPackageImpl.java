package kotlin.reflect.jvm.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.cj8;
import defpackage.clb;
import defpackage.g1a;
import defpackage.jd5;
import defpackage.kd5;
import defpackage.od5;
import defpackage.qq8;
import defpackage.ti8;
import defpackage.xcb;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Collection;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.KPackageImpl.Data;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import org.apache.commons.io.IOUtils;

public final class KPackageImpl extends KDeclarationContainerImpl {
    public final Class e;
    public final e.b f;

    public final class Data extends KDeclarationContainerImpl.Data {
        public static final af5[] j = {xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), TtmlNode.TAG_METADATA, "getMetadata()Lkotlin/Triple;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "members", "getMembers()Ljava/util/Collection;"))};
        public final e.a d;
        public final e.a e;
        public final e.b f;
        public final e.b g;
        public final e.a h;

        public Data() {
            super();
            this.d = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final qq8 invoke() {
                    return qq8.c.a(kPackageImpl.d());
                }
            });
            this.e = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final MemberScope invoke() {
                    qq8 qq8VarC = this.this$0.c();
                    return qq8VarC != null ? this.this$0.a().c().a(qq8VarC) : MemberScope.a.b;
                }
            });
            this.f = e.b(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Class<?> invoke() {
                    KotlinClassHeader kotlinClassHeaderB;
                    qq8 qq8VarC = this.this$0.c();
                    String strE = (qq8VarC == null || (kotlinClassHeaderB = qq8VarC.b()) == null) ? null : kotlinClassHeaderB.e();
                    if (strE == null || strE.length() <= 0) {
                        return null;
                    }
                    return kPackageImpl.d().getClassLoader().loadClass(g1a.M(strE, IOUtils.DIR_SEPARATOR_UNIX, '.', false, 4, null));
                }
            });
            this.g = e.b(new c74() {
                {
                    super(0);
                }

                @Override
                public final Triple<kd5, ProtoBuf$Package, jd5> invoke() {
                    KotlinClassHeader kotlinClassHeaderB;
                    qq8 qq8VarC = this.this$0.c();
                    if (qq8VarC == null || (kotlinClassHeaderB = qq8VarC.b()) == null) {
                        return null;
                    }
                    String[] strArrA = kotlinClassHeaderB.a();
                    String[] strArrG = kotlinClassHeaderB.g();
                    if (strArrA == null || strArrG == null) {
                        return null;
                    }
                    Pair pairM = od5.m(strArrA, strArrG);
                    return new Triple<>((kd5) pairM.component1(), (ProtoBuf$Package) pairM.component2(), kotlinClassHeaderB.d());
                }
            });
            this.h = e.c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Collection<KCallableImpl> invoke() {
                    return kPackageImpl.C(this.f(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
                }
            });
        }

        public final qq8 c() {
            return (qq8) this.d.b(this, j[0]);
        }

        public final Triple d() {
            return (Triple) this.g.b(this, j[3]);
        }

        public final Class e() {
            return (Class) this.f.b(this, j[2]);
        }

        public final MemberScope f() {
            Object objB = this.e.b(this, j[1]);
            y45.i(objB, "<get-scope>(...)");
            return (MemberScope) objB;
        }
    }

    public KPackageImpl(Class cls) {
        y45.j(cls, "jClass");
        this.e = cls;
        e.b bVarB = e.b(new c74() {
            {
                super(0);
            }

            @Override
            public final KPackageImpl.Data invoke() {
                return this.this$0.new Data();
            }
        });
        y45.i(bVarB, "lazy { Data() }");
        this.f = bVarB;
    }

    @Override
    public Collection A(by6 by6Var) {
        y45.j(by6Var, "name");
        return L().c(by6Var, NoLookupLocation.FROM_REFLECTION);
    }

    @Override
    public ti8 B(int i) {
        Triple tripleD = ((Data) this.f.invoke()).d();
        if (tripleD == null) {
            return null;
        }
        kd5 kd5Var = (kd5) tripleD.component1();
        ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) tripleD.component2();
        jd5 jd5Var = (jd5) tripleD.component3();
        GeneratedMessageLite.e eVar = JvmProtoBuf.n;
        y45.i(eVar, "packageLocalVariable");
        ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) cj8.b(protoBuf$Package, eVar, i);
        if (protoBuf$Property == null) {
            return null;
        }
        Class clsD = d();
        ProtoBuf$TypeTable typeTable = protoBuf$Package.getTypeTable();
        y45.i(typeTable, "packageProto.typeTable");
        return (ti8) clb.h(clsD, protoBuf$Property, kd5Var, new xcb(typeTable), jd5Var, KPackageImpl$getLocalProperty$1$1$1.INSTANCE);
    }

    @Override
    public Class D() {
        Class clsE = ((Data) this.f.invoke()).e();
        return clsE == null ? d() : clsE;
    }

    @Override
    public Collection E(by6 by6Var) {
        y45.j(by6Var, "name");
        return L().b(by6Var, NoLookupLocation.FROM_REFLECTION);
    }

    public final MemberScope L() {
        return ((Data) this.f.invoke()).f();
    }

    @Override
    public Class d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        return (obj instanceof KPackageImpl) && y45.e(d(), ((KPackageImpl) obj).d());
    }

    public int hashCode() {
        return d().hashCode();
    }

    public String toString() {
        return "file class " + ReflectClassUtilKt.a(d()).b();
    }

    @Override
    public Collection z() {
        return y71.k();
    }
}
