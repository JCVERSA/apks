package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.playlist.b;

public class j50 implements b {
    public final JsonObject a;
    public final String b;

    public j50(JsonObject jsonObject, String str) {
        this.a = jsonObject;
        this.b = str;
    }

    @Override
    public String a() {
        return this.b;
    }

    @Override
    public String b() {
        return this.a.getString("band_name");
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public long d() {
        return -1L;
    }

    @Override
    public String getName() {
        return this.a.getString("title");
    }

    @Override
    public String getUrl() {
        return j60.k(this.a.getLong("band_id"), this.a.getLong("item_id"), this.a.getString("item_type"));
    }

    @Override
    public List j() {
        return j60.h(this.a.getLong("art_id"), true);
    }
}
