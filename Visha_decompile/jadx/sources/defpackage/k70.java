package defpackage;

import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.lzy.okgo.model.Progress;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.PaidContentException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.playlist.c;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.a;

public class k70 extends StreamExtractor {
    public JsonObject g;
    public JsonObject h;
    public Document i;

    public k70(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
    }

    public static JsonObject g0(String str) throws ParsingException {
        try {
            return oc5.d(str, "data-tralbum");
        } catch (JsonParserException e) {
            throw new ParsingException("Faulty JSON; page likely does not contain album data", e);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new ParsingException("JSON does not exist", e2);
        }
    }

    public static Stream i0(Element element) {
        return element.G0(Progress.TAG).stream();
    }

    public static String j0(Element element) {
        return element.h("src");
    }

    @Override
    public long C() {
        return (long) this.g.getArray("trackinfo").getObject(0).getDouble("duration");
    }

    @Override
    public String D() {
        switch (this.h.getInt("license_type")) {
            case 1:
                return "All rights reserved ©";
            case 2:
                return "CC BY-NC-ND 3.0";
            case 3:
                return "CC BY-NC-SA 3.0";
            case 4:
                return "CC BY-NC 3.0";
            case 5:
                return "CC BY-ND 3.0";
            case 6:
                return "CC BY 3.0";
            case 7:
            default:
                return "Unknown";
            case 8:
                return "CC BY-SA 3.0";
        }
    }

    @Override
    public StreamType J() {
        return StreamType.AUDIO_STREAM;
    }

    @Override
    public List P() {
        return (List) this.i.F0("itemprop", TranSearchIndexablesContract.TranRawData.COLUMN_KEYWORDS).stream().map(new u60()).collect(Collectors.toList());
    }

    @Override
    public String Q() {
        return this.h.getString("publish_date");
    }

    @Override
    public List R() {
        return this.g.isNull("art_id") ? Collections.emptyList() : j60.h(this.g.getLong("art_id"), true);
    }

    @Override
    public DateWrapper U() {
        return j60.r(Q());
    }

    @Override
    public List V() {
        return j60.i((String) this.i.G0("band-photo").stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return k70.j0((Element) obj);
            }
        }).findFirst().orElse(""));
    }

    @Override
    public String W() {
        return this.g.getString("artist");
    }

    @Override
    public String Y() {
        return "https://" + p().split("/")[2] + "/";
    }

    @Override
    public List Z() {
        return Collections.emptyList();
    }

    @Override
    public List a0() {
        return Collections.emptyList();
    }

    @Override
    public c H() {
        final c cVar = new c(n());
        this.i.G0("recommended-album").stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return new x60((Element) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                cVar.d((x60) obj);
            }
        });
        return cVar;
    }

    @Override
    public String k() {
        return this.h.getString("title");
    }

    @Override
    public String p() {
        return a.w(this.g.getString("url"));
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        String strC = c23Var.b(j().getUrl()).c();
        this.i = vc5.a(strC);
        JsonObject jsonObjectG0 = g0(strC);
        this.g = jsonObjectG0;
        this.h = jsonObjectG0.getObject("current");
        if (this.g.getArray("trackinfo").size() > 1) {
            throw new ExtractionException("Page is actually an album, not a track");
        }
        if (this.g.getArray("trackinfo").getObject(0).isNull("file")) {
            throw new PaidContentException("This track is not available without being purchased");
        }
    }

    @Override
    public List s() {
        return Collections.singletonList(new AudioStream.a().i("mp3-128").g(this.g.getArray("trackinfo").getObject(0).getObject("file").getString("mp3-128"), true).l(MediaFormat.MP3).f(128).a());
    }

    @Override
    public String t() {
        return (String) this.i.G0("tralbum-tags").stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return k70.i0((Element) obj);
            }
        }).map(new u60()).findFirst().orElse("");
    }

    @Override
    public Description v() {
        return new Description(a.s("\n\n", this.h.getString("about"), this.h.getString("lyrics"), this.h.getString("credits")), 3);
    }
}
