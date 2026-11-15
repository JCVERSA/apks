package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.a;

public class qtc implements zt0 {
    public final JsonObject a;
    public final boolean b;

    public qtc(JsonObject jsonObject) {
        this.a = jsonObject;
        String strL = cxc.L(jsonObject.getObject("subscriberCountText"));
        this.b = strL != null ? strL.startsWith("@") : false;
    }

    @Override
    public long d() throws ParsingException {
        try {
            if (!this.b && this.a.has("videoCountText")) {
                return Long.parseLong(a.u(cxc.L(this.a.getObject("videoCountText"))));
            }
            return -1L;
        } catch (Exception e) {
            throw new ParsingException("Could not get stream count", e);
        }
    }

    @Override
    public String getDescription() throws ParsingException {
        try {
            if (this.a.has("descriptionSnippet")) {
                return cxc.L(this.a.getObject("descriptionSnippet"));
            }
            return null;
        } catch (Exception e) {
            throw new ParsingException("Could not get description", e);
        }
    }

    @Override
    public String getName() throws ParsingException {
        try {
            return cxc.L(this.a.getObject("title"));
        } catch (Exception e) {
            throw new ParsingException("Could not get name", e);
        }
    }

    @Override
    public String getUrl() throws ParsingException {
        try {
            return rtc.r().g("channel/" + this.a.getString("channelId"));
        } catch (Exception e) {
            throw new ParsingException("Could not get url", e);
        }
    }

    @Override
    public List j() throws ParsingException {
        try {
            return cxc.O(this.a);
        } catch (Exception e) {
            throw new ParsingException("Could not get thumbnails", e);
        }
    }

    @Override
    public boolean n() {
        return cxc.d0(this.a.getArray("ownerBadges"));
    }

    @Override
    public long z() throws ParsingException {
        try {
            if (!this.a.has("subscriberCountText")) {
                return -1L;
            }
            if (!this.b) {
                return a.r(cxc.L(this.a.getObject("subscriberCountText")));
            }
            if (this.a.has("videoCountText")) {
                return a.r(cxc.L(this.a.getObject("videoCountText")));
            }
            return -1L;
        } catch (Exception e) {
            throw new ParsingException("Could not get subscriber count", e);
        }
    }
}
