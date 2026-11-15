package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.imgo.net.entity.AuthInfo;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

public class tda implements Cloneable {
    public static final Map k = new HashMap();
    public static final String[] l;
    public static final String[] m;
    public static final String[] n;
    public static final String[] o;
    public static final String[] p;
    public static final String[] q;
    public static final String[] r;
    public String b;
    public String c;
    public boolean d = true;
    public boolean e = true;
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;

    static {
        String[] strArr = {"html", "head", TtmlNode.TAG_BODY, "frameset", StringLookupFactory.KEY_SCRIPT, "noscript", "style", "meta", AuthInfo.Component.CODE_LINK, "title", TypedValues.AttributesType.S_FRAME, "noframes", "section", "nav", "aside", "hgroup", "header", "footer", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", TtmlNode.TAG_DIV, "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", CmcdConfiguration.KEY_DEADLINE, "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", "main", "svg", "math", TtmlNode.CENTER};
        l = strArr;
        m = new String[]{"object", TtmlNode.RUBY_BASE, "font", TtmlNode.TAG_TT, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "b", "u", "big", "small", "em", "strong", "dfn", TrackingKey.CODE, "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", TtmlNode.ATTR_TTS_RUBY, "rt", "rp", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", TtmlNode.TAG_SPAN, "input", "select", "textarea", AnnotatedPrivateKey.LABEL, AuthInfo.Component.CODE_BUTTON, "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", "s"};
        n = new String[]{"meta", AuthInfo.Component.CODE_LINK, TtmlNode.RUBY_BASE, TypedValues.AttributesType.S_FRAME, "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"};
        o = new String[]{"title", CmcdData.OBJECT_TYPE_AUDIO_ONLY, TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", StringLookupFactory.KEY_SCRIPT, "style", "ins", "del", "s"};
        p = new String[]{"pre", "plaintext", "title", "textarea"};
        q = new String[]{AuthInfo.Component.CODE_BUTTON, "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        r = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            m(new tda(str));
        }
        for (String str2 : m) {
            tda tdaVar = new tda(str2);
            tdaVar.d = false;
            tdaVar.e = false;
            m(tdaVar);
        }
        for (String str3 : n) {
            tda tdaVar2 = (tda) k.get(str3);
            dnb.i(tdaVar2);
            tdaVar2.f = true;
        }
        for (String str4 : o) {
            tda tdaVar3 = (tda) k.get(str4);
            dnb.i(tdaVar3);
            tdaVar3.e = false;
        }
        for (String str5 : p) {
            tda tdaVar4 = (tda) k.get(str5);
            dnb.i(tdaVar4);
            tdaVar4.h = true;
        }
        for (String str6 : q) {
            tda tdaVar5 = (tda) k.get(str6);
            dnb.i(tdaVar5);
            tdaVar5.i = true;
        }
        for (String str7 : r) {
            tda tdaVar6 = (tda) k.get(str7);
            dnb.i(tdaVar6);
            tdaVar6.j = true;
        }
    }

    public tda(String str) {
        this.b = str;
        this.c = v17.a(str);
    }

    public static void m(tda tdaVar) {
        k.put(tdaVar.b, tdaVar);
    }

    public static tda o(String str) {
        return p(str, tw7.d);
    }

    public static tda p(String str, tw7 tw7Var) {
        dnb.i(str);
        Map map = k;
        tda tdaVar = (tda) map.get(str);
        if (tdaVar != null) {
            return tdaVar;
        }
        String strC = tw7Var.c(str);
        dnb.g(strC);
        String strA = v17.a(strC);
        tda tdaVar2 = (tda) map.get(strA);
        if (tdaVar2 == null) {
            tda tdaVar3 = new tda(strC);
            tdaVar3.d = false;
            return tdaVar3;
        }
        if (!tw7Var.e() || strC.equals(strA)) {
            return tdaVar2;
        }
        tda tdaVarClone = tdaVar2.clone();
        tdaVarClone.b = strC;
        return tdaVarClone;
    }

    public tda clone() {
        try {
            return (tda) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean c() {
        return this.e;
    }

    public String d() {
        return this.b;
    }

    public boolean e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tda)) {
            return false;
        }
        tda tdaVar = (tda) obj;
        return this.b.equals(tdaVar.b) && this.f == tdaVar.f && this.e == tdaVar.e && this.d == tdaVar.d && this.h == tdaVar.h && this.g == tdaVar.g && this.i == tdaVar.i && this.j == tdaVar.j;
    }

    public boolean f() {
        return this.f;
    }

    public boolean g() {
        return this.i;
    }

    public boolean h() {
        return !this.d;
    }

    public int hashCode() {
        return (((((((((((((this.b.hashCode() * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0);
    }

    public boolean i() {
        return k.containsKey(this.b);
    }

    public boolean j() {
        return this.f || this.g;
    }

    public String k() {
        return this.c;
    }

    public boolean l() {
        return this.h;
    }

    public tda n() {
        this.g = true;
        return this;
    }

    public String toString() {
        return this.b;
    }
}
