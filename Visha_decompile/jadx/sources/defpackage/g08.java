package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.AbstractMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

public final class g08 extends em5 {
    public static final g08 a = new g08();
    public static final Map b = c08.a(new Map.Entry[]{new AbstractMap.SimpleEntry("Trending", "%s/api/v1/videos?sort=-trending"), new AbstractMap.SimpleEntry("Most liked", "%s/api/v1/videos?sort=-likes"), new AbstractMap.SimpleEntry("Recently added", "%s/api/v1/videos?sort=-publishedAt"), new AbstractMap.SimpleEntry("Local", "%s/api/v1/videos?sort=-publishedAt&isLocal=true")});

    public static g08 t() {
        return a;
    }

    public static boolean u(String str, Map.Entry entry) {
        return str.equals(entry.getValue());
    }

    public static ParsingException v() {
        return new ParsingException("no id found for this url");
    }

    @Override
    public String f(String str) {
        final String strReplace = str.replace(ce9.d.z(), "%s");
        if (strReplace.contains("/videos/trending")) {
            return "Trending";
        }
        if (strReplace.contains("/videos/most-liked")) {
            return "Most liked";
        }
        if (strReplace.contains("/videos/recently-added")) {
            return "Recently added";
        }
        return strReplace.contains("/videos/local") ? "Local" : (String) b.entrySet().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return g08.u(strReplace, (Map.Entry) obj);
            }
        }).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (String) ((Map.Entry) obj).getKey();
            }
        }).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return g08.v();
            }
        });
    }

    @Override
    public boolean i(String str) {
        try {
            new URL(str);
            return str.contains("/videos?") || str.contains("/videos/trending") || str.contains("/videos/most-liked") || str.contains("/videos/recently-added") || str.contains("/videos/local");
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return q(str, list, str2, ce9.d.z());
    }

    @Override
    public String q(String str, List list, String str2, String str3) {
        return String.format((String) b.get(str), str3);
    }
}
