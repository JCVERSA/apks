package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.b;
import org.schabi.newpipe.extractor.utils.a;

public class yvc implements b {
    public final JsonObject a;
    public final JsonArray b;
    public final String c;

    public yvc(JsonObject jsonObject, JsonArray jsonArray, String str) {
        this.a = jsonObject;
        this.b = jsonArray;
        this.c = str;
    }

    @Override
    public String a() throws ParsingException {
        if (this.c.equals("music_playlists")) {
            return null;
        }
        Iterator<Object> it = this.a.getObject("menu").getObject("menuRenderer").getArray("items").iterator();
        while (it.hasNext()) {
            JsonObject object = ((JsonObject) it.next()).getObject("menuNavigationItemRenderer");
            if (object.getObject("icon").getString("iconType", "").equals("ARTIST")) {
                return cxc.P(object.getObject("navigationEndpoint"));
            }
        }
        throw new ParsingException("Could not get uploader URL");
    }

    @Override
    public String b() throws ParsingException {
        String string = this.c.equals("music_albums") ? this.b.getObject(2).getString("text") : this.b.getObject(0).getString("text");
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
    public long d() throws ParsingException {
        if (this.c.equals("music_albums")) {
            return -1L;
        }
        String string = this.b.getObject(2).getString("text");
        if (a.m(string)) {
            throw new ParsingException("Could not get stream count");
        }
        if (string.contains("100+")) {
            return -3L;
        }
        return Long.parseLong(a.u(string));
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
        String string = this.a.getObject("menu").getObject("menuRenderer").getArray("items").getObject(4).getObject("toggleMenuServiceItemRenderer").getObject("toggledServiceEndpoint").getObject("likeEndpoint").getObject(TypedValues.AttributesType.S_TARGET).getString("playlistId");
        if (a.m(string)) {
            string = this.a.getObject("overlay").getObject("musicItemThumbnailOverlayRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("musicPlayButtonRenderer").getObject("playNavigationEndpoint").getObject("watchPlaylistEndpoint").getString("playlistId");
        }
        if (a.m(string)) {
            throw new ParsingException("Could not get URL");
        }
        return "https://music.youtube.com/playlist?list=" + string;
    }

    @Override
    public List j() throws ParsingException {
        try {
            return cxc.F(this.a.getObject("thumbnail").getObject("musicThumbnailRenderer").getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception e) {
            throw new ParsingException("Could not get thumbnails", e);
        }
    }
}
