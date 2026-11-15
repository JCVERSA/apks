package defpackage;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public class yz7 implements py9 {
    public final JsonObject a;
    public String b;

    public yz7(JsonObject jsonObject, String str) {
        this.a = jsonObject;
        this.b = str;
    }

    public void B(String str) {
        this.b = str;
    }

    @Override
    public String a() {
        String strH = oc5.h(this.a, "account.name");
        String strH2 = oc5.h(this.a, "account.host");
        return ce9.d.c().c("accounts/" + strH + "@" + strH2, this.b).getUrl();
    }

    @Override
    public String b() {
        return oc5.h(this.a, "account.displayName");
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List e() {
        return mz7.e(this.b, this.a.getObject("account"));
    }

    @Override
    public String f() {
        return oc5.h(this.a, "publishedAt");
    }

    @Override
    public DateWrapper g() {
        String strF = f();
        if (strF == null) {
            return null;
        }
        return new DateWrapper(mz7.m(strF));
    }

    @Override
    public long getDuration() {
        return this.a.getLong("duration");
    }

    @Override
    public String getName() {
        return oc5.h(this.a, "name");
    }

    @Override
    public String getUrl() {
        return ce9.d.u().c(oc5.h(this.a, "uuid"), this.b).getUrl();
    }

    @Override
    public List j() {
        return mz7.j(this.b, this.a);
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return this.a.getBoolean("isLive") ? StreamType.LIVE_STREAM : StreamType.VIDEO_STREAM;
    }

    @Override
    public long w() {
        return this.a.getLong("views");
    }
}
