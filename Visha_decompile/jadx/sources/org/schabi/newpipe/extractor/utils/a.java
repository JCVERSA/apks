package org.schabi.newpipe.extractor.utils;

import androidx.webkit.ProxyConfig;
import com.alibaba.android.arouter.utils.Consts;
import com.just.agentweb.DefaultWebClient;
import defpackage.ilb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.a;

public abstract class a {
    public static final Pattern a = Pattern.compile("(https?)?://m\\.");
    public static final Pattern b = Pattern.compile("(https?)?://www\\.");

    public static void c(String str, String str2) throws ParsingException {
        if (m(str2)) {
            throw new IllegalArgumentException("Url can't be null or empty");
        }
        if (!Parser.g(str, str2.toLowerCase())) {
            throw new ParsingException("Url don't match the pattern");
        }
    }

    public static String d(String str) {
        return URLDecoder.decode(str, StandardCharsets.UTF_8);
    }

    public static String e(String str) {
        return URLEncoder.encode(str, StandardCharsets.UTF_8);
    }

    public static String f(String str) {
        try {
            URL urlX = x(str);
            return (urlX.getHost().contains("google") && urlX.getPath().equals("/url")) ? d(Parser.o("&url=([^&]+)(?:&|$)", str)) : str;
        } catch (Exception unused) {
            return str;
        }
    }

    public static String g(String str) throws ParsingException {
        try {
            URL urlX = x(str);
            return urlX.getProtocol() + "://" + urlX.getAuthority();
        } catch (MalformedURLException e) {
            String message = e.getMessage();
            if (message.startsWith("unknown protocol: ")) {
                return message.substring(18);
            }
            throw new ParsingException("Malformed url: " + str, e);
        }
    }

    public static String h(URL url, String str) {
        String query = url.getQuery();
        if (query == null) {
            return null;
        }
        for (String str2 : query.split("&")) {
            String[] strArrSplit = str2.split("=", 2);
            if (d(strArrSplit[0]).equals(str)) {
                return d(strArrSplit[1]);
            }
        }
        return null;
    }

    public static String i(String str, String[] strArr, int i) {
        return j(str, (Pattern[]) Arrays.stream(strArr).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.nonNull((String) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Pattern.compile((String) obj);
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i2) {
                return a.p(i2);
            }
        }), i);
    }

    public static String j(String str, Pattern[] patternArr, int i) throws Parser.RegexException {
        for (Pattern pattern : patternArr) {
            try {
                String strN = Parser.n(pattern, str, i);
                if (strN != null) {
                    return strN;
                }
            } catch (Parser.RegexException unused) {
            }
        }
        throw new Parser.RegexException("No regex matched the input on group " + i);
    }

    public static boolean k(String str) {
        return str == null || ilb.a(str);
    }

    public static boolean l(URL url) {
        String protocol = url.getProtocol();
        if (protocol.equals(ProxyConfig.MATCH_HTTP) || protocol.equals(ProxyConfig.MATCH_HTTPS)) {
            return url.getPort() == -1 || (url.getPort() == url.getDefaultPort());
        }
        return false;
    }

    public static boolean m(String str) {
        return str == null || str.isEmpty();
    }

    public static boolean n(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean o(Map map) {
        return map == null || map.isEmpty();
    }

    public static Pattern[] p(int i) {
        return new Pattern[i];
    }

    public static boolean q(String str) {
        return (m(str) || str.equals("null")) ? false : true;
    }

    public static long r(String str) {
        String strM;
        double d;
        try {
            strM = Parser.m("[\\d]+([\\.,][\\d]+)?([KMBkmb])+", str, 2);
        } catch (ParsingException unused) {
            strM = "";
        }
        double d2 = Double.parseDouble(Parser.o("([\\d]+([\\.,][\\d]+)?)", str).replace(StringUtils.COMMA, Consts.DOT));
        String upperCase = strM.toUpperCase();
        upperCase.hashCode();
        switch (upperCase) {
            case "B":
                d = 1.0E9d;
                break;
            case "K":
                d = 1000.0d;
                break;
            case "M":
                d = 1000000.0d;
                break;
            default:
                return (long) d2;
        }
        return (long) (d2 * d);
    }

    public static String s(CharSequence charSequence, String... strArr) {
        return (String) Arrays.stream(strArr).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return a.q((String) obj);
            }
        }).collect(Collectors.joining(charSequence));
    }

    public static String t(String str) {
        if (a.matcher(str).find()) {
            return str.replace("m.", "");
        }
        return b.matcher(str).find() ? str.replace("www.", "") : str;
    }

    public static String u(String str) {
        return str.replaceAll("\\D+", "");
    }

    public static String v(String str) {
        if (str.startsWith("\ufeff")) {
            str = str.substring(1);
        }
        return str.endsWith("\ufeff") ? str.substring(0, str.length() - 1) : str;
    }

    public static String w(String str) {
        if (str == null) {
            return null;
        }
        if (!str.startsWith(DefaultWebClient.HTTP_SCHEME)) {
            return str;
        }
        return "https://" + str.substring(7);
    }

    public static URL x(String str) throws MalformedURLException {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            if (!e.getMessage().equals("no protocol: " + str)) {
                throw e;
            }
            return new URL("https://" + str);
        }
    }
}
