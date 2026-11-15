package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

public abstract class ld5 implements cy6 {
    public static final a d = new a(null);
    public static final String e;
    public static final List f;
    public static final Map g;
    public final String[] a;
    public final Set b;
    public final List c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[JvmProtoBuf.StringTableTypes.Record.Operation.values().length];
            try {
                iArr[JvmProtoBuf.StringTableTypes.Record.Operation.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JvmProtoBuf.StringTableTypes.Record.Operation.INTERNAL_TO_CLASS_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JvmProtoBuf.StringTableTypes.Record.Operation.DESC_TO_CLASS_ID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    static {
        String strY0 = i81.y0(y71.n('k', 'o', 't', 'l', 'i', 'n'), "", null, null, 0, null, null, 62, null);
        e = strY0;
        List listN = y71.n(strY0 + "/Any", strY0 + "/Nothing", strY0 + "/Unit", strY0 + "/Throwable", strY0 + "/Number", strY0 + "/Byte", strY0 + "/Double", strY0 + "/Float", strY0 + "/Int", strY0 + "/Long", strY0 + "/Short", strY0 + "/Boolean", strY0 + "/Char", strY0 + "/CharSequence", strY0 + "/String", strY0 + "/Comparable", strY0 + "/Enum", strY0 + "/Array", strY0 + "/ByteArray", strY0 + "/DoubleArray", strY0 + "/FloatArray", strY0 + "/IntArray", strY0 + "/LongArray", strY0 + "/ShortArray", strY0 + "/BooleanArray", strY0 + "/CharArray", strY0 + "/Cloneable", strY0 + "/Annotation", strY0 + "/collections/Iterable", strY0 + "/collections/MutableIterable", strY0 + "/collections/Collection", strY0 + "/collections/MutableCollection", strY0 + "/collections/List", strY0 + "/collections/MutableList", strY0 + "/collections/Set", strY0 + "/collections/MutableSet", strY0 + "/collections/Map", strY0 + "/collections/MutableMap", strY0 + "/collections/Map.Entry", strY0 + "/collections/MutableMap.MutableEntry", strY0 + "/collections/Iterator", strY0 + "/collections/MutableIterator", strY0 + "/collections/ListIterator", strY0 + "/collections/MutableListIterator");
        f = listN;
        Iterable<mz4> iterableJ1 = i81.j1(listN);
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(iterableJ1, 10)), 16));
        for (mz4 mz4Var : iterableJ1) {
            linkedHashMap.put((String) mz4Var.d(), Integer.valueOf(mz4Var.c()));
        }
        g = linkedHashMap;
    }

    public ld5(String[] strArr, Set set, List list) {
        y45.j(strArr, "strings");
        y45.j(set, "localNameIndices");
        y45.j(list, "records");
        this.a = strArr;
        this.b = set;
        this.c = list;
    }

    @Override
    public String a(int i) {
        return getString(i);
    }

    @Override
    public boolean b(int i) {
        return this.b.contains(Integer.valueOf(i));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0032  */
    @Override
    public String getString(int i) {
        String strSubstring;
        JvmProtoBuf.StringTableTypes.Record record = (JvmProtoBuf.StringTableTypes.Record) this.c.get(i);
        if (record.hasString()) {
            strSubstring = record.getString();
        } else if (record.hasPredefinedIndex()) {
            List list = f;
            int size = list.size();
            int predefinedIndex = record.getPredefinedIndex();
            if (predefinedIndex < 0 || predefinedIndex >= size) {
                strSubstring = this.a[i];
            } else {
                strSubstring = (String) list.get(record.getPredefinedIndex());
            }
        } else {
            strSubstring = this.a[i];
        }
        if (record.getSubstringIndexCount() >= 2) {
            List<Integer> substringIndexList = record.getSubstringIndexList();
            y45.i(substringIndexList, "substringIndexList");
            Integer num = substringIndexList.get(0);
            Integer num2 = substringIndexList.get(1);
            y45.i(num, "begin");
            if (num.intValue() >= 0) {
                int iIntValue = num.intValue();
                y45.i(num2, TtmlNode.END);
                if (iIntValue <= num2.intValue() && num2.intValue() <= strSubstring.length()) {
                    y45.i(strSubstring, "string");
                    strSubstring = strSubstring.substring(num.intValue(), num2.intValue());
                    y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                }
            }
        }
        String strM = strSubstring;
        if (record.getReplaceCharCount() >= 2) {
            List<Integer> replaceCharList = record.getReplaceCharList();
            y45.i(replaceCharList, "replaceCharList");
            Integer num3 = replaceCharList.get(0);
            Integer num4 = replaceCharList.get(1);
            y45.i(strM, "string");
            strM = g1a.M(strM, (char) num3.intValue(), (char) num4.intValue(), false, 4, null);
        }
        String strM2 = strM;
        JvmProtoBuf.StringTableTypes.Record.Operation operation = record.getOperation();
        if (operation == null) {
            operation = JvmProtoBuf.StringTableTypes.Record.Operation.NONE;
        }
        int i2 = b.a[operation.ordinal()];
        if (i2 == 2) {
            y45.i(strM2, "string");
            strM2 = g1a.M(strM2, '$', '.', false, 4, null);
        } else if (i2 == 3) {
            if (strM2.length() >= 2) {
                y45.i(strM2, "string");
                strM2 = strM2.substring(1, strM2.length() - 1);
                y45.i(strM2, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            String str = strM2;
            y45.i(str, "string");
            strM2 = g1a.M(str, '$', '.', false, 4, null);
        }
        y45.i(strM2, "string");
        return strM2;
    }
}
