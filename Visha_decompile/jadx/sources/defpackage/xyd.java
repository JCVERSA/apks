package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public final class xyd extends JSONObject {
    public List a = new ArrayList();

    public final String a() {
        StringBuilder sb = new StringBuilder();
        if (this.a != null) {
            for (int i = 0; i < this.a.size(); i++) {
                sb.append((String) this.a.get(i));
                if (i != this.a.size() - 1) {
                    sb.append("\t");
                }
            }
        }
        return sb.toString();
    }

    public final JSONObject b(String str, String str2) {
        this.a.add(str2);
        return super.put(str, str2);
    }
}
