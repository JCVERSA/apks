package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;

public class e60 extends l70 {
    public final JsonObject b;

    public e60(JsonObject jsonObject, String str) {
        super(str);
        this.b = jsonObject;
    }

    @Override
    public String b() {
        return this.b.getString("band_name");
    }

    @Override
    public long getDuration() {
        return -1L;
    }

    @Override
    public String getName() {
        return this.b.getString("title");
    }

    @Override
    public String getUrl() {
        return j60.k(this.b.getLong("band_id"), this.b.getLong("item_id"), this.b.getString("item_type"));
    }

    @Override
    public List j() {
        return j60.h(this.b.getLong("art_id"), true);
    }
}
