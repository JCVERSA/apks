package defpackage;

import java.util.HashMap;
import java.util.Map;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

public abstract class hvc {
    public static final Map a = new HashMap();
    public static String b;
    public static Integer c;
    public static String d;
    public static String e;
    public static String f;
    public static ParsingException g;
    public static ParsingException h;
    public static ParsingException i;

    public static String a(String str, String str2) throws Exception {
        ParsingException parsingException = h;
        if (parsingException != null) {
            throw parsingException;
        }
        b(str);
        if (d == null) {
            try {
                d = yxc.c(b);
            } catch (ParsingException e2) {
                h = e2;
                throw e2;
            } catch (Exception e3) {
                h = new ParsingException("Could not get signature parameter deobfuscation JavaScript function", e3);
                throw e3;
            }
        }
        try {
            return (String) gvc.a(g85.b(d, "deobfuscate", str2), "");
        } catch (Exception e4) {
            throw new ParsingException("Could not run signature parameter deobfuscation JavaScript function", e4);
        }
    }

    public static void b(String str) {
        if (b == null) {
            b = fvc.c(str);
        }
    }

    public static Integer c(String str) throws Exception {
        Integer num = c;
        if (num != null) {
            return num;
        }
        ParsingException parsingException = i;
        if (parsingException != null) {
            throw parsingException;
        }
        b(str);
        try {
            c = Integer.valueOf(yxc.f(b));
        } catch (NumberFormatException e2) {
            i = new ParsingException("Could not convert signature timestamp to a number", e2);
        } catch (ParsingException e3) {
            i = e3;
            throw e3;
        } catch (Exception e4) {
            i = new ParsingException("Could not get signature timestamp", e4);
            throw e4;
        }
        return c;
    }

    public static String d(String str, String str2) throws Exception {
        String strD = ezc.d(str2);
        if (strD == null) {
            return str2;
        }
        Map map = a;
        CharSequence charSequence = (String) map.get(strD);
        if (charSequence != null) {
            return str2.replace(strD, charSequence);
        }
        b(str);
        ParsingException parsingException = g;
        if (parsingException != null) {
            throw parsingException;
        }
        if (f == null) {
            try {
                String strC = ezc.c(b);
                e = strC;
                f = ezc.b(b, strC);
            } catch (ParsingException e2) {
                g = e2;
                throw e2;
            } catch (Exception e3) {
                g = new ParsingException("Could not get throttling parameter deobfuscation JavaScript function", e3);
                throw e3;
            }
        }
        try {
            String strB = g85.b(f, e, strD);
            map.put(strD, strB);
            return str2.replace(strD, strB);
        } catch (Exception e4) {
            throw new ParsingException("Could not run throttling parameter deobfuscation JavaScript function", e4);
        }
    }
}
