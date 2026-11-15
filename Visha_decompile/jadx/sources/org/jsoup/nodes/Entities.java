package org.jsoup.nodes;

import defpackage.dnb;
import defpackage.m0a;
import defpackage.nv0;
import defpackage.wa3;
import java.io.IOException;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import org.apache.commons.lang3.CharEncoding;
import org.jsoup.SerializationException;

public abstract class Entities {
    public static final char[] a = {',', ';'};
    public static final HashMap b = new HashMap();
    public static final Document.OutputSettings c = new Document.OutputSettings();

    public enum CoreCharset {
        ascii,
        utf,
        fallback;

        public static CoreCharset byName(String str) {
            if (str.equals(CharEncoding.US_ASCII)) {
                return ascii;
            }
            return str.startsWith("UTF-") ? utf : fallback;
        }
    }

    public enum EscapeMode {
        xhtml(wa3.a, 4),
        base(wa3.b, 106),
        extended(wa3.c, 2125);

        private int[] codeKeys;
        private int[] codeVals;
        private String[] nameKeys;
        private String[] nameVals;

        EscapeMode(String str, int i) {
            Entities.j(this, str, i);
        }

        private int size() {
            return this.nameKeys.length;
        }

        public int codepointForName(String str) {
            int iBinarySearch = Arrays.binarySearch(this.nameKeys, str);
            if (iBinarySearch >= 0) {
                return this.codeVals[iBinarySearch];
            }
            return -1;
        }

        public String nameForCodepoint(int i) {
            int iBinarySearch = Arrays.binarySearch(this.codeKeys, i);
            if (iBinarySearch < 0) {
                return "";
            }
            String[] strArr = this.nameVals;
            if (iBinarySearch < strArr.length - 1) {
                int i2 = iBinarySearch + 1;
                if (this.codeKeys[i2] == i) {
                    return strArr[i2];
                }
            }
            return strArr[iBinarySearch];
        }
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[CoreCharset.values().length];
            a = iArr;
            try {
                iArr[CoreCharset.ascii.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CoreCharset.utf.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static void b(Appendable appendable, EscapeMode escapeMode, int i) throws IOException {
        String strNameForCodepoint = escapeMode.nameForCodepoint(i);
        if ("".equals(strNameForCodepoint)) {
            appendable.append("&#x").append(Integer.toHexString(i)).append(';');
        } else {
            appendable.append('&').append(strNameForCodepoint).append(';');
        }
    }

    public static boolean c(CoreCharset coreCharset, char c2, CharsetEncoder charsetEncoder) {
        int i = a.a[coreCharset.ordinal()];
        if (i == 1) {
            return c2 < 128;
        }
        if (i != 2) {
            return charsetEncoder.canEncode(c2);
        }
        return true;
    }

    public static int d(String str, int[] iArr) {
        String str2 = (String) b.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int iCodepointForName = EscapeMode.extended.codepointForName(str);
        if (iCodepointForName == -1) {
            return 0;
        }
        iArr[0] = iCodepointForName;
        return 1;
    }

    public static String e(String str) {
        return f(str, c);
    }

    public static String f(String str, Document.OutputSettings outputSettings) {
        if (str == null) {
            return "";
        }
        StringBuilder sbB = m0a.b();
        try {
            g(sbB, str, outputSettings, false, false, false);
            return m0a.m(sbB);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003c  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ce  */
    public static void g(Appendable appendable, String str, Document.OutputSettings outputSettings, boolean z, boolean z2, boolean z3) {
        String str2;
        char c2;
        EscapeMode escapeModeF = outputSettings.f();
        CharsetEncoder charsetEncoderE = outputSettings.e();
        CoreCharset coreCharset = outputSettings.e;
        int length = str.length();
        int iCharCount = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (z2) {
                if (!m0a.i(iCodePointAt)) {
                    z5 = false;
                    z4 = true;
                    if (iCodePointAt < 65536) {
                        c2 = (char) iCodePointAt;
                        if (c2 != '\t') {
                            appendable.append(c2);
                        } else {
                            appendable.append(c2);
                        }
                    } else {
                        str2 = new String(Character.toChars(iCodePointAt));
                        if (charsetEncoderE.canEncode(str2)) {
                            appendable.append(str2);
                        } else {
                            b(appendable, escapeModeF, iCodePointAt);
                        }
                    }
                } else if ((!z3 || z4) && !z5) {
                    appendable.append(' ');
                    z5 = true;
                }
            } else if (iCodePointAt < 65536) {
                c2 = (char) iCodePointAt;
                if (c2 != '\t' || c2 == '\n' || c2 == '\r') {
                    appendable.append(c2);
                } else if (c2 != '\"') {
                    if (c2 == '&') {
                        appendable.append("&amp;");
                    } else if (c2 != '<') {
                        if (c2 != '>') {
                            if (c2 != 160) {
                                if (c2 < ' ' || !c(coreCharset, c2, charsetEncoderE)) {
                                    b(appendable, escapeModeF, iCodePointAt);
                                } else {
                                    appendable.append(c2);
                                }
                            } else if (escapeModeF != EscapeMode.xhtml) {
                                appendable.append("&nbsp;");
                            } else {
                                appendable.append("&#xa0;");
                            }
                        } else if (z) {
                            appendable.append(c2);
                        } else {
                            appendable.append("&gt;");
                        }
                    } else if (!z || escapeModeF == EscapeMode.xhtml || outputSettings.k() == Document.OutputSettings.Syntax.xml) {
                        appendable.append("&lt;");
                    } else {
                        appendable.append(c2);
                    }
                } else if (z) {
                    appendable.append("&quot;");
                } else {
                    appendable.append(c2);
                }
            } else {
                str2 = new String(Character.toChars(iCodePointAt));
                if (charsetEncoderE.canEncode(str2)) {
                    appendable.append(str2);
                } else {
                    b(appendable, escapeModeF, iCodePointAt);
                }
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }

    public static boolean h(String str) {
        return EscapeMode.base.codepointForName(str) != -1;
    }

    public static boolean i(String str) {
        return EscapeMode.extended.codepointForName(str) != -1;
    }

    public static void j(EscapeMode escapeMode, String str, int i) {
        int i2;
        escapeMode.nameKeys = new String[i];
        escapeMode.codeVals = new int[i];
        escapeMode.codeKeys = new int[i];
        escapeMode.nameVals = new String[i];
        nv0 nv0Var = new nv0(str);
        int i3 = 0;
        while (!nv0Var.u()) {
            try {
                String strN = nv0Var.n('=');
                nv0Var.a();
                int i4 = Integer.parseInt(nv0Var.p(a), 36);
                char cT = nv0Var.t();
                nv0Var.a();
                if (cT == ',') {
                    i2 = Integer.parseInt(nv0Var.n(';'), 36);
                    nv0Var.a();
                } else {
                    i2 = -1;
                }
                int i5 = Integer.parseInt(nv0Var.n('&'), 36);
                nv0Var.a();
                escapeMode.nameKeys[i3] = strN;
                escapeMode.codeVals[i3] = i4;
                escapeMode.codeKeys[i5] = i4;
                escapeMode.nameVals[i5] = strN;
                if (i2 != -1) {
                    b.put(strN, new String(new int[]{i4, i2}, 0, 2));
                }
                i3++;
            } catch (Throwable th) {
                nv0Var.d();
                throw th;
            }
        }
        dnb.d(i3 == i, "Unexpected count of entities loaded");
        nv0Var.d();
    }
}
