package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class s60 extends ig5 {
    public JsonObject h;

    public s60(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
        this.h = null;
    }

    @Override
    public String k() {
        return "Radio";
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        try {
            this.h = (JsonObject) a.d().a(f().b("https://bandcamp.com/api/bcweekly/3/list").c());
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not parse Bandcamp Radio API response", e);
        }
    }

    @Override
    public tl5.a r() {
        qy9 qy9Var = new qy9(n());
        JsonArray array = this.h.getArray("results");
        for (int i = 0; i < array.size(); i++) {
            qy9Var.d(new t60(array.getObject(i)));
        }
        return new tl5.a(qy9Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return null;
    }
}
