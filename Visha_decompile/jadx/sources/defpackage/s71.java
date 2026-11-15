package defpackage;

import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class s71 {
    public static List a(Object obj) {
        return Collections.singletonList(obj);
    }

    public static List b(Object... objArr) {
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? Collections.unmodifiableList(Arrays.asList(objArr)) : Collections.singletonList(objArr[0]);
        }
        return Collections.emptyList();
    }

    public static Map c(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Map mapH = h(3, false);
        mapH.put(obj, obj2);
        mapH.put(obj3, obj4);
        mapH.put(obj5, obj6);
        return Collections.unmodifiableMap(mapH);
    }

    public static Map d(Object[] objArr, Object[] objArr2) {
        int length = objArr.length;
        int length2 = objArr2.length;
        if (length != length2) {
            StringBuilder sb = new StringBuilder(String.valueOf(length).length() + 44 + String.valueOf(length2).length());
            sb.append("Key and values array lengths not equal: ");
            sb.append(length);
            sb.append(" != ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (length == 0) {
            return Collections.emptyMap();
        }
        if (length == 1) {
            return Collections.singletonMap(objArr[0], objArr2[0]);
        }
        Map mapH = h(length, false);
        for (int i = 0; i < objArr.length; i++) {
            mapH.put(objArr[i], objArr2[i]);
        }
        return Collections.unmodifiableMap(mapH);
    }

    public static Set e(Object obj, Object obj2, Object obj3) {
        Set setG = g(3, false);
        setG.add(obj);
        setG.add(obj2);
        setG.add(obj3);
        return Collections.unmodifiableSet(setG);
    }

    public static Set f(Object... objArr) {
        int length = objArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(objArr[0]);
        }
        if (length == 2) {
            Object obj = objArr[0];
            Object obj2 = objArr[1];
            Set setG = g(2, false);
            setG.add(obj);
            setG.add(obj2);
            return Collections.unmodifiableSet(setG);
        }
        if (length == 3) {
            return e(objArr[0], objArr[1], objArr[2]);
        }
        if (length != 4) {
            Set setG2 = g(length, false);
            Collections.addAll(setG2, objArr);
            return Collections.unmodifiableSet(setG2);
        }
        Object obj3 = objArr[0];
        Object obj4 = objArr[1];
        Object obj5 = objArr[2];
        Object obj6 = objArr[3];
        Set setG3 = g(4, false);
        setG3.add(obj3);
        setG3.add(obj4);
        setG3.add(obj5);
        setG3.add(obj6);
        return Collections.unmodifiableSet(setG3);
    }

    public static Set g(int i, boolean z) {
        if (i <= (true != z ? 256 : 128)) {
            return new ArraySet(i);
        }
        return new HashSet(i, true != z ? 1.0f : 0.75f);
    }

    public static Map h(int i, boolean z) {
        return i <= 256 ? new ArrayMap(i) : new HashMap(i, 1.0f);
    }
}
