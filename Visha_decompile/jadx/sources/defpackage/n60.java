package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.PaidContentException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.stream.Description;

public class n60 extends a {
    public Document g;
    public JsonObject h;
    public JsonArray i;
    public String j;

    public n60(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static String G(Element element) {
        return element.h("src");
    }

    @Override
    public List B() {
        return this.h.isNull("art_id") ? Collections.emptyList() : j60.h(this.h.getLong("art_id"), true);
    }

    @Override
    public List C() {
        return j60.i((String) this.g.G0("band-photo").stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return n60.G((Element) obj);
            }
        }).findFirst().orElse(""));
    }

    @Override
    public String D() {
        return this.h.getString("artist");
    }

    @Override
    public String E() {
        return "https://" + p().split("/")[2] + "/";
    }

    @Override
    public String k() {
        return this.j;
    }

    @Override
    public void q(c23 c23Var) throws ParsingException {
        String strC = c23Var.b(s().getUrl()).c();
        this.g = vc5.a(strC);
        JsonObject jsonObjectG0 = k70.g0(strC);
        this.h = jsonObjectG0;
        this.i = jsonObjectG0.getArray("trackinfo");
        try {
            this.j = oc5.d(strC, "data-embed").getString("album_title");
            if (this.i.isEmpty()) {
                throw new PaidContentException("Album needs to be purchased");
            }
        } catch (JsonParserException e) {
            throw new ParsingException("Faulty JSON; page likely does not contain album data", e);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new ParsingException("JSON does not exist", e2);
        }
    }

    @Override
    public tl5.a r() {
        qy9 qy9Var = new qy9(n());
        for (int i = 0; i < this.i.size(); i++) {
            JsonObject object = this.i.getObject(i);
            if (this.i.size() < 10) {
                qy9Var.d(new r60(object, E(), m()));
            } else {
                qy9Var.d(new r60(object, E(), B()));
            }
        }
        return new tl5.a(qy9Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return null;
    }

    @Override
    public Description v() throws ParsingException {
        Element elementD0 = this.g.D0("trackInfo");
        if (elementD0 == null) {
            throw new ParsingException("Could not find trackInfo in document");
        }
        Elements elementsG0 = elementD0.G0("tralbum-about");
        Elements elementsG1 = elementD0.G0("tralbum-credits");
        Element elementD1 = this.g.D0("license");
        if (elementsG0.isEmpty() && elementsG1.isEmpty() && elementD1 == null) {
            return Description.EMPTY_DESCRIPTION;
        }
        StringBuilder sb = new StringBuilder();
        if (!elementsG0.isEmpty()) {
            Element elementFirst = elementsG0.first();
            Objects.requireNonNull(elementFirst);
            sb.append(elementFirst.L0());
        }
        if (!elementsG1.isEmpty()) {
            Element elementFirst2 = elementsG1.first();
            Objects.requireNonNull(elementFirst2);
            sb.append(elementFirst2.L0());
        }
        if (elementD1 != null) {
            sb.append(elementD1.L0());
        }
        return new Description(sb.toString(), 1);
    }

    @Override
    public long x() {
        return this.i.size();
    }
}
