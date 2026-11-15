package org.schabi.newpipe.extractor.stream;

import defpackage.mk3;
import defpackage.yz4;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.utils.Parser;

public abstract class StreamExtractor extends mk3 {

    public enum Privacy {
        PUBLIC,
        UNLISTED,
        PRIVATE,
        INTERNAL,
        OTHER
    }

    public StreamExtractor(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler);
    }

    public String A() {
        return "";
    }

    public Locale B() {
        return null;
    }

    public long C() {
        return 0L;
    }

    public String D() {
        return "";
    }

    public long E() {
        return -1L;
    }

    public List F() {
        return Collections.emptyList();
    }

    public Privacy G() {
        return Privacy.PUBLIC;
    }

    public yz4 H() {
        return null;
    }

    public List I() {
        return Collections.emptyList();
    }

    public abstract StreamType J();

    public List K() {
        return Collections.emptyList();
    }

    public String L() {
        return "";
    }

    public String M() {
        return "";
    }

    public List N() {
        return Collections.emptyList();
    }

    public String O() {
        return "";
    }

    public List P() {
        return Collections.emptyList();
    }

    public String Q() {
        return null;
    }

    public abstract List R();

    public long S() {
        return 0L;
    }

    public long T(String str) throws ParsingException {
        String strO;
        String strO2;
        String strO3 = "";
        try {
            String strO4 = Parser.o(str, l());
            if (strO4.isEmpty()) {
                return 0L;
            }
            try {
                strO = Parser.o("(\\d+)s", strO4);
                try {
                    strO2 = Parser.o("(\\d+)m", strO4);
                    try {
                        strO3 = Parser.o("(\\d+)h", strO4);
                    } catch (Exception unused) {
                        try {
                            if (strO.isEmpty() && strO2.isEmpty()) {
                                strO = Parser.o("t=(\\d+)", strO4);
                            }
                        } catch (ParsingException e) {
                            throw new ParsingException("Could not get timestamp.", e);
                        }
                    }
                } catch (Exception unused2) {
                    strO2 = "";
                }
            } catch (Exception unused3) {
                strO = "";
                strO2 = strO;
            }
            int i = 0;
            int i2 = strO.isEmpty() ? 0 : Integer.parseInt(strO);
            int i3 = strO2.isEmpty() ? 0 : Integer.parseInt(strO2);
            if (!strO3.isEmpty()) {
                i = Integer.parseInt(strO3);
            }
            return ((long) i2) + (((long) i3) * 60) + (((long) i) * 3600);
        } catch (Parser.RegexException unused4) {
            return -2L;
        }
    }

    public DateWrapper U() {
        return null;
    }

    public List V() {
        return Collections.emptyList();
    }

    public abstract String W();

    public long X() {
        return -1L;
    }

    public abstract String Y();

    public abstract List Z();

    public abstract List a0();

    public long b0() {
        return -1L;
    }

    public boolean c0() {
        return false;
    }

    public boolean d0() {
        return false;
    }

    public int r() {
        return 0;
    }

    public abstract List s();

    public String t() {
        return "";
    }

    public String u() {
        return "";
    }

    public abstract Description v();

    public long w() {
        return -1L;
    }

    public String x() {
        return null;
    }

    public List y() {
        return Collections.emptyList();
    }

    public String z() {
        return "";
    }
}
