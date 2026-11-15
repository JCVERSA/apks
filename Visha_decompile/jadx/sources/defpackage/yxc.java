package defpackage;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

public abstract class yxc {
    public static final Pattern[] a = {Pattern.compile("\\bm=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(h\\.s\\)\\)"), Pattern.compile("\\bc&&\\(c=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(c\\)\\)"), Pattern.compile("(?:\\b|[^a-zA-Z0-9$])([a-zA-Z0-9$]{2,})\\s*=\\s*function\\(\\s*a\\s*\\)\\s*\\{\\s*a\\s*=\\s*a\\.split\\(\\s*\"\"\\s*\\)"), Pattern.compile("([\\w$]+)\\s*=\\s*function\\((\\w+)\\)\\{\\s*\\2=\\s*\\2\\.split\\(\"\"\\)\\s*;")};

    public static String a(String str, String str2) throws ParsingException {
        String str3 = str2 + "=function";
        return str3 + h85.a(str, str3);
    }

    public static String b(String str, String str2) {
        return "var " + Parser.o("(" + Pattern.quote(str2) + "=function\\([a-zA-Z0-9_]+\\)\\{.+?\\})", str);
    }

    public static String c(String str) throws ParsingException {
        String strB;
        try {
            String strD = d(str);
            try {
                strB = a(str, strD);
            } catch (Exception unused) {
                strB = b(str, strD);
            }
            g85.a(strB);
            return e(str, Parser.o(";([A-Za-z0-9_\\$]{2,})\\...\\(", strB)) + strB + ProcessInfo.SPLIT_NEW_VERSION + ("function deobfuscate(a){return " + strD + "(a);}");
        } catch (Exception e) {
            throw new ParsingException("Could not parse deobfuscation function", e);
        }
    }

    public static String d(String str) throws ParsingException {
        try {
            return Parser.q(a, str);
        } catch (Parser.RegexException e) {
            throw new ParsingException("Could not find deobfuscation function with any of the known patterns", e);
        }
    }

    public static String e(String str, String str2) {
        return Parser.o("(var " + Pattern.quote(str2) + "=\\{(?>.|\\n)+?\\}\\};)", str).replace("\n", "");
    }

    public static String f(String str) throws ParsingException {
        try {
            return Parser.o("signatureTimestamp[=:](\\d+)", str);
        } catch (ParsingException e) {
            throw new ParsingException("Could not extract signature timestamp from JavaScript code", e);
        }
    }
}
