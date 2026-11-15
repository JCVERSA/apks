package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import java.util.List;
import java.util.Objects;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.Description;

public class ct9 implements fa1 {
    public final JsonObject a;
    public final String b;

    public ct9(JsonObject jsonObject, String str) {
        this.a = jsonObject;
        this.b = str;
    }

    @Override
    public String a() {
        return this.a.getObject("user").getString("permalink_url");
    }

    @Override
    public String b() {
        return this.a.getObject("user").getString("username");
    }

    @Override
    public List e() {
        return jt9.d(this.a.getObject("user").getString("avatar_url"));
    }

    @Override
    public String f() {
        return this.a.getString("created_at");
    }

    @Override
    public DateWrapper g() {
        return new DateWrapper(jt9.q(f()));
    }

    @Override
    public String getName() {
        return this.a.getObject("user").getString("permalink");
    }

    @Override
    public String getUrl() {
        return this.b;
    }

    @Override
    public List j() {
        return jt9.d(this.a.getObject("user").getString("avatar_url"));
    }

    @Override
    public Description l() {
        return new Description(this.a.getString(TtmlNode.TAG_BODY), 3);
    }

    @Override
    public String q() {
        return Objects.toString(Long.valueOf(this.a.getLong(TtmlNode.ATTR_ID)), null);
    }

    @Override
    public int x() {
        return this.a.getInt("timestamp") / 1000;
    }
}
