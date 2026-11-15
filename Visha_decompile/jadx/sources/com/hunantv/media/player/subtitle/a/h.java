package com.hunantv.media.player.subtitle.a;

import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Vector;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.time.DateUtils;

class h {
    private a a;
    private b b;
    private Vector<String> c;
    private g d;
    private String e;
    private final a f = new a() {
        @Override
        public void a(String str) {
        }
    };
    private final a g;
    private final a h;
    private final a i;
    private final a j;
    private final a k;

    public interface a {
        void a(String str);
    }

    public h(g gVar) {
        a aVar = new a() {
            @Override
            public void a(String str) {
                h hVar;
                a aVar2;
                if (str.startsWith("\ufeff")) {
                    str = str.substring(1);
                }
                if (str.equals("WEBVTT") || str.startsWith("WEBVTT ") || str.startsWith("WEBVTT\t")) {
                    hVar = h.this;
                    aVar2 = hVar.h;
                } else {
                    h.this.a("Not a WEBVTT header", str);
                    hVar = h.this;
                    aVar2 = hVar.f;
                }
                hVar.a = aVar2;
            }
        };
        this.g = aVar;
        this.h = new a() {
            static final boolean a = true;

            @Override
            public void a(String str) {
                if (str.length() == 0) {
                    h hVar = h.this;
                    hVar.a = hVar.i;
                    return;
                }
                if (str.contains("-->")) {
                    h hVar2 = h.this;
                    hVar2.a = hVar2.j;
                    h.this.a.a(str);
                    return;
                }
                int iIndexOf = str.indexOf(58);
                if (iIndexOf <= 0 || iIndexOf >= str.length() - 1) {
                    h.this.a("meta data header has invalid format", str);
                }
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                if (strSubstring.equals("Region")) {
                    h.this.d.a(b(strSubstring2));
                }
            }

            public d b(String str) {
                h hVar;
                String str2;
                String message;
                String str3;
                h hVar2;
                String str4;
                d dVar = new d();
                for (String str5 : str.split(" +")) {
                    int iIndexOf = str5.indexOf(61);
                    if (iIndexOf > 0 && iIndexOf != str5.length() - 1) {
                        String strSubstring = str5.substring(0, iIndexOf);
                        String strSubstring2 = str5.substring(iIndexOf + 1);
                        if (strSubstring.equals(TtmlNode.ATTR_ID)) {
                            dVar.a = strSubstring2;
                        } else if (strSubstring.equals("width")) {
                            try {
                                dVar.b = h.a(strSubstring2);
                            } catch (NumberFormatException e) {
                                e = e;
                                hVar = h.this;
                                str2 = "has invalid value";
                                message = e.getMessage();
                                str3 = "region setting";
                                hVar.a(str3, strSubstring, str2, message, strSubstring2);
                            }
                        } else if (strSubstring.equals("lines")) {
                            if (strSubstring2.matches(".*[^0-9].*")) {
                                h.this.a("lines", strSubstring, "contains an invalid character", strSubstring2);
                            } else {
                                try {
                                    int i = Integer.parseInt(strSubstring2);
                                    dVar.c = i;
                                    if (!a && i < 0) {
                                        throw new AssertionError();
                                    }
                                } catch (NumberFormatException unused) {
                                    hVar2 = h.this;
                                    str4 = "is not numeric";
                                    hVar2.a("region setting", strSubstring, str4, strSubstring2);
                                }
                            }
                        } else if (strSubstring.equals("regionanchor") || strSubstring.equals("viewportanchor")) {
                            int iIndexOf2 = strSubstring2.indexOf(StringUtils.COMMA);
                            if (iIndexOf2 < 0) {
                                hVar2 = h.this;
                                str4 = "contains no comma";
                                hVar2.a("region setting", strSubstring, str4, strSubstring2);
                            } else {
                                String strSubstring3 = strSubstring2.substring(0, iIndexOf2);
                                strSubstring2 = strSubstring2.substring(iIndexOf2 + 1);
                                try {
                                    float fA = h.a(strSubstring3);
                                    try {
                                        float fA2 = h.a(strSubstring2);
                                        if (strSubstring.charAt(0) == 'r') {
                                            dVar.d = fA;
                                            dVar.e = fA2;
                                        } else {
                                            dVar.f = fA;
                                            dVar.g = fA2;
                                        }
                                    } catch (NumberFormatException e2) {
                                        e = e2;
                                        hVar = h.this;
                                        str2 = "has invalid y component";
                                        message = e.getMessage();
                                        str3 = "region setting";
                                        hVar.a(str3, strSubstring, str2, message, strSubstring2);
                                    }
                                } catch (NumberFormatException e3) {
                                    hVar = h.this;
                                    str2 = "has invalid x component";
                                    message = e3.getMessage();
                                    str3 = "region setting";
                                    strSubstring2 = strSubstring3;
                                    hVar.a(str3, strSubstring, str2, message, strSubstring2);
                                }
                            }
                        } else if (strSubstring.equals("scroll")) {
                            if (strSubstring2.equals(ICode.CALL.CALL_DATA_DIRECTION_UP)) {
                                dVar.h = 301;
                            } else {
                                hVar2 = h.this;
                                str4 = "has invalid value";
                                hVar2.a("region setting", strSubstring, str4, strSubstring2);
                            }
                        }
                    }
                }
                return dVar;
            }
        };
        this.i = new a() {
            static final boolean a = true;

            @Override
            public void a(String str) {
                if (str.length() == 0) {
                    return;
                }
                if (!a && h.this.b != null) {
                    throw new AssertionError();
                }
                if (str.equals("NOTE") || str.startsWith("NOTE ")) {
                    h hVar = h.this;
                    hVar.a = hVar.k;
                }
                h.this.b = new b();
                h.this.c.clear();
                h hVar2 = h.this;
                hVar2.a = hVar2.j;
                boolean zContains = str.contains("-->");
                h hVar3 = h.this;
                if (zContains) {
                    hVar3.a.a(str);
                } else {
                    hVar3.b.f = str;
                }
            }
        };
        this.j = new a() {
            static final boolean a = true;

            /* JADX WARN: Code duplicated, block: B:34:0x00d1  */
            @Override
            public void a(String str) {
                h hVar;
                a aVar2;
                b bVar;
                int iB;
                b bVar2;
                int i;
                b bVar3;
                int i2;
                int iIndexOf = str.indexOf("-->");
                if (iIndexOf < 0) {
                    h.this.b = null;
                    hVar = h.this;
                    aVar2 = hVar.i;
                } else {
                    String strTrim = str.substring(0, iIndexOf).trim();
                    String strReplaceFirst = str.substring(iIndexOf + 3).replaceFirst("^\\s+", "").replaceFirst("\\s+", " ");
                    int iIndexOf2 = strReplaceFirst.indexOf(32);
                    String strSubstring = iIndexOf2 > 0 ? strReplaceFirst.substring(0, iIndexOf2) : strReplaceFirst;
                    String strSubstring2 = iIndexOf2 > 0 ? strReplaceFirst.substring(iIndexOf2 + 1) : "";
                    h.this.b.a = h.c(strTrim);
                    h.this.b.b = h.c(strSubstring);
                    for (String str2 : strSubstring2.split(" +")) {
                        int iIndexOf3 = str2.indexOf(58);
                        if (iIndexOf3 > 0 && iIndexOf3 != str2.length() - 1) {
                            String strSubstring3 = str2.substring(0, iIndexOf3);
                            String strSubstring4 = str2.substring(iIndexOf3 + 1);
                            if (strSubstring3.equals(TtmlNode.TAG_REGION)) {
                                h.this.b.i = strSubstring4;
                            } else if (strSubstring3.equals("vertical")) {
                                if (strSubstring4.equals("rl")) {
                                    bVar3 = h.this.b;
                                    i2 = 101;
                                } else if (strSubstring4.equals("lr")) {
                                    bVar3 = h.this.b;
                                    i2 = 102;
                                } else {
                                    h.this.a("cue setting", strSubstring3, "has invalid value", strSubstring4);
                                }
                                bVar3.h = i2;
                            } else if (strSubstring3.equals("line")) {
                                try {
                                    if (!a && strSubstring4.indexOf(32) >= 0) {
                                        throw new AssertionError();
                                    }
                                    if (strSubstring4.endsWith("%")) {
                                        h.this.b.j = false;
                                        bVar = h.this.b;
                                        iB = h.b(strSubstring4);
                                    } else if (strSubstring4.matches(".*[^0-9].*")) {
                                        h.this.a("cue setting", strSubstring3, "contains an invalid character", strSubstring4);
                                    } else {
                                        h.this.b.j = true;
                                        bVar = h.this.b;
                                        iB = Integer.parseInt(strSubstring4);
                                    }
                                    bVar.k = Integer.valueOf(iB);
                                } catch (NumberFormatException unused) {
                                    h.this.a("cue setting", strSubstring3, "is not numeric or percentage", strSubstring4);
                                }
                            } else if (strSubstring3.equals("position")) {
                                h.this.b.m = h.b(strSubstring4);
                            } else if (strSubstring3.equals(PlayAudioData.TAG_SIZE)) {
                                h.this.b.n = h.b(strSubstring4);
                            } else if (strSubstring3.equals("align")) {
                                if (strSubstring4.equals(TtmlNode.START)) {
                                    bVar2 = h.this.b;
                                    i = 201;
                                } else if (strSubstring4.equals("middle")) {
                                    bVar2 = h.this.b;
                                    i = 200;
                                } else if (strSubstring4.equals(TtmlNode.END)) {
                                    bVar2 = h.this.b;
                                    i = 202;
                                } else if (strSubstring4.equals(TtmlNode.LEFT)) {
                                    bVar2 = h.this.b;
                                    i = 203;
                                } else if (strSubstring4.equals(TtmlNode.RIGHT)) {
                                    bVar2 = h.this.b;
                                    i = IDrmSession.ERROR_SESSION_DRM_NULL;
                                } else {
                                    h.this.a("cue setting", strSubstring3, "has invalid value", strSubstring4);
                                }
                                bVar2.o = i;
                            }
                        }
                    }
                    if (h.this.b.k != null || h.this.b.n != 100 || h.this.b.h != 100) {
                        h.this.b.i = "";
                    }
                    hVar = h.this;
                    aVar2 = hVar.k;
                }
                hVar.a = aVar2;
            }
        };
        this.k = new a() {
            @Override
            public void a(String str) {
                if (str.length() == 0) {
                    h.this.b();
                    h hVar = h.this;
                    hVar.a = hVar.i;
                } else if (h.this.b != null) {
                    h.this.c.add(str);
                }
            }
        };
        this.a = aVar;
        this.e = "";
        this.d = gVar;
        this.c = new Vector<>();
    }

