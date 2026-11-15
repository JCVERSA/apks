package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public class hwc implements py9 {
    public final JsonObject a;
    public final JsonArray b;
    public final String c;

    public hwc(JsonObject jsonObject, JsonArray jsonArray, String str) {
        this.a = jsonObject;
        this.b = jsonArray;
        this.c = str;
    }

    @Override
    public String a() throws ParsingException {
        if (this.c.equals("music_videos")) {
            Iterator<Object> it = this.a.getObject("menu").getObject("menuRenderer").getArray("items").iterator();
            while (it.hasNext()) {
                JsonObject object = ((JsonObject) it.next()).getObject("menuNavigationItemRenderer");
                if (object.getObject("icon").getString("iconType", "").equals("ARTIST")) {
                    return cxc.P(object.getObject("navigationEndpoint"));
                }
            }
            return null;
        }
        JsonObject object2 = this.a.getArray("flexColumns").getObject(1).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text").getArray("runs").getObject(0);
        if (!object2.has("navigationEndpoint")) {
            return null;
        }
        String strP = cxc.P(object2.getObject("navigationEndpoint"));
        if (a.m(strP)) {
            throw new ParsingException("Could not get uploader URL");
        }
        return strP;
    }

    @Override
    public String b() throws ParsingException {
        String string = this.b.getObject(0).getString("text");
        if (a.m(string)) {
            throw new ParsingException("Could not get uploader name");
        }
        return string;
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
    public long getDuration() throws ParsingException {
        JsonArray jsonArray = this.b;
        String string = jsonArray.getObject(jsonArray.size() - 1).getString("text");
        if (a.m(string)) {
            throw new ParsingException("Could not get duration");
        }
        return cxc.x0(string);
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
        String string = this.a.getObject("playlistItemData").getString("videoId");
        if (a.m(string)) {
            throw new ParsingException("Could not get URL");
        }
        return "https://music.youtube.com/watch?v=" + string;
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
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return StreamType.VIDEO_STREAM;
    }

    @Override
    public long w() throws ParsingException {
        if (this.c.equals("music_songs")) {
            return -1L;
        }
        JsonArray jsonArray = this.b;
        String string = jsonArray.getObject(jsonArray.size() - 3).getString("text");
        if (a.m(string)) {
            throw new ParsingException("Could not get view count");
        }
        try {
            return a.r(string);
        } catch (Parser.RegexException unused) {
            return 0L;
        }
    }
}
