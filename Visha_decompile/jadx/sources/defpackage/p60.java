package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.utils.a;

public class p60 implements b {
    public final JsonObject a;

    public p60(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return null;
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
        return this.a.getInt("num_streamable_tracks");
    }

    @Override
    public String getName() {
        return this.a.getString("album_title");
    }

    @Override
    public String getUrl() {
        return a.w(this.a.getString("item_url"));
    }

    @Override
    public List j() {
        return this.a.has("art_id") ? j60.h(this.a.getLong("art_id"), true) : j60.h(this.a.getLong("item_art_id"), true);
    }
}
