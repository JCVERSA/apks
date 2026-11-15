package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.a;

public class rxc implements py9 {
    public final JsonObject a;

    public rxc(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return null;
    }

    @Override
    public String b() {
        return null;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String f() {
        return null;
    }

    @Override
    public DateWrapper g() {
        return null;
    }

    @Override
    public long getDuration() {
        return -1L;
    }

    @Override
    public String getName() {
        return cxc.L(this.a.getObject("headline"));
    }

    @Override
    public String getUrl() throws ParsingException {
        try {
            return dzc.m().g(this.a.getString("videoId"));
        } catch (Exception e) {
            throw new ParsingException("Could not get URL", e);
        }
    }

    @Override
    public List j() {
        return cxc.O(this.a);
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public boolean t() {
        return true;
    }

    @Override
    public StreamType u() {
        return StreamType.VIDEO_STREAM;
    }

    @Override
    public long w() throws ParsingException {
        String strL = cxc.L(this.a.getObject("viewCountText"));
        if (a.m(strL)) {
            throw new ParsingException("Could not get short view count");
        }
        if (strL.toLowerCase().contains("no views")) {
            return 0L;
        }
        return a.r(strL);
    }
}
