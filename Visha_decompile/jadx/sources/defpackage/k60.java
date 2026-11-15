package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.playlist.c;

public class k60 extends ig5 {
    public JsonObject h;

    public k60(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
    }

    @Override
    public String k() {
        return "Featured";
    }

    @Override
    public void q(c23 c23Var) throws ParsingException {
        try {
            this.h = (JsonObject) a.d().a(f().j("https://bandcamp.com/api/mobile/24/bootstrap_data", Collections.emptyMap(), "{\"platform\":\"\",\"version\":0}".getBytes(StandardCharsets.UTF_8)).c());
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse Bandcamp featured API response", e);
        }
    }

    @Override
    public tl5.a r() {
        return u(this.h.getObject("feed_content").getObject("stories").getArray("featured"));
    }

    @Override
    public tl5.a t(Page page) throws ParsingException {
        try {
            return u(((JsonObject) a.d().a(f().b(page.getUrl()).c())).getObject("stories").getArray("featured"));
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse Bandcamp featured API response", e);
        }
    }

    public final tl5.a u(JsonArray jsonArray) {
        c cVar = new c(n());
        for (int i = 0; i < jsonArray.size(); i++) {
            JsonObject object = jsonArray.getObject(i);
            if (!object.isNull("album_title")) {
                cVar.d(new p60(object));
            }
        }
        return new tl5.a(cVar, v(jsonArray.getObject(jsonArray.size() - 1)));
    }

    public final Page v(JsonObject jsonObject) {
        long j = jsonObject.getLong("story_date");
        long j2 = jsonObject.getLong("ntid");
        return new Page("https://bandcamp.com/api/mobile/24/feed_older_logged_out?story_groups=featured:" + j + StringUtils.PROCESS_POSTFIX_DELIMITER + jsonObject.getString("story_type") + StringUtils.PROCESS_POSTFIX_DELIMITER + j2);
    }
}