    public static float a(String str) throws NumberFormatException {
        if (!str.endsWith("%")) {
            throw new NumberFormatException("does not end in %");
        }
        String strSubstring = str.substring(0, str.length() - 1);
        if (strSubstring.matches(".*[^0-9.].*")) {
            throw new NumberFormatException("contains an invalid character");
        }
        try {
            float f = Float.parseFloat(strSubstring);
            if (f < 0.0f || f > 100.0f) {
                throw new NumberFormatException("is out of range");
            }
            return f;
        } catch (NumberFormatException unused) {
            throw new NumberFormatException("is not a number");
        }
    }

    public static int b(String str) throws NumberFormatException {
        if (!str.endsWith("%")) {
            throw new NumberFormatException("does not end in %");
        }
        String strSubstring = str.substring(0, str.length() - 1);
        if (strSubstring.matches(".*[^0-9].*")) {
            throw new NumberFormatException("contains an invalid character");
        }
        try {
            int i = Integer.parseInt(strSubstring);
            if (i < 0 || i > 100) {
                throw new NumberFormatException("is out of range");
            }
            return i;
        } catch (NumberFormatException unused) {
            throw new NumberFormatException("is not a number");
        }
    }

    public static long c(String str) throws NumberFormatException {
        if (!str.matches("(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}")) {
            throw new NumberFormatException("has invalid format");
        }
        String[] strArrSplit = str.split("\\.", 2);
        long j = 0;
        for (String str2 : strArrSplit[0].split(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        return (j * 1000) + Long.parseLong(strArrSplit[1]);
    }

    public void d(String str) {
        boolean z;
        String strReplace = (this.e + str.replace("\u0000", "�")).replace(IOUtils.LINE_SEPARATOR_WINDOWS, "\n");
        this.e = strReplace;
        if (strReplace.endsWith(org.apache.commons.lang3.StringUtils.CR)) {
            String str2 = this.e;
            this.e = str2.substring(0, str2.length() - 1);
            z = true;
        } else {
            z = false;
        }
        String[] strArrSplit = this.e.split("[\r\n]");
        for (int i = 0; i < strArrSplit.length - 1; i++) {
            this.a.a(strArrSplit[i]);
        }
        this.e = strArrSplit[strArrSplit.length - 1];
        if (z) {
            this.e += org.apache.commons.lang3.StringUtils.CR;
        }
    }

    public void b() {
        if (this.b != null && this.c.size() > 0) {
            this.b.p = new String[this.c.size()];
            this.c.toArray(this.b.p);
            this.c.clear();
            this.d.a(this.b);
        }
        this.b = null;
    }

    public static String a(long j) {
        return String.format("%d:%02d:%02d.%03d", Long.valueOf(j / DateUtils.MILLIS_PER_HOUR), Long.valueOf((j / 60000) % 60), Long.valueOf((j / 1000) % 60), Long.valueOf(j % 1000));
    }

    public void a() {
        if (this.e.endsWith(org.apache.commons.lang3.StringUtils.CR)) {
            String str = this.e;
            this.e = str.substring(0, str.length() - 1);
        }
        this.a.a(this.e);
        this.e = "";
        b();
        this.a = this.g;
    }

    public void a(String str, String str2) {
        Log.w(getClass().getName(), str + " ('" + str2 + "')");
    }

    public void a(String str, String str2, String str3, String str4) {
        Log.w(getClass().getName(), str + " '" + str2 + "' " + str3 + " ('" + str4 + "')");
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        Log.w(getClass().getName(), str + " '" + str2 + "' " + str3 + " ('" + str5 + "' " + str4 + ")");
    }
}
