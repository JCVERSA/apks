package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.function.ColorAlphaComponentGetter;
import com.yandex.div.evaluable.function.ColorAlphaComponentSetter;
import com.yandex.div.evaluable.function.ColorBlueComponentGetter;
import com.yandex.div.evaluable.function.ColorBlueComponentSetter;
import com.yandex.div.evaluable.function.ColorGreenComponentGetter;
import com.yandex.div.evaluable.function.ColorGreenComponentSetter;
import com.yandex.div.evaluable.function.ColorRedComponentGetter;
import com.yandex.div.evaluable.function.ColorRedComponentSetter;
import com.yandex.div.evaluable.function.EncodeRegex;
import java.util.List;

public final class nd4 implements l84 {
    public static final nd4 a = new nd4();

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public Function a(String str, List list) throws Exception {
        y45.j(str, "name");
        y45.j(list, "args");
        switch (str.hashCode()) {
            case -1776922004:
                if (str.equals("toString")) {
                    qh qhVar = qh.c;
                    Function.c cVarK = qhVar.k(list);
                    Function.c.C0295c c0295c = Function.c.C0295c.a;
                    if (y45.e(cVarK, c0295c)) {
                        return qhVar;
                    }
                    di0 di0Var = di0.c;
                    if (y45.e(di0Var.k(list), c0295c)) {
                        return di0Var;
                    }
                    q91 q91Var = q91.c;
                    if (y45.e(q91Var.k(list), c0295c)) {
                        return q91Var;
                    }
                    lb2 lb2Var = lb2.c;
                    if (y45.e(lb2Var.k(list), c0295c)) {
                        return lb2Var;
                    }
                    r25 r25Var = r25.c;
                    if (y45.e(r25Var.k(list), c0295c)) {
                        return r25Var;
                    }
                    z37 z37Var = z37.c;
                    if (y45.e(z37Var.k(list), c0295c)) {
                        return z37Var;
                    }
                    i0a i0aVar = i0a.c;
                    if (y45.e(i0aVar.k(list), c0295c)) {
                        return i0aVar;
                    }
                    ajb ajbVar = ajb.c;
                    if (y45.e(ajbVar.k(list), c0295c)) {
                        return ajbVar;
                    }
                    if (y45.e(qhVar.l(list), c0295c)) {
                        return qhVar;
                    }
                    if (y45.e(di0Var.l(list), c0295c)) {
                        return di0Var;
                    }
                    if (y45.e(q91Var.l(list), c0295c)) {
                        return q91Var;
                    }
                    if (y45.e(lb2Var.l(list), c0295c)) {
                        return lb2Var;
                    }
                    if (y45.e(r25Var.l(list), c0295c)) {
                        return r25Var;
                    }
                    if (y45.e(z37Var.l(list), c0295c)) {
                        return z37Var;
                    }
                    if (y45.e(i0aVar.l(list), c0295c)) {
                        return i0aVar;
                    }
                    if (y45.e(ajbVar.l(list), c0295c)) {
                        return ajbVar;
                    }
                    throw o84.c(str, list);
                }
                break;
            case -1300054776:
                if (str.equals("getInteger")) {
                    qg qgVar = qg.g;
                    Function.c cVarK2 = qgVar.k(list);
                    Function.c.C0295c c0295c2 = Function.c.C0295c.a;
                    if (y45.e(cVarK2, c0295c2)) {
                        return qgVar;
                    }
                    uf4 uf4Var = uf4.g;
                    if (y45.e(uf4Var.k(list), c0295c2)) {
                        return uf4Var;
                    }
                    if (y45.e(qgVar.l(list), c0295c2)) {
                        return qgVar;
                    }
                    if (y45.e(uf4Var.l(list), c0295c2)) {
                        return uf4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case -1249348039:
                if (str.equals("getUrl")) {
                    tg tgVar = tg.g;
                    Function.c cVarK3 = tgVar.k(list);
                    Function.c.C0295c c0295c3 = Function.c.C0295c.a;
                    if (y45.e(cVarK3, c0295c3)) {
                        return tgVar;
                    }
                    yh4 yh4Var = yh4.g;
                    if (y45.e(yh4Var.k(list), c0295c3)) {
                        return yh4Var;
                    }
                    if (y45.e(tgVar.l(list), c0295c3)) {
                        return tgVar;
                    }
                    if (y45.e(yh4Var.l(list), c0295c3)) {
                        return yh4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case -75598804:
                if (str.equals("getDict")) {
                    pg pgVar = pg.g;
                    Function.c cVarK4 = pgVar.k(list);
                    Function.c.C0295c c0295c4 = Function.c.C0295c.a;
                    if (y45.e(cVarK4, c0295c4)) {
                        return pgVar;
                    }
                    bf4 bf4Var = bf4.g;
                    if (y45.e(bf4Var.k(list), c0295c4)) {
                        return bf4Var;
                    }
                    if (y45.e(pgVar.l(list), c0295c4)) {
                        return pgVar;
                    }
                    if (y45.e(bf4Var.l(list), c0295c4)) {
                        return bf4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case 208013248:
                if (str.equals("containsKey")) {
                    return o84.d(xa2.c, list);
                }
                break;
            case 661651007:
                if (str.equals("getNumber")) {
                    rg rgVar = rg.g;
                    Function.c cVarK5 = rgVar.k(list);
                    Function.c.C0295c c0295c5 = Function.c.C0295c.a;
                    if (y45.e(cVarK5, c0295c5)) {
                        return rgVar;
                    }
                    jg4 jg4Var = jg4.g;
                    if (y45.e(jg4Var.k(list), c0295c5)) {
                        return jg4Var;
                    }
                    if (y45.e(rgVar.l(list), c0295c5)) {
                        return rgVar;
                    }
                    if (y45.e(jg4Var.l(list), c0295c5)) {
                        return jg4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case 804029191:
                if (str.equals("getString")) {
                    sg sgVar = sg.g;
                    Function.c cVarK6 = sgVar.k(list);
                    Function.c.C0295c c0295c6 = Function.c.C0295c.a;
                    if (y45.e(cVarK6, c0295c6)) {
                        return sgVar;
                    }
                    uh4 uh4Var = uh4.g;
                    if (y45.e(uh4Var.k(list), c0295c6)) {
                        return uh4Var;
                    }
                    if (y45.e(sgVar.l(list), c0295c6)) {
                        return sgVar;
                    }
                    if (y45.e(uh4Var.l(list), c0295c6)) {
                        return uh4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case 1101572082:
                if (str.equals("getBoolean")) {
                    ng ngVar = ng.g;
                    Function.c cVarK7 = ngVar.k(list);
                    Function.c.C0295c c0295c7 = Function.c.C0295c.a;
                    if (y45.e(cVarK7, c0295c7)) {
                        return ngVar;
                    }
                    qe4 qe4Var = qe4.g;
                    if (y45.e(qe4Var.k(list), c0295c7)) {
                        return qe4Var;
                    }
                    if (y45.e(ngVar.l(list), c0295c7)) {
                        return ngVar;
                    }
                    if (y45.e(qe4Var.l(list), c0295c7)) {
                        return qe4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case 1948915875:
                if (str.equals("getArray")) {
                    mg mgVar = mg.g;
                    Function.c cVarK8 = mgVar.k(list);
                    Function.c.C0295c c0295c8 = Function.c.C0295c.a;
                    if (y45.e(cVarK8, c0295c8)) {
                        return mgVar;
                    }
                    xd4 xd4Var = xd4.g;
                    if (y45.e(xd4Var.k(list), c0295c8)) {
                        return xd4Var;
                    }
                    if (y45.e(mgVar.l(list), c0295c8)) {
                        return mgVar;
                    }
                    if (y45.e(xd4Var.l(list), c0295c8)) {
                        return xd4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case 1950668205:
                if (str.equals("getColor")) {
                    og ogVar = og.g;
                    Function.c cVarK9 = ogVar.k(list);
                    Function.c.C0295c c0295c9 = Function.c.C0295c.a;
                    if (y45.e(cVarK9, c0295c9)) {
                        return ogVar;
                    }
                    ue4 ue4Var = ue4.g;
                    if (y45.e(ue4Var.k(list), c0295c9)) {
                        return ue4Var;
                    }
                    if (y45.e(ogVar.l(list), c0295c9)) {
                        return ogVar;
                    }
                    if (y45.e(ue4Var.l(list), c0295c9)) {
                        return ue4Var;
                    }
                    throw o84.c(str, list);
                }
                break;
            case 2058039875:
                if (str.equals("isEmpty")) {
                    vg vgVar = vg.c;
                    Function.c cVarK10 = vgVar.k(list);
                    Function.c.C0295c c0295c10 = Function.c.C0295c.a;
                    if (y45.e(cVarK10, c0295c10)) {
                        return vgVar;
                    }
                    ab2 ab2Var = ab2.c;
                    if (y45.e(ab2Var.k(list), c0295c10)) {
                        return ab2Var;
                    }
                    if (y45.e(vgVar.l(list), c0295c10)) {
                        return vgVar;
                    }
                    if (y45.e(ab2Var.l(list), c0295c10)) {
                        return ab2Var;
                    }
                    throw o84.c(str, list);
                }
                break;
        }
        throw new EvaluableException("Unknown method name: " + str + '.', null, 2, null);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public Function b(String str, List list) throws Exception {
        y45.j(str, "name");
        y45.j(list, "args");
        switch (str.hashCode()) {
            case -2129095909:
                if (str.equals("getArrayInteger")) {
                    return o84.d(ce4.g, list);
                }
                break;
            case -2096254100:
                if (str.equals("getArrayFromArray")) {
                    return o84.d(ae4.g, list);
                }
                break;
            case -2015731347:
                if (str.equals("formatDateAsUTCWithLocale")) {
                    return o84.d(n44.c, list);
                }
                break;
            case -1930505522:
                if (str.equals("getOptIntegerFromArray")) {
                    return o84.d(xg4.f, list);
                }
                break;
            case -1919300188:
                if (str.equals("toNumber")) {
                    q25 q25Var = q25.c;
                    Function.c cVarK = q25Var.k(list);
                    Function.c.C0295c c0295c = Function.c.C0295c.a;
                    if (y45.e(cVarK, c0295c)) {
                        return q25Var;
                    }
                    h0a h0aVar = h0a.c;
                    if (y45.e(h0aVar.k(list), c0295c)) {
                        return h0aVar;
                    }
                    if (y45.e(q25Var.l(list), c0295c)) {
                        return q25Var;
                    }
                    if (y45.e(h0aVar.l(list), c0295c)) {
                        return h0aVar;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -1857218874:
                if (str.equals("getIntervalTotalHours")) {
                    return o84.d(cg4.c, list);
                }
                break;
            case -1843679562:
                if (str.equals("getIntervalTotalWeeks")) {
                    return o84.d(fg4.c, list);
                }
                break;
            case -1776922004:
                if (str.equals("toString")) {
                    qh qhVar = qh.c;
                    Function.c cVarK2 = qhVar.k(list);
                    Function.c.C0295c c0295c2 = Function.c.C0295c.a;
                    if (y45.e(cVarK2, c0295c2)) {
                        return qhVar;
                    }
                    di0 di0Var = di0.c;
                    if (y45.e(di0Var.k(list), c0295c2)) {
                        return di0Var;
                    }
                    q91 q91Var = q91.c;
                    if (y45.e(q91Var.k(list), c0295c2)) {
                        return q91Var;
                    }
                    lb2 lb2Var = lb2.c;
                    if (y45.e(lb2Var.k(list), c0295c2)) {
                        return lb2Var;
                    }
                    r25 r25Var = r25.c;
                    if (y45.e(r25Var.k(list), c0295c2)) {
                        return r25Var;
                    }
                    z37 z37Var = z37.c;
                    if (y45.e(z37Var.k(list), c0295c2)) {
                        return z37Var;
                    }
                    i0a i0aVar = i0a.c;
                    if (y45.e(i0aVar.k(list), c0295c2)) {
                        return i0aVar;
                    }
                    ajb ajbVar = ajb.c;
                    if (y45.e(ajbVar.k(list), c0295c2)) {
                        return ajbVar;
                    }
                    if (y45.e(qhVar.l(list), c0295c2)) {
                        return qhVar;
                    }
                    if (y45.e(di0Var.l(list), c0295c2)) {
                        return di0Var;
                    }
                    if (y45.e(q91Var.l(list), c0295c2)) {
                        return q91Var;
                    }
                    if (y45.e(lb2Var.l(list), c0295c2)) {
                        return lb2Var;
                    }
                    if (y45.e(r25Var.l(list), c0295c2)) {
                        return r25Var;
                    }
                    if (y45.e(z37Var.l(list), c0295c2)) {
                        return z37Var;
                    }
                    if (y45.e(i0aVar.l(list), c0295c2)) {
                        return i0aVar;
                    }
                    if (y45.e(ajbVar.l(list), c0295c2)) {
                        return ajbVar;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -1730341801:
                if (str.equals("getDictOptInteger")) {
                    return o84.d(lf4.f, list);
                }
                break;
            case -1603949422:
                if (str.equals("getBooleanFromDict")) {
                    return o84.d(se4.g, list);
                }
                break;
            case -1601021533:
                if (str.equals("getDictUrl")) {
                    return o84.d(rf4.g, list);
                }
                break;
            case -1598503635:
                if (str.equals("toBoolean")) {
                    p25 p25Var = p25.c;
                    Function.c cVarK3 = p25Var.k(list);
                    Function.c.C0295c c0295c3 = Function.c.C0295c.a;
                    if (y45.e(cVarK3, c0295c3)) {
                        return p25Var;
                    }
                    e0a e0aVar = e0a.c;
                    if (y45.e(e0aVar.k(list), c0295c3)) {
                        return e0aVar;
                    }
                    if (y45.e(p25Var.l(list), c0295c3)) {
                        return p25Var;
                    }
                    if (y45.e(e0aVar.l(list), c0295c3)) {
                        return e0aVar;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -1586214751:
                if (str.equals("getOptIntegerFromDict")) {
                    return o84.d(yg4.f, list);
                }
                break;
            case -1544450268:
                if (str.equals("getOptBooleanFromArray")) {
                    return o84.d(pg4.f, list);
                }
                break;
            case -1536224128:
                if (str.equals("getArrayColor")) {
                    return o84.d(zd4.g, list);
                }
                break;
            case -1506310026:
                if (str.equals("getIntervalTotalSeconds")) {
                    return o84.d(eg4.c, list);
                }
                break;
            case -1436100668:
                if (str.equals("getIntervalSeconds")) {
                    return o84.d(ag4.c, list);
                }
                break;
            case -1288010167:
                if (str.equals("getSeconds")) {
                    return o84.d(ih4.c, list);
                }
                break;
            case -1249364890:
                if (str.equals("getDay")) {
                    return o84.d(ze4.c, list);
                }
                break;
            case -1233067443:
                if (str.equals("replaceAll")) {
                    return o84.d(a0a.c, list);
                }
                break;
            case -1223509624:
                if (str.equals("getStringFromArray")) {
                    return o84.d(vh4.g, list);
                }
                break;
            case -1192573227:
                if (str.equals("testRegex")) {
                    return o84.d(uga.c, list);
                }
                break;
            case -1180629592:
                if (str.equals("toColor")) {
                    return o84.d(f0a.c, list);
                }
                break;
            case -1168421440:
                if (str.equals("getIntervalTotalDays")) {
                    return o84.d(bg4.c, list);
                }
                break;
            case -1162978502:
                if (str.equals("maxInteger")) {
                    return o84.d(e25.c, list);
                }
                break;
            case -1148047119:
                if (str.equals("parseUnixTimeAsLocal")) {
                    return o84.d(vw7.c, list);
                }
                break;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    return o84.d(voa.c, list);
                }
                break;
            case -1133026611:
                if (str.equals("formatDateAsUTC")) {
                    return o84.d(m44.c, list);
                }
                break;
            case -1131397482:
                if (str.equals("getUrlFromArray")) {
                    return o84.d(zh4.g, list);
                }
                break;
            case -1077888264:
                if (str.equals("getArrayOptBoolean")) {
                    return o84.d(fe4.f, list);
                }
                break;
            case -1072121784:
                if (str.equals("parseUnixTime")) {
                    return o84.d(uw7.c, list);
                }
                break;
            case -1071222151:
                if (str.equals("getArrayOptNumber")) {
                    return o84.d(je4.f, list);
                }
                break;
            case -1013579358:
                if (str.equals("getColorFromArray")) {
                    return o84.d(ve4.g, list);
                }
                break;
            case -1000110441:
                if (str.equals("getDictColor")) {
                    return o84.d(df4.g, list);
                }
                break;
            case -995871928:
                if (str.equals("padEnd")) {
                    qv7 qv7Var = qv7.c;
                    Function.c cVarK4 = qv7Var.k(list);
                    Function.c.C0295c c0295c4 = Function.c.C0295c.a;
                    if (y45.e(cVarK4, c0295c4)) {
                        return qv7Var;
                    }
                    rv7 rv7Var = rv7.c;
                    if (y45.e(rv7Var.k(list), c0295c4)) {
                        return rv7Var;
                    }
                    if (y45.e(qv7Var.l(list), c0295c4)) {
                        return qv7Var;
                    }
                    if (y45.e(rv7Var.l(list), c0295c4)) {
                        return rv7Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -962804868:
                if (str.equals("getOptArrayFromDict")) {
                    return o84.d(og4.c, list);
                }
                break;
            case -928843967:
                if (str.equals("getArrayOptString")) {
                    return o84.d(ke4.f, list);
                }
                break;
            case -905815078:
                if (str.equals("setDay")) {
                    return o84.d(pe9.c, list);
                }
                break;
            case -902467307:
                if (str.equals("signum")) {
                    ox2 ox2Var = ox2.c;
                    Function.c cVarK5 = ox2Var.k(list);
                    Function.c.C0295c c0295c5 = Function.c.C0295c.a;
                    if (y45.e(cVarK5, c0295c5)) {
                        return ox2Var;
                    }
                    m25 m25Var = m25.c;
                    if (y45.e(m25Var.k(list), c0295c5)) {
                        return m25Var;
                    }
                    if (y45.e(ox2Var.l(list), c0295c5)) {
                        return ox2Var;
                    }
                    if (y45.e(m25Var.l(list), c0295c5)) {
                        return m25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -863899827:
                if (str.equals("getColorFromDict")) {
                    return o84.d(we4.g, list);
                }
                break;
            case -823914681:
                if (str.equals("getStoredColorValue")) {
                    lh4 lh4Var = lh4.c;
                    Function.c cVarK6 = lh4Var.k(list);
                    Function.c.C0295c c0295c6 = Function.c.C0295c.a;
                    if (y45.e(cVarK6, c0295c6)) {
                        return lh4Var;
                    }
                    mh4 mh4Var = mh4.c;
                    if (y45.e(mh4Var.k(list), c0295c6)) {
                        return mh4Var;
                    }
                    if (y45.e(lh4Var.l(list), c0295c6)) {
                        return lh4Var;
                    }
                    if (y45.e(mh4Var.l(list), c0295c6)) {
                        return mh4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -792903165:
                if (str.equals("getDictFromArray")) {
                    return o84.d(ef4.g, list);
                }
                break;
            case -775185381:
                if (str.equals("setColorBlue")) {
                    ColorBlueComponentSetter colorBlueComponentSetter = ColorBlueComponentSetter.g;
                    Function.c cVarK7 = colorBlueComponentSetter.k(list);
                    Function.c.C0295c c0295c7 = Function.c.C0295c.a;
                    if (y45.e(cVarK7, c0295c7)) {
                        return colorBlueComponentSetter;
                    }
                    j91 j91Var = j91.g;
                    if (y45.e(j91Var.k(list), c0295c7)) {
                        return j91Var;
                    }
                    if (y45.e(colorBlueComponentSetter.l(list), c0295c7)) {
                        return colorBlueComponentSetter;
                    }
                    if (y45.e(j91Var.l(list), c0295c7)) {
                        return j91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -757068958:
                if (str.equals("getStoredBooleanValue")) {
                    return o84.d(kh4.c, list);
                }
                break;
            case -740156815:
                if (str.equals("getDayOfWeek")) {
                    return o84.d(af4.c, list);
                }
                break;
            case -719400499:
                if (str.equals("maxNumber")) {
                    return o84.d(hx2.c, list);
                }
                break;
            case -718233908:
                if (str.equals("getDictFromDict")) {
                    return o84.d(ff4.g, list);
                }
                break;
            case -711609332:
                if (str.equals("getStoredIntegerValue")) {
                    return o84.d(ph4.c, list);
                }
                break;
            case -694406281:
                if (str.equals("toRadians")) {
                    return o84.d(i72.c, list);
                }
                break;
            case -637295986:
                if (str.equals("getOptStringFromDict")) {
                    return o84.d(ch4.f, list);
                }
                break;
            case -625627966:
                if (str.equals("getStoredDictValue")) {
                    return o84.d(oh4.e, list);
                }
                break;
            case -618173803:
                if (str.equals("getDictNumber")) {
                    return o84.d(hf4.g, list);
                }
                break;
            case -593965816:
                if (str.equals("getDictOptUrl")) {
                    of4 of4Var = of4.f;
                    Function.c cVarK8 = of4Var.k(list);
                    Function.c.C0295c c0295c8 = Function.c.C0295c.a;
                    if (y45.e(cVarK8, c0295c8)) {
                        return of4Var;
                    }
                    pf4 pf4Var = pf4.f;
                    if (y45.e(pf4Var.k(list), c0295c8)) {
                        return pf4Var;
                    }
                    if (y45.e(of4Var.l(list), c0295c8)) {
                        return of4Var;
                    }
                    if (y45.e(pf4Var.l(list), c0295c8)) {
                        return pf4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -567445985:
                if (str.equals("contains")) {
                    return o84.d(iz9.c, list);
                }
                break;
            case -505987374:
                if (str.equals("copySign")) {
                    cx2 cx2Var = cx2.c;
                    Function.c cVarK9 = cx2Var.k(list);
                    Function.c.C0295c c0295c9 = Function.c.C0295c.a;
                    if (y45.e(cVarK9, c0295c9)) {
                        return cx2Var;
                    }
                    z15 z15Var = z15.c;
                    if (y45.e(z15Var.k(list), c0295c9)) {
                        return z15Var;
                    }
                    if (y45.e(cx2Var.l(list), c0295c9)) {
                        return cx2Var;
                    }
                    if (y45.e(z15Var.l(list), c0295c9)) {
                        return z15Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case -496262374:
                if (str.equals("trimRight")) {
                    return o84.d(cab.c, list);
                }
                break;
            case -475795619:
                if (str.equals("getDictString")) {
                    return o84.d(qf4.g, list);
                }
                break;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    return o84.d(woa.c, list);
                }
                break;
            case -342730167:
                if (str.equals("getOptNumberFromArray")) {
                    return o84.d(zg4.f, list);
                }
                break;
            case -288070202:
                if (str.equals("getOptNumberFromDict")) {
                    return o84.d(ah4.f, list);
                }
                break;
            case -256399843:
                if (str.equals("setMinutes")) {
                    return o84.d(se9.c, list);
                }
                break;
            case -230929496:
                if (str.equals("getIntegerFromDict")) {
                    return o84.d(wf4.g, list);
                }
                break;
            case -181255609:
                if (str.equals("addMillis")) {
                    return o84.d(g8.c, list);
                }
                break;
            case -174963751:
                if (str.equals("getUrlFromDict")) {
                    return o84.d(ai4.g, list);
                }
                break;
            case -116997076:
                if (str.equals("toDegrees")) {
                    return o84.d(ln8.c, list);
                }
                break;
            case -92937393:
                if (str.equals("getStoredNumberValue")) {
                    return o84.d(qh4.c, list);
                }
                break;
            case -74977101:
                if (str.equals("getYear")) {
                    return o84.d(di4.c, list);
                }
                break;
            case -57828916:
                if (str.equals("getArrayNumber")) {
                    return o84.d(ee4.g, list);
                }
                break;
            case -33620929:
                if (str.equals("getArrayOptUrl")) {
                    le4 le4Var = le4.g;
                    Function.c cVarK10 = le4Var.k(list);
                    Function.c.C0295c c0295c10 = Function.c.C0295c.a;
                    if (y45.e(cVarK10, c0295c10)) {
                        return le4Var;
                    }
                    me4 me4Var = me4.f;
                    if (y45.e(me4Var.k(list), c0295c10)) {
                        return me4Var;
                    }
                    if (y45.e(le4Var.l(list), c0295c10)) {
                        return le4Var;
                    }
                    if (y45.e(me4Var.l(list), c0295c10)) {
                        return me4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 3577:
                if (str.equals("pi")) {
                    return o84.d(b18.c, list);
                }
                break;
            case 96370:
                if (str.equals("abs")) {
                    vw2 vw2Var = vw2.c;
                    Function.c cVarK11 = vw2Var.k(list);
                    Function.c.C0295c c0295c11 = Function.c.C0295c.a;
                    if (y45.e(cVarK11, c0295c11)) {
                        return vw2Var;
                    }
                    y15 y15Var = y15.c;
                    if (y45.e(y15Var.k(list), c0295c11)) {
                        return y15Var;
                    }
                    if (y45.e(vw2Var.l(list), c0295c11)) {
                        return vw2Var;
                    }
                    if (y45.e(y15Var.l(list), c0295c11)) {
                        return y15Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 98695:
                if (str.equals("cos")) {
                    return o84.d(pk1.c, list);
                }
                break;
            case 99473:
                if (str.equals(TtmlNode.TAG_DIV)) {
                    dx2 dx2Var = dx2.c;
                    Function.c cVarK12 = dx2Var.k(list);
                    Function.c.C0295c c0295c12 = Function.c.C0295c.a;
                    if (y45.e(cVarK12, c0295c12)) {
                        return dx2Var;
                    }
                    a25 a25Var = a25.c;
                    if (y45.e(a25Var.k(list), c0295c12)) {
                        return a25Var;
                    }
                    if (y45.e(dx2Var.l(list), c0295c12)) {
                        return dx2Var;
                    }
                    if (y45.e(a25Var.l(list), c0295c12)) {
                        return a25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 107029:
                if (str.equals("len")) {
                    de4 de4Var = de4.c;
                    Function.c cVarK13 = de4Var.k(list);
                    Function.c.C0295c c0295c13 = Function.c.C0295c.a;
                    if (y45.e(cVarK13, c0295c13)) {
                        return de4Var;
                    }
                    qz9 qz9Var = qz9.c;
                    if (y45.e(qz9Var.k(list), c0295c13)) {
                        return qz9Var;
                    }
                    if (y45.e(de4Var.l(list), c0295c13)) {
                        return de4Var;
                    }
                    if (y45.e(qz9Var.l(list), c0295c13)) {
                        return qz9Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 107876:
                if (str.equals("max")) {
                    gx2 gx2Var = gx2.c;
                    Function.c cVarK14 = gx2Var.k(list);
                    Function.c.C0295c c0295c14 = Function.c.C0295c.a;
                    if (y45.e(cVarK14, c0295c14)) {
                        return gx2Var;
                    }
                    d25 d25Var = d25.c;
                    if (y45.e(d25Var.k(list), c0295c14)) {
                        return d25Var;
                    }
                    if (y45.e(gx2Var.l(list), c0295c14)) {
                        return gx2Var;
                    }
                    if (y45.e(d25Var.l(list), c0295c14)) {
                        return d25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 108114:
                if (str.equals("min")) {
                    ix2 ix2Var = ix2.c;
                    Function.c cVarK15 = ix2Var.k(list);
                    Function.c.C0295c c0295c15 = Function.c.C0295c.a;
                    if (y45.e(cVarK15, c0295c15)) {
                        return ix2Var;
                    }
                    f25 f25Var = f25.c;
                    if (y45.e(f25Var.k(list), c0295c15)) {
                        return f25Var;
                    }
                    if (y45.e(ix2Var.l(list), c0295c15)) {
                        return ix2Var;
                    }
                    if (y45.e(f25Var.l(list), c0295c15)) {
                        return f25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 108290:
                if (str.equals(DownloadFacadeEnum.USER_MOD)) {
                    kx2 kx2Var = kx2.c;
                    Function.c cVarK16 = kx2Var.k(list);
                    Function.c.C0295c c0295c16 = Function.c.C0295c.a;
                    if (y45.e(cVarK16, c0295c16)) {
                        return kx2Var;
                    }
                    h25 h25Var = h25.c;
                    if (y45.e(h25Var.k(list), c0295c16)) {
                        return h25Var;
                    }
                    if (y45.e(kx2Var.l(list), c0295c16)) {
                        return kx2Var;
                    }
                    if (y45.e(h25Var.l(list), c0295c16)) {
                        return h25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 108484:
                if (str.equals("mul")) {
                    lx2 lx2Var = lx2.c;
                    Function.c cVarK17 = lx2Var.k(list);
                    Function.c.C0295c c0295c17 = Function.c.C0295c.a;
                    if (y45.e(cVarK17, c0295c17)) {
                        return lx2Var;
                    }
                    i25 i25Var = i25.c;
                    if (y45.e(i25Var.k(list), c0295c17)) {
                        return i25Var;
                    }
                    if (y45.e(lx2Var.l(list), c0295c17)) {
                        return lx2Var;
                    }
                    if (y45.e(i25Var.l(list), c0295c17)) {
                        return i25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 112845:
                if (str.equals("rgb")) {
                    return o84.d(f91.c, list);
                }
                break;
            case 113880:
                if (str.equals("sin")) {
                    return o84.d(wm9.c, list);
                }
                break;
            case 114240:
                if (str.equals("sub")) {
                    px2 px2Var = px2.c;
                    Function.c cVarK18 = px2Var.k(list);
                    Function.c.C0295c c0295c18 = Function.c.C0295c.a;
                    if (y45.e(cVarK18, c0295c18)) {
                        return px2Var;
                    }
                    n25 n25Var = n25.c;
                    if (y45.e(n25Var.k(list), c0295c18)) {
                        return n25Var;
                    }
                    if (y45.e(px2Var.l(list), c0295c18)) {
                        return px2Var;
                    }
                    if (y45.e(n25Var.l(list), c0295c18)) {
                        return n25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 114251:
                if (str.equals("sum")) {
                    qx2 qx2Var = qx2.c;
                    Function.c cVarK19 = qx2Var.k(list);
                    Function.c.C0295c c0295c19 = Function.c.C0295c.a;
                    if (y45.e(cVarK19, c0295c19)) {
                        return qx2Var;
                    }
                    o25 o25Var = o25.c;
                    if (y45.e(o25Var.k(list), c0295c19)) {
                        return o25Var;
                    }
                    if (y45.e(qx2Var.l(list), c0295c19)) {
                        return qx2Var;
                    }
                    if (y45.e(o25Var.l(list), c0295c19)) {
                        return o25Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 3002572:
                if (str.equals("argb")) {
                    return o84.d(l81.c, list);
                }
                break;
            case 3003607:
                if (str.equals("asin")) {
                    return o84.d(vi.c, list);
                }
                break;
            case 3049733:
                if (str.equals("ceil")) {
                    return o84.d(yw2.c, list);
                }
                break;
            case 3568674:
                if (str.equals("trim")) {
                    return o84.d(y9b.c, list);
                }
                break;
            case 53078075:
                if (str.equals("minNumber")) {
                    return o84.d(jx2.c, list);
                }
                break;
            case 81708636:
                if (str.equals("getDictBoolean")) {
                    return o84.d(cf4.g, list);
                }
                break;
            case 84549268:
                if (str.equals("getArrayString")) {
                    return o84.d(ne4.g, list);
                }
                break;
            case 88715890:
                if (str.equals("getNumberValue")) {
                    return o84.d(mg4.c, list);
                }
                break;
            case 97526796:
                if (str.equals("floor")) {
                    return o84.d(ex2.c, list);
                }
                break;
            case 100346066:
                if (str.equals("index")) {
                    return o84.d(nz9.c, list);
                }
                break;
            case 108704142:
                if (str.equals("round")) {
                    return o84.d(mx2.c, list);
                }
                break;
            case 110520564:
                if (str.equals("toUrl")) {
                    return o84.d(j0a.c, list);
                }
                break;
            case 181165108:
                if (str.equals("formatDateAsLocalWithLocale")) {
                    return o84.d(l44.c, list);
                }
                break;
            case 215331667:
                if (str.equals("getOptArrayFromArray")) {
                    return o84.d(ng4.f, list);
                }
                break;
            case 232128784:
                if (str.equals("getDictOptNumber")) {
                    return o84.d(mf4.f, list);
                }
                break;
            case 272530949:
                if (str.equals("getArrayBoolean")) {
                    return o84.d(yd4.g, list);
                }
                break;
            case 294836803:
                if (str.equals("toInteger")) {
                    ci0 ci0Var = ci0.c;
                    Function.c cVarK20 = ci0Var.k(list);
                    Function.c.C0295c c0295c20 = Function.c.C0295c.a;
                    if (y45.e(cVarK20, c0295c20)) {
                        return ci0Var;
                    }
                    y37 y37Var = y37.c;
                    if (y45.e(y37Var.k(list), c0295c20)) {
                        return y37Var;
                    }
                    g0a g0aVar = g0a.c;
                    if (y45.e(g0aVar.k(list), c0295c20)) {
                        return g0aVar;
                    }
                    if (y45.e(ci0Var.l(list), c0295c20)) {
                        return ci0Var;
                    }
                    if (y45.e(y37Var.l(list), c0295c20)) {
                        return y37Var;
                    }
                    if (y45.e(g0aVar.l(list), c0295c20)) {
                        return g0aVar;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 374506968:
                if (str.equals("getDictOptString")) {
                    return o84.d(nf4.f, list);
                }
                break;
            case 407302472:
                if (str.equals("setMillis")) {
                    return o84.d(re9.c, list);
                }
                break;
            case 412791996:
                if (str.equals("getDictOptColor")) {
                    jf4 jf4Var = jf4.f;
                    Function.c cVarK21 = jf4Var.k(list);
                    Function.c.C0295c c0295c21 = Function.c.C0295c.a;
                    if (y45.e(cVarK21, c0295c21)) {
                        return jf4Var;
                    }
                    kf4 kf4Var = kf4.f;
                    if (y45.e(kf4Var.k(list), c0295c21)) {
                        return kf4Var;
                    }
                    if (y45.e(jf4Var.l(list), c0295c21)) {
                        return jf4Var;
                    }
                    if (y45.e(kf4Var.l(list), c0295c21)) {
                        return kf4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 515198110:
                if (str.equals("decodeUri")) {
                    return o84.d(jz9.c, list);
                }
                break;
            case 530542161:
                if (str.equals("substring")) {
                    return o84.d(d0a.c, list);
                }
                break;
            case 579215519:
                if (str.equals("getBooleanValue")) {
                    return o84.d(te4.c, list);
                }
                break;
            case 609553469:
                if (str.equals("getOptUrlFromArray")) {
                    dh4 dh4Var = dh4.g;
                    Function.c cVarK22 = dh4Var.k(list);
                    Function.c.C0295c c0295c22 = Function.c.C0295c.a;
                    if (y45.e(cVarK22, c0295c22)) {
                        return dh4Var;
                    }
                    eh4 eh4Var = eh4.f;
                    if (y45.e(eh4Var.k(list), c0295c22)) {
                        return eh4Var;
                    }
                    if (y45.e(dh4Var.l(list), c0295c22)) {
                        return dh4Var;
                    }
                    if (y45.e(eh4Var.l(list), c0295c22)) {
                        return eh4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 621919548:
                if (str.equals("getMillis")) {
                    return o84.d(gg4.c, list);
                }
                break;
            case 624675145:
                if (str.equals("getIntegerValue")) {
                    return o84.d(xf4.c, list);
                }
                break;
            case 648795069:
                if (str.equals("setSeconds")) {
                    return o84.d(ve9.c, list);
                }
                break;
            case 671285057:
                if (str.equals("getDictOptBoolean")) {
                    return o84.d(if4.f, list);
                }
                break;
            case 757893007:
                if (str.equals("padStart")) {
                    sv7 sv7Var = sv7.c;
                    Function.c cVarK23 = sv7Var.k(list);
                    Function.c.C0295c c0295c23 = Function.c.C0295c.a;
                    if (y45.e(cVarK23, c0295c23)) {
                        return sv7Var;
                    }
                    tv7 tv7Var = tv7.c;
                    if (y45.e(tv7Var.k(list), c0295c23)) {
                        return tv7Var;
                    }
                    if (y45.e(sv7Var.l(list), c0295c23)) {
                        return sv7Var;
                    }
                    if (y45.e(tv7Var.l(list), c0295c23)) {
                        return tv7Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 785010124:
                if (str.equals("getArrayUrl")) {
                    return o84.d(oe4.g, list);
                }
                break;
            case 815452174:
                if (str.equals("getArrayOptInteger")) {
                    return o84.d(ie4.f, list);
                }
                break;
            case 833284859:
                if (str.equals("getStoredUrlValue")) {
                    sh4 sh4Var = sh4.c;
                    Function.c cVarK24 = sh4Var.k(list);
                    Function.c.C0295c c0295c24 = Function.c.C0295c.a;
                    if (y45.e(cVarK24, c0295c24)) {
                        return sh4Var;
                    }
                    th4 th4Var = th4.c;
                    if (y45.e(th4Var.k(list), c0295c24)) {
                        return th4Var;
                    }
                    if (y45.e(sh4Var.l(list), c0295c24)) {
                        return sh4Var;
                    }
                    if (y45.e(th4Var.l(list), c0295c24)) {
                        return th4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 851027282:
                if (str.equals("getOptUrlFromDict")) {
                    fh4 fh4Var = fh4.f;
                    Function.c cVarK25 = fh4Var.k(list);
                    Function.c.C0295c c0295c25 = Function.c.C0295c.a;
                    if (y45.e(cVarK25, c0295c25)) {
                        return fh4Var;
                    }
                    gh4 gh4Var = gh4.f;
                    if (y45.e(gh4Var.k(list), c0295c25)) {
                        return gh4Var;
                    }
                    if (y45.e(fh4Var.l(list), c0295c25)) {
                        return fh4Var;
                    }
                    if (y45.e(gh4Var.l(list), c0295c25)) {
                        return gh4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 902290499:
                if (str.equals("getArrayFromDict")) {
                    return o84.d(be4.g, list);
                }
                break;
            case 963997617:
                if (str.equals("getColorAlpha")) {
                    ColorAlphaComponentGetter colorAlphaComponentGetter = ColorAlphaComponentGetter.g;
                    Function.c cVarK26 = colorAlphaComponentGetter.k(list);
                    Function.c.C0295c c0295c26 = Function.c.C0295c.a;
                    if (y45.e(cVarK26, c0295c26)) {
                        return colorAlphaComponentGetter;
                    }
                    g91 g91Var = g91.g;
                    if (y45.e(g91Var.k(list), c0295c26)) {
                        return g91Var;
                    }
                    if (y45.e(colorAlphaComponentGetter.l(list), c0295c26)) {
                        return colorAlphaComponentGetter;
                    }
                    if (y45.e(g91Var.l(list), c0295c26)) {
                        return g91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 968898065:
                if (str.equals("getStoredArrayValue")) {
                    return o84.d(jh4.e, list);
                }
                break;
            case 969706838:
                if (str.equals("getColorGreen")) {
                    ColorGreenComponentGetter colorGreenComponentGetter = ColorGreenComponentGetter.g;
                    Function.c cVarK27 = colorGreenComponentGetter.k(list);
                    Function.c.C0295c c0295c27 = Function.c.C0295c.a;
                    if (y45.e(cVarK27, c0295c27)) {
                        return colorGreenComponentGetter;
                    }
                    m91 m91Var = m91.g;
                    if (y45.e(m91Var.k(list), c0295c27)) {
                        return m91Var;
                    }
                    if (y45.e(colorGreenComponentGetter.l(list), c0295c27)) {
                        return colorGreenComponentGetter;
                    }
                    if (y45.e(m91Var.l(list), c0295c27)) {
                        return m91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 983060420:
                if (str.equals("getColorValue")) {
                    xe4 xe4Var = xe4.c;
                    Function.c cVarK28 = xe4Var.k(list);
                    Function.c.C0295c c0295c28 = Function.c.C0295c.a;
                    if (y45.e(cVarK28, c0295c28)) {
                        return xe4Var;
                    }
                    ye4 ye4Var = ye4.c;
                    if (y45.e(ye4Var.k(list), c0295c28)) {
                        return ye4Var;
                    }
                    if (y45.e(xe4Var.l(list), c0295c28)) {
                        return xe4Var;
                    }
                    if (y45.e(ye4Var.l(list), c0295c28)) {
                        return ye4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1012555088:
                if (str.equals("getNumberFromArray")) {
                    return o84.d(kg4.g, list);
                }
                break;
            case 1022717043:
                if (str.equals("getOptDictFromDict")) {
                    return o84.d(wg4.c, list);
                }
                break;
            case 1098852024:
                if (str.equals("getUrlValue")) {
                    bi4 bi4Var = bi4.c;
                    Function.c cVarK29 = bi4Var.k(list);
                    Function.c.C0295c c0295c29 = Function.c.C0295c.a;
                    if (y45.e(cVarK29, c0295c29)) {
                        return bi4Var;
                    }
                    ci4 ci4Var = ci4.c;
                    if (y45.e(ci4Var.k(list), c0295c29)) {
                        return ci4Var;
                    }
                    if (y45.e(bi4Var.l(list), c0295c29)) {
                        return bi4Var;
                    }
                    if (y45.e(ci4Var.l(list), c0295c29)) {
                        return ci4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1298006409:
                if (str.equals("getOptColorFromArray")) {
                    rg4 rg4Var = rg4.f;
                    Function.c cVarK30 = rg4Var.k(list);
                    Function.c.C0295c c0295c30 = Function.c.C0295c.a;
                    if (y45.e(cVarK30, c0295c30)) {
                        return rg4Var;
                    }
                    sg4 sg4Var = sg4.g;
                    if (y45.e(sg4Var.k(list), c0295c30)) {
                        return sg4Var;
                    }
                    if (y45.e(rg4Var.l(list), c0295c30)) {
                        return rg4Var;
                    }
                    if (y45.e(sg4Var.l(list), c0295c30)) {
                        return sg4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1309020812:
                if (str.equals("minInteger")) {
                    return o84.d(g25.c, list);
                }
                break;
            case 1335732619:
                if (str.equals("getOptBooleanFromDict")) {
                    return o84.d(qg4.f, list);
                }
                break;
            case 1346085543:
                if (str.equals("getStringFromDict")) {
                    return o84.d(wh4.g, list);
                }
                break;
            case 1360482480:
                if (str.equals("setColorRed")) {
                    ColorRedComponentSetter colorRedComponentSetter = ColorRedComponentSetter.g;
                    Function.c cVarK31 = colorRedComponentSetter.k(list);
                    Function.c.C0295c c0295c31 = Function.c.C0295c.a;
                    if (y45.e(cVarK31, c0295c31)) {
                        return colorRedComponentSetter;
                    }
                    p91 p91Var = p91.g;
                    if (y45.e(p91Var.k(list), c0295c31)) {
                        return p91Var;
                    }
                    if (y45.e(colorRedComponentSetter.l(list), c0295c31)) {
                        return colorRedComponentSetter;
                    }
                    if (y45.e(p91Var.l(list), c0295c31)) {
                        return p91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1394182093:
                if (str.equals("setHours")) {
                    return o84.d(qe9.c, list);
                }
                break;
            case 1398793022:
                if (str.equals("setMonth")) {
                    return o84.d(te9.c, list);
                }
                break;
            case 1428631719:
                if (str.equals("getIntegerFromArray")) {
                    return o84.d(vf4.g, list);
                }
                break;
            case 1449062308:
                if (str.equals("getColorRed")) {
                    ColorRedComponentGetter colorRedComponentGetter = ColorRedComponentGetter.g;
                    Function.c cVarK32 = colorRedComponentGetter.k(list);
                    Function.c.C0295c c0295c32 = Function.c.C0295c.a;
                    if (y45.e(cVarK32, c0295c32)) {
                        return colorRedComponentGetter;
                    }
                    o91 o91Var = o91.g;
                    if (y45.e(o91Var.k(list), c0295c32)) {
                        return o91Var;
                    }
                    if (y45.e(colorRedComponentGetter.l(list), c0295c32)) {
                        return colorRedComponentGetter;
                    }
                    if (y45.e(o91Var.l(list), c0295c32)) {
                        return o91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1507829577:
                if (str.equals("trimLeft")) {
                    return o84.d(aab.c, list);
                }
                break;
            case 1508134774:
                if (str.equals("encodeUri")) {
                    return o84.d(kz9.c, list);
                }
                break;
            case 1565972102:
                if (str.equals("getOptColorFromDict")) {
                    tg4 tg4Var = tg4.f;
                    Function.c cVarK33 = tg4Var.k(list);
                    Function.c.C0295c c0295c33 = Function.c.C0295c.a;
                    if (y45.e(cVarK33, c0295c33)) {
                        return tg4Var;
                    }
                    ug4 ug4Var = ug4.f;
                    if (y45.e(ug4Var.k(list), c0295c33)) {
                        return ug4Var;
                    }
                    if (y45.e(tg4Var.l(list), c0295c33)) {
                        return tg4Var;
                    }
                    if (y45.e(ug4Var.l(list), c0295c33)) {
                        return ug4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1636968764:
                if (str.equals("getOptDictFromArray")) {
                    return o84.d(vg4.g, list);
                }
                break;
            case 1644730933:
                if (str.equals("nowLocal")) {
                    return o84.d(d37.c, list);
                }
                break;
            case 1695311327:
                if (str.equals("getNumberFromDict")) {
                    return o84.d(lg4.g, list);
                }
                break;
            case 1716172417:
                if (str.equals("getOptStringFromArray")) {
                    return o84.d(bh4.f, list);
                }
                break;
            case 1738128829:
                if (str.equals("setColorAlpha")) {
                    ColorAlphaComponentSetter colorAlphaComponentSetter = ColorAlphaComponentSetter.g;
                    Function.c cVarK34 = colorAlphaComponentSetter.k(list);
                    Function.c.C0295c c0295c34 = Function.c.C0295c.a;
                    if (y45.e(cVarK34, c0295c34)) {
                        return colorAlphaComponentSetter;
                    }
                    h91 h91Var = h91.g;
                    if (y45.e(h91Var.k(list), c0295c34)) {
                        return h91Var;
                    }
                    if (y45.e(colorAlphaComponentSetter.l(list), c0295c34)) {
                        return colorAlphaComponentSetter;
                    }
                    if (y45.e(h91Var.l(list), c0295c34)) {
                        return h91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1743838050:
                if (str.equals("setColorGreen")) {
                    ColorGreenComponentSetter colorGreenComponentSetter = ColorGreenComponentSetter.g;
                    Function.c cVarK35 = colorGreenComponentSetter.k(list);
                    Function.c.C0295c c0295c35 = Function.c.C0295c.a;
                    if (y45.e(cVarK35, c0295c35)) {
                        return colorGreenComponentSetter;
                    }
                    n91 n91Var = n91.g;
                    if (y45.e(n91Var.k(list), c0295c35)) {
                        return n91Var;
                    }
                    if (y45.e(colorGreenComponentSetter.l(list), c0295c35)) {
                        return colorGreenComponentSetter;
                    }
                    if (y45.e(n91Var.l(list), c0295c35)) {
                        return n91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1745084820:
                if (str.equals("getIntervalHours")) {
                    return o84.d(yf4.c, list);
                }
                break;
            case 1814686973:
                if (str.equals("getBooleanFromArray")) {
                    return o84.d(re4.g, list);
                }
                break;
            case 1883462358:
                if (str.equals("getIntervalTotalMinutes")) {
                    return o84.d(dg4.c, list);
                }
                break;
            case 1910382545:
                if (str.equals("encodeRegex")) {
                    return o84.d(EncodeRegex.c, list);
                }
                break;
            case 1953671716:
                if (str.equals("getIntervalMinutes")) {
                    return o84.d(zf4.c, list);
                }
                break;
            case 1953831815:
                if (str.equals("getStoredStringValue")) {
                    return o84.d(rh4.c, list);
                }
                break;
            case 1955294553:
                if (str.equals("getHours")) {
                    return o84.d(sf4.c, list);
                }
                break;
            case 1959905482:
                if (str.equals("getMonth")) {
                    return o84.d(ig4.c, list);
                }
                break;
            case 1970789287:
                if (str.equals("getColorBlue")) {
                    ColorBlueComponentGetter colorBlueComponentGetter = ColorBlueComponentGetter.g;
                    Function.c cVarK36 = colorBlueComponentGetter.k(list);
                    Function.c.C0295c c0295c36 = Function.c.C0295c.a;
                    if (y45.e(cVarK36, c0295c36)) {
                        return colorBlueComponentGetter;
                    }
                    i91 i91Var = i91.g;
                    if (y45.e(i91Var.k(list), c0295c36)) {
                        return i91Var;
                    }
                    if (y45.e(colorBlueComponentGetter.l(list), c0295c36)) {
                        return colorBlueComponentGetter;
                    }
                    if (y45.e(i91Var.l(list), c0295c36)) {
                        return i91Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 1975049074:
                if (str.equals("getDictInteger")) {
                    return o84.d(gf4.g, list);
                }
                break;
            case 1985132479:
                if (str.equals("setYear")) {
                    return o84.d(we9.c, list);
                }
                break;
            case 1992807388:
                if (str.equals("lastIndex")) {
                    return o84.d(pz9.c, list);
                }
                break;
            case 2033316403:
                if (str.equals("getArrayOptColor")) {
                    ge4 ge4Var = ge4.f;
                    Function.c cVarK37 = ge4Var.k(list);
                    Function.c.C0295c c0295c37 = Function.c.C0295c.a;
                    if (y45.e(cVarK37, c0295c37)) {
                        return ge4Var;
                    }
                    he4 he4Var = he4.g;
                    if (y45.e(he4Var.k(list), c0295c37)) {
                        return he4Var;
                    }
                    if (y45.e(ge4Var.l(list), c0295c37)) {
                        return ge4Var;
                    }
                    if (y45.e(he4Var.l(list), c0295c37)) {
                        return he4Var;
                    }
                    throw o84.b(str, list, false, 4, null);
                }
                break;
            case 2075646548:
                if (str.equals("formatDateAsLocal")) {
                    return o84.d(k44.c, list);
                }
                break;
            case 2101762217:
                if (str.equals("getMinutes")) {
                    return o84.d(hg4.c, list);
                }
                break;
            case 2135485098:
                if (str.equals("getStringValue")) {
                    return o84.d(xh4.c, list);
                }
                break;
        }
        throw new EvaluableException("Unknown function name: " + str + '.', null, 2, null);
    }
}
