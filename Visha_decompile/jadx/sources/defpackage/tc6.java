package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class tc6 extends ig5 {
    public JsonArray h;

    public tc6(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
    }

    @Override
    public String k() {
        return "live";
    }

    @Override
    public void q(c23 c23Var) {
        this.h = wc6.b(c23Var, h());
    }

    @Override
    public tl5.a r() {
        qy9 qy9Var = new qy9(n());
        for (int i = 0; i < this.h.size(); i++) {
            JsonObject object = this.h.getObject(i);
            if (object.getBoolean("isCurrentlyStreaming")) {
                JsonArray array = object.getArray("groups");
                for (int i2 = 0; i2 < array.size(); i2++) {
                    String string = array.getObject(i2).getString("group");
                    JsonArray array2 = array.getObject(i2).getArray("rooms");
                    for (int i3 = 0; i3 < array2.size(); i3++) {
                        qy9Var.d(new uc6(object, string, array2.getObject(i3)));
                    }
                }
            }
        }
        return new tl5.a(qy9Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return tl5.a.a();
    }
}
