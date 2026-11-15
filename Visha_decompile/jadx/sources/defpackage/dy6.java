package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.LinkedList;
import java.util.List;
import kotlin.Triple;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
import org.apache.commons.io.IOUtils;

public final class dy6 implements cy6 {
    public final ProtoBuf$StringTable a;
    public final ProtoBuf$QualifiedNameTable b;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.values().length];
            try {
                iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.PACKAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$QualifiedNameTable.QualifiedName.Kind.LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public dy6(ProtoBuf$StringTable protoBuf$StringTable, ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
        y45.j(protoBuf$StringTable, "strings");
        y45.j(protoBuf$QualifiedNameTable, "qualifiedNames");
        this.a = protoBuf$StringTable;
        this.b = protoBuf$QualifiedNameTable;
    }

    @Override
    public String a(int i) {
        Triple tripleC = c(i);
        List list = (List) tripleC.component1();
        String strY0 = i81.y0((List) tripleC.component2(), Consts.DOT, null, null, 0, null, null, 62, null);
        if (list.isEmpty()) {
            return strY0;
        }
        return i81.y0(list, "/", null, null, 0, null, null, 62, null) + IOUtils.DIR_SEPARATOR_UNIX + strY0;
    }

    @Override
    public boolean b(int i) {
        return ((Boolean) c(i).getThird()).booleanValue();
    }

    public final Triple c(int i) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z = false;
        while (i != -1) {
            ProtoBuf$QualifiedNameTable.QualifiedName qualifiedName = this.b.getQualifiedName(i);
            String string = this.a.getString(qualifiedName.getShortName());
            ProtoBuf$QualifiedNameTable.QualifiedName.Kind kind = qualifiedName.getKind();
            y45.g(kind);
            int i2 = a.a[kind.ordinal()];
            if (i2 == 1) {
                linkedList2.addFirst(string);
            } else if (i2 == 2) {
                linkedList.addFirst(string);
            } else if (i2 == 3) {
                linkedList2.addFirst(string);
                z = true;
            }
            i = qualifiedName.getParentQualifiedName();
        }
        return new Triple(linkedList, linkedList2, Boolean.valueOf(z));
    }

    @Override
    public String getString(int i) {
        String string = this.a.getString(i);
        y45.i(string, "strings.getString(index)");
        return string;
    }
}
