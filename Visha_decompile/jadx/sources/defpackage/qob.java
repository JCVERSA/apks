package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;

public final class qob {
    public static final a b = new a(null);
    public static final qob c = new qob(y71.k());
    public final List a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final qob a(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            y45.j(protoBuf$VersionRequirementTable, "table");
            if (protoBuf$VersionRequirementTable.getRequirementCount() == 0) {
                return b();
            }
            List<ProtoBuf$VersionRequirement> requirementList = protoBuf$VersionRequirementTable.getRequirementList();
            y45.i(requirementList, "table.requirementList");
            return new qob(requirementList, null);
        }

        public final qob b() {
            return qob.c;
        }

        public a() {
        }
    }

    public qob(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }

    public qob(List list) {
        this.a = list;
    }
}
