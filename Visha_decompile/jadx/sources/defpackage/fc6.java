package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class fc6 extends ig5 {
    public JsonObject h;

    public fc6(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
    }

    @Override
    public String k() {
        return this.h.getString("Conferences");
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        try {
            this.h = (JsonObject) a.d().a(c23Var.e(s().getUrl(), h()).c());
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not parse json.", e);
        }
    }

    @Override
    public tl5.a r() {
        JsonArray array = this.h.getArray("conferences");
        au0 au0Var = new au0(n());
        for (int i = 0; i < array.size(); i++) {
            au0Var.d(new ec6(array.getObject(i)));
        }
        return new tl5.a(au0Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return tl5.a.a();
    }
}
