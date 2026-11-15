package defpackage;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;

public final class aj8 implements pw0 {
    public final cy6 a;
    public final se0 b;
    public final e74 c;
    public final Map d;

    public aj8(ProtoBuf$PackageFragment protoBuf$PackageFragment, cy6 cy6Var, se0 se0Var, e74 e74Var) {
        y45.j(protoBuf$PackageFragment, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(se0Var, "metadataVersion");
        y45.j(e74Var, "classSource");
        this.a = cy6Var;
        this.b = se0Var;
        this.c = e74Var;
        List<ProtoBuf$Class> class_List = protoBuf$PackageFragment.getClass_List();
        y45.i(class_List, "proto.class_List");
        List<ProtoBuf$Class> list = class_List;
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(ey6.a(this.a, ((ProtoBuf$Class) obj).getFqName()), obj);
        }
        this.d = linkedHashMap;
    }

    @Override
    public ow0 a(xw0 xw0Var) {
        y45.j(xw0Var, "classId");
        ProtoBuf$Class protoBuf$Class = (ProtoBuf$Class) this.d.get(xw0Var);
        if (protoBuf$Class == null) {
            return null;
        }
        return new ow0(this.a, protoBuf$Class, this.b, (yt9) this.c.invoke(xw0Var));
    }

    public final Collection b() {
        return this.d.keySet();
    }
}
