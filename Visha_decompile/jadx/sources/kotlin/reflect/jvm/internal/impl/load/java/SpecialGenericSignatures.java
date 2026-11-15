package kotlin.reflect.jvm.internal.impl.load.java;

import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.abb;
import defpackage.by6;
import defpackage.i81;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import defpackage.ye9;
import defpackage.z71;
import defpackage.ze9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public abstract class SpecialGenericSignatures {
    public static final a a = new a(null);
    public static final List b;
    public static final List c;
    public static final List d;
    public static final Map e;
    public static final Map f;
    public static final Set g;
    public static final Set h;
    public static final a.C0382a i;
    public static final Map j;
    public static final Map k;
    public static final List l;
    public static final Map m;

    public enum SpecialSignatureInfo {
        ONE_COLLECTION_PARAMETER("Ljava/util/Collection<+Ljava/lang/Object;>;", false),
        OBJECT_PARAMETER_NON_GENERIC(null, true),
        OBJECT_PARAMETER_GENERIC("Ljava/lang/Object;", true);

        private final boolean isObjectReplacedWithTypeParameter;
        private final String valueParametersSignature;

        SpecialSignatureInfo(String str, boolean z) {
            this.valueParametersSignature = str;
            this.isObjectReplacedWithTypeParameter = z;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TypeSafeBarrierDescription {
        private final Object defaultValue;
        public static final TypeSafeBarrierDescription NULL = new TypeSafeBarrierDescription("NULL", 0, null);
        public static final TypeSafeBarrierDescription INDEX = new TypeSafeBarrierDescription("INDEX", 1, -1);
        public static final TypeSafeBarrierDescription FALSE = new TypeSafeBarrierDescription("FALSE", 2, Boolean.FALSE);
        public static final TypeSafeBarrierDescription MAP_GET_OR_DEFAULT = new MAP_GET_OR_DEFAULT("MAP_GET_OR_DEFAULT", 3);
        private static final TypeSafeBarrierDescription[] $VALUES = $values();

        public static final class MAP_GET_OR_DEFAULT extends TypeSafeBarrierDescription {
            /* JADX WARN: Illegal instructions before constructor call */
            public MAP_GET_OR_DEFAULT(String str, int i) {
                DefaultConstructorMarker defaultConstructorMarker = null;
                super(str, i, defaultConstructorMarker, defaultConstructorMarker);
            }
        }

        private static final TypeSafeBarrierDescription[] $values() {
            return new TypeSafeBarrierDescription[]{NULL, INDEX, FALSE, MAP_GET_OR_DEFAULT};
        }

        public TypeSafeBarrierDescription(String str, int i, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, obj);
        }

        public static TypeSafeBarrierDescription valueOf(String str) {
            return (TypeSafeBarrierDescription) Enum.valueOf(TypeSafeBarrierDescription.class, str);
        }

        public static TypeSafeBarrierDescription[] values() {
            return (TypeSafeBarrierDescription[]) $VALUES.clone();
        }

        private TypeSafeBarrierDescription(String str, int i, Object obj) {
            super(str, i);
            this.defaultValue = obj;
        }
    }

    public static final class a {

        public static final class C0382a {
            public final by6 a;
            public final String b;

            public C0382a(by6 by6Var, String str) {
                y45.j(by6Var, "name");
                y45.j(str, "signature");
                this.a = by6Var;
                this.b = str;
            }

            public final by6 a() {
                return this.a;
            }

            public final String b() {
                return this.b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0382a)) {
                    return false;
                }
                C0382a c0382a = (C0382a) obj;
                return y45.e(this.a, c0382a.a) && y45.e(this.b, c0382a.b);
            }

            public int hashCode() {
                return (this.a.hashCode() * 31) + this.b.hashCode();
            }

            public String toString() {
                return "NameAndSignature(name=" + this.a + ", signature=" + this.b + ')';
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final by6 b(by6 by6Var) {
            y45.j(by6Var, "name");
            return (by6) f().get(by6Var);
        }

        public final List c() {
            return SpecialGenericSignatures.c;
        }

        public final Set d() {
            return SpecialGenericSignatures.g;
        }

        public final Set e() {
            return SpecialGenericSignatures.h;
        }

        public final Map f() {
            return SpecialGenericSignatures.m;
        }

        public final List g() {
            return SpecialGenericSignatures.l;
        }

        public final C0382a h() {
            return SpecialGenericSignatures.i;
        }

        public final Map i() {
            return SpecialGenericSignatures.f;
        }

        public final Map j() {
            return SpecialGenericSignatures.k;
        }

        public final boolean k(by6 by6Var) {
            y45.j(by6Var, "<this>");
            return g().contains(by6Var);
        }

        public final SpecialSignatureInfo l(String str) {
            y45.j(str, "builtinSignature");
            if (c().contains(str)) {
                return SpecialSignatureInfo.ONE_COLLECTION_PARAMETER;
            }
            return ((TypeSafeBarrierDescription) kotlin.collections.a.m(i(), str)) == TypeSafeBarrierDescription.NULL ? SpecialSignatureInfo.OBJECT_PARAMETER_GENERIC : SpecialSignatureInfo.OBJECT_PARAMETER_NON_GENERIC;
        }

        public final C0382a m(String str, String str2, String str3, String str4) {
            by6 by6VarG = by6.g(str2);
            y45.i(by6VarG, "identifier(name)");
            return new C0382a(by6VarG, SignatureBuildingComponents.a.k(str, str2 + '(' + str3 + ')' + str4));
        }

        public a() {
        }
    }

    static {
        Set<String> setJ = ye9.j("containsAll", "removeAll", "retainAll");
        ArrayList arrayList = new ArrayList(z71.v(setJ, 10));
        for (String str : setJ) {
            a aVar = a;
            String desc = JvmPrimitiveType.BOOLEAN.getDesc();
            y45.i(desc, "BOOLEAN.desc");
            arrayList.add(aVar.m("java/util/Collection", str, "Ljava/util/Collection;", desc));
        }
        b = arrayList;
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(z71.v(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((a.C0382a) it.next()).b());
        }
        c = arrayList3;
        List list = b;
        ArrayList arrayList4 = new ArrayList(z71.v(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((a.C0382a) it2.next()).a().b());
        }
        d = arrayList4;
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        a aVar2 = a;
        String strI = signatureBuildingComponents.i("Collection");
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.BOOLEAN;
        String desc2 = jvmPrimitiveType.getDesc();
        y45.i(desc2, "BOOLEAN.desc");
        a.C0382a c0382aM = aVar2.m(strI, "contains", "Ljava/lang/Object;", desc2);
        TypeSafeBarrierDescription typeSafeBarrierDescription = TypeSafeBarrierDescription.FALSE;
        Pair pairA = abb.a(c0382aM, typeSafeBarrierDescription);
        String strI2 = signatureBuildingComponents.i("Collection");
        String desc3 = jvmPrimitiveType.getDesc();
        y45.i(desc3, "BOOLEAN.desc");
        Pair pairA2 = abb.a(aVar2.m(strI2, "remove", "Ljava/lang/Object;", desc3), typeSafeBarrierDescription);
        String strI3 = signatureBuildingComponents.i("Map");
        String desc4 = jvmPrimitiveType.getDesc();
        y45.i(desc4, "BOOLEAN.desc");
        Pair pairA3 = abb.a(aVar2.m(strI3, "containsKey", "Ljava/lang/Object;", desc4), typeSafeBarrierDescription);
        String strI4 = signatureBuildingComponents.i("Map");
        String desc5 = jvmPrimitiveType.getDesc();
        y45.i(desc5, "BOOLEAN.desc");
        Pair pairA4 = abb.a(aVar2.m(strI4, "containsValue", "Ljava/lang/Object;", desc5), typeSafeBarrierDescription);
        String strI5 = signatureBuildingComponents.i("Map");
        String desc6 = jvmPrimitiveType.getDesc();
        y45.i(desc6, "BOOLEAN.desc");
        Pair pairA5 = abb.a(aVar2.m(strI5, "remove", "Ljava/lang/Object;Ljava/lang/Object;", desc6), typeSafeBarrierDescription);
        Pair pairA6 = abb.a(aVar2.m(signatureBuildingComponents.i("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), TypeSafeBarrierDescription.MAP_GET_OR_DEFAULT);
        a.C0382a c0382aM2 = aVar2.m(signatureBuildingComponents.i("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;");
        TypeSafeBarrierDescription typeSafeBarrierDescription2 = TypeSafeBarrierDescription.NULL;
        Pair pairA7 = abb.a(c0382aM2, typeSafeBarrierDescription2);
        Pair pairA8 = abb.a(aVar2.m(signatureBuildingComponents.i("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), typeSafeBarrierDescription2);
        String strI6 = signatureBuildingComponents.i("List");
        JvmPrimitiveType jvmPrimitiveType2 = JvmPrimitiveType.INT;
        String desc7 = jvmPrimitiveType2.getDesc();
        y45.i(desc7, "INT.desc");
        a.C0382a c0382aM3 = aVar2.m(strI6, "indexOf", "Ljava/lang/Object;", desc7);
        TypeSafeBarrierDescription typeSafeBarrierDescription3 = TypeSafeBarrierDescription.INDEX;
        Pair pairA9 = abb.a(c0382aM3, typeSafeBarrierDescription3);
        String strI7 = signatureBuildingComponents.i("List");
        String desc8 = jvmPrimitiveType2.getDesc();
        y45.i(desc8, "INT.desc");
        Map mapP = kotlin.collections.a.p(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, abb.a(aVar2.m(strI7, "lastIndexOf", "Ljava/lang/Object;", desc8), typeSafeBarrierDescription3));
        e = mapP;
        LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(mapP.size()));
        for (Map.Entry entry : mapP.entrySet()) {
            linkedHashMap.put(((a.C0382a) entry.getKey()).b(), entry.getValue());
        }
        f = linkedHashMap;
        Set setM = ze9.m(e.keySet(), b);
        ArrayList arrayList5 = new ArrayList(z71.v(setM, 10));
        Iterator it3 = setM.iterator();
        while (it3.hasNext()) {
            arrayList5.add(((a.C0382a) it3.next()).a());
        }
        g = i81.g1(arrayList5);
        ArrayList arrayList6 = new ArrayList(z71.v(setM, 10));
        Iterator it4 = setM.iterator();
        while (it4.hasNext()) {
            arrayList6.add(((a.C0382a) it4.next()).b());
        }
        h = i81.g1(arrayList6);
        a aVar3 = a;
        JvmPrimitiveType jvmPrimitiveType3 = JvmPrimitiveType.INT;
        String desc9 = jvmPrimitiveType3.getDesc();
        y45.i(desc9, "INT.desc");
        a.C0382a c0382aM4 = aVar3.m("java/util/List", "removeAt", desc9, "Ljava/lang/Object;");
        i = c0382aM4;
        SignatureBuildingComponents signatureBuildingComponents2 = SignatureBuildingComponents.a;
        String strH = signatureBuildingComponents2.h(DataTypes.OBJ_NUMBER);
        String desc10 = JvmPrimitiveType.BYTE.getDesc();
        y45.i(desc10, "BYTE.desc");
        Pair pairA10 = abb.a(aVar3.m(strH, "toByte", "", desc10), by6.g("byteValue"));
        String strH2 = signatureBuildingComponents2.h(DataTypes.OBJ_NUMBER);
        String desc11 = JvmPrimitiveType.SHORT.getDesc();
        y45.i(desc11, "SHORT.desc");
        Pair pairA11 = abb.a(aVar3.m(strH2, "toShort", "", desc11), by6.g("shortValue"));
        String strH3 = signatureBuildingComponents2.h(DataTypes.OBJ_NUMBER);
        String desc12 = jvmPrimitiveType3.getDesc();
        y45.i(desc12, "INT.desc");
        Pair pairA12 = abb.a(aVar3.m(strH3, "toInt", "", desc12), by6.g("intValue"));
        String strH4 = signatureBuildingComponents2.h(DataTypes.OBJ_NUMBER);
        String desc13 = JvmPrimitiveType.LONG.getDesc();
        y45.i(desc13, "LONG.desc");
        Pair pairA13 = abb.a(aVar3.m(strH4, "toLong", "", desc13), by6.g("longValue"));
        String strH5 = signatureBuildingComponents2.h(DataTypes.OBJ_NUMBER);
        String desc14 = JvmPrimitiveType.FLOAT.getDesc();
        y45.i(desc14, "FLOAT.desc");
        Pair pairA14 = abb.a(aVar3.m(strH5, "toFloat", "", desc14), by6.g("floatValue"));
        String strH6 = signatureBuildingComponents2.h(DataTypes.OBJ_NUMBER);
        String desc15 = JvmPrimitiveType.DOUBLE.getDesc();
        y45.i(desc15, "DOUBLE.desc");
        Pair pairA15 = abb.a(aVar3.m(strH6, "toDouble", "", desc15), by6.g("doubleValue"));
        Pair pairA16 = abb.a(c0382aM4, by6.g("remove"));
        String strH7 = signatureBuildingComponents2.h("CharSequence");
        String desc16 = jvmPrimitiveType3.getDesc();
        y45.i(desc16, "INT.desc");
        String desc17 = JvmPrimitiveType.CHAR.getDesc();
        y45.i(desc17, "CHAR.desc");
        Map mapP2 = kotlin.collections.a.p(pairA10, pairA11, pairA12, pairA13, pairA14, pairA15, pairA16, abb.a(aVar3.m(strH7, "get", desc16, desc17), by6.g("charAt")));
        j = mapP2;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(ky5.g(mapP2.size()));
        for (Map.Entry entry2 : mapP2.entrySet()) {
            linkedHashMap2.put(((a.C0382a) entry2.getKey()).b(), entry2.getValue());
        }
        k = linkedHashMap2;
        Set setKeySet = j.keySet();
        ArrayList arrayList7 = new ArrayList(z71.v(setKeySet, 10));
        Iterator it5 = setKeySet.iterator();
        while (it5.hasNext()) {
            arrayList7.add(((a.C0382a) it5.next()).a());
        }
        l = arrayList7;
        Set<Map.Entry> setEntrySet = j.entrySet();
        ArrayList<Pair> arrayList8 = new ArrayList(z71.v(setEntrySet, 10));
        for (Map.Entry entry3 : setEntrySet) {
            arrayList8.add(new Pair(((a.C0382a) entry3.getKey()).a(), entry3.getValue()));
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(wn8.d(ky5.g(z71.v(arrayList8, 10)), 16));
        for (Pair pair : arrayList8) {
            linkedHashMap3.put((by6) pair.getSecond(), (by6) pair.getFirst());
        }
        m = linkedHashMap3;
    }
}
