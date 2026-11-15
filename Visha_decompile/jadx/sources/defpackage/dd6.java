package defpackage;

import com.grack.nanojson.JsonObject;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public class dd6 implements py9 {
    public final JsonObject a;

    public dd6(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return gc6.r().d(this.a.getString("conference_url")).getUrl();
    }

    @Override
    public String b() {
        return this.a.getString("conference_title");
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String f() {
        return this.a.getString("date");
    }

    @Override
    public DateWrapper g() {
        return new DateWrapper(ZonedDateTime.parse(this.a.getString("date"), DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSzzzz")).toOffsetDateTime(), false);
    }

    @Override
    public long getDuration() {
        return this.a.getInt("duration");
    }

    @Override
    public String getName() {
        return this.a.getString("title");
    }

    @Override
    public String getUrl() {
        return this.a.getString("frontend_link");
    }

    @Override
    public List j() {
        return wc6.a(this.a.getString("poster_url"));
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return StreamType.VIDEO_STREAM;
    }

    @Override
    public long w() {
        return this.a.getInt("view_count");
    }
}
