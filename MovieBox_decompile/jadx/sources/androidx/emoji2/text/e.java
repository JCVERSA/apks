package androidx.emoji2.text;

import android.text.TextPaint;

class e implements EmojiCompat.e {

    private static final ThreadLocal f8759b = new ThreadLocal();

    private final TextPaint f8760a;

    e() {
        TextPaint textPaint = new TextPaint();
        this.f8760a = textPaint;
        textPaint.setTextSize(10.0f);
    }

    private static StringBuilder b() {
        ThreadLocal threadLocal = f8759b;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        return (StringBuilder) threadLocal.get();
    }

    @Override
    public boolean a(CharSequence charSequence, int i10, int i11, int i12) {
        StringBuilder sbB = b();
        sbB.setLength(0);
        while (i10 < i11) {
            sbB.append(charSequence.charAt(i10));
            i10++;
        }
        return z0.d.a(this.f8760a, sbB.toString());
    }
}
