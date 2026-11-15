package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.util.Iterator;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public class bt9 extends ea1 {
    public bt9(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    @Override
    public void q(c23 c23Var) {
    }

    @Override
    public tl5.a r() {
        return x(p());
    }

    @Override
    public tl5.a t(Page page) {
        if (page == null || a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        return x(page.getUrl());
    }

    public final void w(ga1 ga1Var, JsonArray jsonArray) {
        String strP = p();
        Iterator<Object> it = jsonArray.iterator();
        while (it.hasNext()) {
            ga1Var.d(new ct9((JsonObject) it.next(), strP));
        }
    }

    public final tl5.a x(String str) throws ParsingException {
        try {
            JsonObject jsonObject = (JsonObject) com.grack.nanojson.a.d().a(org.schabi.newpipe.extractor.a.c().b(str).c());
            ga1 ga1Var = new ga1(n());
            w(ga1Var, jsonObject.getArray("collection"));
            return new tl5.a(ga1Var, new Page(jsonObject.getString("next_href", null)));
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json", e);
        }
    }
}
