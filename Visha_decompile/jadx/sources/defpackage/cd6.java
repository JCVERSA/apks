package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;

public class cd6 extends ig5 {
    public JsonObject h;

    public cd6(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
    }

    public static boolean v(dd6 dd6Var) {
        return dd6Var.getDuration() > 0;
    }

    @Override
    public String k() {
        return "recent";
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        try {
            this.h = (JsonObject) a.d().a(c23Var.e("https://api.media.ccc.de/public/events/recent", h()).c());
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not parse json.", e);
        }
    }

    @Override
    public tl5.a r() {
        JsonArray array = this.h.getArray("events");
        final qy9 qy9Var = new qy9(n(), Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((StreamInfoItem) obj).getUploadDate();
            }
        }, Comparator.nullsLast(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DateWrapper) obj).offsetDateTime();
            }
        }))).reversed());
        array.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return new dd6((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return cd6.v((dd6) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                qy9Var.d((dd6) obj);
            }
        });
        return new tl5.a(qy9Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return tl5.a.a();
    }
}
