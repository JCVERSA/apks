package org.jsoup.parser;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.HashMap;
import java.util.Map;

public class f {

    private static final Map f68678j = new HashMap();

    private static final String[] f68679k;

    private static final String[] f68680l;

    private static final String[] f68681m;

    private static final String[] f68682n;

    private static final String[] f68683o;

    private static final String[] f68684p;

    private static final String[] f68685q;

    private String f68686a;

    private boolean f68687b = true;

    private boolean f68688c = true;

    private boolean f68689d = true;

    private boolean f68690e = false;

    private boolean f68691f = false;

    private boolean f68692g = false;

    private boolean f68693h = false;

    private boolean f68694i = false;

    static {
        String[] strArr = {"html", TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "frameset", "script", "noscript", TtmlNode.TAG_STYLE, "meta", "link", CampaignEx.JSON_KEY_TITLE, "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, TtmlNode.TAG_DIV, "blockquote", "hr", PlaceTypes.ADDRESS, "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", MimeTypes.BASE_TYPE_AUDIO, "canvas", "details", "menu", "plaintext", "template", "article", "main", "svg", "math"};
        f68679k = strArr;
        f68680l = new String[]{"object", "base", "font", TtmlNode.TAG_TT, "i", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, TmcStartParams.KEY_URL_SHORT, "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", EventConstants.KEY_TIME, "acronym", "mark", "ruby", "rt", "rp", "a", "img", TtmlNode.TAG_BR, "wbr", "map", CampaignEx.JSON_KEY_AD_Q, "sub", "sup", "bdo", "iframe", "embed", TtmlNode.TAG_SPAN, "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", NotificationCompat.CATEGORY_PROGRESS, "meter", "area", "param", EventConstants.KEY_SOURCE, "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", EventConstants.KEY_SOURCE, "track", "data", "bdi", "s"};
        f68681m = new String[]{"meta", "link", "base", "frame", "img", TtmlNode.TAG_BR, "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", EventConstants.KEY_SOURCE, "track"};
        f68682n = new String[]{CampaignEx.JSON_KEY_TITLE, "a", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, PlaceTypes.ADDRESS, "li", "th", "td", "script", TtmlNode.TAG_STYLE, "ins", "del", "s"};
        f68683o = new String[]{OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, "plaintext", CampaignEx.JSON_KEY_TITLE, "textarea"};
        f68684p = new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        f68685q = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            i(new f(str));
        }
        for (String str2 : f68680l) {
            f fVar = new f(str2);
            fVar.f68687b = false;
            fVar.f68688c = false;
            i(fVar);
        }
        for (String str3 : f68681m) {
            f fVar2 = (f) f68678j.get(str3);
            org.jsoup.helper.d.j(fVar2);
            fVar2.f68689d = false;
            fVar2.f68690e = true;
        }
        for (String str4 : f68682n) {
            f fVar3 = (f) f68678j.get(str4);
            org.jsoup.helper.d.j(fVar3);
            fVar3.f68688c = false;
        }
        for (String str5 : f68683o) {
            f fVar4 = (f) f68678j.get(str5);
            org.jsoup.helper.d.j(fVar4);
            fVar4.f68692g = true;
        }
        for (String str6 : f68684p) {
            f fVar5 = (f) f68678j.get(str6);
            org.jsoup.helper.d.j(fVar5);
            fVar5.f68693h = true;
        }
        for (String str7 : f68685q) {
            f fVar6 = (f) f68678j.get(str7);
            org.jsoup.helper.d.j(fVar6);
            fVar6.f68694i = true;
        }
    }

    private f(String str) {
        this.f68686a = str;
    }

    private static void i(f fVar) {
        f68678j.put(fVar.f68686a, fVar);
    }

    public static f k(String str) {
        return l(str, d.f68671d);
    }

    public static f l(String str, d dVar) {
        org.jsoup.helper.d.j(str);
        Map map = f68678j;
        f fVar = (f) map.get(str);
        if (fVar != null) {
            return fVar;
        }
        String strB = dVar.b(str);
        org.jsoup.helper.d.h(strB);
        f fVar2 = (f) map.get(strB);
        if (fVar2 != null) {
            return fVar2;
        }
        f fVar3 = new f(strB);
        fVar3.f68687b = false;
        return fVar3;
    }

    public boolean a() {
        return this.f68688c;
    }

    public String b() {
        return this.f68686a;
    }

    public boolean c() {
        return this.f68687b;
    }

    public boolean d() {
        return this.f68690e;
    }

    public boolean e() {
        return this.f68693h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f68686a.equals(fVar.f68686a) && this.f68689d == fVar.f68689d && this.f68690e == fVar.f68690e && this.f68688c == fVar.f68688c && this.f68687b == fVar.f68687b && this.f68692g == fVar.f68692g && this.f68691f == fVar.f68691f && this.f68693h == fVar.f68693h && this.f68694i == fVar.f68694i;
    }

    public boolean f() {
        return f68678j.containsKey(this.f68686a);
    }

    public boolean g() {
        return this.f68690e || this.f68691f;
    }

    public boolean h() {
        return this.f68692g;
    }

    public int hashCode() {
        return (((((((((((((((this.f68686a.hashCode() * 31) + (this.f68687b ? 1 : 0)) * 31) + (this.f68688c ? 1 : 0)) * 31) + (this.f68689d ? 1 : 0)) * 31) + (this.f68690e ? 1 : 0)) * 31) + (this.f68691f ? 1 : 0)) * 31) + (this.f68692g ? 1 : 0)) * 31) + (this.f68693h ? 1 : 0)) * 31) + (this.f68694i ? 1 : 0);
    }

    f j() {
        this.f68691f = true;
        return this;
    }

    public String toString() {
        return this.f68686a;
    }
}
