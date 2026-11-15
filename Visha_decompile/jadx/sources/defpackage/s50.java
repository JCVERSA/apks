package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class s50 extends fu0 {
    public JsonArray g;
    public final String h;

    public s50(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
        String str = listLinkHandler.getContentFilters().get(0);
        str.hashCode();
        if (str.equals("albums")) {
            this.h = "album";
        } else {
            if (str.equals("tracks")) {
                this.h = "track";
                return;
            }
            throw new IllegalArgumentException("Unsupported channel tab: " + str);
        }
    }

    public static s50 u(StreamingService streamingService, ListLinkHandler listLinkHandler, JsonArray jsonArray) {
        s50 s50Var = new s50(streamingService, listLinkHandler);
        s50Var.g = jsonArray;
        return s50Var;
    }

    @Override
    public void q(c23 c23Var) {
        if (this.g == null) {
            this.g = j60.e(i()).getArray("discography");
        }
    }

    @Override
    public tl5.a r() {
        ls6 ls6Var = new ls6(n());
        for (Object obj : this.g) {
            if (obj instanceof JsonObject) {
                JsonObject jsonObject = (JsonObject) obj;
                String string = jsonObject.getString("item_type", "");
                if (string.equals(this.h)) {
                    if (string.equals("album")) {
                        ls6Var.d(new j50(jsonObject, p()));
                    } else if (string.equals("track")) {
                        ls6Var.d(new e60(jsonObject, p()));
                    }
                }
            }
        }
        return new tl5.a(ls6Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return null;
    }
}
