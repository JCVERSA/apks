package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

public interface zn8 {
    public static final a V4 = a.a;

    public static final class a {
        public static final a a = new a();

        public final zn8 a(String str, JSONObject jSONObject) {
            y45.j(str, TtmlNode.ATTR_ID);
            y45.j(jSONObject, "data");
            return new b(str, jSONObject);
        }
    }

    public static final class b implements zn8 {
        public final String b;
        public final JSONObject c;

        public b(String str, JSONObject jSONObject) {
            y45.j(str, TtmlNode.ATTR_ID);
            y45.j(jSONObject, "data");
            this.b = str;
            this.c = jSONObject;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.b, bVar.b) && y45.e(this.c, bVar.c);
        }

        @Override
        public JSONObject getData() {
            return this.c;
        }

        @Override
        public String getId() {
            return this.b;
        }

        public int hashCode() {
            return (this.b.hashCode() * 31) + this.c.hashCode();
        }

        public String toString() {
            return "Ready(id=" + this.b + ", data=" + this.c + ')';
        }
    }

    JSONObject getData();

    String getId();
}
