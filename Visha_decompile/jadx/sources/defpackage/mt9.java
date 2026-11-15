package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.utils.a;

public class mt9 implements b {
    public final JsonObject a;

    public mt9(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return this.a.getObject("user").getString("permalink_url");
    }

    @Override
    public String b() throws ParsingException {
        try {
            return this.a.getObject("user").getString("username");
        } catch (Exception e) {
            throw new ParsingException("Failed to extract playlist uploader", e);
        }
    }

    @Override
    public boolean c() {
        return this.a.getObject("user").getBoolean("verified");
    }

    @Override
    public long d() {
        return this.a.getLong("track_count");
    }

    @Override
    public String getName() {
        return this.a.getString("title");
    }

    @Override
    public String getUrl() {
        return a.w(this.a.getString("permalink_url"));
    }

    @Override
    public List j() throws ParsingException {
        if (this.a.isString("artwork_url")) {
            String string = this.a.getString("artwork_url");
            if (!a.m(string)) {
                return jt9.d(string);
            }
        }
        try {
            for (JsonObject jsonObject : this.a.getArray("tracks")) {
                if (jsonObject.isString("artwork_url")) {
                    String string2 = jsonObject.getString("artwork_url");
                    if (!a.m(string2)) {
                        return jt9.d(string2);
                    }
                }
                String string3 = jsonObject.getObject("user").getString("avatar_url");
                if (!a.m(string3)) {
                    return jt9.d(string3);
                }
            }
        } catch (Exception unused) {
        }
        try {
            return jt9.d(this.a.getObject("user").getString("avatar_url"));
        } catch (Exception e) {
            throw new ParsingException("Failed to extract playlist thumbnails", e);
        }
    }
}
