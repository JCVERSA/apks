package defpackage;

import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.util.Arrays;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor;
import org.schabi.newpipe.extractor.services.youtube.extractors.a;
import org.schabi.newpipe.extractor.services.youtube.extractors.f;
import org.schabi.newpipe.extractor.stream.StreamExtractor;

public class vxc extends StreamingService {
    public static final List c = Localization.listFrom("en-GB");
    public static final List d = ContentCountry.listFrom("DZ", "AR", "AU", "AT", "AZ", "BH", "BD", "BY", "BE", "BO", "BA", "BR", "BG", "KH", "CA", "CL", "CO", "CR", "HR", "CY", "CZ", "DK", "DO", "EC", "EG", "SV", "EE", "FI", "FR", "GE", "DE", "GH", "GR", "GT", "HN", "HK", "HU", "IS", HlsMediaPlaylist.Interstitial.SNAP_TYPE_IN, DataTypes.OBJ_ID, "IQ", "IE", "IL", "IT", "JM", "JP", "JO", "KZ", "KE", "KW", "LA", "LV", "LB", "LY", "LI", "LT", "LU", "MY", "MT", "MX", "ME", RequestConfiguration.MAX_AD_CONTENT_RATING_MA, "NP", "NL", "NZ", "NI", "NG", "MK", "NO", "OM", "PK", "PA", RequestConfiguration.MAX_AD_CONTENT_RATING_PG, "PY", "PE", "PH", "PL", "PT", "PR", "QA", "RO", "RU", "SA", "SN", "RS", "SG", "SK", "SI", "ZA", "KR", "ES", "LK", "SE", "CH", "TW", "TZ", "TH", "TN", "TR", "UG", "UA", "AE", "GB", "US", "UY", "VE", "VN", "YE", "ZW");

    public vxc(int i) {
        super(i, "YouTube", Arrays.asList(StreamingService.ServiceInfo.MediaCapability.AUDIO, StreamingService.ServiceInfo.MediaCapability.VIDEO, StreamingService.ServiceInfo.MediaCapability.LIVE, StreamingService.ServiceInfo.MediaCapability.COMMENTS));
    }

    public ig5 z(em5 em5Var, StreamingService streamingService, String str, String str2) {
        return new tzc(this, em5Var.d(str), str2);
    }

    @Override
    public us0 b(ListLinkHandler listLinkHandler) {
        return new a(this, listLinkHandler);
    }

    @Override
    public em5 c() {
        return rtc.r();
    }

    @Override
    public fu0 d(ListLinkHandler listLinkHandler) {
        return listLinkHandler instanceof ReadyChannelTabListLinkHandler ? ((ReadyChannelTabListLinkHandler) listLinkHandler).getChannelTabExtractor(this) : new YoutubeChannelTabExtractor(this, listLinkHandler);
    }

    @Override
    public ea1 f(ListLinkHandler listLinkHandler) {
        return new ouc(this, listLinkHandler);
    }

    @Override
    public em5 g() {
        return quc.r();
    }

    @Override
    public rp3 i(String str) {
        return new cvc(this, c().d(str));
    }

    @Override
    public jg5 j() throws ExtractionException {
        jg5 jg5Var = new jg5(this);
        final uzc uzcVarR = uzc.r();
        try {
            jg5Var.a(new jg5.b() {
                @Override
                public final ig5 a(StreamingService streamingService, String str, String str2) {
                    return this.a.z(uzcVarR, streamingService, str, str2);
                }
            }, uzcVarR, "Trending");
            jg5Var.e("Trending");
            return jg5Var;
        } catch (Exception e) {
            throw new ExtractionException(e);
        }
    }

    @Override
    public org.schabi.newpipe.extractor.playlist.a n(ListLinkHandler listLinkHandler) {
        return cxc.h0(listLinkHandler.getId()) ? new xvc(this, listLinkHandler) : new oxc(this, listLinkHandler);
    }

    @Override
    public em5 o() {
        return qxc.r();
    }

    @Override
    public SearchExtractor p(SearchQueryHandler searchQueryHandler) {
        List<String> contentFilters = searchQueryHandler.getContentFilters();
        return (contentFilters.isEmpty() || !contentFilters.get(0).startsWith("music_")) ? new sxc(this, searchQueryHandler) : new gwc(this, searchQueryHandler);
    }

    @Override
    public StreamExtractor t(LinkHandler linkHandler) {
        return new f(this, linkHandler);
    }

    @Override
    public il5 u() {
        return dzc.m();
    }

    @Override
    public List v() {
        return d;
    }

    @Override
    public List w() {
        return c;
    }
}
