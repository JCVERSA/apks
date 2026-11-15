package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.e74;
import defpackage.i81;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class SignatureBuildingComponents {
    public static final SignatureBuildingComponents a = new SignatureBuildingComponents();

    public final String[] b(String... strArr) {
        y45.j(strArr, "signatures");
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add("<init>(" + str + ")V");
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public final String c(String str) {
        if (str.length() <= 1) {
            return str;
        }
        return 'L' + str + ';';
    }

    public final Set d(String str, String... strArr) {
        y45.j(str, "internalName");
        y45.j(strArr, "signatures");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str2 : strArr) {
            linkedHashSet.add(str + '.' + str2);
        }
        return linkedHashSet;
    }

    public final Set e(String str, String... strArr) {
        y45.j(str, "name");
        y45.j(strArr, "signatures");
        return d(h(str), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public final Set f(String str, String... strArr) {
        y45.j(str, "name");
        y45.j(strArr, "signatures");
        return d(i(str), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public final String g(String str) {
        y45.j(str, "name");
        return "java/util/function/" + str;
    }

    public final String h(String str) {
        y45.j(str, "name");
        return "java/lang/" + str;
    }

    public final String i(String str) {
        y45.j(str, "name");
        return "java/util/" + str;
    }

    public final String j(String str, List list, String str2) {
        y45.j(str, "name");
        y45.j(list, "parameters");
        y45.j(str2, "ret");
        return str + '(' + i81.y0(list, "", null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(String str3) {
                y45.j(str3, "it");
                return SignatureBuildingComponents.a.c(str3);
            }
        }, 30, null) + ')' + c(str2);
    }

    public final String k(String str, String str2) {
        y45.j(str, "internalName");
        y45.j(str2, "jvmDescriptor");
        return str + '.' + str2;
    }
}
