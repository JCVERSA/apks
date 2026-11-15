package ka;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

final class d {

    public final String f63875a;

    public final String f63876b;

    public final boolean f63877c;

    public final long f63878d;

    public final long f63879e;

    public final g f63880f;

    private final String[] f63881g;

    public final String f63882h;

    public final String f63883i;

    public final d f63884j;

    private final HashMap f63885k;

    private final HashMap f63886l;

    private List f63887m;

    private d(String str, String str2, long j10, long j11, g gVar, String[] strArr, String str3, String str4, d dVar) {
        this.f63875a = str;
        this.f63876b = str2;
        this.f63883i = str4;
        this.f63880f = gVar;
        this.f63881g = strArr;
        this.f63877c = str2 != null;
        this.f63878d = j10;
        this.f63879e = j11;
        this.f63882h = (String) com.google.android.exoplayer2.util.a.e(str3);
        this.f63884j = dVar;
        this.f63885k = new HashMap();
        this.f63886l = new HashMap();
    }

    private void b(Map map, da.b.C0703b c0703b, int i10, int i11, int i12) {
        g gVarF = f.f(this.f63880f, this.f63881g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0703b.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c0703b.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (gVarF != null) {
            f.a(spannableStringBuilder2, i10, i11, gVarF, this.f63884j, map, i12);
            if (TtmlNode.TAG_P.equals(this.f63875a)) {
                if (gVarF.k() != Float.MAX_VALUE) {
                    c0703b.m((gVarF.k() * (-90.0f)) / 100.0f);
                }
                if (gVarF.m() != null) {
                    c0703b.p(gVarF.m());
                }
                if (gVarF.h() != null) {
                    c0703b.j(gVarF.h());
                }
            }
        }
    }

    public static d c(String str, long j10, long j11, g gVar, String[] strArr, String str2, String str3, d dVar) {
        return new d(str, null, j10, j11, gVar, strArr, str2, str3, dVar);
    }

    public static d d(String str) {
        return new d(null, f.b(str), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    private static void e(SpannableStringBuilder spannableStringBuilder) {
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i10 = 0; i10 < spannableStringBuilder.length(); i10++) {
            if (spannableStringBuilder.charAt(i10) == ' ') {
                int i11 = i10 + 1;
                int i12 = i11;
                while (i12 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i12) == ' ') {
                    i12++;
                }
                int i13 = i12 - i11;
                if (i13 > 0) {
                    spannableStringBuilder.delete(i10, i13 + i10);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i14 = 0; i14 < spannableStringBuilder.length() - 1; i14++) {
            if (spannableStringBuilder.charAt(i14) == '\n') {
                int i15 = i14 + 1;
                if (spannableStringBuilder.charAt(i15) == ' ') {
                    spannableStringBuilder.delete(i15, i14 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i16 = 0; i16 < spannableStringBuilder.length() - 1; i16++) {
            if (spannableStringBuilder.charAt(i16) == ' ') {
                int i17 = i16 + 1;
                if (spannableStringBuilder.charAt(i17) == '\n') {
                    spannableStringBuilder.delete(i16, i17);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    private void i(TreeSet treeSet, boolean z10) {
        boolean zEquals = TtmlNode.TAG_P.equals(this.f63875a);
        boolean zEquals2 = TtmlNode.TAG_DIV.equals(this.f63875a);
        if (z10 || zEquals || (zEquals2 && this.f63883i != null)) {
            long j10 = this.f63878d;
            if (j10 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f63879e;
            if (j11 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f63887m == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f63887m.size(); i10++) {
            ((d) this.f63887m.get(i10)).i(treeSet, z10 || zEquals);
        }
    }

    private static SpannableStringBuilder k(String str, Map map) {
        if (!map.containsKey(str)) {
            da.b.C0703b c0703b = new da.b.C0703b();
            c0703b.o(new SpannableStringBuilder());
            map.put(str, c0703b);
        }
        return (SpannableStringBuilder) com.google.android.exoplayer2.util.a.e(((da.b.C0703b) map.get(str)).e());
    }

    private void n(long j10, String str, List list) {
        if (!"".equals(this.f63882h)) {
            str = this.f63882h;
        }
        if (m(j10) && TtmlNode.TAG_DIV.equals(this.f63875a) && this.f63883i != null) {
            list.add(new Pair(str, this.f63883i));
            return;
        }
        for (int i10 = 0; i10 < g(); i10++) {
            f(i10).n(j10, str, list);
        }
    }

    private void o(long j10, Map map, Map map2, String str, Map map3) {
        int i10;
        if (m(j10)) {
            String str2 = "".equals(this.f63882h) ? str : this.f63882h;
            Iterator it = this.f63886l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str3 = (String) entry.getKey();
                int iIntValue = this.f63885k.containsKey(str3) ? ((Integer) this.f63885k.get(str3)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    b(map, (da.b.C0703b) com.google.android.exoplayer2.util.a.e((da.b.C0703b) map3.get(str3)), iIntValue, iIntValue2, ((e) com.google.android.exoplayer2.util.a.e((e) map2.get(str2))).f63897j);
                }
            }
            for (i10 = 0; i10 < g(); i10++) {
                f(i10).o(j10, map, map2, str2, map3);
            }
        }
    }

    private void p(long j10, boolean z10, String str, Map map) {
        this.f63885k.clear();
        this.f63886l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.f63875a)) {
            return;
        }
        if (!"".equals(this.f63882h)) {
            str = this.f63882h;
        }
        if (this.f63877c && z10) {
            k(str, map).append((CharSequence) com.google.android.exoplayer2.util.a.e(this.f63876b));
            return;
        }
        if (TtmlNode.TAG_BR.equals(this.f63875a) && z10) {
            k(str, map).append('\n');
            return;
        }
        if (m(j10)) {
            for (Map.Entry entry : map.entrySet()) {
                this.f63885k.put((String) entry.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.e(((da.b.C0703b) entry.getValue()).e())).length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(this.f63875a);
            for (int i10 = 0; i10 < g(); i10++) {
                f(i10).p(j10, z10 || zEquals, str, map);
            }
            if (zEquals) {
                f.c(k(str, map));
            }
            for (Map.Entry entry2 : map.entrySet()) {
                this.f63886l.put((String) entry2.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.e(((da.b.C0703b) entry2.getValue()).e())).length()));
            }
        }
    }

    public void a(d dVar) {
        if (this.f63887m == null) {
            this.f63887m = new ArrayList();
        }
        this.f63887m.add(dVar);
    }

    public d f(int i10) {
        List list = this.f63887m;
        if (list != null) {
            return (d) list.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List list = this.f63887m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List h(long j10, Map map, Map map2, Map map3) {
        List<Pair> arrayList = new ArrayList();
        n(j10, this.f63882h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j10, false, this.f63882h, treeMap);
        o(j10, map, map2, this.f63882h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                e eVar = (e) com.google.android.exoplayer2.util.a.e((e) map2.get(pair.first));
                arrayList2.add(new da.b.C0703b().f(bitmapDecodeByteArray).k(eVar.f63889b).l(0).h(eVar.f63890c, 0).i(eVar.f63892e).n(eVar.f63893f).g(eVar.f63894g).r(eVar.f63897j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) com.google.android.exoplayer2.util.a.e((e) map2.get(entry.getKey()));
            da.b.C0703b c0703b = (da.b.C0703b) entry.getValue();
            e((SpannableStringBuilder) com.google.android.exoplayer2.util.a.e(c0703b.e()));
            c0703b.h(eVar2.f63890c, eVar2.f63891d);
            c0703b.i(eVar2.f63892e);
            c0703b.k(eVar2.f63889b);
            c0703b.n(eVar2.f63893f);
            c0703b.q(eVar2.f63896i, eVar2.f63895h);
            c0703b.r(eVar2.f63897j);
            arrayList2.add(c0703b.a());
        }
        return arrayList2;
    }

    public long[] j() {
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i10] = ((Long) it.next()).longValue();
            i10++;
        }
        return jArr;
    }

    public String[] l() {
        return this.f63881g;
    }

    public boolean m(long j10) {
        long j11 = this.f63878d;
        return (j11 == C.TIME_UNSET && this.f63879e == C.TIME_UNSET) || (j11 <= j10 && this.f63879e == C.TIME_UNSET) || ((j11 == C.TIME_UNSET && j10 < this.f63879e) || (j11 <= j10 && j10 < this.f63879e));
    }
}
