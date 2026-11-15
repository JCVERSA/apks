package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;

public abstract class jnb {
    public static final inb a(ProtoBuf$Class protoBuf$Class, cy6 cy6Var, xcb xcbVar, e74 e74Var, e74 e74Var2) {
        tm9 tm9Var;
        List<ProtoBuf$Type> multiFieldValueClassUnderlyingTypeList;
        y45.j(protoBuf$Class, "<this>");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(e74Var, "typeDeserializer");
        y45.j(e74Var2, "typeOfPublicProperty");
        if (protoBuf$Class.getMultiFieldValueClassUnderlyingNameCount() <= 0) {
            if (!protoBuf$Class.hasInlineClassUnderlyingPropertyName()) {
                return null;
            }
            by6 by6VarB = ey6.b(cy6Var, protoBuf$Class.getInlineClassUnderlyingPropertyName());
            ProtoBuf$Type protoBuf$TypeI = ij8.i(protoBuf$Class, xcbVar);
            if ((protoBuf$TypeI != null && (tm9Var = (tm9) e74Var.invoke(protoBuf$TypeI)) != null) || (tm9Var = (tm9) e74Var2.invoke(by6VarB)) != null) {
                return new g05(by6VarB, tm9Var);
            }
            throw new IllegalStateException(("cannot determine underlying type for value class " + ey6.b(cy6Var, protoBuf$Class.getFqName()) + " with property " + by6VarB).toString());
        }
        List<Integer> multiFieldValueClassUnderlyingNameList = protoBuf$Class.getMultiFieldValueClassUnderlyingNameList();
        y45.i(multiFieldValueClassUnderlyingNameList, "multiFieldValueClassUnderlyingNameList");
        List<Integer> list = multiFieldValueClassUnderlyingNameList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (Integer num : list) {
            y45.i(num, "it");
            arrayList.add(ey6.b(cy6Var, num.intValue()));
        }
        Pair pairA = abb.a(Integer.valueOf(protoBuf$Class.getMultiFieldValueClassUnderlyingTypeIdCount()), Integer.valueOf(protoBuf$Class.getMultiFieldValueClassUnderlyingTypeCount()));
        if (y45.e(pairA, abb.a(Integer.valueOf(arrayList.size()), 0))) {
            List<Integer> multiFieldValueClassUnderlyingTypeIdList = protoBuf$Class.getMultiFieldValueClassUnderlyingTypeIdList();
            y45.i(multiFieldValueClassUnderlyingTypeIdList, "multiFieldValueClassUnderlyingTypeIdList");
            List<Integer> list2 = multiFieldValueClassUnderlyingTypeIdList;
            multiFieldValueClassUnderlyingTypeList = new ArrayList<>(z71.v(list2, 10));
            for (Integer num2 : list2) {
                y45.i(num2, "it");
                multiFieldValueClassUnderlyingTypeList.add(xcbVar.a(num2.intValue()));
            }
        } else {
            if (!y45.e(pairA, abb.a(0, Integer.valueOf(arrayList.size())))) {
                throw new IllegalStateException(("class " + ey6.b(cy6Var, protoBuf$Class.getFqName()) + " has illegal multi-field value class representation").toString());
            }
            multiFieldValueClassUnderlyingTypeList = protoBuf$Class.getMultiFieldValueClassUnderlyingTypeList();
        }
        y45.i(multiFieldValueClassUnderlyingTypeList, "when (typeIdCount to typ…epresentation\")\n        }");
        List<ProtoBuf$Type> list3 = multiFieldValueClassUnderlyingTypeList;
        ArrayList arrayList2 = new ArrayList(z71.v(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList2.add(e74Var.invoke(it.next()));
        }
        return new js6(i81.l1(arrayList, arrayList2));
    }
}
