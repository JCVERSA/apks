package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.core.text.PrecomputedTextCompat;
import java.util.stream.IntStream;

class t implements Spannable {

    private boolean f8834a = false;

    private Spannable f8835b;

    private static class a {
        static IntStream a(CharSequence charSequence) {
            return charSequence.chars();
        }

        static IntStream b(CharSequence charSequence) {
            return charSequence.codePoints();
        }
    }

    static class b {
        b() {
        }

        boolean a(CharSequence charSequence) {
            return charSequence instanceof PrecomputedTextCompat;
        }
    }

    static class c extends b {
        c() {
        }

        @Override
        boolean a(CharSequence charSequence) {
            return androidx.core.text.c.a(charSequence) || (charSequence instanceof PrecomputedTextCompat);
        }
    }

    t(Spannable spannable) {
        this.f8835b = spannable;
    }

    private void a() {
        Spannable spannable = this.f8835b;
        if (!this.f8834a && c().a(spannable)) {
            this.f8835b = new SpannableString(spannable);
        }
        this.f8834a = true;
    }

    static b c() {
        return Build.VERSION.SDK_INT < 28 ? new b() : new c();
    }

    Spannable b() {
        return this.f8835b;
    }

    @Override
    public char charAt(int i10) {
        return this.f8835b.charAt(i10);
    }

    @Override
    public IntStream chars() {
        return a.a(this.f8835b);
    }

    @Override
    public IntStream codePoints() {
        return a.b(this.f8835b);
    }

    @Override
    public int getSpanEnd(Object obj) {
        return this.f8835b.getSpanEnd(obj);
    }

    @Override
    public int getSpanFlags(Object obj) {
        return this.f8835b.getSpanFlags(obj);
    }

    @Override
    public int getSpanStart(Object obj) {
        return this.f8835b.getSpanStart(obj);
    }

    @Override
    public Object[] getSpans(int i10, int i11, Class cls) {
        return this.f8835b.getSpans(i10, i11, cls);
    }

    @Override
    public int length() {
        return this.f8835b.length();
    }

    @Override
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f8835b.nextSpanTransition(i10, i11, cls);
    }

    @Override
    public void removeSpan(Object obj) {
        a();
        this.f8835b.removeSpan(obj);
    }

    @Override
    public void setSpan(Object obj, int i10, int i11, int i12) {
        a();
        this.f8835b.setSpan(obj, i10, i11, i12);
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        return this.f8835b.subSequence(i10, i11);
    }

    @Override
    public String toString() {
        return this.f8835b.toString();
    }

    t(CharSequence charSequence) {
        this.f8835b = new SpannableString(charSequence);
    }
}
