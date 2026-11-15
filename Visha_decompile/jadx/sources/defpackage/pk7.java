package defpackage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class pk7 {
    public final String a;
    public final List b;

    public static class a {
        public String a;
        public String b;
        public boolean c;
        public boolean d = true;

        public a(JSONObject jSONObject) {
            try {
                this.a = jSONObject.getString("title");
                this.b = jSONObject.getString("scope");
                this.c = jSONObject.getBoolean("required");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public pk7(String str, List list) {
        this.a = str;
        this.b = list;
    }

    public Map a() {
        HashMap map = new HashMap();
        List<a> list = this.b;
        if (list != null) {
            for (a aVar : list) {
                if (aVar.d) {
                    map.put(aVar.b, Boolean.TRUE);
                }
            }
        }
        return map;
    }
}
