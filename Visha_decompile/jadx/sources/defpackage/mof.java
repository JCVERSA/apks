package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public final class mof {
    public final Map a;
    public final Map b;

    public mof(Map map, Map map2) {
        this.a = map;
        this.b = map2;
    }

    public final void a(vmh vmhVar) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        for (tmh tmhVar : vmhVar.b.c) {
            Map map = this.a;
            String str = tmhVar.a;
            if (!map.containsKey(str) || (jSONObject2 = tmhVar.b) == null) {
                Map map2 = this.b;
                if (map2.containsKey(str) && (jSONObject = tmhVar.b) != null) {
                    oof oofVar = (oof) map2.get(str);
                    HashMap map3 = new HashMap();
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String strOptString = jSONObject.optString(next);
                        if (strOptString != null) {
                            map3.put(next, strOptString);
                        }
                    }
                    oofVar.a(map3);
                }
            } else {
                ((pof) map.get(str)).a(jSONObject2);
            }
        }
    }
}
