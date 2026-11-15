package defpackage;

import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

public final class kd5 extends ld5 {
    public final JvmProtoBuf.StringTableTypes h;

    /* JADX WARN: Illegal instructions before constructor call */
    public kd5(JvmProtoBuf.StringTableTypes stringTableTypes, String[] strArr) {
        Set setG1;
        y45.j(stringTableTypes, "types");
        y45.j(strArr, "strings");
        List<Integer> localNameList = stringTableTypes.getLocalNameList();
        if (localNameList.isEmpty()) {
            setG1 = ye9.f();
        } else {
            y45.i(localNameList, "_init_$lambda$0");
            setG1 = i81.g1(localNameList);
        }
        List<JvmProtoBuf.StringTableTypes.Record> recordList = stringTableTypes.getRecordList();
        y45.i(recordList, "types.recordList");
        super(strArr, setG1, md5.a(recordList));
        this.h = stringTableTypes;
    }
}
