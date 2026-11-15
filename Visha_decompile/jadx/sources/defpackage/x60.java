package defpackage;

import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.playlist.b;

public class x60 implements b {
    public final Element a;

    public x60(Element element) {
        this.a = element;
    }

    @Override
    public String a() {
        return null;
    }

    @Override
    public String b() {
        return this.a.G0("by-artist").text().replace("by ", "");
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public long d() {
        return -1L;
    }

    @Override
    public String getName() {
        return this.a.G0("release-title").text();
    }

    @Override
    public String getUrl() {
        return this.a.G0("album-link").attr("abs:href");
    }

    @Override
    public List j() {
        return j60.i(this.a.G0("album-art").attr("src"));
    }
}
