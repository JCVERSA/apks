package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.grack.nanojson.JsonObject;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamType;

public class ld6 implements py9 {
    public final JsonObject a;

    public ld6(JsonObject jsonObject) {
        this.a = jsonObject;
    }

    @Override
    public String a() {
        return this.a.getString("conference_url");
    }

    @Override
    public String b() {
        return this.a.getString("conference_title");
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String f() {
        return this.a.getString("release_date");
    }

    @Override
    public DateWrapper g() {
        String strF = f();
        if (strF == null) {
            return null;
        }
        return new DateWrapper(wc6.g(strF));
    }

    @Override
    public long getDuration() {
        return this.a.getInt(SessionDescription.ATTR_LENGTH);
    }

    @Override
    public String getName() {
        return this.a.getString("title");
    }

    @Override
    public String getUrl() {
        return "https://media.ccc.de/public/events/" + this.a.getString(DownloadFacadeEnum.USER_GUID);
    }

    @Override
    public List j() {
        return wc6.e(this.a);
    }

    @Override
    public boolean s() {
        return false;
    }

    @Override
    public StreamType u() {
        return StreamType.VIDEO_STREAM;
    }

    @Override
    public long w() {
        return this.a.getInt("view_count");
    }
}
