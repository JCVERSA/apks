package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class o extends SpannableStringBuilder {

    private final Class f8824a;

    private final List f8825b;

    private static class a implements TextWatcher, SpanWatcher {

        final Object f8826a;

        private final AtomicInteger f8827b = new AtomicInteger(0);

        a(Object obj) {
            this.f8826a = obj;
        }

        private boolean b(Object obj) {
            return obj instanceof i;
        }

        final void a() {
            this.f8827b.incrementAndGet();
        }

        @Override
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f8826a).afterTextChanged(editable);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.f8826a).beforeTextChanged(charSequence, i10, i11, i12);
        }

        final void c() {
            this.f8827b.decrementAndGet();
        }

        @Override
        public void onSpanAdded(Spannable spannable, Object obj, int i10, int i11) {
            if (this.f8827b.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f8826a).onSpanAdded(spannable, obj, i10, i11);
            }
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001e A[PHI: r11
          0x001e: PHI (r11v1 int) = (r11v0 int), (r11v3 int) binds: [B:8:0x0013, B:12:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
        @Override
        public void onSpanChanged(Spannable spannable, Object obj, int i10, int i11, int i12, int i13) {
            int i14;
            int i15;
            if (this.f8827b.get() <= 0 || !b(obj)) {
                if (Build.VERSION.SDK_INT >= 28) {
                    i14 = i10;
                    i15 = i12;
                } else {
                    if (i10 > i11) {
                        i10 = 0;
                    }
                    if (i12 > i13) {
                        i14 = i10;
                        i15 = 0;
                    } else {
                        i14 = i10;
                        i15 = i12;
                    }
                }
                ((SpanWatcher) this.f8826a).onSpanChanged(spannable, obj, i14, i11, i15, i13);
            }
        }

        @Override
        public void onSpanRemoved(Spannable spannable, Object obj, int i10, int i11) {
            if (this.f8827b.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f8826a).onSpanRemoved(spannable, obj, i10, i11);
            }
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            ((TextWatcher) this.f8826a).onTextChanged(charSequence, i10, i11, i12);
        }
    }

    o(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f8825b = new ArrayList();
        androidx.core.util.i.h(cls, "watcherClass cannot be null");
        this.f8824a = cls;
    }

    private void b() {
        for (int i10 = 0; i10 < this.f8825b.size(); i10++) {
            ((a) this.f8825b.get(i10)).a();
        }
    }

    public static o c(Class cls, CharSequence charSequence) {
        return new o(cls, charSequence);
    }

    private void e() {
        for (int i10 = 0; i10 < this.f8825b.size(); i10++) {
            ((a) this.f8825b.get(i10)).onTextChanged(this, 0, length(), length());
        }
    }

    private a f(Object obj) {
        for (int i10 = 0; i10 < this.f8825b.size(); i10++) {
            a aVar = (a) this.f8825b.get(i10);
            if (aVar.f8826a == obj) {
                return aVar;
            }
        }
        return null;
    }

    private boolean g(Class cls) {
        return this.f8824a == cls;
    }

    private boolean h(Object obj) {
        return obj != null && g(obj.getClass());
    }

    private void i() {
        for (int i10 = 0; i10 < this.f8825b.size(); i10++) {
            ((a) this.f8825b.get(i10)).c();
        }
    }

    public void a() {
        b();
    }

    public void d() {
        i();
        e();
    }

    @Override
    public int getSpanEnd(Object obj) {
        a aVarF;
        if (h(obj) && (aVarF = f(obj)) != null) {
            obj = aVarF;
        }
        return super.getSpanEnd(obj);
    }

    @Override
    public int getSpanFlags(Object obj) {
        a aVarF;
        if (h(obj) && (aVarF = f(obj)) != null) {
            obj = aVarF;
        }
        return super.getSpanFlags(obj);
    }

    @Override
    public int getSpanStart(Object obj) {
        a aVarF;
        if (h(obj) && (aVarF = f(obj)) != null) {
            obj = aVarF;
        }
        return super.getSpanStart(obj);
    }

    @Override
    public Object[] getSpans(int i10, int i11, Class cls) {
        if (!g(cls)) {
            return super.getSpans(i10, i11, cls);
        }
        a[] aVarArr = (a[]) super.getSpans(i10, i11, a.class);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, aVarArr.length);
        for (int i12 = 0; i12 < aVarArr.length; i12++) {
            objArr[i12] = aVarArr[i12].f8826a;
        }
        return objArr;
    }

    @Override
    public int nextSpanTransition(int i10, int i11, Class cls) {
        if (cls == null || g(cls)) {
            cls = a.class;
        }
        return super.nextSpanTransition(i10, i11, cls);
    }

    @Override
    public void removeSpan(Object obj) {
        a aVarF;
        if (h(obj)) {
            aVarF = f(obj);
            if (aVarF != null) {
                obj = aVarF;
            }
        } else {
            aVarF = null;
        }
        super.removeSpan(obj);
        if (aVarF != null) {
            this.f8825b.remove(aVarF);
        }
    }

    @Override
    public void setSpan(Object obj, int i10, int i11, int i12) {
        if (h(obj)) {
            a aVar = new a(obj);
            this.f8825b.add(aVar);
            obj = aVar;
        }
        super.setSpan(obj, i10, i11, i12);
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        return new o(this.f8824a, this, i10, i11);
    }

    @Override
    public SpannableStringBuilder delete(int i10, int i11) {
        super.delete(i10, i11);
        return this;
    }

    @Override
    public SpannableStringBuilder insert(int i10, CharSequence charSequence) {
        super.insert(i10, charSequence);
        return this;
    }

    @Override
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence) {
        b();
        super.replace(i10, i11, charSequence);
        i();
        return this;
    }

    @Override
    public SpannableStringBuilder insert(int i10, CharSequence charSequence, int i11, int i12) {
        super.insert(i10, charSequence, i11, i12);
        return this;
    }

    o(Class cls, CharSequence charSequence, int i10, int i11) {
        super(charSequence, i10, i11);
        this.f8825b = new ArrayList();
        androidx.core.util.i.h(cls, "watcherClass cannot be null");
        this.f8824a = cls;
    }

    @Override
    public SpannableStringBuilder replace(int i10, int i11, CharSequence charSequence, int i12, int i13) {
        b();
        super.replace(i10, i11, charSequence, i12, i13);
        i();
        return this;
    }

    @Override
    public SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override
    public SpannableStringBuilder append(char c10) {
        super.append(c10);
        return this;
    }

    @Override
    public SpannableStringBuilder append(CharSequence charSequence, int i10, int i11) {
        super.append(charSequence, i10, i11);
        return this;
    }

    @Override
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i10) {
        super.append(charSequence, obj, i10);
        return this;
    }
}
