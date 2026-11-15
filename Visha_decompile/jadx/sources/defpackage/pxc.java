package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.utils.a;

public class pxc implements b {
    public final JsonObject a;

    public pxc(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() throws ParsingException {
        try {
            return cxc.Q(this.a.getObject("longBylineText"));
        } catch (Exception e) {
            throw new ParsingException("Could not get uploader url", e);
        }
    }

    @Override
    public String b() throws ParsingException {
        try {
            return cxc.L(this.a.getObject("longBylineText"));
        } catch (Exception e) {
            throw new ParsingException("Could not get uploader name", e);
        }
    }

    @Override
    public boolean c() throws ParsingException {
        try {
            return cxc.d0(this.a.getArray("ownerBadges"));
        } catch (Exception e) {
            throw new ParsingException("Could not get uploader verification info", e);
        }
    }

    @Override
    public long d() throws ParsingException {
        String string = this.a.getString("videoCount");
        if (string == null) {
            string = cxc.L(this.a.getObject("videoCountText"));
        }
        if (string == null) {
            string = cxc.L(this.a.getObject("videoCountShortText"));
        }
        if (string == null) {
            throw new ParsingException("Could not get stream count");
        }
        try {
            return Long.parseLong(a.u(string));
        } catch (Exception e) {
            throw new ParsingException("Could not get stream count", e);
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
            return qxc.r().g(this.a.getString("playlistId"));
        } catch (Exception e) {
            throw new ParsingException("Could not get url", e);
        }
    }

    @Override
    public List j() throws ParsingException {
        try {
            JsonArray array = this.a.getArray("thumbnails").getObject(0).getArray("thumbnails");
            if (array.isEmpty()) {
                array = this.a.getObject("thumbnail").getArray("thumbnails");
            }
            return cxc.F(array);
        } catch (Exception e) {
            throw new ParsingException("Could not get thumbnails", e);
        }
    }
}
