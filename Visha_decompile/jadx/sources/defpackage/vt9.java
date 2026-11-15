package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.a;

public class vt9 implements py9 {
    public final JsonObject a;

    public vt9(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return a.w(this.a.getObject("user").getString("permalink_url"));
    }

    @Override
    public String b() {
        return this.a.getObject("user").getString("username");
    }

    @Override
    public boolean c() {
        return this.a.getObject("user").getBoolean("verified");
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
    public long getDuration() {
        return this.a.getLong("duration") / 1000;
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
    public List j() {
        return jt9.f(this.a);
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return StreamType.AUDIO_STREAM;
    }

    @Override
    public long w() {
        return this.a.getLong("playback_count");
    }
}
