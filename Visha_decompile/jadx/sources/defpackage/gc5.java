package defpackage;

import com.yandex.div.internal.parser.CyclicDependencyException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class gc5 {
    public static final gc5 a = new gc5();
    public static final pnb b = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return gc5.b((String) obj);
        }
    };

    public static final boolean b(String str) {
        y45.j(str, "it");
        return str.length() > 0;
    }

    public final Map c(ex7 ex7Var, JSONObject jSONObject) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap(jSONObject.length());
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                y45.i(next, "key");
                JSONObject jSONObject2 = (JSONObject) obj;
                ArrayList arrayList = new ArrayList();
                a.e(ex7Var, new jga(ex7Var.getLogger(), next), jSONObject2, true, arrayList);
                linkedHashMap.put(next, arrayList);
            }
        }
        return linkedHashMap;
    }

    public final void d(String str, Map map, Set set, Set set2, LinkedHashMap linkedHashMap) throws CyclicDependencyException {
        List listK;
        if (set.contains(str)) {
            i(i81.b1(set), str);
            throw new KotlinNothingValueException();
        }
        if (set2.contains(str)) {
            return;
        }
        List list = (List) map.get(str);
        if (list != null) {
            listK = new ArrayList();
            for (Object obj : list) {
                if (map.containsKey((String) obj)) {
                    listK.add(obj);
                }
            }
        } else {
            listK = null;
        }
        if (listK != null && !listK.isEmpty()) {
            set.add(str);
            Iterator it = listK.iterator();
            while (it.hasNext()) {
                d((String) it.next(), map, set, set2, linkedHashMap);
            }
            set.remove(str);
        }
        set2.add(str);
        if (listK == null) {
            listK = y71.k();
        }
        linkedHashMap.put(str, i81.g1(listK));
    }

    public final void e(ex7 ex7Var, lx7 lx7Var, JSONObject jSONObject, boolean z, List list) throws JSONException {
        String strG = z ? g(ex7Var, jSONObject) : f(ex7Var, jSONObject);
        if (strG != null) {
            list.add(strG);
        }
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                y45.i(next, "key");
                a.e(ex7Var, lx7Var, (JSONObject) obj, false, list);
            }
        }
        Iterator<String> itKeys2 = jSONObject.keys();
        y45.i(itKeys2, "keys");
        while (itKeys2.hasNext()) {
            String next2 = itKeys2.next();
            Object obj2 = jSONObject.get(next2);
            if (obj2 instanceof JSONArray) {
                y45.i(next2, "key");
                JSONArray jSONArray = (JSONArray) obj2;
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    Object obj3 = jSONArray.get(i);
                    if (obj3 instanceof JSONObject) {
                        a.e(ex7Var, lx7Var, (JSONObject) obj3, false, list);
                    }
                }
            }
        }
    }

    public final String f(ex7 ex7Var, JSONObject jSONObject) {
        return (String) tb5.o(ex7Var, jSONObject, "type", b);
    }

    public final String g(ex7 ex7Var, JSONObject jSONObject) {
        Object objH = tb5.h(ex7Var, jSONObject, "type", b);
        y45.i(objH, "read(context, json, \"type\", TYPE_VALIDATOR)");
        return (String) objH;
    }

    public final Map h(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "json");
        Map mapC = c(ex7Var, jSONObject);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = mapC.keySet().iterator();
        while (it.hasNext()) {
            d((String) it.next(), mapC, linkedHashSet, linkedHashSet2, linkedHashMap);
        }
        return linkedHashMap;
    }

    public final Void i(List list, String str) throws CyclicDependencyException {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int iIndexOf = list.indexOf(str); iIndexOf < size; iIndexOf++) {
            sb.append((String) list.get(iIndexOf));
            sb.append(" -> ");
        }
        sb.append(str);
        String string = sb.toString();
        y45.i(string, "output.toString()");
        throw new CyclicDependencyException(string);
    }
}
