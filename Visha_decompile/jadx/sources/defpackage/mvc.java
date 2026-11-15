package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.utils.a;

public class mvc implements b {
    public final JsonObject a;

    public mvc(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return null;
    }

    @Override
    public String b() {
        return cxc.L(this.a.getObject("longBylineText"));
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public long d() throws ParsingException {
        String strL = cxc.L(this.a.getObject("videoCountShortText"));
        if (strL == null) {
            throw new ParsingException("Could not extract item count for playlist/mix info item");
        }
        try {
            return Integer.parseInt(strL);
        } catch (NumberFormatException unused) {
            return -2L;
        }
    }

    @Override
    public String getName() throws ParsingException {
        String strL = cxc.L(this.a.getObject("title"));
        if (a.m(strL)) {
            throw new ParsingException("Could not get name");
        }
        return strL;
    }

    @Override
    public String getUrl() throws ParsingException {
        String string = this.a.getString("shareUrl");
        if (a.m(string)) {
            throw new ParsingException("Could not get url");
        }
        return string;
    }

    @Override
    public List j() {
        return cxc.O(this.a);
    }

    @Override
    public PlaylistInfo.PlaylistType o() {
        return cxc.s(getUrl());
    }
}
