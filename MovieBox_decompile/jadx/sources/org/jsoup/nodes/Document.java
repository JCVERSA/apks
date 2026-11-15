package org.jsoup.nodes;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public class Document extends Element {

    private OutputSettings f68563j;

    private QuirksMode f68564k;

    private String f68565l;

    private boolean f68566m;

    public static class OutputSettings implements Cloneable {

        private Charset f68568b;

        Entities.CoreCharset f68570d;

        private Entities.EscapeMode f68567a = Entities.EscapeMode.base;

        private ThreadLocal f68569c = new ThreadLocal();

        private boolean f68571e = true;

        private boolean f68572f = false;

        private int f68573g = 1;

        private Syntax f68574h = Syntax.html;

        public enum Syntax {
            html,
            xml
        }

        public OutputSettings() {
            c(Charset.forName("UTF8"));
        }

        public Charset a() {
            return this.f68568b;
        }

        public OutputSettings b(String str) {
            c(Charset.forName(str));
            return this;
        }

        public OutputSettings c(Charset charset) {
            this.f68568b = charset;
            return this;
        }

        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.b(this.f68568b.name());
                outputSettings.f68567a = Entities.EscapeMode.valueOf(this.f68567a.name());
                return outputSettings;
            } catch (CloneNotSupportedException e10) {
                throw new RuntimeException(e10);
            }
        }

        CharsetEncoder g() {
            CharsetEncoder charsetEncoder = (CharsetEncoder) this.f68569c.get();
            return charsetEncoder != null ? charsetEncoder : l();
        }

        public Entities.EscapeMode i() {
            return this.f68567a;
        }

        public int j() {
            return this.f68573g;
        }

        public boolean k() {
            return this.f68572f;
        }

        CharsetEncoder l() {
            CharsetEncoder charsetEncoderNewEncoder = this.f68568b.newEncoder();
            this.f68569c.set(charsetEncoderNewEncoder);
            this.f68570d = Entities.CoreCharset.byName(charsetEncoderNewEncoder.charset().name());
            return charsetEncoderNewEncoder;
        }

        public boolean m() {
            return this.f68571e;
        }

        public Syntax n() {
            return this.f68574h;
        }

        public OutputSettings o(Syntax syntax) {
            this.f68574h = syntax;
            return this;
        }
    }

    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public Document(String str) {
        super(org.jsoup.parser.f.l("#root", org.jsoup.parser.d.f68670c), str);
        this.f68563j = new OutputSettings();
        this.f68564k = QuirksMode.noQuirks;
        this.f68566m = false;
        this.f68565l = str;
    }

    private Element f1(String str, j jVar) {
        if (jVar.B().equals(str)) {
            return (Element) jVar;
        }
        int iN = jVar.n();
        for (int i10 = 0; i10 < iN; i10++) {
            Element elementF1 = f1(str, jVar.m(i10));
            if (elementF1 != null) {
                return elementF1;
            }
        }
        return null;
    }

    @Override
    public String B() {
        return "#document";
    }

    @Override
    public String D() {
        return super.B0();
    }

    @Override
    public Element X0(String str) {
        d1().X0(str);
        return this;
    }

    public Element d1() {
        return f1(TtmlNode.TAG_BODY, this);
    }

    @Override
    public Document q() {
        Document document = (Document) super.q();
        document.f68563j = this.f68563j.clone();
        return document;
    }

    public OutputSettings g1() {
        return this.f68563j;
    }

    public QuirksMode h1() {
        return this.f68564k;
    }

    public Document i1(QuirksMode quirksMode) {
        this.f68564k = quirksMode;
        return this;
    }

    public String j1() {
        Element elementFirst = y0(CampaignEx.JSON_KEY_TITLE).first();
        return elementFirst != null ? org.jsoup.helper.c.k(elementFirst.W0()).trim() : "";
    }
}
