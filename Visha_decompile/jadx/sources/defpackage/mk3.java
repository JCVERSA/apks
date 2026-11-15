package defpackage;

import java.util.Objects;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;

public abstract class mk3 {
    public final StreamingService a;
    public final LinkHandler b;
    public Localization c = null;
    public ContentCountry d = null;
    public boolean e = false;
    public final c23 f;

    public mk3(StreamingService streamingService, LinkHandler linkHandler) {
        Objects.requireNonNull(streamingService, "service is null");
        this.a = streamingService;
        Objects.requireNonNull(linkHandler, "LinkHandler is null");
        this.b = linkHandler;
        c23 c23VarC = a.c();
        Objects.requireNonNull(c23VarC, "downloader is null");
        this.f = c23VarC;
    }

    public void a() {
        if (!this.e) {
            throw new IllegalStateException("Page is not fetched. Make sure you call fetchPage()");
        }
    }

    public void b() {
        if (this.e) {
            return;
        }
        q(this.f);
        this.e = true;
    }

    public void c(ContentCountry contentCountry) {
        this.d = contentCountry;
    }

    public void d(Localization localization) {
        this.c = localization;
    }

    public String e() {
        return this.b.getBaseUrl();
    }

    public c23 f() {
        return this.f;
    }

    public ContentCountry g() {
        ContentCountry contentCountry = this.d;
        return contentCountry == null ? m().h() : contentCountry;
    }

    public Localization h() {
        Localization localization = this.c;
        return localization == null ? m().l() : localization;
    }

    public String i() {
        return this.b.getId();
    }

    public LinkHandler j() {
        return this.b;
    }

    public abstract String k();

    public String l() {
        return this.b.getOriginalUrl();
    }

    public StreamingService m() {
        return this.a;
    }

    public int n() {
        return this.a.q();
    }

    public ona o() {
        return m().x(h());
    }

    public String p() {
        return this.b.getUrl();
    }

    public abstract void q(c23 c23Var);
}
