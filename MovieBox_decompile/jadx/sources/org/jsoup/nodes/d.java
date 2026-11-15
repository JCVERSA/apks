package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.UncheckedIOException;

public class d extends l {
    public d(String str) {
        super(str);
    }

    @Override
    public String B() {
        return "#cdata";
    }

    @Override
    void F(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<![CDATA[").append(c0());
    }

    @Override
    void G(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
        try {
            appendable.append("]]>");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }
}
