package defpackage;

import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;

public class dc6 extends us0 {
    public JsonObject g;

    public dc6(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static JsonObject D(c23 c23Var, String str) throws ExtractionException {
        String str2 = "https://api.media.ccc.de/public/conferences/" + str;
        try {
            return (JsonObject) a.d().a(c23Var.b(str2).c());
        } catch (JsonParserException unused) {
            throw new ExtractionException("Could not parse json returned by URL: " + str2);
        }
    }

    public static fu0 E(JsonObject jsonObject, StreamingService streamingService, ListLinkHandler listLinkHandler) {
        return new ac6(streamingService, listLinkHandler, jsonObject);
    }

    @Override
    public boolean B() {
        return false;
    }

    @Override
    public String k() {
        return this.g.getString("title");
    }

    @Override
    public void q(c23 c23Var) {
        this.g = D(c23Var, i());
    }

    @Override
    public List r() {
        return wc6.a(this.g.getString("logo_url"));
    }

    @Override
    public List s() {
        return Collections.emptyList();
    }

    @Override
    public String t() {
        return null;
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
        return -1L;
    }

    @Override
    public List z() {
        return hdb.a(new Object[]{new ReadyChannelTabListLinkHandler(p(), i(), "videos", new cc6(this.g))});
    }
}
