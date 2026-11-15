package defpackage;

import androidx.exifinterface.media.ExifInterface;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;

public final class ax0 {
    public static final ax0 a = new ax0();
    public static final String b = i81.y0(y71.n('k', 'o', 't', 'l', 'i', 'n'), "", null, null, 0, null, null, 62, null);
    public static final Map c;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listN = y71.n("Boolean", "Z", "Char", "C", "Byte", "B", "Short", ExifInterface.LATITUDE_SOUTH, "Int", "I", "Float", "F", "Long", "J", "Double", "D");
        int iC = xh8.c(0, listN.size() - 1, 2);
        if (iC >= 0) {
            int i = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                String str = b;
                sb.append(str);
                sb.append(IOUtils.DIR_SEPARATOR_UNIX);
                sb.append((String) listN.get(i));
                int i2 = i + 1;
                linkedHashMap.put(sb.toString(), listN.get(i2));
                linkedHashMap.put(str + IOUtils.DIR_SEPARATOR_UNIX + ((String) listN.get(i)) + "Array", '[' + ((String) listN.get(i2)));
                if (i == iC) {
                    break;
                } else {
                    i += 2;
                }
            }
        }
        linkedHashMap.put(b + "/Unit", ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        a(linkedHashMap, "Any", "java/lang/Object");
        a(linkedHashMap, "Nothing", "java/lang/Void");
        a(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : y71.n("String", "CharSequence", "Throwable", "Cloneable", DataTypes.OBJ_NUMBER, "Comparable", "Enum")) {
            a(linkedHashMap, str2, "java/lang/" + str2);
        }
        for (String str3 : y71.n("Iterator", "Collection", "List", "Set", "Map", "ListIterator")) {
            a(linkedHashMap, "collections/" + str3, "java/util/" + str3);
            a(linkedHashMap, "collections/Mutable" + str3, "java/util/" + str3);
        }
        a(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        a(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i3 = 0; i3 < 23; i3++) {
            StringBuilder sb2 = new StringBuilder();
            String str4 = b;
            sb2.append(str4);
            sb2.append("/jvm/functions/Function");
            sb2.append(i3);
            a(linkedHashMap, "Function" + i3, sb2.toString());
            a(linkedHashMap, "reflect/KFunction" + i3, str4 + "/reflect/KFunction");
        }
        for (String str5 : y71.n("Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum")) {
            a(linkedHashMap, str5 + ".Companion", b + "/jvm/internal/" + str5 + "CompanionObject");
        }
        c = linkedHashMap;
    }

    public static final void a(Map map, String str, String str2) {
        map.put(b + IOUtils.DIR_SEPARATOR_UNIX + str, 'L' + str2 + ';');
    }

    public static final String b(String str) {
        y45.j(str, "classId");
        String str2 = (String) c.get(str);
        if (str2 != null) {
            return str2;
        }
        return 'L' + g1a.M(str, '.', '$', false, 4, null) + ';';
    }
}
