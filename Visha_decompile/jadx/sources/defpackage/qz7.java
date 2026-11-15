package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.utils.a;

public class qz7 extends SearchExtractor {
    public final boolean g;

    public qz7(StreamingService streamingService, SearchQueryHandler searchQueryHandler, boolean z) {
        super(streamingService, searchQueryHandler);
        this.g = z;
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
                throw new ParsingException("Could not parse json data for search info", e);
            }
        }
        if (jsonObject == null) {
            throw new ExtractionException("Unable to get PeerTube search info");
        }
        mz7.n(jsonObject);
        long j = jsonObject.getLong("total");
        ls6 ls6Var = new ls6(n());
        mz7.d(ls6Var, jsonObject, e(), this.g);
        return new tl5.a(ls6Var, mz7.i(page.getUrl(), j));
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String x() {
        return "";
    }

    @Override
    public boolean y() {
        return false;
    }
}
