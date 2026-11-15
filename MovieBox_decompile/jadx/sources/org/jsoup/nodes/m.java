package org.jsoup.nodes;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.IOException;

public class m extends i {

    private final boolean f68607e;

    public m(String str, boolean z10) {
        org.jsoup.helper.d.j(str);
        this.f68600c = str;
        this.f68607e = z10;
    }

    private void c0(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        for (a aVar : i()) {
            if (!aVar.getKey().equals(B())) {
                appendable.append(' ');
                aVar.g(appendable, outputSettings);
            }
        }
    }

    @Override
    public String B() {
        return "#declaration";
    }

    @Override
    void F(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        Appendable appendableAppend = appendable.append("<");
        boolean z10 = this.f68607e;
        String str = UrlUtils.QUESTION_MARK;
        appendableAppend.append(z10 ? "!" : UrlUtils.QUESTION_MARK).append(a0());
        c0(appendable, outputSettings);
        if (this.f68607e) {
            str = "!";
        }
        appendable.append(str).append(">");
    }

    @Override
    void G(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
    }

    @Override
    public String a(String str) {
        return super.a(str);
    }

    public String d0() {
        return a0();
    }

    @Override
    public String g(String str) {
        return super.g(str);
    }

    @Override
    public String j() {
        return super.j();
    }

    @Override
    public int n() {
        return super.n();
    }

    @Override
    public String toString() {
        return D();
    }

    @Override
    public boolean w(String str) {
        return super.w(str);
    }
}
