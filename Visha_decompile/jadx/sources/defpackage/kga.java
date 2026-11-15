package defpackage;

import java.util.Map;
import org.json.JSONObject;

public interface kga {
    public static final a a = a.a;

    public static final class a {
        public static final a a = new a();

        public static final class C0367a implements kga {
            @Override
            public za3 get(String str) {
                y45.j(str, "templateId");
                return null;
            }
        }

        public static final class b implements kga {
            public final Map b;

            public b(Map map) {
                this.b = map;
            }

            @Override
            public za3 get(String str) {
                y45.j(str, "templateId");
                return (za3) this.b.get(str);
            }
        }

        public final kga a() {
            return new C0367a();
        }

        public final kga b(Map map) {
            y45.j(map, "map");
            return new b(map);
        }
    }

    default za3 a(String str, JSONObject jSONObject) {
        y45.j(str, "templateId");
        y45.j(jSONObject, "json");
        za3 za3Var = get(str);
        if (za3Var != null) {
            return za3Var;
        }
        throw mx7.s(jSONObject, str);
    }

    za3 get(String str);
}
