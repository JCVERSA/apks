package defpackage;

import com.grack.nanojson.JsonObject;
import com.lzy.okgo.model.Progress;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Map;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;

public abstract class xyc {
    public static void a(aa5 aa5Var, String str, int i) {
        aa5Var.e("playbackContext").e("contentPlaybackContext").f("signatureTimestamp", i).h(Progress.REFERER, str).c().c();
    }

    public static void b(aa5 aa5Var, String str, String str2) {
        aa5Var.h("videoId", str);
        if (str2 != null) {
            aa5Var.h("cpn", str2);
        }
        aa5Var.i("contentCheckOk", true).i("racyCheckOk", true);
    }

    public static JsonObject c(ContentCountry contentCountry, Localization localization, String str, String str2) {
        n05 n05VarA = n05.a();
        Map mapE = e(cxc.y(localization));
        n05VarA.a.e = cxc.S(n05VarA, localization, contentCountry, mapE, "https://youtubei.googleapis.com/youtubei/v1/", null, false);
        aa5 aa5VarZ0 = cxc.z0(localization, contentCountry, n05VarA, null);
        b(aa5VarZ0, str, str2);
        aa5VarZ0.e("playerRequest").h("videoId", str).c().i("disablePlayerResponse", false);
        return oc5.k(cxc.R(a.c().k("https://youtubei.googleapis.com/youtubei/v1/reel/reel_item_watch?prettyPrint=false&t=" + cxc.x() + "&id=" + str + "&$fields=playerResponse", mapE, tc5.b(aa5VarZ0.b()).getBytes(StandardCharsets.UTF_8), localization))).getObject("playerResponse");
    }

    public static JsonObject d(ContentCountry contentCountry, Localization localization, String str, String str2, fc8 fc8Var) {
        n05 n05VarB = n05.b();
        Map mapE = e(cxc.H(localization));
        n05VarB.a.e = cxc.S(n05VarB, localization, contentCountry, mapE, "https://www.youtube.com/youtubei/v1/", null, false);
        aa5 aa5VarZ0 = cxc.z0(localization, contentCountry, n05VarB, null);
        b(aa5VarZ0, str, str2);
        return oc5.k(cxc.R(a.c().k("https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t=" + cxc.x() + "&id=" + str, mapE, tc5.b(aa5VarZ0.b()).getBytes(StandardCharsets.UTF_8), localization)));
    }

    public static Map e(String str) {
        return c08.a(new Map.Entry[]{new AbstractMap.SimpleEntry("User-Agent", hdb.a(new Object[]{str})), new AbstractMap.SimpleEntry("X-Goog-Api-Format-Version", hdb.a(new Object[]{"2"}))});
    }

    public static JsonObject f(Localization localization, ContentCountry contentCountry, String str, String str2, int i) {
        n05 n05VarC = n05.c();
        HashMap map = new HashMap(cxc.z("7", "7.20250122.15.00"));
        map.putAll(cxc.J("https://www.youtube.com"));
        map.put("User-Agent", hdb.a(new Object[]{"Mozilla/5.0 (PlayStation; PlayStation 4/12.00) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15"}));
        n05VarC.a.e = cxc.S(n05VarC, localization, contentCountry, map, "https://www.youtube.com/youtubei/v1/", null, true);
        aa5 aa5VarZ0 = cxc.z0(localization, contentCountry, n05VarC, null);
        b(aa5VarZ0, str, str2);
        a(aa5VarZ0, "https://www.youtube.com/watch?v=" + str, i);
        return oc5.k(cxc.R(a.c().k("https://www.youtube.com/youtubei/v1/player?prettyPrint=false", map, tc5.b(aa5VarZ0.b()).getBytes(StandardCharsets.UTF_8), localization)));
    }

    public static JsonObject g(Localization localization, ContentCountry contentCountry, String str, String str2, fc8 fc8Var, int i) {
        n05 n05VarE = n05.e();
        HashMap map = new HashMap(cxc.z("56", "1.20250121.00.00"));
        map.putAll(cxc.J("https://www.youtube.com"));
        String str3 = "https://www.youtube.com/watch?v=" + str;
        n05VarE.a.e = cxc.S(n05VarE, localization, contentCountry, map, "https://www.youtube.com/youtubei/v1/", str3, false);
        aa5 aa5VarZ0 = cxc.z0(localization, contentCountry, n05VarE, str3);
        b(aa5VarZ0, str, str2);
        a(aa5VarZ0, str3, i);
        return oc5.k(cxc.R(a.c().k("https://www.youtube.com/youtubei/v1/player?prettyPrint=false", map, tc5.b(aa5VarZ0.b()).getBytes(StandardCharsets.UTF_8), localization)));
    }

    public static JsonObject h(Localization localization, ContentCountry contentCountry, String str) {
        n05 n05VarD = n05.d();
        n05VarD.a.b = cxc.B();
        Map mapT = cxc.T();
        n05VarD.a.e = cxc.S(n05VarD, localization, contentCountry, mapT, "https://www.youtube.com/youtubei/v1/", null, false);
        aa5 aa5VarZ0 = cxc.z0(localization, contentCountry, n05VarD, null);
        b(aa5VarZ0, str, null);
        return oc5.k(cxc.R(a.c().k("https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,playabilityStatus,storyboards,videoDetails", mapT, tc5.b(aa5VarZ0.b()).getBytes(StandardCharsets.UTF_8), localization)));
    }
}
