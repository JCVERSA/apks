package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.UncheckedIOException;

public class c extends j {
    public c(String str) {
        super(str);
    }

    @Override
    public String E() {
        return "#cdata";
    }

    @Override
    public void I(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<![CDATA[").append(h0());
    }

    @Override
    public void J(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        try {
            appendable.append("]]>");
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    @Override
    public c x0() {
        return (c) super.x0();
    }
}
