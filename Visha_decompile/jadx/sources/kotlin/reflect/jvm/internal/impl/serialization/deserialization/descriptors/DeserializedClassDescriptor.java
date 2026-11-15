package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.ay3;
import defpackage.by6;
import defpackage.c74;
import defpackage.c92;
import defpackage.cy6;
import defpackage.d81;
import defpackage.dn6;
import defpackage.e74;
import defpackage.e92;
import defpackage.eb3;
import defpackage.ed3;
import defpackage.eh5;
import defpackage.ey6;
import defpackage.fmb;
import defpackage.g05;
import defpackage.gd;
import defpackage.gj8;
import defpackage.gn6;
import defpackage.hcb;
import defpackage.hj8;
import defpackage.i81;
import defpackage.i92;
import defpackage.ij8;
import defpackage.inb;
import defpackage.jnb;
import defpackage.ky5;
import defpackage.l17;
import defpackage.l92;
import defpackage.md;
import defpackage.nh1;
import defpackage.nw0;
import defpackage.o2;
import defpackage.o37;
import defpackage.o54;
import defpackage.or5;
import defpackage.p2;
import defpackage.px0;
import defpackage.q17;
import defpackage.qob;
import defpackage.qw0;
import defpackage.s82;
import defpackage.sbb;
import defpackage.se0;
import defpackage.sm9;
import defpackage.so8;
import defpackage.t6a;
import defpackage.ti8;
import defpackage.u82;
import defpackage.vx9;
import defpackage.wn8;
import defpackage.x17;
import defpackage.xcb;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.yt9;
import defpackage.z71;
import defpackage.ze9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.resolve.CliSealedClassInheritorsProvider;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.d;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public final class DeserializedClassDescriptor extends o2 implements xt1 {
    public final ProtoBuf$Class g;
    public final se0 h;
    public final yt9 i;
    public final xw0 j;
    public final Modality k;
    public final c92 l;
    public final ClassKind m;
    public final i92 n;
    public final dn6 o;
    public final DeserializedClassTypeConstructor p;
    public final ScopesHolderForClass q;
    public final EnumEntryClassDescriptors r;
    public final xt1 s;
    public final o37 t;
    public final x17 u;
    public final o37 v;
    public final x17 w;
    public final o37 x;
    public final d.a y;
    public final md z;

    public final class DeserializedClassMemberScope extends DeserializedMemberScope {
        public final c g;
        public final x17 h;
        public final x17 i;
        public final DeserializedClassDescriptor j;

        public static final class a extends q17 {
            public final List a;

            public a(List list) {
                this.a = list;
            }

            @Override
            public void a(CallableMemberDescriptor callableMemberDescriptor) {
                y45.j(callableMemberDescriptor, "fakeOverride");
                OverridingUtil.K(callableMemberDescriptor, null);
                this.a.add(callableMemberDescriptor);
            }

            @Override
            public void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
                y45.j(callableMemberDescriptor, "fromSuper");
                y45.j(callableMemberDescriptor2, "fromCurrent");
                if (callableMemberDescriptor2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.a) {
                    ((kotlin.reflect.jvm.internal.impl.descriptors.impl.a) callableMemberDescriptor2).P0(kotlin.reflect.jvm.internal.impl.descriptors.d.a, callableMemberDescriptor);
                }
            }
        }

        public DeserializedClassMemberScope(DeserializedClassDescriptor deserializedClassDescriptor, c cVar) {
            y45.j(cVar, "kotlinTypeRefiner");
            this.j = deserializedClassDescriptor;
            i92 i92VarU0 = deserializedClassDescriptor.U0();
            List<ProtoBuf$Function> functionList = deserializedClassDescriptor.V0().getFunctionList();
            y45.i(functionList, "classProto.functionList");
            List<ProtoBuf$Property> propertyList = deserializedClassDescriptor.V0().getPropertyList();
            y45.i(propertyList, "classProto.propertyList");
            List<ProtoBuf$TypeAlias> typeAliasList = deserializedClassDescriptor.V0().getTypeAliasList();
            y45.i(typeAliasList, "classProto.typeAliasList");
            List<Integer> nestedClassNameList = deserializedClassDescriptor.V0().getNestedClassNameList();
            y45.i(nestedClassNameList, "classProto.nestedClassNameList");
            List<Integer> list = nestedClassNameList;
            cy6 cy6VarG = deserializedClassDescriptor.U0().g();
            final ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ey6.b(cy6VarG, ((Number) it.next()).intValue()));
            }
            super(i92VarU0, functionList, propertyList, typeAliasList, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final List<by6> invoke() {
                    return arrayList;
                }
            });
            this.g = cVar;
            this.h = p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Collection<xt1> invoke() {
                    return this.this$0.j(u82.o, MemberScope.a.a(), NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
                }
            });
            this.i = p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Collection<eh5> invoke() {
                    return this.this$0.g.g(this.this$0.B());
                }
            });
        }

        public final void A(by6 by6Var, Collection collection, List list) {
            p().c().m().a().v(by6Var, collection, new ArrayList(list), B(), new a(list));
        }

        public final DeserializedClassDescriptor B() {
            return this.j;
        }

        public void C(by6 by6Var, or5 or5Var) {
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            fmb.a(p().c().o(), or5Var, B(), by6Var);
        }

        @Override
        public Collection b(by6 by6Var, or5 or5Var) {
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            C(by6Var, or5Var);
            return super.b(by6Var, or5Var);
        }

        @Override
        public Collection c(by6 by6Var, or5 or5Var) {
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            C(by6Var, or5Var);
            return super.c(by6Var, or5Var);
        }

        @Override
        public px0 f(by6 by6Var, or5 or5Var) {
            qw0 qw0VarF;
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            C(by6Var, or5Var);
            EnumEntryClassDescriptors enumEntryClassDescriptors = B().r;
            return (enumEntryClassDescriptors == null || (qw0VarF = enumEntryClassDescriptors.f(by6Var)) == null) ? super.f(by6Var, or5Var) : qw0VarF;
        }

        @Override
        public Collection g(u82 u82Var, e74 e74Var) {
            y45.j(u82Var, "kindFilter");
            y45.j(e74Var, "nameFilter");
            return (Collection) this.h.invoke();
        }

        @Override
        public void i(Collection collection, e74 e74Var) {
            y45.j(collection, "result");
            y45.j(e74Var, "nameFilter");
            EnumEntryClassDescriptors enumEntryClassDescriptors = B().r;
            List listD = enumEntryClassDescriptors != null ? enumEntryClassDescriptors.d() : null;
            if (listD == null) {
                listD = y71.k();
            }
            collection.addAll(listD);
        }

        @Override
        public void k(by6 by6Var, List list) {
            y45.j(by6Var, "name");
            y45.j(list, "functions");
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Collection) this.i.invoke()).iterator();
            while (it.hasNext()) {
                arrayList.addAll(((eh5) it.next()).p().c(by6Var, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            list.addAll(p().c().c().b(by6Var, this.j));
            A(by6Var, arrayList, list);
        }

        @Override
        public void l(by6 by6Var, List list) {
            y45.j(by6Var, "name");
            y45.j(list, "descriptors");
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Collection) this.i.invoke()).iterator();
            while (it.hasNext()) {
                arrayList.addAll(((eh5) it.next()).p().b(by6Var, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            A(by6Var, arrayList, list);
        }

        @Override
        public xw0 m(by6 by6Var) {
            y45.j(by6Var, "name");
            xw0 xw0VarD = this.j.j.d(by6Var);
            y45.i(xw0VarD, "classId.createNestedClassId(name)");
            return xw0VarD;
        }

        @Override
        public Set s() {
            List listK = B().p.k();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = listK.iterator();
            while (it.hasNext()) {
                Set setE = ((eh5) it.next()).p().e();
                if (setE == null) {
                    return null;
                }
                d81.C(linkedHashSet, setE);
            }
            return linkedHashSet;
        }

        @Override
        public Set t() {
            List listK = B().p.k();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = listK.iterator();
            while (it.hasNext()) {
                d81.C(linkedHashSet, ((eh5) it.next()).p().a());
            }
            linkedHashSet.addAll(p().c().c().d(this.j));
            return linkedHashSet;
        }

        @Override
        public Set u() {
            List listK = B().p.k();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = listK.iterator();
            while (it.hasNext()) {
                d81.C(linkedHashSet, ((eh5) it.next()).p().d());
            }
            return linkedHashSet;
        }

        @Override
        public boolean x(g gVar) {
            y45.j(gVar, "function");
            return p().c().s().e(this.j, gVar);
        }
    }

    public final class DeserializedClassTypeConstructor extends p2 {
        public final x17 d;

        public DeserializedClassTypeConstructor() {
            super(DeserializedClassDescriptor.this.U0().h());
            this.d = DeserializedClassDescriptor.this.U0().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<hcb> invoke() {
                    return TypeParameterUtilsKt.d(deserializedClassDescriptor);
                }
            });
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public List getParameters() {
            return (List) this.d.invoke();
        }

        @Override
        public Collection j() {
            String strB;
            o54 o54VarB;
            List listO = ij8.o(DeserializedClassDescriptor.this.V0(), DeserializedClassDescriptor.this.U0().j());
            DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            ArrayList arrayList = new ArrayList(z71.v(listO, 10));
            Iterator it = listO.iterator();
            while (it.hasNext()) {
                arrayList.add(deserializedClassDescriptor.U0().i().q((ProtoBuf$Type) it.next()));
            }
            List listJ0 = i81.J0(arrayList, DeserializedClassDescriptor.this.U0().c().c().a(DeserializedClassDescriptor.this));
            ArrayList<NotFoundClasses.b> arrayList2 = new ArrayList();
            Iterator it2 = listJ0.iterator();
            while (it2.hasNext()) {
                px0 px0VarC = ((eh5) it2.next()).I0().c();
                NotFoundClasses.b bVar = px0VarC instanceof NotFoundClasses.b ? (NotFoundClasses.b) px0VarC : null;
                if (bVar != null) {
                    arrayList2.add(bVar);
                }
            }
            if (!arrayList2.isEmpty()) {
                ed3 ed3VarI = DeserializedClassDescriptor.this.U0().c().i();
                DeserializedClassDescriptor deserializedClassDescriptor2 = DeserializedClassDescriptor.this;
                ArrayList arrayList3 = new ArrayList(z71.v(arrayList2, 10));
                for (NotFoundClasses.b bVar2 : arrayList2) {
                    xw0 xw0VarK = DescriptorUtilsKt.k(bVar2);
                    if (xw0VarK == null || (o54VarB = xw0VarK.b()) == null || (strB = o54VarB.b()) == null) {
                        strB = bVar2.getName().b();
                    }
                    arrayList3.add(strB);
                }
                ed3VarI.b(deserializedClassDescriptor2, arrayList3);
            }
            return i81.b1(listJ0);
        }

        @Override
        public t6a p() {
            return t6a.a.a;
        }

        public String toString() {
            String string = DeserializedClassDescriptor.this.getName().toString();
            y45.i(string, "name.toString()");
            return string;
        }

        @Override
        public DeserializedClassDescriptor c() {
            return DeserializedClassDescriptor.this;
        }
    }

    public final class EnumEntryClassDescriptors {
        public final Map a;
        public final gn6 b;
        public final x17 c;

        public EnumEntryClassDescriptors() {
            List<ProtoBuf$EnumEntry> enumEntryList = DeserializedClassDescriptor.this.V0().getEnumEntryList();
            y45.i(enumEntryList, "classProto.enumEntryList");
            List<ProtoBuf$EnumEntry> list = enumEntryList;
            LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list, 10)), 16));
            for (Object obj : list) {
                linkedHashMap.put(ey6.b(DeserializedClassDescriptor.this.U0().g(), ((ProtoBuf$EnumEntry) obj).getName()), obj);
            }
            this.a = linkedHashMap;
            vx9 vx9VarH = DeserializedClassDescriptor.this.U0().h();
            final DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            this.b = vx9VarH.a(new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public final qw0 invoke(by6 by6Var) {
                    y45.j(by6Var, "name");
                    final ProtoBuf$EnumEntry protoBuf$EnumEntry = (ProtoBuf$EnumEntry) this.this$0.a.get(by6Var);
                    if (protoBuf$EnumEntry == null) {
                        return null;
                    }
                    final DeserializedClassDescriptor deserializedClassDescriptor2 = deserializedClassDescriptor;
                    return eb3.G0(deserializedClassDescriptor2.U0().h(), deserializedClassDescriptor2, by6Var, this.this$0.c, new l92(deserializedClassDescriptor2.U0().h(), new c74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final List<gd> invoke() {
                            return i81.b1(deserializedClassDescriptor2.U0().c().d().c(deserializedClassDescriptor2.Z0(), protoBuf$EnumEntry));
                        }
                    }), yt9.a);
                }
            });
            this.c = DeserializedClassDescriptor.this.U0().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Set<by6> invoke() {
                    return this.this$0.e();
                }
            });
        }

        public final Collection d() {
            Set setKeySet = this.a.keySet();
            ArrayList arrayList = new ArrayList();
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                qw0 qw0VarF = f((by6) it.next());
                if (qw0VarF != null) {
                    arrayList.add(qw0VarF);
                }
            }
            return arrayList;
        }

        public final Set e() {
            HashSet hashSet = new HashSet();
            Iterator it = DeserializedClassDescriptor.this.m().k().iterator();
            while (it.hasNext()) {
                for (xt1 xt1Var : kotlin.reflect.jvm.internal.impl.resolve.scopes.c.a.a(((eh5) it.next()).p(), null, null, 3, null)) {
                    if ((xt1Var instanceof g) || (xt1Var instanceof ti8)) {
                        hashSet.add(xt1Var.getName());
                    }
                }
            }
            List<ProtoBuf$Function> functionList = DeserializedClassDescriptor.this.V0().getFunctionList();
            y45.i(functionList, "classProto.functionList");
            DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            Iterator<T> it2 = functionList.iterator();
            while (it2.hasNext()) {
                hashSet.add(ey6.b(deserializedClassDescriptor.U0().g(), ((ProtoBuf$Function) it2.next()).getName()));
            }
            List<ProtoBuf$Property> propertyList = DeserializedClassDescriptor.this.V0().getPropertyList();
            y45.i(propertyList, "classProto.propertyList");
            DeserializedClassDescriptor deserializedClassDescriptor2 = DeserializedClassDescriptor.this;
            Iterator<T> it3 = propertyList.iterator();
            while (it3.hasNext()) {
                hashSet.add(ey6.b(deserializedClassDescriptor2.U0().g(), ((ProtoBuf$Property) it3.next()).getName()));
            }
            return ze9.m(hashSet, hashSet);
        }

        public final qw0 f(by6 by6Var) {
            y45.j(by6Var, "name");
            return (qw0) this.b.invoke(by6Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(i92 i92Var, ProtoBuf$Class protoBuf$Class, cy6 cy6Var, se0 se0Var, yt9 yt9Var) {
        super(i92Var.h(), ey6.a(cy6Var, protoBuf$Class.getFqName()).j());
        y45.j(i92Var, "outerContext");
        y45.j(protoBuf$Class, "classProto");
        y45.j(cy6Var, "nameResolver");
        y45.j(se0Var, "metadataVersion");
        y45.j(yt9Var, "sourceElement");
        this.g = protoBuf$Class;
        this.h = se0Var;
        this.i = yt9Var;
        this.j = ey6.a(cy6Var, protoBuf$Class.getFqName());
        gj8 gj8Var = gj8.a;
        this.k = gj8Var.b((ProtoBuf$Modality) ay3.e.d(protoBuf$Class.getFlags()));
        this.l = hj8.a(gj8Var, (ProtoBuf$Visibility) ay3.d.d(protoBuf$Class.getFlags()));
        ClassKind classKindA = gj8Var.a((ProtoBuf$Class.Kind) ay3.f.d(protoBuf$Class.getFlags()));
        this.m = classKindA;
        List<ProtoBuf$TypeParameter> typeParameterList = protoBuf$Class.getTypeParameterList();
        y45.i(typeParameterList, "classProto.typeParameterList");
        ProtoBuf$TypeTable typeTable = protoBuf$Class.getTypeTable();
        y45.i(typeTable, "classProto.typeTable");
        xcb xcbVar = new xcb(typeTable);
        qob.a aVar = qob.b;
        ProtoBuf$VersionRequirementTable versionRequirementTable = protoBuf$Class.getVersionRequirementTable();
        y45.i(versionRequirementTable, "classProto.versionRequirementTable");
        i92 i92VarA = i92Var.a(this, typeParameterList, cy6Var, xcbVar, aVar.a(versionRequirementTable), se0Var);
        this.n = i92VarA;
        ClassKind classKind = ClassKind.ENUM_CLASS;
        this.o = classKindA == classKind ? new StaticScopeForKotlinEnum(i92VarA.h(), this) : MemberScope.a.b;
        this.p = new DeserializedClassTypeConstructor();
        this.q = ScopesHolderForClass.e.a(this, i92VarA.h(), i92VarA.c().m().d(), new DeserializedClassDescriptor$memberScopeHolder$1(this));
        this.r = classKindA == classKind ? new EnumEntryClassDescriptors() : null;
        xt1 xt1VarE = i92Var.e();
        this.s = xt1VarE;
        this.t = i92VarA.h().b(new c74() {
            {
                super(0);
            }

            @Override
            public final b invoke() {
                return this.this$0.Q0();
            }
        });
        this.u = i92VarA.h().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Collection<b> invoke() {
                return this.this$0.P0();
            }
        });
        this.v = i92VarA.h().b(new c74() {
            {
                super(0);
            }

            @Override
            public final qw0 invoke() {
                return this.this$0.O0();
            }
        });
        this.w = i92VarA.h().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Collection<qw0> invoke() {
                return this.this$0.S0();
            }
        });
        this.x = i92VarA.h().b(new c74() {
            {
                super(0);
            }

            @Override
            public final inb invoke() {
                return this.this$0.T0();
            }
        });
        cy6 cy6VarG = i92VarA.g();
        xcb xcbVarJ = i92VarA.j();
        DeserializedClassDescriptor deserializedClassDescriptor = xt1VarE instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) xt1VarE : null;
        this.y = new d.a(protoBuf$Class, cy6VarG, xcbVarJ, yt9Var, deserializedClassDescriptor != null ? deserializedClassDescriptor.y : null);
        this.z = !ay3.c.d(protoBuf$Class.getFlags()).booleanValue() ? md.u1.b() : new l17(i92VarA.h(), new c74() {
            {
                super(0);
            }

            @Override
            public final List<gd> invoke() {
                return i81.b1(this.this$0.U0().c().d().b(this.this$0.Z0()));
            }
        });
    }

    @Override
    public boolean E0() {
        Boolean boolD = ay3.h.d(this.g.getFlags());
        y45.i(boolD, "IS_DATA.get(classProto.flags)");
        return boolD.booleanValue();
    }

    public final qw0 O0() {
        if (!this.g.hasCompanionObjectName()) {
            return null;
        }
        px0 px0VarF = W0().f(ey6.b(this.n.g(), this.g.getCompanionObjectName()), NoLookupLocation.FROM_DESERIALIZATION);
        if (px0VarF instanceof qw0) {
            return (qw0) px0VarF;
        }
        return null;
    }

    public final Collection P0() {
        return i81.J0(i81.J0(R0(), y71.o(w())), this.n.c().c().c(this));
    }

    public final b Q0() {
        Object next;
        if (this.m.isSingleton()) {
            nw0 nw0VarL = s82.l(this, yt9.a);
            nw0VarL.b1(q());
            return nw0VarL;
        }
        List<ProtoBuf$Constructor> constructorList = this.g.getConstructorList();
        y45.i(constructorList, "classProto.constructorList");
        Iterator<T> it = constructorList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (ay3.m.d(((ProtoBuf$Constructor) next).getFlags()).booleanValue());
        ProtoBuf$Constructor protoBuf$Constructor = (ProtoBuf$Constructor) next;
        if (protoBuf$Constructor != null) {
            return this.n.f().i(protoBuf$Constructor, true);
        }
        return null;
    }

    public final List R0() {
        List<ProtoBuf$Constructor> constructorList = this.g.getConstructorList();
        y45.i(constructorList, "classProto.constructorList");
        ArrayList<ProtoBuf$Constructor> arrayList = new ArrayList();
        for (Object obj : constructorList) {
            Boolean boolD = ay3.m.d(((ProtoBuf$Constructor) obj).getFlags());
            y45.i(boolD, "IS_SECONDARY.get(it.flags)");
            if (boolD.booleanValue()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        for (ProtoBuf$Constructor protoBuf$Constructor : arrayList) {
            MemberDeserializer memberDeserializerF = this.n.f();
            y45.i(protoBuf$Constructor, "it");
            arrayList2.add(memberDeserializerF.i(protoBuf$Constructor, false));
        }
        return arrayList2;
    }

    public final Collection S0() {
        if (this.k != Modality.SEALED) {
            return y71.k();
        }
        List<Integer> sealedSubclassFqNameList = this.g.getSealedSubclassFqNameList();
        y45.i(sealedSubclassFqNameList, "fqNames");
        if (sealedSubclassFqNameList.isEmpty()) {
            return CliSealedClassInheritorsProvider.a.a(this, false);
        }
        ArrayList arrayList = new ArrayList();
        for (Integer num : sealedSubclassFqNameList) {
            e92 e92VarC = this.n.c();
            cy6 cy6VarG = this.n.g();
            y45.i(num, "index");
            qw0 qw0VarB = e92VarC.b(ey6.a(cy6VarG, num.intValue()));
            if (qw0VarB != null) {
                arrayList.add(qw0VarB);
            }
        }
        return arrayList;
    }

    @Override
    public Collection T() {
        return (Collection) this.w.invoke();
    }

    public final inb T0() {
        if (!isInline() && !s()) {
            return null;
        }
        inb inbVarA = jnb.a(this.g, this.n.g(), this.n.j(), new DeserializedClassDescriptor$computeValueClassRepresentation$1(this.n.i()), new DeserializedClassDescriptor$computeValueClassRepresentation$2(this));
        if (inbVarA != null) {
            return inbVarA;
        }
        if (this.h.c(1, 5, 1)) {
            return null;
        }
        b bVarW = w();
        if (bVarW == null) {
            throw new IllegalStateException(("Inline class has no primary constructor: " + this).toString());
        }
        List listF = bVarW.f();
        y45.i(listF, "constructor.valueParameters");
        by6 name = ((h) i81.o0(listF)).getName();
        y45.i(name, "constructor.valueParameters.first().name");
        sm9 sm9VarA1 = a1(name);
        if (sm9VarA1 != null) {
            return new g05(name, sm9VarA1);
        }
        throw new IllegalStateException(("Value class has no underlying property: " + this).toString());
    }

    public final i92 U0() {
        return this.n;
    }

    public final ProtoBuf$Class V0() {
        return this.g;
    }

    public final DeserializedClassMemberScope W0() {
        return (DeserializedClassMemberScope) this.q.c(this.n.c().m().d());
    }

    public final se0 X0() {
        return this.h;
    }

    @Override
    public dn6 n0() {
        return this.o;
    }

    public final d.a Z0() {
        return this.y;
    }

    public final sm9 a1(by6 by6Var) {
        Iterator it = W0().b(by6Var, NoLookupLocation.FROM_DESERIALIZATION).iterator();
        boolean z = false;
        Object obj = null;
        while (true) {
            if (!it.hasNext()) {
                if (!z) {
                    break;
                }
                break;
            }
            Object next = it.next();
            if (((ti8) next).b0() == null) {
                if (!z) {
                    z = true;
                    obj = next;
                }
            }
            obj = null;
            break;
        }
        ti8 ti8Var = (ti8) obj;
        return (sm9) (ti8Var != null ? ti8Var.getType() : null);
    }

    @Override
    public xt1 b() {
        return this.s;
    }

    public final boolean b1(by6 by6Var) {
        y45.j(by6Var, "name");
        return W0().q().contains(by6Var);
    }

    @Override
    public inb c0() {
        return (inb) this.x.invoke();
    }

    @Override
    public MemberScope d0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return this.q.c(cVar);
    }

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public boolean g() {
        Boolean boolD = ay3.g.d(this.g.getFlags());
        y45.i(boolD, "IS_INNER.get(classProto.flags)");
        return boolD.booleanValue();
    }

    @Override
    public List g0() {
        List listB = ij8.b(this.g, this.n.j());
        ArrayList arrayList = new ArrayList(z71.v(listB, 10));
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(new so8(R(), new nh1(this, this.n.i().q((ProtoBuf$Type) it.next()), null, null), md.u1.b()));
        }
        return arrayList;
    }

    @Override
    public md getAnnotations() {
        return this.z;
    }

    @Override
    public ClassKind getKind() {
        return this.m;
    }

    @Override
    public yt9 getSource() {
        return this.i;
    }

    @Override
    public c92 getVisibility() {
        return this.l;
    }

    @Override
    public boolean h0() {
        return ay3.f.d(this.g.getFlags()) == ProtoBuf$Class.Kind.COMPANION_OBJECT;
    }

    @Override
    public boolean isExternal() {
        Boolean boolD = ay3.i.d(this.g.getFlags());
        y45.i(boolD, "IS_EXTERNAL_CLASS.get(classProto.flags)");
        return boolD.booleanValue();
    }

    @Override
    public boolean isInline() {
        Boolean boolD = ay3.k.d(this.g.getFlags());
        y45.i(boolD, "IS_VALUE_CLASS.get(classProto.flags)");
        return boolD.booleanValue() && this.h.e(1, 4, 1);
    }

    @Override
    public Modality j() {
        return this.k;
    }

    @Override
    public boolean j0() {
        Boolean boolD = ay3.l.d(this.g.getFlags());
        y45.i(boolD, "IS_FUN_INTERFACE.get(classProto.flags)");
        return boolD.booleanValue();
    }

    @Override
    public sbb m() {
        return this.p;
    }

    @Override
    public boolean m0() {
        Boolean boolD = ay3.j.d(this.g.getFlags());
        y45.i(boolD, "IS_EXPECT_CLASS.get(classProto.flags)");
        return boolD.booleanValue();
    }

    @Override
    public Collection n() {
        return (Collection) this.u.invoke();
    }

    @Override
    public qw0 o0() {
        return (qw0) this.v.invoke();
    }

    @Override
    public List r() {
        return this.n.i().j();
    }

    @Override
    public boolean s() {
        Boolean boolD = ay3.k.d(this.g.getFlags());
        y45.i(boolD, "IS_VALUE_CLASS.get(classProto.flags)");
        return boolD.booleanValue() && this.h.c(1, 4, 2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("deserialized ");
        sb.append(m0() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }

    @Override
    public b w() {
        return (b) this.t.invoke();
    }
}
