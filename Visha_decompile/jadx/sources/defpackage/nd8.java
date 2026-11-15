package defpackage;

import com.transsion.http.request.HttpMethod;
import com.transsion.http.request.a;
import java.util.Map;
import org.json.JSONObject;

public class nd8 extends bt8 {
    public String l;
    public Map m;

    public ct8 g() {
        Map map = this.m;
        if (map != null) {
            this.l = new JSONObject(map).toString();
        }
        return new cmd(this.a, this.b, HttpMethod.POST, this.c, this.l, this.d, this.e, this.f, this.g, a.b, this.h, this.i, this.k).a();
    }

    public nd8 h(String str) {
        this.l = str;
        return this;
    }
}
