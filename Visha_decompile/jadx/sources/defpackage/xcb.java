package defpackage;

import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;

public final class xcb {
    public final List a;

    public xcb(ProtoBuf$TypeTable protoBuf$TypeTable) {
        y45.j(protoBuf$TypeTable, "typeTable");
        List<ProtoBuf$Type> typeList = protoBuf$TypeTable.getTypeList();
        if (protoBuf$TypeTable.hasFirstNullable()) {
            int firstNullable = protoBuf$TypeTable.getFirstNullable();
            List<ProtoBuf$Type> typeList2 = protoBuf$TypeTable.getTypeList();
            y45.i(typeList2, "typeTable.typeList");
            List<ProtoBuf$Type> list = typeList2;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                ProtoBuf$Type protoBuf$TypeK = (ProtoBuf$Type) obj;
                if (i >= firstNullable) {
                    protoBuf$TypeK = protoBuf$TypeK.toBuilder().A(true).build();
                }
                arrayList.add(protoBuf$TypeK);
                i = i2;
            }
            typeList = arrayList;
        }
        y45.i(typeList, "run {\n        val origin… else originalTypes\n    }");
        this.a = typeList;
    }

    public final ProtoBuf$Type a(int i) {
        return (ProtoBuf$Type) this.a.get(i);
    }
}
