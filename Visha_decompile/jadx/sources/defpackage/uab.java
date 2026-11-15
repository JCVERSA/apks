package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

public final class uab {
    public final String a;
    public final String b;
    public final boolean c;
    public final long d;
    public final long e;
    public final xab f;
    public final String[] g;
    public final String h;
    public final String i;
    public final uab j;
    public final HashMap k;
    public final HashMap l;
    public List m;

    public uab(String str, String str2, long j, long j2, xab xabVar, String[] strArr, String str3, String str4, uab uabVar) {
        this.a = str;
        this.b = str2;
        this.i = str4;
        this.f = xabVar;
        this.g = strArr;
        this.c = str2 != null;
        this.d = j;
        this.e = j2;
        this.h = (String) zi.e(str3);
        this.j = uabVar;
        this.k = new HashMap();
        this.l = new HashMap();
    }

    public static uab c(String str, long j, long j2, xab xabVar, String[] strArr, String str2, String str3, uab uabVar) {
        return new uab(str, null, j, j2, xabVar, strArr, str2, str3, uabVar);
    }

    public static uab d(String str) {
        return new uab(null, wab.b(str), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public static void e(SpannableStringBuilder spannableStringBuilder) {
        for (h82 h82Var : (h82[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), h82.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(h82Var), spannableStringBuilder.getSpanEnd(h82Var), "");
        }
        for (int i = 0; i < spannableStringBuilder.length(); i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                int i3 = i2;
                while (i3 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i3) == ' ') {
                    i3++;
                }
                int i4 = i3 - i2;
                if (i4 > 0) {
                    spannableStringBuilder.delete(i, i4 + i);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i5 = 0; i5 < spannableStringBuilder.length() - 1; i5++) {
            if (spannableStringBuilder.charAt(i5) == '\n') {
                int i6 = i5 + 1;
                if (spannableStringBuilder.charAt(i6) == ' ') {
                    spannableStringBuilder.delete(i6, i5 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i7 = 0; i7 < spannableStringBuilder.length() - 1; i7++) {
            if (spannableStringBuilder.charAt(i7) == ' ') {
                int i8 = i7 + 1;
                if (spannableStringBuilder.charAt(i8) == '\n') {
                    spannableStringBuilder.delete(i7, i8);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    public static SpannableStringBuilder k(String str, Map map) {
        if (!map.containsKey(str)) {
            jm1.b bVar = new jm1.b();
            bVar.o(new SpannableStringBuilder());
            map.put(str, bVar);
        }
        return (SpannableStringBuilder) zi.e(((jm1.b) map.get(str)).e());
    }

    public void a(uab uabVar) {
        if (this.m == null) {
            this.m = new ArrayList();
        }
        this.m.add(uabVar);
    }

    public final void b(Map map, jm1.b bVar, int i, int i2, int i3) {
        xab xabVarF = wab.f(this.f, this.g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) bVar.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            bVar.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (xabVarF != null) {
            wab.a(spannableStringBuilder2, i, i2, xabVarF, this.j, map, i3);
            if (TtmlNode.TAG_P.equals(this.a)) {
                if (xabVarF.k() != Float.MAX_VALUE) {
                    bVar.m((xabVarF.k() * (-90.0f)) / 100.0f);
                }
                if (xabVarF.m() != null) {
                    bVar.p(xabVarF.m());
                }
                if (xabVarF.h() != null) {
                    bVar.j(xabVarF.h());
                }
            }
        }
    }

    public uab f(int i) {
        List list = this.m;
        if (list != null) {
            return (uab) list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List list = this.m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List h(long j, Map map, Map map2, Map map3) {
        List<Pair> arrayList = new ArrayList();
        n(j, this.h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j, false, this.h, treeMap);
        o(j, map, map2, this.h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                vab vabVar = (vab) zi.e((vab) map2.get(pair.first));
                arrayList2.add(new jm1.b().f(bitmapDecodeByteArray).k(vabVar.b).l(0).h(vabVar.c, 0).i(vabVar.e).n(vabVar.f).g(vabVar.g).r(vabVar.j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            vab vabVar2 = (vab) zi.e((vab) map2.get(entry.getKey()));
            jm1.b bVar = (jm1.b) entry.getValue();
            e((SpannableStringBuilder) zi.e(bVar.e()));
            bVar.h(vabVar2.c, vabVar2.d);
            bVar.i(vabVar2.e);
            bVar.k(vabVar2.b);
            bVar.n(vabVar2.f);
            bVar.q(vabVar2.i, vabVar2.h);
            bVar.r(vabVar2.j);
            arrayList2.add(bVar.a());
        }
        return arrayList2;
    }

    public final void i(TreeSet treeSet, boolean z) {
        boolean zEquals = TtmlNode.TAG_P.equals(this.a);
        boolean zEquals2 = TtmlNode.TAG_DIV.equals(this.a);
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
        if (this.m == null) {
            return;
        }
        for (int i = 0; i < this.m.size(); i++) {
            ((uab) this.m.get(i)).i(treeSet, z || zEquals);
        }
    }

    public long[] j() {
        TreeSet treeSet = new TreeSet();
        int i = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        return jArr;
    }

    public String[] l() {
        return this.g;
    }

    public boolean m(long j) {
        long j2 = this.d;
        return (j2 == C.TIME_UNSET && this.e == C.TIME_UNSET) || (j2 <= j && this.e == C.TIME_UNSET) || ((j2 == C.TIME_UNSET && j < this.e) || (j2 <= j && j < this.e));
    }

    public final void n(long j, String str, List list) {
        if (!"".equals(this.h)) {
            str = this.h;
        }
        if (m(j) && TtmlNode.TAG_DIV.equals(this.a) && this.i != null) {
            list.add(new Pair(str, this.i));
            return;
        }
        for (int i = 0; i < g(); i++) {
            f(i).n(j, str, list);
        }
    }

    public final void o(long j, Map map, Map map2, String str, Map map3) {
        int i;
        if (m(j)) {
            String str2 = "".equals(this.h) ? str : this.h;
            Iterator it = this.l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str3 = (String) entry.getKey();
                int iIntValue = this.k.containsKey(str3) ? ((Integer) this.k.get(str3)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    b(map, (jm1.b) zi.e((jm1.b) map3.get(str3)), iIntValue, iIntValue2, ((vab) zi.e((vab) map2.get(str2))).j);
                }
            }
            for (i = 0; i < g(); i++) {
                f(i).o(j, map, map2, str2, map3);
            }
        }
    }

    public final void p(long j, boolean z, String str, Map map) {
        this.k.clear();
        this.l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.a)) {
            return;
        }
        if (!"".equals(this.h)) {
            str = this.h;
        }
        if (this.c && z) {
            k(str, map).append((CharSequence) zi.e(this.b));
            return;
        }
        if ("br".equals(this.a) && z) {
            k(str, map).append('\n');
            return;
        }
        if (m(j)) {
            for (Map.Entry entry : map.entrySet()) {
                this.k.put((String) entry.getKey(), Integer.valueOf(((CharSequence) zi.e(((jm1.b) entry.getValue()).e())).length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(this.a);
            for (int i = 0; i < g(); i++) {
                f(i).p(j, z || zEquals, str, map);
            }
            if (zEquals) {
                wab.c(k(str, map));
            }
            for (Map.Entry entry2 : map.entrySet()) {
                this.l.put((String) entry2.getKey(), Integer.valueOf(((CharSequence) zi.e(((jm1.b) entry2.getValue()).e())).length()));
            }
        }
    }
}
