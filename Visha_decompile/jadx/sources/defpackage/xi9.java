package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class xi9 {
    public static final xi9 a = new xi9();

    public final void a(Map map, StringBuilder sb) throws IOException {
        y45.j(map, "map");
        y45.j(sb, "param");
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                for (TreeMap treeMap : (List) obj) {
                    kc5 kc5Var = kc5.a;
                    String string = treeMap.toString();
                    y45.i(string, "toString(...)");
                    Object objFromJson = kc5Var.a().c(TreeMap.class).fromJson(string);
                    y45.g(objFromJson);
                    a((TreeMap) objFromJson, sb);
                }
            } else if (obj instanceof Map) {
                Object objFromJson2 = kc5.a.a().c(TreeMap.class).fromJson(obj.toString());
                y45.g(objFromJson2);
                TreeMap treeMap2 = (TreeMap) objFromJson2;
                a(treeMap2, sb);
                a(treeMap2, sb);
            } else if (obj != null && !y45.e("", obj)) {
                sb.append(str + "=" + obj + "&");
            }
        }
    }

    public final void b(JSONObject jSONObject, StringBuilder sb) throws JSONException {
        y45.j(jSONObject, "jsonObject");
        y45.j(sb, "param");
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys(...)");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                b((JSONObject) obj, sb);
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    y45.g(jSONObject2);
                    b(jSONObject2, sb);
                }
            } else if (obj != null && !y45.e("", obj)) {
                sb.append(next + "=" + obj + "&");
            }
        }
    }

    public final String c(Map map) throws IOException {
        y45.j(map, "map");
        StringBuilder sb = new StringBuilder();
        a(map, sb);
        return tx8.a.b(sb.substring(0, sb.length() - 1).toString());
    }

    public final String d(JSONObject jSONObject) throws JSONException {
        y45.j(jSONObject, "jsonObject");
        StringBuilder sb = new StringBuilder();
        b(jSONObject, sb);
        return tx8.a.b(sb.substring(0, sb.length() - 1).toString());
    }
}
