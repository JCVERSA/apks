package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.c81;
import defpackage.cx7;
import defpackage.d81;
import defpackage.dn6;
import defpackage.e74;
import defpackage.ebb;
import defpackage.ey6;
import defpackage.fn6;
import defpackage.gn6;
import defpackage.i81;
import defpackage.i92;
import defpackage.ky5;
import defpackage.o37;
import defpackage.or5;
import defpackage.px0;
import defpackage.qw0;
import defpackage.ti8;
import defpackage.u82;
import defpackage.ux9;
import defpackage.v71;
import defpackage.vx9;
import defpackage.wn8;
import defpackage.x17;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zc9;
import defpackage.ze9;
import defpackage.zfb;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.resolve.MemberComparator;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.sequences.SequencesKt___SequencesKt;

public abstract class DeserializedMemberScope extends dn6 {
    public static final af5[] f = {xq8.j(new PropertyReference1Impl(xq8.b(DeserializedMemberScope.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), xq8.j(new PropertyReference1Impl(xq8.b(DeserializedMemberScope.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};
    public final i92 b;
    public final a c;
    public final x17 d;
    public final o37 e;

    public final class NoReorderImplementation implements a {
        public static final af5[] o = {xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "declaredFunctions", "getDeclaredFunctions()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "declaredProperties", "getDeclaredProperties()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "allTypeAliases", "getAllTypeAliases()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "allFunctions", "getAllFunctions()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "allProperties", "getAllProperties()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "typeAliasesByName", "getTypeAliasesByName()Ljava/util/Map;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "functionsByName", "getFunctionsByName()Ljava/util/Map;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "propertiesByName", "getPropertiesByName()Ljava/util/Map;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), xq8.j(new PropertyReference1Impl(xq8.b(NoReorderImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
        public final List a;
        public final List b;
        public final List c;
        public final x17 d;
        public final x17 e;
        public final x17 f;
        public final x17 g;
        public final x17 h;
        public final x17 i;
        public final x17 j;
        public final x17 k;
        public final x17 l;
        public final x17 m;
        public final DeserializedMemberScope n;

        public NoReorderImplementation(final DeserializedMemberScope deserializedMemberScope, List list, List list2, List list3) {
            y45.j(list, "functionList");
            y45.j(list2, "propertyList");
            y45.j(list3, "typeAliasList");
            this.n = deserializedMemberScope;
            this.a = list;
            this.b = list2;
            this.c = deserializedMemberScope.p().c().g().f() ? list3 : y71.k();
            this.d = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<g> invoke() {
                    return this.this$0.v();
                }
            });
            this.e = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<ti8> invoke() {
                    return this.this$0.y();
                }
            });
            this.f = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<ebb> invoke() {
                    return this.this$0.z();
                }
            });
            this.g = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<g> invoke() {
                    return i81.J0(this.this$0.D(), this.this$0.t());
                }
            });
            this.h = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<ti8> invoke() {
                    return i81.J0(this.this$0.E(), this.this$0.u());
                }
            });
            this.i = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Map<by6, ebb> invoke() {
                    List listC = this.this$0.C();
                    LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(listC, 10)), 16));
                    for (Object obj : listC) {
                        by6 name = ((ebb) obj).getName();
                        y45.i(name, "it.name");
                        linkedHashMap.put(name, obj);
                    }
                    return linkedHashMap;
                }
            });
            this.j = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Map<by6, List<g>> invoke() {
                    List listA = this.this$0.A();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Object obj : listA) {
                        by6 name = ((g) obj).getName();
                        y45.i(name, "it.name");
                        Object arrayList = linkedHashMap.get(name);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            linkedHashMap.put(name, arrayList);
                        }
                        ((List) arrayList).add(obj);
                    }
                    return linkedHashMap;
                }
            });
            this.k = deserializedMemberScope.p().h().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Map<by6, List<ti8>> invoke() {
                    List listB = this.this$0.B();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Object obj : listB) {
                        by6 name = ((ti8) obj).getName();
                        y45.i(name, "it.name");
                        Object arrayList = linkedHashMap.get(name);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            linkedHashMap.put(name, arrayList);
                        }
                        ((List) arrayList).add(obj);
                    }
                    return linkedHashMap;
                }
            });
            this.l = deserializedMemberScope.p().h().c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Set<by6> invoke() {
                    DeserializedMemberScope.NoReorderImplementation noReorderImplementation = this.this$0;
                    List list4 = noReorderImplementation.a;
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    DeserializedMemberScope deserializedMemberScope2 = noReorderImplementation.n;
                    Iterator it = list4.iterator();
                    while (it.hasNext()) {
                        linkedHashSet.add(ey6.b(deserializedMemberScope2.p().g(), ((ProtoBuf$Function) ((kotlin.reflect.jvm.internal.impl.protobuf.g) it.next())).getName()));
                    }
                    return ze9.m(linkedHashSet, deserializedMemberScope.t());
                }
            });
            this.m = deserializedMemberScope.p().h().c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Set<by6> invoke() {
                    DeserializedMemberScope.NoReorderImplementation noReorderImplementation = this.this$0;
                    List list4 = noReorderImplementation.b;
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    DeserializedMemberScope deserializedMemberScope2 = noReorderImplementation.n;
                    Iterator it = list4.iterator();
                    while (it.hasNext()) {
                        linkedHashSet.add(ey6.b(deserializedMemberScope2.p().g(), ((ProtoBuf$Property) ((kotlin.reflect.jvm.internal.impl.protobuf.g) it.next())).getName()));
                    }
                    return ze9.m(linkedHashSet, deserializedMemberScope.u());
                }
            });
        }

        public final List A() {
            return (List) ux9.a(this.g, this, o[3]);
        }

        public final List B() {
            return (List) ux9.a(this.h, this, o[4]);
        }

        public final List C() {
            return (List) ux9.a(this.f, this, o[2]);
        }

        public final List D() {
            return (List) ux9.a(this.d, this, o[0]);
        }

        public final List E() {
            return (List) ux9.a(this.e, this, o[1]);
        }

        public final Map F() {
            return (Map) ux9.a(this.j, this, o[6]);
        }

        public final Map G() {
            return (Map) ux9.a(this.k, this, o[7]);
        }

        public final Map H() {
            return (Map) ux9.a(this.i, this, o[5]);
        }

        @Override
        public Set a() {
            return (Set) ux9.a(this.l, this, o[8]);
        }

        @Override
        public Collection b(by6 by6Var, or5 or5Var) {
            Collection collection;
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            return (d().contains(by6Var) && (collection = (Collection) G().get(by6Var)) != null) ? collection : y71.k();
        }

        @Override
        public Collection c(by6 by6Var, or5 or5Var) {
            Collection collection;
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            return (a().contains(by6Var) && (collection = (Collection) F().get(by6Var)) != null) ? collection : y71.k();
        }

        @Override
        public Set d() {
            return (Set) ux9.a(this.m, this, o[9]);
        }

        @Override
        public void e(Collection collection, u82 u82Var, e74 e74Var, or5 or5Var) {
            y45.j(collection, "result");
            y45.j(u82Var, "kindFilter");
            y45.j(e74Var, "nameFilter");
            y45.j(or5Var, "location");
            if (u82Var.a(u82.c.i())) {
                for (Object obj : B()) {
                    by6 name = ((ti8) obj).getName();
                    y45.i(name, "it.name");
                    if (((Boolean) e74Var.invoke(name)).booleanValue()) {
                        collection.add(obj);
                    }
                }
            }
            if (u82Var.a(u82.c.d())) {
                for (Object obj2 : A()) {
                    by6 name2 = ((g) obj2).getName();
                    y45.i(name2, "it.name");
                    if (((Boolean) e74Var.invoke(name2)).booleanValue()) {
                        collection.add(obj2);
                    }
                }
            }
        }

        @Override
        public ebb f(by6 by6Var) {
            y45.j(by6Var, "name");
            return (ebb) H().get(by6Var);
        }

        @Override
        public Set g() {
            List list = this.c;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            DeserializedMemberScope deserializedMemberScope = this.n;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(ey6.b(deserializedMemberScope.p().g(), ((ProtoBuf$TypeAlias) ((kotlin.reflect.jvm.internal.impl.protobuf.g) it.next())).getName()));
            }
            return linkedHashSet;
        }

        public final List t() {
            Set setT = this.n.t();
            ArrayList arrayList = new ArrayList();
            Iterator it = setT.iterator();
            while (it.hasNext()) {
                d81.C(arrayList, w((by6) it.next()));
            }
            return arrayList;
        }

        public final List u() {
            Set setU = this.n.u();
            ArrayList arrayList = new ArrayList();
            Iterator it = setU.iterator();
            while (it.hasNext()) {
                d81.C(arrayList, x((by6) it.next()));
            }
            return arrayList;
        }

        public final List v() {
            List list = this.a;
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVarJ = deserializedMemberScope.p().f().j((ProtoBuf$Function) ((kotlin.reflect.jvm.internal.impl.protobuf.g) it.next()));
                if (!deserializedMemberScope.x(gVarJ)) {
                    gVarJ = null;
                }
                if (gVarJ != null) {
                    arrayList.add(gVarJ);
                }
            }
            return arrayList;
        }

        public final List w(by6 by6Var) {
            List listD = D();
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            for (Object obj : listD) {
                if (y45.e(((xt1) obj).getName(), by6Var)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.k(by6Var, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        public final List x(by6 by6Var) {
            List listE = E();
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            for (Object obj : listE) {
                if (y45.e(((xt1) obj).getName(), by6Var)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.l(by6Var, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        public final List y() {
            List list = this.b;
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ti8 ti8VarL = deserializedMemberScope.p().f().l((ProtoBuf$Property) ((kotlin.reflect.jvm.internal.impl.protobuf.g) it.next()));
                if (ti8VarL != null) {
                    arrayList.add(ti8VarL);
                }
            }
            return arrayList;
        }

        public final List z() {
            List list = this.c;
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ebb ebbVarM = deserializedMemberScope.p().f().m((ProtoBuf$TypeAlias) ((kotlin.reflect.jvm.internal.impl.protobuf.g) it.next()));
                if (ebbVarM != null) {
                    arrayList.add(ebbVarM);
                }
            }
            return arrayList;
        }
    }

    public final class OptimizedImplementation implements a {
        public static final af5[] j = {xq8.j(new PropertyReference1Impl(xq8.b(OptimizedImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), xq8.j(new PropertyReference1Impl(xq8.b(OptimizedImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
        public final Map a;
        public final Map b;
        public final Map c;
        public final fn6 d;
        public final fn6 e;
        public final gn6 f;
        public final x17 g;
        public final x17 h;
        public final DeserializedMemberScope i;

        public OptimizedImplementation(DeserializedMemberScope deserializedMemberScope, List list, List list2, List list3) throws IOException {
            Map mapL;
            y45.j(list, "functionList");
            y45.j(list2, "propertyList");
            y45.j(list3, "typeAliasList");
            this.i = deserializedMemberScope;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                by6 by6VarB = ey6.b(deserializedMemberScope.p().g(), ((ProtoBuf$Function) ((kotlin.reflect.jvm.internal.impl.protobuf.g) obj)).getName());
                Object arrayList = linkedHashMap.get(by6VarB);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(by6VarB, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            this.a = p(linkedHashMap);
            DeserializedMemberScope deserializedMemberScope2 = this.i;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj2 : list2) {
                by6 by6VarB2 = ey6.b(deserializedMemberScope2.p().g(), ((ProtoBuf$Property) ((kotlin.reflect.jvm.internal.impl.protobuf.g) obj2)).getName());
                Object arrayList2 = linkedHashMap2.get(by6VarB2);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap2.put(by6VarB2, arrayList2);
                }
                ((List) arrayList2).add(obj2);
            }
            this.b = p(linkedHashMap2);
            if (this.i.p().c().g().f()) {
                DeserializedMemberScope deserializedMemberScope3 = this.i;
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (Object obj3 : list3) {
                    by6 by6VarB3 = ey6.b(deserializedMemberScope3.p().g(), ((ProtoBuf$TypeAlias) ((kotlin.reflect.jvm.internal.impl.protobuf.g) obj3)).getName());
                    Object arrayList3 = linkedHashMap3.get(by6VarB3);
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                        linkedHashMap3.put(by6VarB3, arrayList3);
                    }
                    ((List) arrayList3).add(obj3);
                }
                mapL = p(linkedHashMap3);
            } else {
                mapL = kotlin.collections.a.l();
            }
            this.c = mapL;
            this.d = this.i.p().h().i(new e74() {
                {
                    super(1);
                }

                @Override
                public final Collection<g> invoke(by6 by6Var) {
                    y45.j(by6Var, "it");
                    return this.this$0.m(by6Var);
                }
            });
            this.e = this.i.p().h().i(new e74() {
                {
                    super(1);
                }

                @Override
                public final Collection<ti8> invoke(by6 by6Var) {
                    y45.j(by6Var, "it");
                    return this.this$0.n(by6Var);
                }
            });
            this.f = this.i.p().h().a(new e74() {
                {
                    super(1);
                }

                @Override
                public final ebb invoke(by6 by6Var) {
                    y45.j(by6Var, "it");
                    return this.this$0.o(by6Var);
                }
            });
            vx9 vx9VarH = this.i.p().h();
            final DeserializedMemberScope deserializedMemberScope4 = this.i;
            this.g = vx9VarH.c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Set<by6> invoke() {
                    return ze9.m(this.this$0.a.keySet(), deserializedMemberScope4.t());
                }
            });
            vx9 vx9VarH2 = this.i.p().h();
            final DeserializedMemberScope deserializedMemberScope5 = this.i;
            this.h = vx9VarH2.c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Set<by6> invoke() {
                    return ze9.m(this.this$0.b.keySet(), deserializedMemberScope5.u());
                }
            });
        }

        @Override
        public Set a() {
            return (Set) ux9.a(this.g, this, j[0]);
        }

        @Override
        public Collection b(by6 by6Var, or5 or5Var) {
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            return !d().contains(by6Var) ? y71.k() : (Collection) this.e.invoke(by6Var);
        }

        @Override
        public Collection c(by6 by6Var, or5 or5Var) {
            y45.j(by6Var, "name");
            y45.j(or5Var, "location");
            return !a().contains(by6Var) ? y71.k() : (Collection) this.d.invoke(by6Var);
        }

        @Override
        public Set d() {
            return (Set) ux9.a(this.h, this, j[1]);
        }

        @Override
        public void e(Collection collection, u82 u82Var, e74 e74Var, or5 or5Var) {
            y45.j(collection, "result");
            y45.j(u82Var, "kindFilter");
            y45.j(e74Var, "nameFilter");
            y45.j(or5Var, "location");
            if (u82Var.a(u82.c.i())) {
                Set<by6> setD = d();
                ArrayList arrayList = new ArrayList();
                for (by6 by6Var : setD) {
                    if (((Boolean) e74Var.invoke(by6Var)).booleanValue()) {
                        arrayList.addAll(b(by6Var, or5Var));
                    }
                }
                MemberComparator.NameAndTypeMemberComparator nameAndTypeMemberComparator = MemberComparator.NameAndTypeMemberComparator.INSTANCE;
                y45.i(nameAndTypeMemberComparator, "INSTANCE");
                c81.B(arrayList, nameAndTypeMemberComparator);
                collection.addAll(arrayList);
            }
            if (u82Var.a(u82.c.d())) {
                Set<by6> setA = a();
                ArrayList arrayList2 = new ArrayList();
                for (by6 by6Var2 : setA) {
                    if (((Boolean) e74Var.invoke(by6Var2)).booleanValue()) {
                        arrayList2.addAll(c(by6Var2, or5Var));
                    }
                }
                MemberComparator.NameAndTypeMemberComparator nameAndTypeMemberComparator2 = MemberComparator.NameAndTypeMemberComparator.INSTANCE;
                y45.i(nameAndTypeMemberComparator2, "INSTANCE");
                c81.B(arrayList2, nameAndTypeMemberComparator2);
                collection.addAll(arrayList2);
            }
        }

        @Override
        public ebb f(by6 by6Var) {
            y45.j(by6Var, "name");
            return (ebb) this.f.invoke(by6Var);
        }

        @Override
        public Set g() {
            return this.c.keySet();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x002c  */
        public final Collection m(by6 by6Var) {
            List<ProtoBuf$Function> listK;
            Map map = this.a;
            cx7 cx7Var = ProtoBuf$Function.PARSER;
            y45.i(cx7Var, "PARSER");
            DeserializedMemberScope deserializedMemberScope = this.i;
            byte[] bArr = (byte[]) map.get(by6Var);
            if (bArr != null) {
                List listC0 = SequencesKt___SequencesKt.c0(zc9.n(new DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(cx7Var, new ByteArrayInputStream(bArr), this.i)));
                if (listC0 != null) {
                    listK = listC0;
                } else {
                    listK = y71.k();
                }
            } else {
                listK = y71.k();
            }
            ArrayList arrayList = new ArrayList(listK.size());
            for (ProtoBuf$Function protoBuf$Function : listK) {
                MemberDeserializer memberDeserializerF = deserializedMemberScope.p().f();
                y45.i(protoBuf$Function, "it");
                g gVarJ = memberDeserializerF.j(protoBuf$Function);
                if (!deserializedMemberScope.x(gVarJ)) {
                    gVarJ = null;
                }
                if (gVarJ != null) {
                    arrayList.add(gVarJ);
                }
            }
            deserializedMemberScope.k(by6Var, arrayList);
            return v71.c(arrayList);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x002c  */
        public final Collection n(by6 by6Var) {
            List<ProtoBuf$Property> listK;
            Map map = this.b;
            cx7 cx7Var = ProtoBuf$Property.PARSER;
            y45.i(cx7Var, "PARSER");
            DeserializedMemberScope deserializedMemberScope = this.i;
            byte[] bArr = (byte[]) map.get(by6Var);
            if (bArr != null) {
                List listC0 = SequencesKt___SequencesKt.c0(zc9.n(new DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(cx7Var, new ByteArrayInputStream(bArr), this.i)));
                if (listC0 != null) {
                    listK = listC0;
                } else {
                    listK = y71.k();
                }
            } else {
                listK = y71.k();
            }
            ArrayList arrayList = new ArrayList(listK.size());
            for (ProtoBuf$Property protoBuf$Property : listK) {
                MemberDeserializer memberDeserializerF = deserializedMemberScope.p().f();
                y45.i(protoBuf$Property, "it");
                ti8 ti8VarL = memberDeserializerF.l(protoBuf$Property);
                if (ti8VarL != null) {
                    arrayList.add(ti8VarL);
                }
            }
            deserializedMemberScope.l(by6Var, arrayList);
            return v71.c(arrayList);
        }

        public final ebb o(by6 by6Var) {
            ProtoBuf$TypeAlias delimitedFrom;
            byte[] bArr = (byte[]) this.c.get(by6Var);
            if (bArr == null || (delimitedFrom = ProtoBuf$TypeAlias.parseDelimitedFrom(new ByteArrayInputStream(bArr), this.i.p().c().j())) == null) {
                return null;
            }
            return this.i.p().f().m(delimitedFrom);
        }

        public final Map p(Map map) throws IOException {
            LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    ((kotlin.reflect.jvm.internal.impl.protobuf.a) it.next()).writeDelimitedTo(byteArrayOutputStream);
                    arrayList.add(zfb.a);
                }
                linkedHashMap.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap;
        }
    }

    public interface a {
        Set a();

        Collection b(by6 by6Var, or5 or5Var);

        Collection c(by6 by6Var, or5 or5Var);

        Set d();

        void e(Collection collection, u82 u82Var, e74 e74Var, or5 or5Var);

        ebb f(by6 by6Var);

        Set g();
    }

    public DeserializedMemberScope(i92 i92Var, List list, List list2, List list3, final c74 c74Var) {
        y45.j(i92Var, "c");
        y45.j(list, "functionList");
        y45.j(list2, "propertyList");
        y45.j(list3, "typeAliasList");
        y45.j(c74Var, "classNames");
        this.b = i92Var;
        this.c = n(list, list2, list3);
        this.d = i92Var.h().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Set<by6> invoke() {
                return i81.g1((Iterable) c74Var.invoke());
            }
        });
        this.e = i92Var.h().b(new c74() {
            {
                super(0);
            }

            @Override
            public final Set<by6> invoke() {
                Set setS = this.this$0.s();
                if (setS == null) {
                    return null;
                }
                return ze9.m(ze9.m(this.this$0.q(), this.this$0.c.g()), setS);
            }
        });
    }

    @Override
    public Set a() {
        return this.c.a();
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return this.c.b(by6Var, or5Var);
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return this.c.c(by6Var, or5Var);
    }

    @Override
    public Set d() {
        return this.c.d();
    }

    @Override
    public Set e() {
        return r();
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        if (w(by6Var)) {
            return o(by6Var);
        }
        if (this.c.g().contains(by6Var)) {
            return v(by6Var);
        }
        return null;
    }

    public abstract void i(Collection collection, e74 e74Var);

    public final Collection j(u82 u82Var, e74 e74Var, or5 or5Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        y45.j(or5Var, "location");
        ArrayList arrayList = new ArrayList(0);
        u82.a aVar = u82.c;
        if (u82Var.a(aVar.g())) {
            i(arrayList, e74Var);
        }
        this.c.e(arrayList, u82Var, e74Var, or5Var);
        if (u82Var.a(aVar.c())) {
            for (by6 by6Var : q()) {
                if (((Boolean) e74Var.invoke(by6Var)).booleanValue()) {
                    v71.a(arrayList, o(by6Var));
                }
            }
        }
        if (u82Var.a(u82.c.h())) {
            for (by6 by6Var2 : this.c.g()) {
                if (((Boolean) e74Var.invoke(by6Var2)).booleanValue()) {
                    v71.a(arrayList, this.c.f(by6Var2));
                }
            }
        }
        return v71.c(arrayList);
    }

    public void k(by6 by6Var, List list) {
        y45.j(by6Var, "name");
        y45.j(list, "functions");
    }

    public void l(by6 by6Var, List list) {
        y45.j(by6Var, "name");
        y45.j(list, "descriptors");
    }

    public abstract xw0 m(by6 by6Var);

    public final a n(List list, List list2, List list3) {
        return this.b.c().g().d() ? new NoReorderImplementation(this, list, list2, list3) : new OptimizedImplementation(this, list, list2, list3);
    }

    public final qw0 o(by6 by6Var) {
        return this.b.c().b(m(by6Var));
    }

    public final i92 p() {
        return this.b;
    }

    public final Set q() {
        return (Set) ux9.a(this.d, this, f[0]);
    }

    public final Set r() {
        return (Set) ux9.b(this.e, this, f[1]);
    }

    public abstract Set s();

    public abstract Set t();

    public abstract Set u();

    public final ebb v(by6 by6Var) {
        return this.c.f(by6Var);
    }

    public boolean w(by6 by6Var) {
        y45.j(by6Var, "name");
        return q().contains(by6Var);
    }

    public boolean x(g gVar) {
        y45.j(gVar, "function");
        return true;
    }
}
