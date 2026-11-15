package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;

public class ec6 implements zt0 {
    public final JsonObject a;

    public ec6(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public long d() {
        return -1L;
    }

    @Override
    public String getDescription() {
        return "";
    }

    @Override
    public String getName() {
        return this.a.getString("title");
    }

    @Override
    public String getUrl() {
        return this.a.getString("url");
    }

    @Override
    public List j() {
        return wc6.a(this.a.getString("logo_url"));
    }

    @Override
    public boolean n() {
        return false;
    }

    @Override
    public long z() {
        return -1L;
    }
}
