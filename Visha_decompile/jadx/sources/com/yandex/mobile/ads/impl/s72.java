package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import org.apache.commons.io.IOUtils;

final class s72 {

    @Nullable
    public final String a;

    @Nullable
    public final String b;
    public final boolean c;
    public final long d;
    public final long e;

    @Nullable
    public final v72 f;

    @Nullable
    private final String[] g;
    public final String h;

    @Nullable
    public final String i;

    @Nullable
    public final s72 j;
    private final HashMap<String, Integer> k;
    private final HashMap<String, Integer> l;
    private ArrayList m;

    private s72(@Nullable String str, @Nullable String str2, long j, long j2, @Nullable v72 v72Var, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable s72 s72Var) {
        this.a = str;
        this.b = str2;
        this.i = str4;
        this.f = v72Var;
        this.g = strArr;
        this.c = str2 != null;
        this.d = j;
        this.e = j2;
        this.h = (String) hg.a(str3);
        this.j = s72Var;
        this.k = new HashMap<>();
        this.l = new HashMap<>();
    }

    public final void a(s72 s72Var) {
        if (this.m == null) {
            this.m = new ArrayList();
        }
        this.m.add(s72Var);
    }

    public final long[] b() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    @Nullable
    public final String[] c() {
        return this.g;
    }

    public final s72 a(int i) {
        ArrayList arrayList = this.m;
        if (arrayList != null) {
            return (s72) arrayList.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final int a() {
        ArrayList arrayList = this.m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    private void a(TreeSet<Long> treeSet, boolean z) {
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
            ((s72) this.m.get(i)).a(treeSet, z || zEquals);
        }
    }

    private static SpannableStringBuilder a(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            hv.a aVar = new hv.a();
            aVar.a(new SpannableStringBuilder());
            treeMap.put(str, aVar);
        }
        CharSequence charSequenceD = ((hv.a) treeMap.get(str)).d();
        charSequenceD.getClass();
        return (SpannableStringBuilder) charSequenceD;
    }

    public final boolean a(long j) {
        long j2 = this.d;
        return (j2 == C.TIME_UNSET && this.e == C.TIME_UNSET) || (j2 <= j && this.e == C.TIME_UNSET) || ((j2 == C.TIME_UNSET && j < this.e) || (j2 <= j && j < this.e));
    }

    private void a(long j, String str, ArrayList arrayList) {
        if (!"".equals(this.h)) {
            str = this.h;
        }
        if (a(j) && TtmlNode.TAG_DIV.equals(this.a) && this.i != null) {
            arrayList.add(new Pair(str, this.i));
            return;
        }
        for (int i = 0; i < a(); i++) {
            a(i).a(j, str, arrayList);
        }
    }

    private void a(long j, Map map, Map map2, String str, TreeMap treeMap) {
        if (a(j)) {
            String str2 = "".equals(this.h) ? str : this.h;
            Iterator<Map.Entry<String, Integer>> it = this.l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int iIntValue = this.k.containsKey(key) ? this.k.get(key).intValue() : 0;
                int iIntValue2 = next.getValue().intValue();
                if (iIntValue != iIntValue2) {
                    hv.a aVar = (hv.a) treeMap.get(key);
                    aVar.getClass();
                    t72 t72Var = (t72) map2.get(str2);
                    t72Var.getClass();
                    int i = t72Var.j;
                    v72 v72VarA = u72.a(this.f, this.g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) aVar.d();
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        aVar.a(spannableStringBuilder);
                    }
                    SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                    if (v72VarA != null) {
                        u72.a(spannableStringBuilder2, iIntValue, iIntValue2, v72VarA, this.j, map, i);
                        if (TtmlNode.TAG_P.equals(this.a)) {
                            if (v72VarA.j() != Float.MAX_VALUE) {
                                aVar.c((v72VarA.j() * (-90.0f)) / 100.0f);
                            }
                            if (v72VarA.l() != null) {
                                aVar.b(v72VarA.l());
                            }
                            if (v72VarA.g() != null) {
                                aVar.a(v72VarA.g());
                            }
                        }
                    }
                }
            }
            for (int i2 = 0; i2 < a(); i2++) {
                a(i2).a(j, map, map2, str2, treeMap);
            }
        }
    }

    private void a(long j, boolean z, String str, TreeMap treeMap) {
        this.k.clear();
        this.l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.a)) {
            return;
        }
        if (!"".equals(this.h)) {
            str = this.h;
        }
        if (this.c && z) {
            SpannableStringBuilder spannableStringBuilderA = a(str, treeMap);
            String str2 = this.b;
            str2.getClass();
            spannableStringBuilderA.append((CharSequence) str2);
            return;
        }
        if ("br".equals(this.a) && z) {
            a(str, treeMap).append('\n');
            return;
        }
        if (a(j)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                HashMap<String, Integer> map = this.k;
                String str3 = (String) entry.getKey();
                CharSequence charSequenceD = ((hv.a) entry.getValue()).d();
                charSequenceD.getClass();
                map.put(str3, Integer.valueOf(charSequenceD.length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(this.a);
            for (int i = 0; i < a(); i++) {
                a(i).a(j, z || zEquals, str, treeMap);
            }
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderA2 = a(str, treeMap);
                int length = spannableStringBuilderA2.length() - 1;
                while (length >= 0 && spannableStringBuilderA2.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && spannableStringBuilderA2.charAt(length) != '\n') {
                    spannableStringBuilderA2.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                HashMap<String, Integer> map2 = this.l;
                String str4 = (String) entry2.getKey();
                CharSequence charSequenceD2 = ((hv.a) entry2.getValue()).d();
                charSequenceD2.getClass();
                map2.put(str4, Integer.valueOf(charSequenceD2.length()));
            }
        }
    }

    public static s72 a(String str) {
        return new s72(null, str.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public static s72 a(@Nullable String str, long j, long j2, @Nullable v72 v72Var, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable s72 s72Var) {
        return new s72(str, null, j, j2, v72Var, strArr, str2, str3, s72Var);
    }

    public final ArrayList a(long j, Map map, Map map2, Map map3) {
        ArrayList<Pair> arrayList = new ArrayList();
        a(j, this.h, arrayList);
        TreeMap treeMap = new TreeMap();
        a(j, false, this.h, treeMap);
        a(j, map, map2, this.h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                t72 t72Var = (t72) map2.get(pair.first);
                t72Var.getClass();
                arrayList2.add(new hv.a().a(bitmapDecodeByteArray).b(t72Var.b).b(0).a(0, t72Var.c).a(t72Var.e).d(t72Var.f).a(t72Var.g).c(t72Var.j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            t72 t72Var2 = (t72) map2.get(entry.getKey());
            t72Var2.getClass();
            hv.a aVar = (hv.a) entry.getValue();
            CharSequence charSequenceD = aVar.d();
            charSequenceD.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequenceD;
            for (z00 z00Var : (z00[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), z00.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(z00Var), spannableStringBuilder.getSpanEnd(z00Var), (CharSequence) "");
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
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            aVar.a(t72Var2.d, t72Var2.c);
            aVar.a(t72Var2.e);
            aVar.b(t72Var2.b);
            aVar.d(t72Var2.f);
            aVar.b(t72Var2.h, t72Var2.i);
            aVar.c(t72Var2.j);
            arrayList2.add(aVar.a());
        }
        return arrayList2;
    }
}
