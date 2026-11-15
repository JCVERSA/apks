package org.schabi.newpipe.extractor;

import defpackage.ea1;
import defpackage.em5;
import defpackage.fu0;
import defpackage.il5;
import defpackage.jg5;
import defpackage.ona;
import defpackage.pna;
import defpackage.rp3;
import defpackage.us0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.stream.StreamExtractor;

public abstract class StreamingService {
    public final int a;
    public final ServiceInfo b;

    public enum LinkType {
        NONE,
        STREAM,
        CHANNEL,
        PLAYLIST
    }

    public static class ServiceInfo {
        public final String a;
        public final List b;

        public enum MediaCapability {
            AUDIO,
            VIDEO,
            LIVE,
            COMMENTS
        }

        public ServiceInfo(String str, List list) {
            this.a = str;
            this.b = Collections.unmodifiableList(list);
        }

        public String a() {
            return this.a;
        }
    }

    public StreamingService(int i, String str, List list) {
        this.a = i;
        this.b = new ServiceInfo(str, list);
    }

    public us0 a(String str) {
        return b(c().d(str));
    }

    public abstract us0 b(ListLinkHandler listLinkHandler);

    public abstract em5 c();

    public abstract fu0 d(ListLinkHandler listLinkHandler);

    public ea1 e(String str) {
        em5 em5VarG = g();
        if (em5VarG == null) {
            return null;
        }
        return f(em5VarG.d(str));
    }

    public abstract ea1 f(ListLinkHandler listLinkHandler);

    public abstract em5 g();

    public ContentCountry h() {
        ContentCountry contentCountryD = a.d();
        return v().contains(contentCountryD) ? contentCountryD : ContentCountry.DEFAULT;
    }

    public rp3 i(String str) {
        return null;
    }

    public abstract jg5 j();

    public final LinkType k(String str) {
        String strF = org.schabi.newpipe.extractor.utils.a.f(str);
        il5 il5VarU = u();
        em5 em5VarC = c();
        em5 em5VarO = o();
        if (il5VarU != null && il5VarU.a(strF)) {
            return LinkType.STREAM;
        }
        if (em5VarC == null || !em5VarC.a(strF)) {
            return (em5VarO == null || !em5VarO.a(strF)) ? LinkType.NONE : LinkType.PLAYLIST;
        }
        return LinkType.CHANNEL;
    }

    public Localization l() {
        Localization localizationE = a.e();
        if (w().contains(localizationE)) {
            return localizationE;
        }
        for (Localization localization : w()) {
            if (localization.getLanguageCode().equals(localizationE.getLanguageCode())) {
                return localization;
            }
        }
        return Localization.DEFAULT;
    }

    public org.schabi.newpipe.extractor.playlist.a m(String str) {
        return n(o().d(str));
    }

    public abstract org.schabi.newpipe.extractor.playlist.a n(ListLinkHandler listLinkHandler);

    public abstract em5 o();

    public abstract SearchExtractor p(SearchQueryHandler searchQueryHandler);

    public final int q() {
        return this.a;
    }

    public ServiceInfo r() {
        return this.b;
    }

    public StreamExtractor s(String str) {
        return t(u().d(str));
    }

    public abstract StreamExtractor t(LinkHandler linkHandler);

    public String toString() {
        return this.a + StringUtils.PROCESS_POSTFIX_DELIMITER + this.b.a();
    }

    public abstract il5 u();

    public List v() {
        return Collections.singletonList(ContentCountry.DEFAULT);
    }

    public List w() {
        return Collections.singletonList(Localization.DEFAULT);
    }

    public ona x(Localization localization) {
        pna.b(localization);
        if (!localization.getCountryCode().isEmpty()) {
            pna.b(new Localization(localization.getLanguageCode()));
        }
        throw new IllegalArgumentException("Localization is not supported (\"" + localization + "\")");
    }
}
