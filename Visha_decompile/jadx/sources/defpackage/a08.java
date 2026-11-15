package defpackage;

import com.grack.nanojson.JsonObject;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public class a08 extends ig5 {
    public a08(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
    }

    @Override
    public String k() {
        return i();
    }

    @Override
    public void q(c23 c23Var) {
    }

    @Override
    public tl5.a r() {
        return t(new Page(p() + "&start=0&count=12"));
    }

    @Override
    public tl5.a t(Page page) throws ExtractionException {
        JsonObject jsonObject;
        if (page == null || a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        fu8 fu8VarB = f().b(page.getUrl());
        if (fu8VarB == null || a.k(fu8VarB.c())) {
            jsonObject = null;
        } else {
            try {
                jsonObject = (JsonObject) com.grack.nanojson.a.d().a(fu8VarB.c());
            } catch (Exception e) {
                throw new ParsingException("Could not parse json data for kiosk info", e);
            }
        }
        if (jsonObject == null) {
            throw new ExtractionException("Unable to get PeerTube kiosk info");
        }
        mz7.n(jsonObject);
        long j = jsonObject.getLong("total");
        qy9 qy9Var = new qy9(n());
        mz7.c(qy9Var, jsonObject, e());
        return new tl5.a(qy9Var, mz7.i(page.getUrl(), j));
    }
}
