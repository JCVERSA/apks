package androidx.core.text;

import android.os.Build;
import android.os.Trace;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class PrecomputedTextCompat implements Spannable {

    private static final Object f7911e = new Object();

    private final Spannable f7912a;

    private final b f7913b;

    private final int[] f7914c;

    private final PrecomputedText f7915d;

    private static class PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {

        private static class a implements Callable {

            private b f7916a;

            private CharSequence f7917b;

            a(b bVar, CharSequence charSequence) {
                this.f7916a = bVar;
                this.f7917b = charSequence;
            }

            @Override
            public PrecomputedTextCompat call() {
                return PrecomputedTextCompat.a(this.f7917b, this.f7916a);
            }
        }

        PrecomputedTextFutureTask(b bVar, CharSequence charSequence) {
            super(new a(bVar, charSequence));
        }
    }

    private PrecomputedTextCompat(CharSequence charSequence, b bVar, int[] iArr) {
        this.f7912a = new SpannableString(charSequence);
        this.f7913b = bVar;
        this.f7914c = iArr;
        this.f7915d = null;
    }

    public static PrecomputedTextCompat a(CharSequence charSequence, b bVar) {
        PrecomputedText.Params params;
        androidx.core.util.i.g(charSequence);
        androidx.core.util.i.g(bVar);
        try {
            Trace.beginSection("PrecomputedText");
            if (Build.VERSION.SDK_INT >= 29 && (params = bVar.f7922e) != null) {
                return new PrecomputedTextCompat(PrecomputedText.create(charSequence, params), bVar);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i10 = 0;
            while (i10 < length) {
                int iIndexOf = TextUtils.indexOf(charSequence, '\n', i10, length);
                i10 = iIndexOf < 0 ? length : iIndexOf + 1;
                arrayList.add(Integer.valueOf(i10));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                iArr[i11] = ((Integer) arrayList.get(i11)).intValue();
            }
            StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), bVar.e(), Integer.MAX_VALUE).setBreakStrategy(bVar.b()).setHyphenationFrequency(bVar.c()).setTextDirection(bVar.d()).build();
            return new PrecomputedTextCompat(charSequence, bVar, iArr);
        } finally {
            Trace.endSection();
        }
    }

    public b b() {
        return this.f7913b;
    }

    public PrecomputedText c() {
        if (c.a(this.f7912a)) {
            return d.a(this.f7912a);
        }
        return null;
    }

    @Override
    public char charAt(int i10) {
        return this.f7912a.charAt(i10);
    }

    @Override
    public int getSpanEnd(Object obj) {
        return this.f7912a.getSpanEnd(obj);
    }

    @Override
    public int getSpanFlags(Object obj) {
        return this.f7912a.getSpanFlags(obj);
    }

    @Override
    public int getSpanStart(Object obj) {
        return this.f7912a.getSpanStart(obj);
    }

    @Override
    public Object[] getSpans(int i10, int i11, Class cls) {
        return Build.VERSION.SDK_INT >= 29 ? this.f7915d.getSpans(i10, i11, cls) : this.f7912a.getSpans(i10, i11, cls);
    }

    @Override
    public int length() {
        return this.f7912a.length();
    }

    @Override
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f7912a.nextSpanTransition(i10, i11, cls);
    }

    @Override
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f7915d.removeSpan(obj);
        } else {
            this.f7912a.removeSpan(obj);
        }
    }

    @Override
    public void setSpan(Object obj, int i10, int i11, int i12) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f7915d.setSpan(obj, i10, i11, i12);
        } else {
            this.f7912a.setSpan(obj, i10, i11, i12);
        }
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        return this.f7912a.subSequence(i10, i11);
    }

    @Override
    public String toString() {
        return this.f7912a.toString();
    }

    private PrecomputedTextCompat(PrecomputedText precomputedText, b bVar) {
        this.f7912a = a.a(precomputedText);
        this.f7913b = bVar;
        this.f7914c = null;
        this.f7915d = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    public static final class b {

        private final TextPaint f7918a;

        private final TextDirectionHeuristic f7919b;

        private final int f7920c;

        private final int f7921d;

        final PrecomputedText.Params f7922e;

        public static class a {

            private final TextPaint f7923a;

            private int f7925c = 1;

            private int f7926d = 1;

            private TextDirectionHeuristic f7924b = TextDirectionHeuristics.FIRSTSTRONG_LTR;

            public a(TextPaint textPaint) {
                this.f7923a = textPaint;
            }

            public b a() {
                return new b(this.f7923a, this.f7924b, this.f7925c, this.f7926d);
            }

            public a b(int i10) {
                this.f7925c = i10;
                return this;
            }

            public a c(int i10) {
                this.f7926d = i10;
                return this;
            }

            public a d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f7924b = textDirectionHeuristic;
                return this;
            }
        }

        b(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i10, int i11) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f7922e = i.a(textPaint).setBreakStrategy(i10).setHyphenationFrequency(i11).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f7922e = null;
            }
            this.f7918a = textPaint;
            this.f7919b = textDirectionHeuristic;
            this.f7920c = i10;
            this.f7921d = i11;
        }

        public boolean a(b bVar) {
            int i10 = Build.VERSION.SDK_INT;
            if (this.f7920c != bVar.b() || this.f7921d != bVar.c() || this.f7918a.getTextSize() != bVar.e().getTextSize() || this.f7918a.getTextScaleX() != bVar.e().getTextScaleX() || this.f7918a.getTextSkewX() != bVar.e().getTextSkewX() || this.f7918a.getLetterSpacing() != bVar.e().getLetterSpacing() || !TextUtils.equals(this.f7918a.getFontFeatureSettings(), bVar.e().getFontFeatureSettings()) || this.f7918a.getFlags() != bVar.e().getFlags()) {
                return false;
            }
            if (i10 >= 24) {
                if (!this.f7918a.getTextLocales().equals(bVar.e().getTextLocales())) {
                    return false;
                }
            } else if (!this.f7918a.getTextLocale().equals(bVar.e().getTextLocale())) {
                return false;
            }
            if (this.f7918a.getTypeface() == null) {
                return bVar.e().getTypeface() == null;
            }
            return this.f7918a.getTypeface().equals(bVar.e().getTypeface());
        }

        public int b() {
            return this.f7920c;
        }

        public int c() {
            return this.f7921d;
        }

        public TextDirectionHeuristic d() {
            return this.f7919b;
        }

        public TextPaint e() {
            return this.f7918a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return a(bVar) && this.f7919b == bVar.d();
        }

        public int hashCode() {
            return Build.VERSION.SDK_INT >= 24 ? androidx.core.util.d.b(Float.valueOf(this.f7918a.getTextSize()), Float.valueOf(this.f7918a.getTextScaleX()), Float.valueOf(this.f7918a.getTextSkewX()), Float.valueOf(this.f7918a.getLetterSpacing()), Integer.valueOf(this.f7918a.getFlags()), this.f7918a.getTextLocales(), this.f7918a.getTypeface(), Boolean.valueOf(this.f7918a.isElegantTextHeight()), this.f7919b, Integer.valueOf(this.f7920c), Integer.valueOf(this.f7921d)) : androidx.core.util.d.b(Float.valueOf(this.f7918a.getTextSize()), Float.valueOf(this.f7918a.getTextScaleX()), Float.valueOf(this.f7918a.getTextSkewX()), Float.valueOf(this.f7918a.getLetterSpacing()), Integer.valueOf(this.f7918a.getFlags()), this.f7918a.getTextLocale(), this.f7918a.getTypeface(), Boolean.valueOf(this.f7918a.isElegantTextHeight()), this.f7919b, Integer.valueOf(this.f7920c), Integer.valueOf(this.f7921d));
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            sb2.append("textSize=" + this.f7918a.getTextSize());
            sb2.append(", textScaleX=" + this.f7918a.getTextScaleX());
            sb2.append(", textSkewX=" + this.f7918a.getTextSkewX());
            int i10 = Build.VERSION.SDK_INT;
            sb2.append(", letterSpacing=" + this.f7918a.getLetterSpacing());
            sb2.append(", elegantTextHeight=" + this.f7918a.isElegantTextHeight());
            if (i10 >= 24) {
                sb2.append(", textLocale=" + this.f7918a.getTextLocales());
            } else {
                sb2.append(", textLocale=" + this.f7918a.getTextLocale());
            }
            sb2.append(", typeface=" + this.f7918a.getTypeface());
            if (i10 >= 26) {
                sb2.append(", variationSettings=" + this.f7918a.getFontVariationSettings());
            }
            sb2.append(", textDir=" + this.f7919b);
            sb2.append(", breakStrategy=" + this.f7920c);
            sb2.append(", hyphenationFrequency=" + this.f7921d);
            sb2.append("}");
            return sb2.toString();
        }

        public b(PrecomputedText.Params params) {
            this.f7918a = params.getTextPaint();
            this.f7919b = params.getTextDirection();
            this.f7920c = params.getBreakStrategy();
            this.f7921d = params.getHyphenationFrequency();
            this.f7922e = Build.VERSION.SDK_INT < 29 ? null : params;
        }
    }

    static class a {
        static Spannable a(PrecomputedText precomputedText) {
            return precomputedText;
        }
    }
}
