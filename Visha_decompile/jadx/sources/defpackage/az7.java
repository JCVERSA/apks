package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class az7 extends us0 {
    public JsonObject g;
    public final String h;

    public az7(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
        this.h = e();
    }

    private void C(String str) throws ExtractionException {
        try {
            JsonObject jsonObject = (JsonObject) a.d().a(str);
            this.g = jsonObject;
            if (jsonObject == null) {
                throw new ExtractionException("Unable to extract PeerTube channel data");
            }
        } catch (JsonParserException e) {
            throw new ExtractionException("Unable to extract PeerTube channel data", e);
        }
    }

    @Override
    public boolean B() {
        return false;
    }

    @Override
    public String k() {
        return oc5.h(this.g, "displayName");
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        fu8 fu8VarB = c23Var.b(this.h + "/api/v1/" + i());
        if (fu8VarB == null) {
            throw new ExtractionException("Unable to extract PeerTube channel data");
        }
        C(fu8VarB.c());
    }

    @Override
    public List r() {
        return mz7.e(this.h, this.g);
    }

    @Override
    public List s() {
        return mz7.f(this.h, this.g);
    }

    @Override
    public String t() {
        return this.g.getString("description");
    }

    @Override
    public String u() {
        return e() + "/feeds/videos.xml?videoChannelId=" + this.g.get(TtmlNode.ATTR_ID);
    }

    @Override
    public List v() {
        return mz7.e(this.h, this.g.getObject("ownerAccount"));
    }

    @Override
    public String w() {
        return oc5.h(this.g, "ownerAccount.name");
    }

    @Override
    public String x() {
        return oc5.h(this.g, "ownerAccount.url");
    }

    @Override
    public long y() {
        return this.g.getLong("followersCount");
    }

    @Override
    public List z() {
        return hdb.a(new Object[]{ez7.r().m(i(), hdb.a(new Object[]{"videos"}), "", e()), ez7.r().m(i(), hdb.a(new Object[]{"playlists"}), "", e())});
    }
}
