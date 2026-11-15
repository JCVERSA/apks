package defpackage;

import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.stream.Description;

public class nz7 extends a {
    public JsonObject g;

    public nz7(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    @Override
    public String A() {
        return this.g.getObject("videoChannel").getString("url");
    }

    @Override
    public List B() {
        return mz7.j(e(), this.g);
    }

    @Override
    public List C() {
        return mz7.e(e(), this.g.getObject("ownerAccount"));
    }

    @Override
    public String D() {
        return this.g.getObject("ownerAccount").getString("displayName");
    }

    @Override
    public String E() {
        return this.g.getObject("ownerAccount").getString("url");
    }

    @Override
    public String k() {
        return this.g.getString("displayName");
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        try {
            JsonObject jsonObject = (JsonObject) com.grack.nanojson.a.d().a(c23Var.b(p()).c());
            this.g = jsonObject;
            mz7.n(jsonObject);
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not parse json", e);
        }
    }

    @Override
    public tl5.a r() {
        return t(new Page(p() + "/videos?start=0&count=12"));
    }

    @Override
    public tl5.a t(Page page) throws ExtractionException {
        JsonObject jsonObject;
        if (page == null || org.schabi.newpipe.extractor.utils.a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        fu8 fu8VarB = f().b(page.getUrl());
        if (fu8VarB == null || org.schabi.newpipe.extractor.utils.a.k(fu8VarB.c())) {
            jsonObject = null;
        } else {
            try {
                jsonObject = (JsonObject) com.grack.nanojson.a.d().a(fu8VarB.c());
            } catch (Exception e) {
                throw new ParsingException("Could not parse json data for playlist info", e);
            }
        }
        if (jsonObject == null) {
            throw new ExtractionException("Unable to get PeerTube playlist info");
        }
        mz7.n(jsonObject);
        long j = jsonObject.getLong("total");
        qy9 qy9Var = new qy9(n());
        mz7.c(qy9Var, jsonObject, e());
        return new tl5.a(qy9Var, mz7.i(page.getUrl(), j));
    }

    @Override
    public Description v() {
        String string = this.g.getString("description");
        return org.schabi.newpipe.extractor.utils.a.m(string) ? Description.EMPTY_DESCRIPTION : new Description(string, 3);
    }

    @Override
    public long x() {
        return this.g.getLong("videosLength");
    }

    @Override
    public List y() {
        return mz7.e(e(), this.g.getObject("videoChannel"));
    }

    @Override
    public String z() {
        return this.g.getObject("videoChannel").getString("displayName");
    }
}
