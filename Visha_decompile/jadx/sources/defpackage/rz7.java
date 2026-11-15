package defpackage;

import com.grack.nanojson.JsonObject;

public class rz7 extends yz7 {
    public rz7(JsonObject jsonObject, String str) {
        super(jsonObject, str);
        B(this.a.getString("embedUrl").replace(this.a.getString("embedPath"), ""));
    }
}
