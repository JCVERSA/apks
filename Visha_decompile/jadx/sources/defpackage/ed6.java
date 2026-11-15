package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;

public class ed6 extends SearchExtractor {
    public JsonObject g;
    public fc6 h;

    public class a implements zt0 {
        public final ChannelInfoItem a;

        public a(ChannelInfoItem channelInfoItem) {
            this.a = channelInfoItem;
        }

        @Override
        public long d() {
            return this.a.getStreamCount();
        }

        @Override
        public String getDescription() {
            return this.a.getDescription();
        }

        @Override
        public String getName() {
            return this.a.getName();
        }

        @Override
        public String getUrl() {
            return this.a.getUrl();
        }

        @Override
        public List j() {
            return this.a.getThumbnails();
        }

        @Override
        public boolean n() {
            return false;
        }

        @Override
        public long z() {
            return this.a.getSubscriberCount();
        }
    }

    public ed6(StreamingService streamingService, SearchQueryHandler searchQueryHandler) {
        super(streamingService, searchQueryHandler);
        try {
            this.h = new fc6(streamingService, hc6.r().j("conferences"), "conferences");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        if (u().getContentFilters().contains("events") || u().getContentFilters().contains(TtmlNode.COMBINE_ALL) || u().getContentFilters().isEmpty()) {
            try {
                this.g = (JsonObject) com.grack.nanojson.a.d().a(c23Var.e(p(), h()).c());
            } catch (JsonParserException e) {
                throw new ExtractionException("Could not parse JSON.", e);
            }
        }
        if (u().getContentFilters().contains("conferences") || u().getContentFilters().contains(TtmlNode.COMBINE_ALL) || u().getContentFilters().isEmpty()) {
            this.h.b();
        }
    }

    @Override
    public tl5.a r() {
        ls6 ls6Var = new ls6(n());
        if (u().getContentFilters().contains("conferences") || u().getContentFilters().contains(TtmlNode.COMBINE_ALL) || u().getContentFilters().isEmpty()) {
            z(w(), this.h.r().c(), ls6Var);
        }
        if (u().getContentFilters().contains("events") || u().getContentFilters().contains(TtmlNode.COMBINE_ALL) || u().getContentFilters().isEmpty()) {
            JsonArray array = this.g.getArray("events");
            for (int i = 0; i < array.size(); i++) {
                if (array.getObject(i).getString("release_date") != null) {
                    ls6Var.d(new ld6(array.getObject(i)));
                }
            }
        }
        return new tl5.a(ls6Var, null);
    }

    @Override
    public tl5.a t(Page page) {
        return tl5.a.a();
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String x() {
        return "";
    }

    @Override
    public boolean y() {
        return false;
    }

    public final void z(String str, List list, ls6 ls6Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ChannelInfoItem channelInfoItem = (ChannelInfoItem) it.next();
            if (channelInfoItem.getName().toUpperCase().contains(str.toUpperCase())) {
                ls6Var.d(new a(channelInfoItem));
            }
        }
    }
}
