package defpackage;

import com.grack.nanojson.JsonObject;
import java.io.Serializable;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.a;

public final class qsc implements ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder, Serializable {
    public final JsonObject b;
    public final YoutubeChannelHelper.ChannelHeader c;
    public final String d;
    public final String e;
    public final String f;

    public qsc(JsonObject jsonObject, YoutubeChannelHelper.ChannelHeader channelHeader, String str, String str2, String str3) {
        this.b = jsonObject;
        this.c = channelHeader;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    @Override
    public final fu0 build(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        return a.Y(this.b, this.c, this.d, this.e, this.f, streamingService, listLinkHandler);
    }
}
