package com.google.android.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

abstract class k {

    private static final Pattern f26419a = Pattern.compile("(&#13;)?&#10;");

    public static class b {

        public final String f26420a;

        public final Map f26421b;

        private b(String str, Map map) {
            this.f26420a = str;
            this.f26421b = map;
        }
    }

    static final class c {

        private static final Comparator f26422e = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return k.c.e((k.c) obj, (k.c) obj2);
            }
        };

        private static final Comparator f26423f = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return k.c.f((k.c) obj, (k.c) obj2);
            }
        };

        public final int f26424a;

        public final int f26425b;

        public final String f26426c;

        public final String f26427d;

        public static int e(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.f26425b, cVar.f26425b);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar.f26426c.compareTo(cVar2.f26426c);
            return iCompareTo != 0 ? iCompareTo : cVar.f26427d.compareTo(cVar2.f26427d);
        }

        public static int f(c cVar, c cVar2) {
            int iCompare = Integer.compare(cVar2.f26424a, cVar.f26424a);
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompareTo = cVar2.f26426c.compareTo(cVar.f26426c);
            return iCompareTo != 0 ? iCompareTo : cVar2.f26427d.compareTo(cVar.f26427d);
        }

        private c(int i10, int i11, String str, String str2) {
            this.f26424a = i10;
            this.f26425b = i11;
            this.f26426c = str;
            this.f26427d = str2;
        }
    }

    private static final class d {

        private final List f26428a = new ArrayList();

        private final List f26429b = new ArrayList();
    }

    public static b a(CharSequence charSequence, float f10) {
        int i10 = 0;
        if (charSequence == null) {
            return new b("", ImmutableMap.of());
        }
        if (!(charSequence instanceof Spanned)) {
            return new b(b(charSequence), ImmutableMap.of());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet hashSet = new HashSet();
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap map = new HashMap();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            map.put(h.a("bg_" + iIntValue), com.google.android.exoplayer2.util.p0.C("background-color:%s;", h.b(iIntValue)));
        }
        SparseArray sparseArrayC = c(spanned, f10);
        StringBuilder sb2 = new StringBuilder(spanned.length());
        int i11 = 0;
        while (i10 < sparseArrayC.size()) {
            int iKeyAt = sparseArrayC.keyAt(i10);
            sb2.append(b(spanned.subSequence(i11, iKeyAt)));
            d dVar = (d) sparseArrayC.get(iKeyAt);
            Collections.sort(dVar.f26429b, c.f26423f);
            Iterator it2 = dVar.f26429b.iterator();
            while (it2.hasNext()) {
                sb2.append(((c) it2.next()).f26427d);
            }
            Collections.sort(dVar.f26428a, c.f26422e);
            Iterator it3 = dVar.f26428a.iterator();
            while (it3.hasNext()) {
                sb2.append(((c) it3.next()).f26426c);
            }
            i10++;
            i11 = iKeyAt;
        }
        sb2.append(b(spanned.subSequence(i11, spanned.length())));
        return new b(sb2.toString(), map);
    }

    private static String b(CharSequence charSequence) {
        return f26419a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static SparseArray c(Spanned spanned, float f10) {
        SparseArray sparseArray = new SparseArray();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String strE = e(obj, f10);
            String strD = d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (strE != null) {
                com.google.android.exoplayer2.util.a.e(strD);
                c cVar = new c(spanStart, spanEnd, strE, strD);
                f(sparseArray, spanStart).f26428a.add(cVar);
                f(sparseArray, spanEnd).f26429b.add(cVar);
            }
        }
        return sparseArray;
    }

    private static String d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof ha.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof ha.e)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else {
            if (obj instanceof ha.c) {
                return "<rt>" + b(((ha.c) obj).f61316a) + "</rt></ruby>";
            }
            if (obj instanceof UnderlineSpan) {
                return "</u>";
            }
        }
        return null;
    }

    private static String e(Object obj, float f10) {
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return com.google.android.exoplayer2.util.p0.C("<span style='color:%s;'>", h.b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return com.google.android.exoplayer2.util.p0.C("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof ha.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            return com.google.android.exoplayer2.util.p0.C("<span style='font-size:%.2fpx;'>", Float.valueOf(absoluteSizeSpan.getDip() ? absoluteSizeSpan.getSize() : absoluteSizeSpan.getSize() / f10));
        }
        if (obj instanceof RelativeSizeSpan) {
            return com.google.android.exoplayer2.util.p0.C("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        }
        if (obj instanceof TypefaceSpan) {
            String family = ((TypefaceSpan) obj).getFamily();
            if (family != null) {
                return com.google.android.exoplayer2.util.p0.C("<span style='font-family:\"%s\";'>", family);
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "<b>";
            }
            if (style == 2) {
                return "<i>";
            }
            if (style != 3) {
                return null;
            }
            return "<b><i>";
        }
        if (!(obj instanceof ha.c)) {
            if (obj instanceof UnderlineSpan) {
                return "<u>";
            }
            if (!(obj instanceof ha.e)) {
                return null;
            }
            ha.e eVar = (ha.e) obj;
            return com.google.android.exoplayer2.util.p0.C("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", h(eVar.f61318a, eVar.f61319b), g(eVar.f61320c));
        }
        int i10 = ((ha.c) obj).f61317b;
        if (i10 == -1) {
            return "<ruby style='ruby-position:unset;'>";
        }
        if (i10 == 1) {
            return "<ruby style='ruby-position:over;'>";
        }
        if (i10 != 2) {
            return null;
        }
        return "<ruby style='ruby-position:under;'>";
    }

    private static d f(SparseArray sparseArray, int i10) {
        d dVar = (d) sparseArray.get(i10);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d();
        sparseArray.put(i10, dVar2);
        return dVar2;
    }

    private static String g(int i10) {
        return i10 != 2 ? "over right" : "under left";
    }

    private static String h(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        if (i11 == 1) {
            sb2.append("filled ");
        } else if (i11 == 2) {
            sb2.append("open ");
        }
        if (i10 == 0) {
            sb2.append("none");
        } else if (i10 == 1) {
            sb2.append("circle");
        } else if (i10 == 2) {
            sb2.append("dot");
        } else if (i10 != 3) {
            sb2.append("unset");
        } else {
            sb2.append("sesame");
        }
        return sb2.toString();
    }
}
