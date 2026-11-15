package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import defpackage.c23;
import defpackage.fu0;
import defpackage.j60;
import defpackage.s50;
import defpackage.t50;
import defpackage.us0;
import defpackage.vc5;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampChannelExtractor;
import org.schabi.newpipe.extractor.utils.a;

public class BandcampChannelExtractor extends us0 {
    public JsonObject g;

    public static final class TabExtractorBuilder implements ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder {
        private final JsonArray discography;

        public TabExtractorBuilder(JsonArray jsonArray) {
            this.discography = jsonArray;
        }

        @Override
        public fu0 build(StreamingService streamingService, ListLinkHandler listLinkHandler) {
            return s50.u(streamingService, listLinkHandler, this.discography);
        }
    }

    public BandcampChannelExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static Stream G(Element element) {
        return element.H0("img").stream();
    }

    public static String H(Element element) {
        return element.h("src");
    }

    public static boolean I(String str) {
        return !str.isEmpty();
    }

    public static Image J(String str) {
        return new Image(a.w(str), -1, -1, Image.ResolutionLevel.UNKNOWN);
    }

    @Override
    public boolean B() {
        return false;
    }

    @Override
    public String k() {
        return this.g.getString("name");
    }

    @Override
    public void q(c23 c23Var) {
        this.g = j60.e(i());
    }

    @Override
    public List r() {
        return j60.h(this.g.getLong("bio_image_id"), false);
    }

    @Override
    public List s() throws ParsingException {
        try {
            return (List) Stream.of(vc5.a(f().b(a.w(this.g.getString("bandcamp_url"))).c()).D0("customHeader")).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Objects.nonNull((Element) obj);
                }
            }).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return BandcampChannelExtractor.G((Element) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return BandcampChannelExtractor.H((Element) obj);
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return BandcampChannelExtractor.I((String) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return BandcampChannelExtractor.J((String) obj);
                }
            }).collect(Collectors.toUnmodifiableList());
        } catch (IOException | ReCaptchaException e) {
            throw new ParsingException("Could not download artist web site", e);
        }
    }

    @Override
    public String t() {
        return this.g.getString("bio");
    }

    @Override
    public String u() {
        return null;
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String w() {
        return null;
    }

    @Override
    public String x() {
        return null;
    }

    @Override
    public long y() {
        return -1L;
    }

    @Override
    public List z() {
        JsonArray array = this.g.getArray("discography");
        TabExtractorBuilder tabExtractorBuilder = new TabExtractorBuilder(array);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        for (Object obj : array) {
            if (z && z2) {
                break;
            }
            if (obj instanceof JsonObject) {
                String string = ((JsonObject) obj).getString("item_type");
                if (!z && "track".equals(string)) {
                    arrayList.add(new ReadyChannelTabListLinkHandler(p() + t50.r("tracks"), i(), "tracks", tabExtractorBuilder));
                    z = true;
                }
                if (!z2 && "album".equals(string)) {
                    arrayList.add(new ReadyChannelTabListLinkHandler(p() + t50.r("albums"), i(), "albums", tabExtractorBuilder));
                    z2 = true;
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }
}
