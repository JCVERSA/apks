package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.utils.a;

public class vs9 implements zt0 {
    public final JsonObject a;

    public vs9(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public long d() {
        return this.a.getLong("track_count");
    }

    @Override
    public String getDescription() {
        return this.a.getString("description", "");
    }

    @Override
    public String getName() {
        return this.a.getString("username");
    }

    @Override
    public String getUrl() {
        return a.w(this.a.getString("permalink_url"));
    }

    @Override
    public List j() {
        return jt9.d(this.a.getString("avatar_url"));
    }

    @Override
    public boolean n() {
        return this.a.getBoolean("verified");
    }

    @Override
    public long z() {
        return this.a.getLong("followers_count");
    }
}
