package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.ImageSuffix;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public abstract class jt9 {
    public static final List a;
    public static final List b;
    public static String c;
    public static final Pattern d;

    static {
        Image.ResolutionLevel resolutionLevel = Image.ResolutionLevel.LOW;
        ImageSuffix imageSuffix = new ImageSuffix("mini", 16, 16, resolutionLevel);
        ImageSuffix imageSuffix2 = new ImageSuffix("t20x20", 20, 20, resolutionLevel);
        ImageSuffix imageSuffix3 = new ImageSuffix("small", 32, 32, resolutionLevel);
        ImageSuffix imageSuffix4 = new ImageSuffix("badge", 47, 47, resolutionLevel);
        ImageSuffix imageSuffix5 = new ImageSuffix("t50x50", 50, 50, resolutionLevel);
        ImageSuffix imageSuffix6 = new ImageSuffix("t60x60", 60, 60, resolutionLevel);
        ImageSuffix imageSuffix7 = new ImageSuffix("t67x67", 67, 67, resolutionLevel);
        ImageSuffix imageSuffix8 = new ImageSuffix("t80x80", 80, 80, resolutionLevel);
        ImageSuffix imageSuffix9 = new ImageSuffix("large", 100, 100, resolutionLevel);
        ImageSuffix imageSuffix10 = new ImageSuffix("t120x120", 120, 120, resolutionLevel);
        Image.ResolutionLevel resolutionLevel2 = Image.ResolutionLevel.MEDIUM;
        a = hdb.a(new ImageSuffix[]{imageSuffix, imageSuffix2, imageSuffix3, imageSuffix4, imageSuffix5, imageSuffix6, imageSuffix7, imageSuffix8, imageSuffix9, imageSuffix10, new ImageSuffix("t200x200", 200, 200, resolutionLevel2), new ImageSuffix("t240x240", 240, 240, resolutionLevel2), new ImageSuffix("t250x250", 250, 250, resolutionLevel2), new ImageSuffix("t300x300", 300, 300, resolutionLevel2), new ImageSuffix("t500x500", 500, 500, resolutionLevel2)});
        b = hdb.a(new Object[]{new ImageSuffix("t1240x260", 1240, 260, resolutionLevel2), new ImageSuffix("t2480x520", 2480, 520, resolutionLevel2)});
        d = Pattern.compile("^https?://on.soundcloud.com/[0-9a-zA-Z]+$");
    }

    public static synchronized String c() {
        if (!a.m(c)) {
            return c;
        }
        c23 c23VarC = org.schabi.newpipe.extractor.a.c();
        Elements elementsH1 = vc5.a(c23VarC.b("https://soundcloud.com").c()).h1("script[src*=\"sndcdn.com/assets/\"][src$=\".js\"]");
        Collections.reverse(elementsH1);
        Map mapA = c08.a(new Map.Entry[]{new AbstractMap.SimpleEntry("Range", hdb.a(new Object[]{"bytes=0-50000"}))});
        Iterator<Element> it = elementsH1.iterator();
        while (it.hasNext()) {
            String strH = it.next().h("src");
            if (!a.m(strH)) {
                try {
                    String strO = Parser.o(",client_id:\"(.*?)\"", c23VarC.c(strH, mapA).c());
                    c = strO;
                    return strO;
                } catch (Parser.RegexException unused) {
                    continue;
                }
            }
        }
        throw new ExtractionException("Couldn't extract client id");
    }

    public static List d(String str) {
        return a.m(str) ? Collections.emptyList() : e(str.replace("-large.", "-%s."), a);
    }

    public static List e(final String str, List list) {
        return (List) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return jt9.o(str, (ImageSuffix) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    public static List f(JsonObject jsonObject) throws ParsingException {
        String string = jsonObject.getString("artwork_url");
        if (string != null) {
            return d(string);
        }
        String string2 = jsonObject.getObject("user").getString("avatar_url");
        if (string2 != null) {
            return d(string2);
        }
        throw new ParsingException("Could not get track or track user's thumbnails");
    }

    public static List g(String str) {
        return a.m(str) ? Collections.emptyList() : e(str.replace("-original.", "-%s."), b);
    }

    public static String h(JsonObject jsonObject) {
        return a.w(jsonObject.getObject("user").getString("avatar_url", ""));
    }

    public static String i(final ls6 ls6Var, String str) throws IOException, ParsingException {
        fu8 fu8VarE = org.schabi.newpipe.extractor.a.c().e(str, ce9.b.l());
        if (fu8VarE.d() >= 400) {
            throw new IOException("Could not get streams from API, HTTP " + fu8VarE.d());
        }
        try {
            JsonObject jsonObject = (JsonObject) com.grack.nanojson.a.d().a(fu8VarE.c());
            jsonObject.getArray("collection").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    jt9.p(ls6Var, (JsonObject) obj);
                }
            });
            try {
                String string = jsonObject.getString("next_href");
                if (string.contains("client_id=")) {
                    return string;
                }
                return string + "&client_id=" + c();
            } catch (Exception unused) {
                return "";
            }
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json response", e);
        }
    }

    public static String j(JsonObject jsonObject) {
        try {
            String string = jsonObject.getString("next_href");
            if (string.contains("client_id=")) {
                return string;
            }
            return string + "&client_id=" + c();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String k(qy9 qy9Var, String str) {
        return l(qy9Var, str, false);
    }

    public static String l(qy9 qy9Var, String str, boolean z) throws IOException, ParsingException {
        fu8 fu8VarE = org.schabi.newpipe.extractor.a.c().e(str, ce9.b.l());
        if (fu8VarE.d() >= 400) {
            throw new IOException("Could not get streams from API, HTTP " + fu8VarE.d());
        }
        try {
            JsonObject jsonObject = (JsonObject) com.grack.nanojson.a.d().a(fu8VarE.c());
            for (Object obj : jsonObject.getArray("collection")) {
                if (obj instanceof JsonObject) {
                    JsonObject object = (JsonObject) obj;
                    if (z) {
                        object = object.getObject("track");
                    }
                    qy9Var.d(new vt9(object));
                }
            }
            return j(jsonObject);
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json response", e);
        }
    }

    public static String m(JsonObject jsonObject) {
        return jsonObject.getObject("user").getString("username", "");
    }

    public static String n(JsonObject jsonObject) {
        return a.w(jsonObject.getObject("user").getString("permalink_url", ""));
    }

    public static Image o(String str, ImageSuffix imageSuffix) {
        return new Image(String.format(str, imageSuffix.getSuffix()), imageSuffix.getHeight(), imageSuffix.getWidth(), imageSuffix.getResolutionLevel());
    }

    public static void p(ls6 ls6Var, JsonObject jsonObject) {
        String string = jsonObject.getString("kind", "");
        string.hashCode();
        switch (string) {
            case "user":
                ls6Var.d(new vs9(jsonObject));
                break;
            case "track":
                ls6Var.d(new vt9(jsonObject));
                break;
            case "playlist":
                ls6Var.d(new mt9(jsonObject));
                break;
        }
    }

    public static OffsetDateTime q(String str) throws ParsingException {
        try {
            return OffsetDateTime.parse(str);
        } catch (DateTimeParseException e) {
            try {
                return OffsetDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss +0000"));
            } catch (DateTimeParseException e2) {
                throw new ParsingException("Could not parse date: \"" + str + "\", " + e.getMessage(), e2);
            }
        }
    }

    public static JsonObject r(c23 c23Var, String str) throws ParsingException {
        try {
            return (JsonObject) com.grack.nanojson.a.d().a(c23Var.e("https://api-v2.soundcloud.com/resolve?url=" + a.e(str) + "&client_id=" + c(), ce9.b.l()).c());
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json response", e);
        }
    }

    public static String s(String str) throws ParsingException {
        if (d.matcher(str).find()) {
            try {
                str = org.schabi.newpipe.extractor.a.c().f(str).b().split("\\?")[0];
            } catch (ExtractionException e) {
                throw new ParsingException("Could not follow on.soundcloud.com redirect", e);
            }
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        try {
            try {
                return String.valueOf(oc5.j((JsonObject) com.grack.nanojson.a.d().a(org.schabi.newpipe.extractor.a.c().e("https://api-widget.soundcloud.com/resolve?url=" + a.e(a.x(a.t(str.toLowerCase())).toString()) + "&format=json&client_id=" + c(), ce9.b.l()).c()), TtmlNode.ATTR_ID));
            } catch (JsonParserException e2) {
                throw new ParsingException("Could not parse JSON response", e2);
            } catch (ExtractionException e3) {
                throw new ParsingException("Could not resolve id with embedded player. ClientId not extracted", e3);
            }
        } catch (MalformedURLException unused) {
            throw new IllegalArgumentException("The given URL is not valid");
        }
    }

    public static String t(String str) {
        return vc5.a(org.schabi.newpipe.extractor.a.c().e("https://w.soundcloud.com/player/?url=" + a.e(str), ce9.b.l()).c()).h1("link[rel=\"canonical\"]").first().h("abs:href");
    }
}
