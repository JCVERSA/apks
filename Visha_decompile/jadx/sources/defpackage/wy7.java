package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class wy7 extends us0 {
    public JsonObject g;
    public final String h;

    public wy7(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
        this.h = e();
    }

    @Override
    public boolean B() {
        return false;
    }

    public final void C(String str) throws ExtractionException {
        try {
            JsonObject jsonObject = (JsonObject) a.d().a(str);
            this.g = jsonObject;
            if (jsonObject == null) {
                throw new ExtractionException("Unable to extract PeerTube account data");
            }
        } catch (JsonParserException e) {
            throw new ExtractionException("Unable to extract PeerTube account data", e);
        }
    }

    @Override
    public String k() {
        return oc5.h(this.g, "displayName");
    }

    @Override
    public void q(c23 c23Var) throws ExtractionException {
        fu8 fu8VarB = c23Var.b(this.h + "/api/v1/" + i());
        if (fu8VarB == null) {
            throw new ExtractionException("Unable to extract PeerTube account data");
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
        return e() + "/feeds/videos.xml?accountId=" + this.g.get(TtmlNode.ATTR_ID);
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String w() {
        return "";
    }

    @Override
    public String x() {
        return "";
    }

    @Override
    public long y() {
        String str;
        long j = this.g.getLong("followersCount");
        String str2 = this.h + "/api/v1/";
        if (i().contains("accounts/")) {
            str = str2 + i();
        } else {
            str = str2 + "accounts/" + i();
        }
        try {
            Iterator<Object> it = ((JsonObject) a.d().a(f().b(str + "/video-channels").c())).getArray("data").iterator();
            while (it.hasNext()) {
                j += (long) ((JsonObject) it.next()).getInt("followersCount");
            }
        } catch (JsonParserException | IOException | ReCaptchaException unused) {
        }
        return j;
    }

    @Override
    public List z() {
        return hdb.a(new Object[]{ez7.r().m(i(), hdb.a(new Object[]{"videos"}), "", e()), ez7.r().m(i(), hdb.a(new Object[]{"channels"}), "", e())});
    }
}
