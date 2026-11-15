package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.playlist.b;

public class o60 implements b {
    public final Element a;
    public final Element b;

    public o60(Element element) {
        this.a = element;
        this.b = element.G0("result-info").first();
    }

    @Override
    public String a() {
        return null;
    }

    @Override
    public String b() {
        return this.b.G0("subhead").text().split(" by")[0];
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public long d() {
        return Integer.parseInt(this.b.G0(SessionDescription.ATTR_LENGTH).text().split(" track")[0]);
    }

    @Override
    public String getName() {
        return this.b.G0("heading").text();
    }

    @Override
    public String getUrl() {
        return this.b.G0("itemurl").text();
    }

    @Override
    public List j() {
        return j60.j(this.a);
    }
}
