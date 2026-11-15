package defpackage;

import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.a;

public abstract class wxc implements py9 {
    public final JsonObject a;

    public wxc(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String b() {
        return null;
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
        return this.a.getObject("overlayMetadata").getObject("primaryText").getString(ICode.CALL.CALL_KEY_CONTENT);
    }

    @Override
    public String getUrl() throws ParsingException {
        String string = this.a.getObject("onTap").getObject("innertubeCommand").getObject("reelWatchEndpoint").getString("videoId");
        if (a.m(string)) {
            string = this.a.getObject("inlinePlayerData").getObject("onVisible").getObject("innertubeCommand").getObject("watchEndpoint").getString("videoId");
        }
        if (a.m(string)) {
            throw new ParsingException("Could not get video ID");
        }
        try {
            return dzc.m().g(string);
        } catch (Exception e) {
            throw new ParsingException("Could not get URL", e);
        }
    }

    @Override
    public List j() {
        return cxc.F(this.a.getObject("thumbnail").getArray("sources"));
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
        String string = this.a.getObject("overlayMetadata").getObject("secondaryText").getString(ICode.CALL.CALL_KEY_CONTENT);
        if (a.m(string)) {
            throw new ParsingException("Could not get short view count");
        }
        if (string.toLowerCase().contains("no views")) {
            return 0L;
        }
        return a.r(string);
    }
}
