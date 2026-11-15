package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.DateTimeException;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.utils.ImageSuffix;

public abstract class j60 {
    public static final List a;

    static {
        Image.ResolutionLevel resolutionLevel = Image.ResolutionLevel.HIGH;
        ImageSuffix imageSuffix = new ImageSuffix("10.jpg", -1, 1200, resolutionLevel);
        Image.ResolutionLevel resolutionLevel2 = Image.ResolutionLevel.LOW;
        ImageSuffix imageSuffix2 = new ImageSuffix("101.jpg", 90, -1, resolutionLevel2);
        Image.ResolutionLevel resolutionLevel3 = Image.ResolutionLevel.MEDIUM;
        a = hdb.a(new ImageSuffix[]{imageSuffix, imageSuffix2, new ImageSuffix("170.jpg", TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, -1, resolutionLevel3), new ImageSuffix("171.jpg", 646, -1, resolutionLevel3), new ImageSuffix("20.jpg", -1, 1024, resolutionLevel), new ImageSuffix("200.jpg", TypedValues.CycleType.TYPE_EASING, -1, resolutionLevel3), new ImageSuffix("201.jpg", 280, -1, resolutionLevel3), new ImageSuffix("202.jpg", 140, -1, resolutionLevel2), new ImageSuffix("204.jpg", TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL, -1, resolutionLevel3), new ImageSuffix("205.jpg", 240, -1, resolutionLevel3), new ImageSuffix("206.jpg", 180, -1, resolutionLevel3), new ImageSuffix("207.jpg", 120, -1, resolutionLevel2), new ImageSuffix("43.jpg", 100, -1, resolutionLevel2), new ImageSuffix("44.jpg", 200, -1, resolutionLevel3)});
    }

    public static JsonObject e(String str) throws ParsingException {
        try {
            return (JsonObject) a.d().a(org.schabi.newpipe.extractor.a.c().j("https://bandcamp.com/api/mobile/22/band_details", Collections.emptyMap(), ((zb5) ((zb5) ((zb5) tc5.a().n()).E("band_id", str)).j()).H().getBytes(StandardCharsets.UTF_8)).c());
        } catch (JsonParserException | IOException | ReCaptchaException e) {
            throw new ParsingException("Could not download band details", e);
        }
    }

    public static String f(long j, boolean z) {
        return "https://f4.bcbits.com/img/" + (z ? 'a' : "") + j + "_10.jpg";
    }

    public static List g(final String str) {
        return (List) a.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return j60.n(str, (ImageSuffix) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    public static List h(long j, boolean z) {
        if (j == 0) {
            return Collections.emptyList();
        }
        return g("https://f4.bcbits.com/img/" + (z ? 'a' : "") + j + "_");
    }

    public static List i(String str) {
        return org.schabi.newpipe.extractor.utils.a.m(str) ? Collections.emptyList() : g(str.replaceFirst("_\\d+\\.\\w+", "_"));
    }

    public static List j(Element element) {
        return i((String) element.G0("art").stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return j60.o((Element) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return j60.p((Element) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return j60.q((String) obj);
            }
        }).findFirst().orElse(""));
    }

    public static String k(long j, long j2, String str) throws ParsingException {
        try {
            return org.schabi.newpipe.extractor.utils.a.w(((JsonObject) a.d().a(org.schabi.newpipe.extractor.a.c().b("https://bandcamp.com/api/mobile/22/tralbum_details?band_id=" + j + "&tralbum_id=" + j2 + "&tralbum_type=" + str.charAt(0)).c())).getString("bandcamp_url"));
        } catch (JsonParserException | IOException | ReCaptchaException e) {
            throw new ParsingException("Ids could not be translated to URL", e);
        }
    }

    public static boolean l(String str) throws ParsingException {
        if (str.toLowerCase().matches("https?://.+\\.bandcamp\\.com(/.*)?")) {
            return true;
        }
        if (str.toLowerCase().matches("https?://bandcamp\\.com(/.*)?")) {
            return false;
        }
        try {
            return vc5.a(org.schabi.newpipe.extractor.a.c().b(org.schabi.newpipe.extractor.utils.a.w(str)).c()).G0("cart-wrapper").get(0).H0(CmcdData.OBJECT_TYPE_AUDIO_ONLY).get(0).h("href").equals("https://bandcamp.com/cart");
        } catch (IOException | ReCaptchaException unused) {
            throw new ParsingException("Could not determine whether URL is custom domain (not available? network error?)");
        } catch (IndexOutOfBoundsException | NullPointerException unused2) {
            return false;
        }
    }

    public static boolean m(String str) {
        return str.toLowerCase().matches("https?://bandcamp\\.com/\\?show=\\d+");
    }

    public static Image n(String str, ImageSuffix imageSuffix) {
        return new Image(str + imageSuffix.getSuffix(), imageSuffix.getHeight(), imageSuffix.getWidth(), imageSuffix.getResolutionLevel());
    }

    public static Stream o(Element element) {
        return element.H0("img").stream();
    }

    public static String p(Element element) {
        return element.h("src");
    }

    public static boolean q(String str) {
        return !org.schabi.newpipe.extractor.utils.a.m(str);
    }

    public static DateWrapper r(String str) throws ParsingException {
        try {
            return new DateWrapper(ZonedDateTime.parse(str, DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm:ss zzz", Locale.ENGLISH)).toOffsetDateTime(), false);
        } catch (DateTimeException e) {
            throw new ParsingException("Could not parse date '" + str + "'", e);
        }
    }
}
