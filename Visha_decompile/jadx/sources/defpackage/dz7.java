package defpackage;

import com.grack.nanojson.JsonObject;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public class dz7 extends fu0 {
    public final String g;

    public dz7(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
        this.g = e();
    }

    @Override
    public void q(c23 c23Var) {
    }

    @Override
    public tl5.a r() {
        return t(new Page(this.g + "/api/v1/" + i() + ez7.s(k()) + "?start=0&count=12"));
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
                throw new ParsingException("Could not parse json data for account info", e);
            }
        }
        if (jsonObject == null) {
            throw new ExtractionException("Unable to get account channel list");
        }
        mz7.n(jsonObject);
        ls6 ls6Var = new ls6(n());
        mz7.c(ls6Var, jsonObject, e());
        return new tl5.a(ls6Var, mz7.i(page.getUrl(), jsonObject.getLong("total")));
    }
}
