package org.jsoup.nodes;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.dx7;
import defpackage.tda;
import defpackage.tw7;
import defpackage.xs1;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public class Document extends Element {
    public static final org.jsoup.select.c q = new org.jsoup.select.c.j0("title");
    public OutputSettings l;
    public dx7 m;
    public QuirksMode n;
    public final String o;
    public boolean p;

    public static class OutputSettings implements Cloneable {
        public Entities.CoreCharset e;
        public Entities.EscapeMode b = Entities.EscapeMode.base;
        public Charset c = xs1.b;
        public final ThreadLocal d = new ThreadLocal();
        public boolean f = true;
        public boolean g = false;
        public int h = 1;
        public Syntax i = Syntax.html;

        public enum Syntax {
            html,
            xml
        }

        public OutputSettings a(String str) {
            c(Charset.forName(str));
            return this;
        }

        public OutputSettings c(Charset charset) {
            this.c = charset;
            return this;
        }

        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.a(this.c.name());
                outputSettings.b = Entities.EscapeMode.valueOf(this.b.name());
                return outputSettings;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }

        public CharsetEncoder e() {
            CharsetEncoder charsetEncoder = (CharsetEncoder) this.d.get();
            return charsetEncoder != null ? charsetEncoder : i();
        }

        public Entities.EscapeMode f() {
            return this.b;
        }

        public int g() {
            return this.h;
        }

        public boolean h() {
            return this.g;
        }

        public CharsetEncoder i() {
            CharsetEncoder charsetEncoderNewEncoder = this.c.newEncoder();
            this.d.set(charsetEncoderNewEncoder);
            this.e = Entities.CoreCharset.byName(charsetEncoderNewEncoder.charset().name());
            return charsetEncoderNewEncoder;
        }

        public boolean j() {
            return this.f;
        }

        public Syntax k() {
            return this.i;
        }
    }

    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public Document(String str) {
        super(tda.p("#root", tw7.c), str);
        this.l = new OutputSettings();
        this.n = QuirksMode.noQuirks;
        this.p = false;
        this.o = str;
        this.m = dx7.c();
    }

    public QuirksMode A1() {
        return this.n;
    }

    public Document B1(QuirksMode quirksMode) {
        this.n = quirksMode;
        return this;
    }

    @Override
    public String E() {
        return "#document";
    }

    @Override
    public String G() {
        return super.L0();
    }

    @Override
    public Element o1(String str) {
        u1().o1(str);
        return this;
    }

    public Element u1() {
        Element elementW1 = w1();
        for (Element element : elementW1.s0()) {
            if (TtmlNode.TAG_BODY.equals(element.V0()) || "frameset".equals(element.V0())) {
                return element;
            }
        }
        return elementW1.l0(TtmlNode.TAG_BODY);
    }

    @Override
    public Document s() {
        Document document = (Document) super.s();
        document.l = this.l.clone();
        return document;
    }

    public final Element w1() {
        for (Element element : s0()) {
            if (element.V0().equals("html")) {
                return element;
            }
        }
        return l0("html");
    }

    public OutputSettings x1() {
        return this.l;
    }

    public dx7 y1() {
        return this.m;
    }

    public Document z1(dx7 dx7Var) {
        this.m = dx7Var;
        return this;
    }
}
