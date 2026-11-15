package defpackage;

import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class us9 extends us0 {
    public String g;
    public JsonObject h;

    public us9(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    @Override
    public boolean B() {
        return this.h.getBoolean("verified");
    }

    @Override
    public String i() {
        return this.g;
    }

    @Override
    public String k() {
        return this.h.getString("username");
    }

    @Override
    public void q(c23 c23Var) throws ParsingException {
        String id = j().getId();
        this.g = id;
        try {
            this.h = (JsonObject) a.d().a(c23Var.e("https://api-v2.soundcloud.com/users/" + id + "?client_id=" + jt9.c(), h()).c());
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json response", e);
        }
    }

    @Override
    public List r() {
        return jt9.d(this.h.getString("avatar_url"));
    }

    @Override
    public List s() {
        return jt9.g(this.h.getObject("visuals").getArray("visuals").getObject(0).getString("visual_url"));
    }

    @Override
    public String t() {
        return this.h.getString("description", "");
    }

    @Override
    public String u() {
        return null;
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String w() {
        return "";
    }

    @Override
    public String x() {
        return "";
    }

    @Override
    public long y() {
        return this.h.getLong("followers_count", 0L);
    }

    @Override
    public List z() {
        String strP = p();
        String str = strP + ys9.r("tracks");
        String str2 = strP + ys9.r("playlists");
        String str3 = strP + ys9.r("albums");
        String strI = i();
        return hdb.a(new Object[]{new ListLinkHandler(str, str, strI, hdb.a(new Object[]{"tracks"}), ""), new ListLinkHandler(str2, str2, strI, hdb.a(new Object[]{"playlists"}), ""), new ListLinkHandler(str3, str3, strI, hdb.a(new Object[]{"albums"}), "")});
    }
}
