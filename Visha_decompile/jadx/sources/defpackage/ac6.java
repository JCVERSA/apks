package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.Objects;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class ac6 extends fu0 {
    public JsonObject g;

    public ac6(StreamingService streamingService, ListLinkHandler listLinkHandler, JsonObject jsonObject) {
        super(streamingService, listLinkHandler);
        this.g = jsonObject;
    }

    public static void v(ls6 ls6Var, JsonObject jsonObject) {
        ls6Var.d(new ld6(jsonObject));
    }

    @Override
    public void q(c23 c23Var) {
        if (this.g == null) {
            this.g = dc6.D(c23Var, i());
        }
    }

    @Override
    public tl5.a r() {
        final ls6 ls6Var = new ls6(n());
        JsonObject jsonObject = this.g;
        Objects.requireNonNull(jsonObject);
        jsonObject.getArray("events").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ac6.v(ls6Var, (JsonObject) obj);
            }
        });
        return new tl5.a(ls6Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return tl5.a.a();
    }
}
