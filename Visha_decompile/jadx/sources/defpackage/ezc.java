package defpackage;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

public abstract class ezc {
    public static final Pattern a = Pattern.compile("[&?]n=([^&]+)");
    public static final Pattern[] b = {Pattern.compile("[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+\\([a-zA-Z0-9$_]+\\),[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+\\[[a-zA-Z0-9$_]+]\\|\\|null\\)&&\\([a-zA-Z0-9$_]+=([a-zA-Z0-9$_]+)\\[(\\d+)]"), Pattern.compile("[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+\\([a-zA-Z0-9$_]+\\),[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+\\[[a-zA-Z0-9$_]+]\\|\\|null\\).+\\|\\|([a-zA-Z0-9$_]+)\\(\"\"\\)"), Pattern.compile(",[a-zA-Z0-9$_]+\\([a-zA-Z0-9$_]+\\),[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+\\[[a-zA-Z0-9$_]+]\\|\\|null\\)&&\\(\\b[a-zA-Z0-9$_]+=([a-zA-Z0-9$_]+)\\[(\\d+)]\\([a-zA-Z0-9$_]\\),[a-zA-Z0-9$_]+\\.set\\((?:\"n+\"|[a-zA-Z0-9$_]+),[a-zA-Z0-9$_]+\\)"), Pattern.compile("[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.get\\([a-zA-Z0-9$_]+\\)\\).+\\|\\|([a-zA-Z0-9$_]+)\\(\"\"\\)"), Pattern.compile("[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.get\\([a-zA-Z0-9$_]+\\)\\)&&\\([a-zA-Z0-9$_]+=([a-zA-Z0-9$_]+)\\[(\\d+)]"), Pattern.compile("\\([a-zA-Z0-9$_]=String\\.fromCharCode\\(110\\),[a-zA-Z0-9$_]=[a-zA-Z0-9$_]\\.get\\([a-zA-Z0-9$_]\\)\\)&&\\([a-zA-Z0-9$_]=([a-zA-Z0-9$_]+)(?:\\[(\\d+)])?\\([a-zA-Z0-9$_]\\)"), Pattern.compile("\\.get\\(\"n\"\\)\\)&&\\([a-zA-Z0-9$_]=([a-zA-Z0-9$_]+)(?:\\[(\\d+)])?\\([a-zA-Z0-9$_]\\)")};

    public static String a(String str) {
        return Pattern.compile(";\\s*if\\s*\\(\\s*typeof\\s+[a-zA-Z0-9$_]++\\s*===?\\s*([\"'])undefined\\1\\s*\\)\\s*return\\s+" + Parser.o("=\\s*function\\s*\\(\\s*([^)]*)\\s*\\)", str).split(StringUtils.COMMA)[0].trim() + ProcessInfo.SPLIT_NEW_VERSION, 32).matcher(str).replaceFirst(ProcessInfo.SPLIT_NEW_VERSION);
    }

    public static String b(String str, String str2) {
        String strF;
        try {
            strF = e(str, str2);
        } catch (Exception unused) {
            strF = f(str, str2);
        }
        return a(strF);
    }

    public static String c(String str) throws ParsingException {
        try {
            Matcher matcherR = Parser.r(b, str);
            String strGroup = matcherR.group(1);
            if (matcherR.groupCount() == 1) {
                return strGroup;
            }
            return Parser.p(Pattern.compile("var " + Pattern.quote(strGroup) + "\\s*=\\s*\\[(.+?)][;,]"), str).split(StringUtils.COMMA)[Integer.parseInt(matcherR.group(2))];
        } catch (Parser.RegexException e) {
            throw new ParsingException("Could not find deobfuscation function with any of the known patterns in the base JavaScript player code", e);
        }
    }

    public static String d(String str) {
        try {
            return Parser.p(a, str);
        } catch (Parser.RegexException unused) {
            return null;
        }
    }

    public static String e(String str, String str2) throws ParsingException {
        String str3 = str2 + "=function";
        return str3 + h85.a(str, str3) + ProcessInfo.SPLIT_NEW_VERSION;
    }

    public static String f(String str, String str2) {
        return g("function " + str2 + Parser.p(Pattern.compile(Pattern.quote(str2) + "=\\s*function([\\S\\s]*?\\}\\s*return [\\w$]+?\\.join\\(\"\"\\)\\s*\\};)", 32), str));
    }

    public static String g(String str) {
        g85.a(str);
        return str;
    }
}
