package defpackage;

import com.grack.nanojson.JsonObject;
import java.io.Serializable;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;

public final class cc6 implements ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder, Serializable {
    public final JsonObject b;

    public cc6(JsonObject jsonObject) {
        this.b = jsonObject;
    }

    @Override
    public final fu0 build(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        return dc6.E(this.b, streamingService, listLinkHandler);
    }
}
