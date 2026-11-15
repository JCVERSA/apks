package n3;

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

final class c {

    public final String f66868a;

    public final String f66869b;

    public final boolean f66870c;

    public final long f66871d;

    public final long f66872e;

    public final g f66873f;

    private final String[] f66874g;

    public final String f66875h;

    public final String f66876i;

    public final c f66877j;

    private final HashMap f66878k;

    private final HashMap f66879l;

    private List f66880m;

    private c(String str, String str2, long j10, long j11, g gVar, String[] strArr, String str3, String str4, c cVar) {
        this.f66868a = str;
        this.f66869b = str2;
        this.f66876i = str4;
        this.f66873f = gVar;
        this.f66874g = strArr;
        this.f66870c = str2 != null;
        this.f66871d = j10;
        this.f66872e = j11;
        this.f66875h = (String) androidx.media3.common.util.a.e(str3);
        this.f66877j = cVar;
        this.f66878k = new HashMap();
        this.f66879l = new HashMap();
    }

    private void b(Map map, u1.a.b bVar, int i10, int i11, int i12) {
        g gVarF = f.f(this.f66873f, this.f66874g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) bVar.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            bVar.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (gVarF != null) {
            f.a(spannableStringBuilder2, i10, i11, gVarF, this.f66877j, map, i12);
            if (TtmlNode.TAG_P.equals(this.f66868a)) {
                if (gVarF.m() != Float.MAX_VALUE) {
                    bVar.m((gVarF.m() * (-90.0f)) / 100.0f);
                }
                if (gVarF.o() != null) {
                    bVar.p(gVarF.o());
                }
                if (gVarF.i() != null) {
                    bVar.j(gVarF.i());
                }
            }
        }
    }

    public static c c(String str, long j10, long j11, g gVar, String[] strArr, String str2, String str3, c cVar) {
        return new c(str, null, j10, j11, gVar, strArr, str2, str3, cVar);
    }

    public static c d(String str) {
        return new c(null, f.b(str), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
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
        boolean zEquals = TtmlNode.TAG_P.equals(this.f66868a);
        boolean zEquals2 = TtmlNode.TAG_DIV.equals(this.f66868a);
        if (z10 || zEquals || (zEquals2 && this.f66876i != null)) {
            long j10 = this.f66871d;
            if (j10 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f66872e;
            if (j11 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f66880m == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f66880m.size(); i10++) {
            ((c) this.f66880m.get(i10)).i(treeSet, z10 || zEquals);
        }
    }

    private static SpannableStringBuilder k(String str, Map map) {
        if (!map.containsKey(str)) {
            u1.a.b bVar = new u1.a.b();
            bVar.o(new SpannableStringBuilder());
            map.put(str, bVar);
        }
        return (SpannableStringBuilder) androidx.media3.common.util.a.e(((u1.a.b) map.get(str)).e());
    }

    private void n(long j10, String str, List list) {
        if (!"".equals(this.f66875h)) {
            str = this.f66875h;
        }
        if (m(j10) && TtmlNode.TAG_DIV.equals(this.f66868a) && this.f66876i != null) {
            list.add(new Pair(str, this.f66876i));
            return;
        }
        for (int i10 = 0; i10 < g(); i10++) {
            f(i10).n(j10, str, list);
        }
    }

    private void o(long j10, Map map, Map map2, String str, Map map3) {
        int i10;
        if (m(j10)) {
            String str2 = "".equals(this.f66875h) ? str : this.f66875h;
            Iterator it = this.f66879l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str3 = (String) entry.getKey();
                int iIntValue = this.f66878k.containsKey(str3) ? ((Integer) this.f66878k.get(str3)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    b(map, (u1.a.b) androidx.media3.common.util.a.e((u1.a.b) map3.get(str3)), iIntValue, iIntValue2, ((e) androidx.media3.common.util.a.e((e) map2.get(str2))).f66904j);
                }
            }
            for (i10 = 0; i10 < g(); i10++) {
                f(i10).o(j10, map, map2, str2, map3);
            }
        }
    }

    private void p(long j10, boolean z10, String str, Map map) {
        this.f66878k.clear();
        this.f66879l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.f66868a)) {
            return;
        }
        if (!"".equals(this.f66875h)) {
            str = this.f66875h;
        }
        if (this.f66870c && z10) {
            k(str, map).append((CharSequence) androidx.media3.common.util.a.e(this.f66869b));
            return;
        }
        if (TtmlNode.TAG_BR.equals(this.f66868a) && z10) {
            k(str, map).append('\n');
            return;
        }
        if (m(j10)) {
            for (Map.Entry entry : map.entrySet()) {
                this.f66878k.put((String) entry.getKey(), Integer.valueOf(((CharSequence) androidx.media3.common.util.a.e(((u1.a.b) entry.getValue()).e())).length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(this.f66868a);
            for (int i10 = 0; i10 < g(); i10++) {
                f(i10).p(j10, z10 || zEquals, str, map);
            }
            if (zEquals) {
                f.c(k(str, map));
            }
            for (Map.Entry entry2 : map.entrySet()) {
                this.f66879l.put((String) entry2.getKey(), Integer.valueOf(((CharSequence) androidx.media3.common.util.a.e(((u1.a.b) entry2.getValue()).e())).length()));
            }
        }
    }

    public void a(c cVar) {
        if (this.f66880m == null) {
            this.f66880m = new ArrayList();
        }
        this.f66880m.add(cVar);
    }

    public c f(int i10) {
        List list = this.f66880m;
        if (list != null) {
            return (c) list.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List list = this.f66880m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List h(long j10, Map map, Map map2, Map map3) {
        List<Pair> arrayList = new ArrayList();
        n(j10, this.f66875h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j10, false, this.f66875h, treeMap);
        o(j10, map, map2, this.f66875h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                e eVar = (e) androidx.media3.common.util.a.e((e) map2.get(pair.first));
                arrayList2.add(new u1.a.b().f(bitmapDecodeByteArray).k(eVar.f66896b).l(0).h(eVar.f66897c, 0).i(eVar.f66899e).n(eVar.f66900f).g(eVar.f66901g).r(eVar.f66904j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) androidx.media3.common.util.a.e((e) map2.get(entry.getKey()));
            u1.a.b bVar = (u1.a.b) entry.getValue();
            e((SpannableStringBuilder) androidx.media3.common.util.a.e(bVar.e()));
            bVar.h(eVar2.f66897c, eVar2.f66898d);
            bVar.i(eVar2.f66899e);
            bVar.k(eVar2.f66896b);
            bVar.n(eVar2.f66900f);
            bVar.q(eVar2.f66903i, eVar2.f66902h);
            bVar.r(eVar2.f66904j);
            arrayList2.add(bVar.a());
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
        return this.f66874g;
    }

    public boolean m(long j10) {
        long j11 = this.f66871d;
        return (j11 == C.TIME_UNSET && this.f66872e == C.TIME_UNSET) || (j11 <= j10 && this.f66872e == C.TIME_UNSET) || ((j11 == C.TIME_UNSET && j10 < this.f66872e) || (j11 <= j10 && j10 < this.f66872e));
    }
}
