package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.nio.charset.StandardCharsets;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public class fz7 extends ea1 {
    public Boolean g;

    public fz7(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
        this.g = null;
    }

    @Override
    public void q(c23 c23Var) {
    }

    @Override
    public tl5.a r() {
        if (y()) {
            return t(new Page(l()));
        }
        return t(new Page(p() + "?start=0&count=12"));
    }

    @Override
    public tl5.a t(Page page) throws ExtractionException {
        long size;
        JsonObject jsonObject;
        if (page == null || a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        ga1 ga1Var = new ga1(n());
        if (page.getBody() == null) {
            fu8 fu8VarB = f().b(page.getUrl());
            if (fu8VarB == null || a.k(fu8VarB.c())) {
                jsonObject = null;
            } else {
                try {
                    jsonObject = (JsonObject) com.grack.nanojson.a.d().a(fu8VarB.c());
                } catch (Exception e) {
                    throw new ParsingException("Could not parse json data for comments info", e);
                }
            }
            if (jsonObject == null) {
                throw new ExtractionException("Unable to get PeerTube kiosk info");
            }
            mz7.n(jsonObject);
            if (y() || jsonObject.has("children")) {
                size = jsonObject.getArray("children").size();
                x(ga1Var, jsonObject);
            } else {
                size = jsonObject.getLong("total");
                w(ga1Var, jsonObject);
            }
        } else {
            try {
                JsonObject jsonObject2 = (JsonObject) com.grack.nanojson.a.d().a(new String(page.getBody(), StandardCharsets.UTF_8));
                this.g = Boolean.TRUE;
                size = jsonObject2.getArray("children").size();
                x(ga1Var, jsonObject2);
            } catch (JsonParserException e2) {
                throw new ParsingException("Could not parse json data for nested comments  info", e2);
            }
        }
        return new tl5.a(ga1Var, mz7.i(page.getUrl(), size));
    }

    public final void w(ga1 ga1Var, JsonObject jsonObject) {
        for (Object obj : jsonObject.getArray("data")) {
            if (obj instanceof JsonObject) {
                JsonObject jsonObject2 = (JsonObject) obj;
                if (!jsonObject2.getBoolean("isDeleted")) {
                    ga1Var.d(new gz7(jsonObject2, null, p(), e(), y()));
                }
            }
        }
    }

    public final void x(ga1 ga1Var, JsonObject jsonObject) {
        for (Object obj : jsonObject.getArray("children")) {
            if (obj instanceof JsonObject) {
                JsonObject jsonObject2 = (JsonObject) obj;
                JsonObject object = jsonObject2.getObject("comment");
                JsonArray array = jsonObject2.getArray("children");
                if (!object.getBoolean("isDeleted")) {
                    ga1Var.d(new gz7(object, array, p(), e(), y()));
                }
            }
        }
    }

    public final boolean y() {
        if (this.g == null) {
            if (l().contains("/videos/watch/")) {
                this.g = Boolean.FALSE;
            } else {
                this.g = Boolean.valueOf(l().contains("/comment-threads/"));
            }
        }
        return this.g.booleanValue();
    }
}
