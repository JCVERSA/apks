package defpackage;

import com.yandex.div.json.ParsingException;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public abstract class iga implements hx7 {
    public final lx7 a;
    public final iq0 b;
    public final kga c;

    public interface a {
        Object a(hx7 hx7Var, boolean z, JSONObject jSONObject);
    }

    public static final class b {
        public final Map a;
        public final Map b;

        public b(Map map, Map map2) {
            y45.j(map, "parsedTemplates");
            y45.j(map2, "templateDependencies");
            this.a = map;
            this.b = map2;
        }

        public final Map a() {
            return this.a;
        }
    }

    public iga(lx7 lx7Var, iq0 iq0Var) {
        y45.j(lx7Var, "logger");
        y45.j(iq0Var, "mainTemplateProvider");
        this.a = lx7Var;
        this.b = iq0Var;
        this.c = iq0Var;
    }

    public abstract a d();

    public final void e(JSONObject jSONObject) {
        y45.j(jSONObject, "json");
        this.b.c(f(jSONObject));
    }

    public final Map f(JSONObject jSONObject) {
        y45.j(jSONObject, "json");
        return g(jSONObject).a();
    }

    public final b g(JSONObject jSONObject) {
        y45.j(jSONObject, "json");
        Map mapB = w71.b();
        Map mapB2 = w71.b();
        try {
            Map mapH = gc5.a.h(this, jSONObject);
            this.b.d(mapB);
            kga kgaVarB = kga.a.b(mapB);
            for (Map.Entry entry : mapH.entrySet()) {
                String str = (String) entry.getKey();
                Set set = (Set) entry.getValue();
                try {
                    ix7 ix7Var = new ix7(kgaVarB, new jga(getLogger(), str));
                    a aVarD = d();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                    y45.i(jSONObject2, "json.getJSONObject(name)");
                    mapB.put(str, (ac5) aVarD.a(ix7Var, true, jSONObject2));
                    if (!set.isEmpty()) {
                        mapB2.put(str, set);
                    }
                } catch (ParsingException e) {
                    getLogger().e(e, str);
                }
            }
        } catch (Exception e2) {
            getLogger().c(e2);
        }
        return new b(mapB, mapB2);
    }

    @Override
    public lx7 getLogger() {
        return this.a;
    }
}
