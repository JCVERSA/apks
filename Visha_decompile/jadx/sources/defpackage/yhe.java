package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import org.apache.commons.io.IOUtils;

public final class yhe {
    public final String a;
    public final String b;
    public final boolean c;
    public final long d;
    public final long e;
    public final iie f;
    public final String[] g;
    public final String h;
    public final String i;
    public final yhe j;
    public final HashMap k;
    public final HashMap l;
    public List m;

    public yhe(String str, String str2, long j, long j2, iie iieVar, String[] strArr, String str3, String str4, yhe yheVar) {
        this.a = str;
        this.b = str2;
        this.i = str4;
        this.f = iieVar;
        this.g = strArr;
        this.c = str2 != null;
        this.d = j;
        this.e = j2;
        str3.getClass();
        this.h = str3;
        this.j = yheVar;
        this.k = new HashMap();
        this.l = new HashMap();
    }

    public static yhe b(String str, long j, long j2, iie iieVar, String[] strArr, String str2, String str3, yhe yheVar) {
        return new yhe(str, null, j, j2, iieVar, strArr, str2, str3, yheVar);
    }

    public static yhe c(String str) {
        return new yhe(null, str.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public static SpannableStringBuilder i(String str, Map map) {
        if (!map.containsKey(str)) {
            zvf zvfVar = new zvf();
            zvfVar.l(new SpannableStringBuilder());
            map.put(str, zvfVar);
        }
        CharSequence charSequenceQ = ((zvf) map.get(str)).q();
        charSequenceQ.getClass();
        return (SpannableStringBuilder) charSequenceQ;
    }

    public final int a() {
        List list = this.m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final yhe d(int i) {
        List list = this.m;
        if (list != null) {
            return (yhe) list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List e(long j, Map map, Map map2, Map map3) {
        List arrayList = new ArrayList();
        String str = this.h;
        k(j, str, arrayList);
        TreeMap treeMap = new TreeMap();
        m(j, false, str, treeMap);
        l(j, map, map2, str, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) arrayList.get(i);
            String str2 = (String) map3.get(pair.second);
            if (str2 != null) {
                byte[] bArrDecode = Base64.decode(str2, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                gie gieVar = (gie) map2.get(pair.first);
                gieVar.getClass();
                zvf zvfVar = new zvf();
                zvfVar.c(bitmapDecodeByteArray);
                zvfVar.h(gieVar.b);
                zvfVar.i(0);
                zvfVar.e(gieVar.c, 0);
                zvfVar.f(gieVar.e);
                zvfVar.k(gieVar.f);
                zvfVar.d(gieVar.g);
                zvfVar.o(gieVar.j);
                arrayList2.add(zvfVar.p());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            gie gieVar2 = (gie) map2.get(entry.getKey());
            gieVar2.getClass();
            zvf zvfVar2 = (zvf) entry.getValue();
            CharSequence charSequenceQ = zvfVar2.q();
            charSequenceQ.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequenceQ;
            for (whe wheVar : (whe[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), whe.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(wheVar), spannableStringBuilder.getSpanEnd(wheVar), (CharSequence) "");
            }
            int i2 = 0;
            while (i2 < spannableStringBuilder.length()) {
                int i3 = i2 + 1;
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
                i2 = i3;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i6 = 0;
            while (i6 < spannableStringBuilder.length() - 1) {
                int i7 = i6 + 1;
                if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i7) == ' ') {
                    spannableStringBuilder.delete(i7, i6 + 2);
                }
                i6 = i7;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i8 = 0;
            while (i8 < spannableStringBuilder.length() - 1) {
                int i9 = i8 + 1;
                if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i9) == '\n') {
                    spannableStringBuilder.delete(i8, i9);
                }
                i8 = i9;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            zvfVar2.e(gieVar2.c, gieVar2.d);
            zvfVar2.f(gieVar2.e);
            zvfVar2.h(gieVar2.b);
            zvfVar2.k(gieVar2.f);
            zvfVar2.n(gieVar2.i, gieVar2.h);
            zvfVar2.o(gieVar2.j);
            arrayList2.add(zvfVar2.p());
        }
        return arrayList2;
    }

    public final void f(yhe yheVar) {
        if (this.m == null) {
            this.m = new ArrayList();
        }
        this.m.add(yheVar);
    }

    public final boolean g(long j) {
        long j2 = this.d;
        if (j2 == C.TIME_UNSET) {
            if (this.e == C.TIME_UNSET) {
                return true;
            }
            j2 = -9223372036854775807L;
        }
        if (j2 <= j && this.e == C.TIME_UNSET) {
            return true;
        }
        if (j2 != C.TIME_UNSET || j >= this.e) {
            return j2 <= j && j < this.e;
        }
        return true;
    }

    public final long[] h() {
        TreeSet treeSet = new TreeSet();
        int i = 0;
        j(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        return jArr;
    }

    public final void j(TreeSet treeSet, boolean z) {
        String str = this.a;
        boolean zEquals = TtmlNode.TAG_P.equals(str);
        boolean zEquals2 = TtmlNode.TAG_DIV.equals(str);
        if (z || zEquals || (zEquals2 && this.i != null)) {
            long j = this.d;
            if (j != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.e;
            if (j2 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); i++) {
                yhe yheVar = (yhe) this.m.get(i);
                boolean z2 = true;
                if (!z && !zEquals) {
                    z2 = false;
                }
                yheVar.j(treeSet, z2);
            }
        }
    }

    public final void k(long j, String str, List list) {
        String str2;
        String str3 = this.h;
        if (true != "".equals(str3)) {
            str = str3;
        }
        if (g(j) && TtmlNode.TAG_DIV.equals(this.a) && (str2 = this.i) != null) {
            list.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < a(); i++) {
            d(i).k(j, str, list);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:105:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:107:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:110:0x0203  */
    /* JADX WARN: Code duplicated, block: B:111:0x020e  */
    /* JADX WARN: Code duplicated, block: B:112:0x021d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0237  */
    /* JADX WARN: Code duplicated, block: B:117:0x0242  */
    /* JADX WARN: Code duplicated, block: B:120:0x0253  */
    /* JADX WARN: Code duplicated, block: B:123:0x0260  */
    public final void l(long j, Map map, Map map2, String str, Map map3) {
        yhe yheVar;
        int i;
        iie iieVarA;
        int iS;
        int i2;
        int i3 = -1;
        if (g(j)) {
            String str2 = this.h;
            String str3 = true != "".equals(str2) ? str2 : str;
            Iterator it = this.l.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str4 = (String) entry.getKey();
                HashMap map4 = this.k;
                int iIntValue = map4.containsKey(str4) ? ((Integer) map4.get(str4)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    zvf zvfVar = (zvf) map3.get(str4);
                    zvfVar.getClass();
                    gie gieVar = (gie) map2.get(str3);
                    gieVar.getClass();
                    int i4 = gieVar.j;
                    iie iieVarA2 = hie.a(this.f, this.g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zvfVar.q();
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        zvfVar.l(spannableStringBuilder);
                    }
                    if (iieVarA2 != null) {
                        yhe yheVar2 = this.j;
                        if (iieVarA2.v() != i3) {
                            spannableStringBuilder.setSpan(new StyleSpan(iieVarA2.v()), iIntValue, iIntValue2, 33);
                        }
                        if (iieVarA2.m()) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), iIntValue, iIntValue2, 33);
                        }
                        if (iieVarA2.n()) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), iIntValue, iIntValue2, 33);
                        }
                        if (iieVarA2.l()) {
                            r3g.b(spannableStringBuilder, new ForegroundColorSpan(iieVarA2.r()), iIntValue, iIntValue2, 33);
                        }
                        if (iieVarA2.k()) {
                            r3g.b(spannableStringBuilder, new BackgroundColorSpan(iieVarA2.q()), iIntValue, iIntValue2, 33);
                        }
                        if (iieVarA2.g() != null) {
                            r3g.b(spannableStringBuilder, new TypefaceSpan(iieVarA2.g()), iIntValue, iIntValue2, 33);
                        }
                        if (iieVarA2.y() != null) {
                            xhe xheVarY = iieVarA2.y();
                            xheVarY.getClass();
                            int i5 = xheVarY.a;
                            if (i5 == -1) {
                                i5 = (i4 == 2 || i4 == 1) ? 3 : 1;
                                i2 = 1;
                            } else {
                                i2 = xheVarY.b;
                            }
                            int i6 = xheVarY.c;
                            if (i6 == -2) {
                                i6 = 1;
                            }
                            r3g.b(spannableStringBuilder, new h5g(i5, i2, i6), iIntValue, iIntValue2, 33);
                        }
                        int iU = iieVarA2.u();
                        if (iU == 2) {
                            while (true) {
                                if (yheVar2 == null) {
                                    yheVar2 = null;
                                    break;
                                }
                                iie iieVarA3 = hie.a(yheVar2.f, yheVar2.g, map);
                                if (iieVarA3 != null && iieVarA3.u() == 1) {
                                    break;
                                } else {
                                    yheVar2 = yheVar2.j;
                                }
                            }
                            if (yheVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(yheVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        yheVar = null;
                                        break;
                                    }
                                    yhe yheVar3 = (yhe) arrayDeque.pop();
                                    iie iieVarA4 = hie.a(yheVar3.f, yheVar3.g, map);
                                    if (iieVarA4 != null && iieVarA4.u() == 3) {
                                        yheVar = yheVar3;
                                        break;
                                    }
                                    for (int iA = yheVar3.a() - 1; iA >= 0; iA--) {
                                        arrayDeque.push(yheVar3.d(iA));
                                    }
                                }
                                if (yheVar != null) {
                                    if (yheVar.a() != 1 || yheVar.d(0).b == null) {
                                        i = -1;
                                        zrg.e("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                    } else {
                                        String str5 = yheVar.d(0).b;
                                        int i7 = kfh.a;
                                        iie iieVarA5 = hie.a(yheVar.f, yheVar.g, map);
                                        int iT = iieVarA5 != null ? iieVarA5.t() : -1;
                                        i = -1;
                                        if (iT == -1 && (iieVarA = hie.a(yheVar2.f, yheVar2.g, map)) != null) {
                                            iT = iieVarA.t();
                                        }
                                        spannableStringBuilder.setSpan(new o2g(str5, iT), iIntValue, iIntValue2, 33);
                                    }
                                }
                            }
                            if (iieVarA2.j()) {
                                r3g.b(spannableStringBuilder, new n1g(), iIntValue, iIntValue2, 33);
                            }
                            iS = iieVarA2.s();
                            if (iS != 1) {
                                r3g.b(spannableStringBuilder, new AbsoluteSizeSpan((int) iieVarA2.o(), true), iIntValue, iIntValue2, 33);
                            } else if (iS != 2) {
                                r3g.b(spannableStringBuilder, new RelativeSizeSpan(iieVarA2.o()), iIntValue, iIntValue2, 33);
                            } else if (iS == 3) {
                                r3g.a(spannableStringBuilder, iieVarA2.o() / 100.0f, iIntValue, iIntValue2, 33);
                            }
                            if (TtmlNode.TAG_P.equals(this.a)) {
                                if (iieVarA2.p() != Float.MAX_VALUE) {
                                    zvfVar.j((iieVarA2.p() * (-90.0f)) / 100.0f);
                                }
                                if (iieVarA2.x() != null) {
                                    zvfVar.m(iieVarA2.x());
                                }
                                if (iieVarA2.w() != null) {
                                    zvfVar.g(iieVarA2.w());
                                }
                            }
                            i3 = i;
                            it = it;
                        } else if (iU == 3 || iU == 4) {
                            spannableStringBuilder.setSpan(new whe(), iIntValue, iIntValue2, 33);
                        }
                        i = -1;
                        if (iieVarA2.j()) {
                            r3g.b(spannableStringBuilder, new n1g(), iIntValue, iIntValue2, 33);
                        }
                        iS = iieVarA2.s();
                        if (iS != 1) {
                            r3g.b(spannableStringBuilder, new AbsoluteSizeSpan((int) iieVarA2.o(), true), iIntValue, iIntValue2, 33);
                        } else if (iS != 2) {
                            r3g.b(spannableStringBuilder, new RelativeSizeSpan(iieVarA2.o()), iIntValue, iIntValue2, 33);
                        } else if (iS == 3) {
                            r3g.a(spannableStringBuilder, iieVarA2.o() / 100.0f, iIntValue, iIntValue2, 33);
                        }
                        if (TtmlNode.TAG_P.equals(this.a)) {
                            if (iieVarA2.p() != Float.MAX_VALUE) {
                                zvfVar.j((iieVarA2.p() * (-90.0f)) / 100.0f);
                            }
                            if (iieVarA2.x() != null) {
                                zvfVar.m(iieVarA2.x());
                            }
                            if (iieVarA2.w() != null) {
                                zvfVar.g(iieVarA2.w());
                            }
                        }
                        i3 = i;
                        it = it;
                    }
                }
            }
            for (int i8 = 0; i8 < a(); i8++) {
                d(i8).l(j, map, map2, str3, map3);
            }
        }
    }

    public final void m(long j, boolean z, String str, Map map) {
        HashMap map2 = this.k;
        map2.clear();
        HashMap map3 = this.l;
        map3.clear();
        String str2 = this.a;
        if (TtmlNode.TAG_METADATA.equals(str2)) {
            return;
        }
        String str3 = this.h;
        String str4 = true != "".equals(str3) ? str3 : str;
        if (this.c && z) {
            SpannableStringBuilder spannableStringBuilderI = i(str4, map);
            String str5 = this.b;
            str5.getClass();
            spannableStringBuilderI.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z) {
            i(str4, map).append('\n');
            return;
        }
        if (g(j)) {
            for (Map.Entry entry : map.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence charSequenceQ = ((zvf) entry.getValue()).q();
                charSequenceQ.getClass();
                map2.put(str6, Integer.valueOf(charSequenceQ.length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(str2);
            for (int i = 0; i < a(); i++) {
                d(i).m(j, z || zEquals, str4, map);
            }
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderI2 = i(str4, map);
                int length = spannableStringBuilderI2.length();
                do {
                    length--;
                    if (length < 0) {
                        break;
                    }
                } while (spannableStringBuilderI2.charAt(length) == ' ');
                if (length >= 0 && spannableStringBuilderI2.charAt(length) != '\n') {
                    spannableStringBuilderI2.append('\n');
                }
            }
            for (Map.Entry entry2 : map.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence charSequenceQ2 = ((zvf) entry2.getValue()).q();
                charSequenceQ2.getClass();
                map3.put(str7, Integer.valueOf(charSequenceQ2.length()));
            }
        }
    }
}
