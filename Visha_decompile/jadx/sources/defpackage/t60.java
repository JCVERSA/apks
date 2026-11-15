package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.hunantv.imgo.net.entity.AuthInfo;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public class t60 implements py9 {
    public final JsonObject a;

    public t60(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return "";
    }

    @Override
    public String b() {
        return this.a.getString("title");
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String f() {
        return this.a.getString("date");
    }

    @Override
    public DateWrapper g() {
        return j60.r(f());
    }

    @Override
    public long getDuration() {
        return 0L;
    }

    @Override
    public String getName() {
        return this.a.getString(AuthInfo.Component.CODE_SUBTITLE);
    }

    @Override
    public String getUrl() {
        return "https://bandcamp.com/?show=" + this.a.getInt(TtmlNode.ATTR_ID);
    }

    @Override
    public List j() {
        return j60.h(this.a.getLong("image_id"), false);
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return StreamType.AUDIO_STREAM;
    }

    @Override
    public String v() {
        return this.a.getString("desc");
    }

    @Override
    public long w() {
        return -1L;
    }
}
