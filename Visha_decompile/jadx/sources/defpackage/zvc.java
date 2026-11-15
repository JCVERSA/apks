package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public class zvc implements zt0 {
    public final JsonObject a;

    public zvc(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public long d() {
        return -1L;
    }

    @Override
    public String getDescription() {
        return null;
    }

    @Override
    public String getName() throws ParsingException {
        String strL = cxc.L(this.a.getArray("flexColumns").getObject(0).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text"));
        if (a.m(strL)) {
            throw new ParsingException("Could not get name");
        }
        return strL;
    }

    @Override
    public String getUrl() throws ParsingException {
        String strP = cxc.P(this.a.getObject("navigationEndpoint"));
        if (a.m(strP)) {
            throw new ParsingException("Could not get URL");
        }
        return strP;
    }

    @Override
    public List j() throws ParsingException {
        try {
            return cxc.F(this.a.getObject("thumbnail").getObject("musicThumbnailRenderer").getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception e) {
            throw new ParsingException("Could not get thumbnails", e);
        }
    }

    @Override
    public boolean n() {
        return true;
    }

    @Override
    public long z() throws ParsingException {
        String strL = cxc.L(this.a.getArray("flexColumns").getObject(2).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text"));
        if (a.m(strL)) {
            throw new ParsingException("Could not get subscriber count");
        }
        try {
            return a.r(strL);
        } catch (Parser.RegexException unused) {
            return 0L;
        }
    }
}
