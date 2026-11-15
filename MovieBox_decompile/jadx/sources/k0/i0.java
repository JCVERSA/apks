package k0;

import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import java.text.BreakIterator;
import java.util.Comparator;
import java.util.PriorityQueue;
import kotlin.Pair;

public abstract class i0 {
    public static final float c(CharSequence charSequence, TextPaint textPaint) {
        BreakIterator lineInstance = BreakIterator.getLineInstance(textPaint.getTextLocale());
        int i10 = 0;
        lineInstance.setText(new b0(charSequence, 0, charSequence.length()));
        PriorityQueue<Pair> priorityQueue = new PriorityQueue(10, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return i0.d((Pair) obj, (Pair) obj2);
            }
        });
        int next = lineInstance.next();
        while (true) {
            int i11 = i10;
            i10 = next;
            if (i10 == -1) {
                break;
            }
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new Pair(Integer.valueOf(i11), Integer.valueOf(i10)));
            } else {
                Pair pair = (Pair) priorityQueue.peek();
                if (pair != null && ((Number) pair.getSecond()).intValue() - ((Number) pair.getFirst()).intValue() < i10 - i11) {
                    priorityQueue.poll();
                    priorityQueue.add(new Pair(Integer.valueOf(i11), Integer.valueOf(i10)));
                }
            }
            next = lineInstance.next();
        }
        float fMax = 0.0f;
        for (Pair pair2 : priorityQueue) {
            fMax = Math.max(fMax, Layout.getDesiredWidth(charSequence, ((Number) pair2.component1()).intValue(), ((Number) pair2.component2()).intValue(), textPaint));
        }
        return fMax;
    }

    public static final int d(Pair pair, Pair pair2) {
        return (((Number) pair.getSecond()).intValue() - ((Number) pair.getFirst()).intValue()) - (((Number) pair2.getSecond()).intValue() - ((Number) pair2.getFirst()).intValue());
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    public static final boolean e(float f10, CharSequence charSequence, TextPaint textPaint) {
        if (f10 != 0.0f) {
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                if (!m0.a(spanned, l0.f.class) && !m0.a(spanned, l0.e.class)) {
                    if (textPaint.getLetterSpacing() == 0.0f) {
                    }
                }
            } else if (textPaint.getLetterSpacing() == 0.0f) {
            }
            return true;
        }
        return false;
    }
}
