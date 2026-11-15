package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;

public class bz7 implements zt0 {
    public final JsonObject a;
    public final String b;

    public bz7(JsonObject jsonObject, String str) {
        this.a = jsonObject;
        this.b = str;
    }

    @Override
    public long d() {
        return -1L;
    }

    @Override
    public String getDescription() {
        return this.a.getString("description");
    }

    @Override
    public String getName() {
        return this.a.getString("displayName");
    }

    @Override
    public String getUrl() {
        return this.a.getString("url");
    }

    @Override
    public List j() {
        return mz7.e(this.b, this.a);
    }

    @Override
    public boolean n() {
        return false;
    }

    @Override
    public long z() {
        return this.a.getInt("followersCount");
    }
}
