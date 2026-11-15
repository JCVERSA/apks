package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.webkit.ProxyConfig;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.just.agentweb.DefaultWebClient;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeParseException;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Random;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.jsoup.nodes.Entities;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.exceptions.AccountTerminatedException;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.AudioTrackType;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public abstract class cxc {
    public static String a = null;
    public static String b = null;
    public static boolean c = false;
    public static Optional d = Optional.empty();
    public static final String[] e = {"INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\"", "innertube_context_client_version\":\"([0-9\\.]+?)\"", "client.version=([0-9\\.]+)"};
    public static final String[] f = {"window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});", "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"};
    public static Random g = new Random();
    public static final Pattern h = Pattern.compile("&c=WEB");
    public static final Pattern i = Pattern.compile("&c=WEB_EMBEDDED_PLAYER");
    public static final Pattern j = Pattern.compile("&c=TVHTML5");
    public static final Pattern k = Pattern.compile("&c=ANDROID");
    public static final Pattern l = Pattern.compile("&c=IOS");
    public static final Set m = zo4.a(new Object[]{"google.", "m.google.", "www.google."});
    public static final Set n = zo4.a(new String[]{"invidio.us", "dev.invidio.us", "www.invidio.us", "redirect.invidious.io", "invidious.snopyta.org", "yewtu.be", "tube.connect.cafe", "tubus.eduvid.org", "invidious.kavin.rocks", "invidious.site", "invidious-us.kavin.rocks", "piped.kavin.rocks", "vid.mint.lgbt", "invidiou.site", "invidious.fdn.fr", "invidious.048596.xyz", "invidious.zee.li", "vid.puffyan.us", "ytprivate.com", "invidious.namazso.eu", "invidious.silkky.cloud", "ytb.trom.tf", "invidious.exonip.de", "inv.riverside.rocks", "invidious.blamefran.net", "y.com.cm", "invidious.moomoo.me", "yt.cyberhost.uk"});
    public static final Set o = zo4.a(new Object[]{"youtube.com", "www.youtube.com", "m.youtube.com", "music.youtube.com"});
    public static boolean p = false;

    public static Map A() {
        HashMap map = new HashMap(J("https://www.youtube.com"));
        map.putAll(z("1", B()));
        return map;
    }

    public static String B() throws ExtractionException {
        if (!a.m(a)) {
            return a;
        }
        try {
            p();
        } catch (Exception unused) {
            o();
        }
        if (c) {
            return a;
        }
        if (!Z()) {
            throw new ExtractionException("Could not get YouTube WEB client version");
        }
        a = "2.20250122.04.00";
        return "2.20250122.04.00";
    }

    public static String C(Stream stream, final String str, final String str2) {
        return (String) stream.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return cxc.m0(str, (JsonObject) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return cxc.n0((JsonObject) obj);
            }
        }).filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return cxc.o0(str2, (JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return cxc.p0((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return cxc.q0((String) obj);
            }
        }).findFirst().orElse(null);
    }

    public static Map D() {
        return c08.a(new Map.Entry[]{new AbstractMap.SimpleEntry(HttpHeaders.HEAD_KEY_COOKIE, hdb.a(new Object[]{v()}))});
    }

    public static String E(String str) {
        if (str.startsWith("user/")) {
            return "https://www.youtube.com/feeds/videos.xml?user=" + str.replace("user/", "");
        }
        if (!str.startsWith("channel/")) {
            return "https://www.youtube.com/feeds/videos.xml?channel_id=" + str;
        }
        return "https://www.youtube.com/feeds/videos.xml?channel_id=" + str.replace("channel/", "");
    }

    public static List F(JsonArray jsonArray) {
        return (List) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return cxc.r0((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return cxc.s0((JsonObject) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    public static JsonObject G(String str) throws ParsingException {
        try {
            return (JsonObject) com.grack.nanojson.a.d().a(a.i(str, f, 1));
        } catch (JsonParserException | Parser.RegexException e2) {
            throw new ParsingException("Could not get ytInitialData", e2);
        }
    }

    public static String H(Localization localization) {
        if (localization == null) {
            localization = Localization.DEFAULT;
        }
        return "com.google.ios.youtube/20.03.02(iPhone16,2; U; CPU iOS 18_2_1 like Mac OS X; " + localization.getCountryCode() + ")";
    }

    public static JsonObject I(String str, byte[] bArr, Localization localization) {
        Map mapT = T();
        return oc5.k(R(org.schabi.newpipe.extractor.a.c().k("https://www.youtube.com/youtubei/v1/" + str + "?prettyPrint=false", mapT, bArr, localization)));
    }

    public static Map J(String str) {
        List listA = hdb.a(new Object[]{str});
        return c08.a(new Map.Entry[]{new AbstractMap.SimpleEntry("Origin", listA), new AbstractMap.SimpleEntry("Referer", listA)});
    }

    public static String K(JsonObject jsonObject, String str) {
        return jsonObject.isString(str) ? jsonObject.getString(str) : L(jsonObject.getObject(str));
    }

    public static String L(JsonObject jsonObject) {
        return M(jsonObject, false);
    }

    public static String M(JsonObject jsonObject, boolean z) {
        if (a.o(jsonObject)) {
            return null;
        }
        if (jsonObject.has("simpleText")) {
            return jsonObject.getString("simpleText");
        }
        JsonArray<JsonObject> array = jsonObject.getArray("runs");
        if (array.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (JsonObject jsonObject2 : array) {
            String string = jsonObject2.getString("text");
            if (z) {
                if (jsonObject2.has("navigationEndpoint")) {
                    String strP = P(jsonObject2.getObject("navigationEndpoint"));
                    if (!a.m(strP)) {
                        string = "<a href=\"" + Entities.e(strP) + "\">" + Entities.e(string) + "</a>";
                    }
                }
                boolean z2 = false;
                boolean z3 = jsonObject2.has(TtmlNode.BOLD) && jsonObject2.getBoolean(TtmlNode.BOLD);
                boolean z4 = jsonObject2.has("italics") && jsonObject2.getBoolean("italics");
                if (jsonObject2.has("strikethrough") && jsonObject2.getBoolean("strikethrough")) {
                    z2 = true;
                }
                if (z3) {
                    sb.append("<b>");
                }
                if (z4) {
                    sb.append("<i>");
                }
                if (z2) {
                    sb.append("<s>");
                }
                sb.append(string);
                if (z2) {
                    sb.append("</s>");
                }
                if (z4) {
                    sb.append("</i>");
                }
                if (z3) {
                    sb.append("</b>");
                }
            } else {
                sb.append(string);
            }
        }
        String string2 = sb.toString();
        return z ? string2.replaceAll("\\n", "<br>").replaceAll(" {2}", " &nbsp;") : string2;
    }

    public static String N(JsonObject jsonObject, String str) throws ParsingException {
        String strL = L(jsonObject);
        if (strL != null) {
            return strL;
        }
        throw new ParsingException("Could not extract text: " + str);
    }

    public static List O(JsonObject jsonObject) throws ParsingException {
        try {
            return F(jsonObject.getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception e2) {
            throw new ParsingException("Could not get thumbnails from InfoItem", e2);
        }
    }

    public static String P(JsonObject jsonObject) {
        if (jsonObject.has("urlEndpoint")) {
            String string = jsonObject.getObject("urlEndpoint").getString("url");
            if (string.startsWith("https://www.youtube.com/redirect?")) {
                string = string.substring(23);
            }
            if (string.startsWith("/redirect?")) {
                for (String str : string.substring(10).split("&")) {
                    if (str.split("=")[0].equals("q")) {
                        return a.d(str.split("=")[1]);
                    }
                }
            } else {
                if (string.startsWith(ProxyConfig.MATCH_HTTP)) {
                    return string;
                }
                if (string.startsWith("/channel") || string.startsWith("/user") || string.startsWith("/watch")) {
                    return "https://www.youtube.com" + string;
                }
            }
        }
        if (jsonObject.has("browseEndpoint")) {
            JsonObject object = jsonObject.getObject("browseEndpoint");
            String string2 = object.getString("canonicalBaseUrl");
            String string3 = object.getString("browseId");
            if (string3 != null) {
                if (string3.startsWith("UC")) {
                    return "https://www.youtube.com/channel/" + string3;
                }
                if (string3.startsWith("VL")) {
                    return "https://www.youtube.com/playlist?list=" + string3.substring(2);
                }
            }
            if (!a.m(string2)) {
                return "https://www.youtube.com" + string2;
            }
        }
        if (jsonObject.has("watchEndpoint")) {
            StringBuilder sb = new StringBuilder();
            sb.append("https://www.youtube.com/watch?v=");
            sb.append(jsonObject.getObject("watchEndpoint").getString("videoId"));
            if (jsonObject.getObject("watchEndpoint").has("playlistId")) {
                sb.append("&list=");
                sb.append(jsonObject.getObject("watchEndpoint").getString("playlistId"));
            }
            if (jsonObject.getObject("watchEndpoint").has("startTimeSeconds")) {
                sb.append("&t=");
                sb.append(jsonObject.getObject("watchEndpoint").getInt("startTimeSeconds"));
            }
            return sb.toString();
        }
        if (jsonObject.has("watchPlaylistEndpoint")) {
            return "https://www.youtube.com/playlist?list=" + jsonObject.getObject("watchPlaylistEndpoint").getString("playlistId");
        }
        if (!jsonObject.has("commandMetadata")) {
            return null;
        }
        JsonObject object2 = jsonObject.getObject("commandMetadata").getObject("webCommandMetadata");
        if (!object2.has("url")) {
            return null;
        }
        return "https://www.youtube.com" + object2.getString("url");
    }

    public static String Q(JsonObject jsonObject) {
        if (a.o(jsonObject)) {
            return null;
        }
        JsonArray array = jsonObject.getArray("runs");
        if (array.isEmpty()) {
            return null;
        }
        Iterator<Object> it = array.iterator();
        while (it.hasNext()) {
            String strP = P(((JsonObject) it.next()).getObject("navigationEndpoint"));
            if (!a.m(strP)) {
                return strP;
            }
        }
        return null;
    }

    public static String R(fu8 fu8Var) throws ParsingException {
        if (fu8Var.d() == 404) {
            throw new ContentNotAvailableException("Not found (\"" + fu8Var.d() + " " + fu8Var.f() + "\")");
        }
        String strC = fu8Var.c();
        if (strC.length() < 50) {
            throw new ParsingException("JSON response is too short");
        }
        URL url = new URL(fu8Var.b());
        if (url.getHost().equalsIgnoreCase("www.youtube.com")) {
            String path = url.getPath();
            if (path.equalsIgnoreCase("/oops") || path.equalsIgnoreCase("/error")) {
                throw new ContentNotAvailableException("Content unavailable");
            }
        }
        String strA = fu8Var.a("Content-Type");
        if (strA == null || !strA.toLowerCase().contains("text/html")) {
            return strC;
        }
        throw new ParsingException("Got HTML document, expected JSON response (latest url was: \"" + fu8Var.b() + "\")");
    }

    public static String S(n05 n05Var, Localization localization, ContentCountry contentCountry, Map map, String str, String str2, boolean z) throws ParsingException {
        byte[] bytes = tc5.b(z0(localization, contentCountry, n05Var, str2).b()).getBytes(StandardCharsets.UTF_8);
        String string = oc5.k(R(org.schabi.newpipe.extractor.a.c().j(str + (z ? "guide" : "visitor_id") + "?prettyPrint=false", map, bytes))).getObject("responseContext").getString("visitorData");
        if (a.m(string)) {
            throw new ParsingException("Could not get visitorData");
        }
        return string;
    }

    public static Map T() {
        Map mapA = A();
        mapA.put(HttpHeaders.HEAD_KEY_COOKIE, hdb.a(new Object[]{v()}));
        return mapA;
    }

    public static String U() {
        if (!a.m(b)) {
            return b;
        }
        if (a0()) {
            b = "1.20250122.01.00";
            return "1.20250122.01.00";
        }
        try {
            b = a.i(org.schabi.newpipe.extractor.a.c().c("https://music.youtube.com/sw.js", J("https://music.youtube.com")).c(), e, 1);
        } catch (Exception unused) {
            b = a.i(org.schabi.newpipe.extractor.a.c().c("https://music.youtube.com/?ucbcb=1", D()).c(), e, 1);
        }
        return b;
    }

    public static Map V() {
        HashMap map = new HashMap(J("https://music.youtube.com"));
        map.putAll(z("67", b));
        return map;
    }

    public static boolean W(JsonArray jsonArray) {
        return jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return cxc.u0((JsonObject) obj);
            }
        });
    }

    public static boolean X() {
        return p;
    }

    public static boolean Y(String str) {
        try {
            final URL url = new URL(n(str));
            return m.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return cxc.v0(url, (String) obj);
                }
            });
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    public static boolean Z() {
        if (d.isPresent()) {
            return ((Boolean) d.get()).booleanValue();
        }
        boolean z = false;
        fu8 fu8VarJ = org.schabi.newpipe.extractor.a.c().j("https://www.youtube.com/youtubei/v1/guide?prettyPrint=false", z("1", "2.20250122.04.00"), ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) tc5.a().n()).o("context")).o("client")).E("hl", "en-GB")).E("gl", "GB")).E("clientName", "WEB")).E("clientVersion", "2.20250122.04.00")).E("platform", "DESKTOP")).B("utcOffsetMinutes", 0)).j()).o(Progress.REQUEST)).d("internalExperimentFlags")).j()).F("useSsl", true)).j()).o("user")).F("lockedSafetyMode", false)).j()).j()).F("fetchLiveState", true)).j()).H().getBytes(StandardCharsets.UTF_8));
        String strC = fu8VarJ.c();
        int iD = fu8VarJ.d();
        if (strC.length() > 5000 && iD == 200) {
            z = true;
        }
        Optional optionalOf = Optional.of(Boolean.valueOf(z));
        d = optionalOf;
        return ((Boolean) optionalOf.get()).booleanValue();
    }

    public static boolean a0() {
        byte[] bytes = ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) tc5.a().n()).o("context")).o("client")).E("clientName", "WEB_REMIX")).E("clientVersion", "1.20250122.01.00")).E("hl", "en-GB")).E("gl", "GB")).E("platform", "DESKTOP")).B("utcOffsetMinutes", 0)).j()).o(Progress.REQUEST)).d("internalExperimentFlags")).j()).F("useSsl", true)).j()).o("user")).F("lockedSafetyMode", false)).j()).j()).E("input", "")).j()).H().getBytes(StandardCharsets.UTF_8);
        HashMap map = new HashMap(J("https://music.youtube.com"));
        map.putAll(z("67", "2.20250122.04.00"));
        fu8 fu8VarJ = org.schabi.newpipe.extractor.a.c().j("https://music.youtube.com/youtubei/v1/music/get_search_suggestions?prettyPrint=false", map, bytes);
        return fu8VarJ.c().length() > 500 && fu8VarJ.d() == 200;
    }

    public static boolean b0(URL url) {
        return url.getHost().equalsIgnoreCase("hooktube.com");
    }

    public static boolean c0(URL url) {
        return n.contains(url.getHost().toLowerCase(Locale.ROOT));
    }

    public static boolean d0(JsonArray jsonArray) {
        if (a.n(jsonArray)) {
            return false;
        }
        Iterator<Object> it = jsonArray.iterator();
        while (it.hasNext()) {
            String string = ((JsonObject) it.next()).getObject("metadataBadgeRenderer").getString("style");
            if (string != null && (string.equals("BADGE_STYLE_TYPE_VERIFIED") || string.equals("BADGE_STYLE_TYPE_VERIFIED_ARTIST"))) {
                return true;
            }
        }
        return false;
    }

    public static boolean e0(URL url) {
        return url.getHost().equalsIgnoreCase("y2u.be");
    }

    public static boolean f0(String str) {
        return str.startsWith("RDCM");
    }

    public static boolean g0(String str) {
        return str.startsWith("RDGMEM");
    }

    public static boolean h0(String str) {
        return str.startsWith("RD");
    }

    public static boolean i0(String str) {
        return str.startsWith("RDAMVM") || str.startsWith("RDCLAK");
    }

    public static boolean j0(String str) {
        return str.startsWith("RDMM");
    }

    public static int k(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                return Integer.parseInt(a.u(str));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static boolean k0(URL url) {
        String host = url.getHost();
        return host.equalsIgnoreCase("www.youtube-nocookie.com") || host.equalsIgnoreCase("youtu.be");
    }

    public static void l(JsonObject jsonObject) throws ContentNotAvailableException {
        JsonArray array = jsonObject.getArray("alerts");
        if (a.n(array)) {
            return;
        }
        JsonObject object = array.getObject(0).getObject("alertRenderer");
        String strL = L(object.getObject("text"));
        if (object.getString("type", "").equalsIgnoreCase("ERROR")) {
            if (strL != null && (strL.contains("This account has been terminated") || strL.contains("This channel was removed"))) {
                if (!strL.matches(".*violat(ed|ion|ing).*") && !strL.contains("infringement")) {
                    throw new AccountTerminatedException(strL);
                }
                throw new AccountTerminatedException(strL, AccountTerminatedException.Reason.VIOLATION);
            }
            throw new ContentNotAvailableException("Got error: \"" + strL + "\"");
        }
    }

    public static boolean l0(URL url) {
        return o.contains(url.getHost().toLowerCase(Locale.ROOT));
    }

    public static AudioTrackType m(String str) {
        String str2;
        try {
            String strH = a.h(new URL(str), "xtags");
            if (strH == null) {
                return null;
            }
            String[] strArrSplit = strH.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
            int length = strArrSplit.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    str2 = null;
                    break;
                }
                String[] strArrSplit2 = strArrSplit[i2].split("=", 2);
                if (strArrSplit2.length > 1 && strArrSplit2[0].equals("acont")) {
                    str2 = strArrSplit2[1];
                    break;
                }
                i2++;
            }
            if (str2 == null) {
                return null;
            }
            switch (str2) {
                case "descriptive":
                    return AudioTrackType.DESCRIPTIVE;
                case "dubbed":
                case "dubbed-auto":
                    return AudioTrackType.DUBBED;
                case "secondary":
                    return AudioTrackType.SECONDARY;
                case "original":
                    return AudioTrackType.ORIGINAL;
                default:
                    return null;
            }
        } catch (MalformedURLException unused) {
            return null;
        }
    }

    public static boolean m0(String str, JsonObject jsonObject) {
        return jsonObject.getString(NotificationCompat.CATEGORY_SERVICE, "").equals(str);
    }

    public static String n(String str) {
        if (str == null) {
            return null;
        }
        return str.contains("webcache.googleusercontent.com") ? str.split("cache:")[1] : str;
    }

    public static Stream n0(JsonObject jsonObject) {
        return jsonObject.getArray("params").stream();
    }

    public static void o() throws ParsingException {
        if (c) {
            return;
        }
        String strC = org.schabi.newpipe.extractor.a.c().c("https://www.youtube.com/results?search_query=&ucbcb=1", D()).c();
        Stream<R> map = G(strC).getObject("responseContext").getArray("serviceTrackingParams").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class));
        String strC2 = C(map, "CSI", "cver");
        a = strC2;
        if (strC2 == null) {
            try {
                a = a.i(strC, e, 1);
            } catch (Parser.RegexException unused) {
            }
        }
        if (a.m(a)) {
            a = C(map, "ECATCHER", "client.version");
        }
        if (a == null) {
            throw new ParsingException("Could not extract YouTube WEB InnerTube client version from HTML search results page");
        }
        c = true;
    }

    public static boolean o0(String str, JsonObject jsonObject) {
        return jsonObject.getString("key", "").equals(str);
    }

    public static void p() throws ParsingException {
        if (c) {
            return;
        }
        try {
            a = a.i(org.schabi.newpipe.extractor.a.c().c("https://www.youtube.com/sw.js", J("https://www.youtube.com")).c(), e, 1);
            c = true;
        } catch (Parser.RegexException e2) {
            throw new ParsingException("Could not extract YouTube WEB InnerTube client version from sw.js", e2);
        }
    }

    public static String p0(JsonObject jsonObject) {
        return jsonObject.getString(ES6Iterator.VALUE_PROPERTY);
    }

    public static String q(String str, fu8 fu8Var) {
        List<String> list = (List) fu8Var.e().get("set-cookie");
        String strSubstring = "";
        if (list == null) {
            return "";
        }
        for (String str2 : list) {
            int iIndexOf = str2.indexOf(str);
            if (iIndexOf != -1) {
                strSubstring = str2.substring(str.length() + iIndexOf + 1, str2.indexOf(ProcessInfo.SPLIT_NEW_VERSION, iIndexOf));
            }
        }
        return strSubstring;
    }

    public static boolean q0(String str) {
        return !a.m(str);
    }

    public static PlaylistInfo.PlaylistType r(String str) throws ParsingException {
        if (a.m(str)) {
            throw new ParsingException("Could not extract playlist type from empty playlist id");
        }
        if (i0(str)) {
            return PlaylistInfo.PlaylistType.MIX_MUSIC;
        }
        if (f0(str)) {
            return PlaylistInfo.PlaylistType.MIX_CHANNEL;
        }
        if (g0(str)) {
            return PlaylistInfo.PlaylistType.MIX_GENRE;
        }
        return h0(str) ? PlaylistInfo.PlaylistType.MIX_STREAM : PlaylistInfo.PlaylistType.NORMAL;
    }

    public static boolean r0(JsonObject jsonObject) {
        return !a.m(jsonObject.getString("url"));
    }

    public static PlaylistInfo.PlaylistType s(String str) throws ParsingException {
        try {
            return r(a.h(a.x(str), "list"));
        } catch (MalformedURLException e2) {
            throw new ParsingException("Could not extract playlist type from malformed url", e2);
        }
    }

    public static Image s0(JsonObject jsonObject) {
        int i2 = jsonObject.getInt("height", -1);
        return new Image(u(jsonObject.getString("url")), i2, jsonObject.getInt("width", -1), Image.ResolutionLevel.fromHeight(i2));
    }

    public static String t(String str) throws ParsingException {
        if (a.m(str)) {
            throw new ParsingException("Video id could not be determined from empty playlist id");
        }
        if (j0(str)) {
            return str.substring(4);
        }
        if (i0(str)) {
            return str.substring(6);
        }
        if (f0(str)) {
            throw new ParsingException("Video id could not be determined from channel mix id: " + str);
        }
        if (g0(str)) {
            throw new ParsingException("Video id could not be determined from genre mix id: " + str);
        }
        if (!h0(str)) {
            throw new ParsingException("Video id could not be determined from playlist id: " + str);
        }
        if (str.length() == 13) {
            return str.substring(2);
        }
        throw new ParsingException("Video id could not be determined from mix id: " + str);
    }

    public static boolean t0(JsonObject jsonObject) {
        String string = jsonObject.getObject("clientResource").getString("imageName");
        return "CHECK_CIRCLE_FILLED".equals(string) || "AUDIO_BADGE".equals(string) || "MUSIC_FILLED".equals(string);
    }

    public static String u(String str) {
        if (str.startsWith("//")) {
            str = str.substring(2);
        }
        if (str.startsWith(DefaultWebClient.HTTP_SCHEME)) {
            return a.w(str);
        }
        if (str.startsWith("https://")) {
            return str;
        }
        return "https://" + str;
    }

    public static boolean u0(JsonObject jsonObject) {
        return jsonObject.getObject("element").getObject("type").getObject("imageType").getObject("image").getArray("sources").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return cxc.t0((JsonObject) obj);
            }
        });
    }

    public static String v() {
        return "SOCS=" + (X() ? "CAISAiAD" : "CAE=");
    }

    public static boolean v0(URL url, String str) {
        return url.getHost().startsWith(str);
    }

    public static String w() {
        return rn8.a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", 16, g);
    }

    public static OffsetDateTime w0(String str) throws ParsingException {
        try {
            try {
                return OffsetDateTime.parse(str);
            } catch (DateTimeParseException e2) {
                throw new ParsingException("Could not parse date: \"" + str + "\"", e2);
            }
        } catch (DateTimeParseException unused) {
            return LocalDate.parse(str).atStartOfDay().atOffset(ZoneOffset.UTC);
        }
    }

    public static String x() {
        return rn8.a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", 12, g);
    }

    public static int x0(String str) throws ParsingException {
        String[] strArrSplit = str.contains(StringUtils.PROCESS_POSTFIX_DELIMITER) ? str.split(StringUtils.PROCESS_POSTFIX_DELIMITER) : str.split("\\.");
        int[] iArr = {24, 60, 60, 1};
        int length = 4 - strArrSplit.length;
        if (length < 0) {
            throw new ParsingException("Error duration string with unknown format: " + str);
        }
        int iK = 0;
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            iK = (iK + k(strArrSplit[i2])) * iArr[i2 + length];
        }
        return iK;
    }

    public static String y(Localization localization) {
        if (localization == null) {
            localization = Localization.DEFAULT;
        }
        return "com.google.android.youtube/19.28.35 (Linux; U; Android 15; " + localization.getCountryCode() + ") gzip";
    }

    public static aa5 y0(Localization localization, ContentCountry contentCountry) {
        return JsonObject.builder().e("context").e("client").h("hl", localization.getLocalizationCode()).h("gl", contentCountry.getCountryCode()).h("clientName", "WEB").h("clientVersion", B()).h("originalUrl", "https://www.youtube.com").h("platform", "DESKTOP").f("utcOffsetMinutes", 0).c().e(Progress.REQUEST).a("internalExperimentFlags").c().i("useSsl", true).c().e("user").i("lockedSafetyMode", false).c().c();
    }

    public static Map z(String str, String str2) {
        return c08.a(new Map.Entry[]{new AbstractMap.SimpleEntry("X-YouTube-Client-Name", hdb.a(new Object[]{str})), new AbstractMap.SimpleEntry("X-YouTube-Client-Version", hdb.a(new Object[]{str2}))});
    }

    public static aa5 z0(Localization localization, ContentCountry contentCountry, n05 n05Var, String str) {
        aa5 aa5VarH = JsonObject.builder().e("context").e("client").h("clientName", n05Var.a.a).h("clientVersion", n05Var.a.b).h("clientScreen", n05Var.a.c).h("platform", n05Var.b.a);
        String str2 = n05Var.a.e;
        if (str2 != null) {
            aa5VarH.h("visitorData", str2);
        }
        String str3 = n05Var.b.b;
        if (str3 != null) {
            aa5VarH.h("deviceMake", str3);
        }
        String str4 = n05Var.b.c;
        if (str4 != null) {
            aa5VarH.h("deviceModel", str4);
        }
        String str5 = n05Var.b.d;
        if (str5 != null) {
            aa5VarH.h("osName", str5);
        }
        String str6 = n05Var.b.e;
        if (str6 != null) {
            aa5VarH.h("osVersion", str6);
        }
        int i2 = n05Var.b.f;
        if (i2 > 0) {
            aa5VarH.f("androidSdkVersion", i2);
        }
        aa5VarH.h("hl", localization.getLocalizationCode()).h("gl", contentCountry.getCountryCode()).f("utcOffsetMinutes", 0).c();
        if (str != null) {
            aa5VarH.e("thirdParty").h("embedUrl", str).c();
        }
        aa5VarH.e(Progress.REQUEST).a("internalExperimentFlags").c().i("useSsl", true).c().e("user").i("lockedSafetyMode", false).c().c();
        return aa5VarH;
    }
}
