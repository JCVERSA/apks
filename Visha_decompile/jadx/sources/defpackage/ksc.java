package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.utils.a;

public abstract class ksc implements b {
    public final JsonObject a;

    public ksc(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public long d() throws ParsingException {
        String strL = cxc.L(this.a.getObject("thumbnailOverlays").getObject("thumbnailOverlayBottomPanelRenderer").getObject("text"));
        if (strL == null) {
            throw new ParsingException("Could not get stream count");
        }
        try {
            return Long.parseLong(a.u(strL));
        } catch (NumberFormatException e) {
            throw new ParsingException("Could not convert stream count to a long", e);
        }
    }

    @Override
    public String getName() {
        return this.a.getString("title");
    }

    @Override
    public String getUrl() {
        return cxc.P(this.a.getObject("navigationEndpoint"));
    }

    @Override
    public List j() {
        return cxc.O(this.a.getObject("thumbnailRenderer").getObject("showCustomThumbnailRenderer"));
    }
}
