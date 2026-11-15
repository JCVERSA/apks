package defpackage;

import com.grack.nanojson.JsonObject;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.hubsdk.display.BuildConfig;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public class uc6 implements py9 {
    public final JsonObject a;
    public final String b;
    public final JsonObject c;

    public uc6(JsonObject jsonObject, String str, JsonObject jsonObject2) {
        this.a = jsonObject;
        this.b = str;
        this.c = jsonObject2;
    }

    @Override
    public String a() {
        return "https://media.ccc.de/c/" + this.a.getString("slug");
    }

    @Override
    public String b() {
        return this.a.getString("conference") + " - " + this.b + " - " + this.c.getString(BuildConfig.FLAVOR);
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String f() {
        return null;
    }

    @Override
    public DateWrapper g() {
        return null;
    }

    @Override
    public long getDuration() {
        return 0L;
    }

    @Override
    public String getName() {
        return this.c.getObject("talks").getObject("current").getString("title");
    }

    @Override
    public String getUrl() {
        return this.c.getString(AuthInfo.Component.CODE_LINK);
    }

    @Override
    public List j() {
        return wc6.c(this.c);
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        Iterator<Object> it = this.c.getArray("streams").iterator();
        while (it.hasNext()) {
            if ("video".equals(((JsonObject) it.next()).getString("type"))) {
                return StreamType.LIVE_STREAM;
            }
        }
        return StreamType.AUDIO_LIVE_STREAM;
    }

    @Override
    public long w() {
        return -1L;
    }
}
