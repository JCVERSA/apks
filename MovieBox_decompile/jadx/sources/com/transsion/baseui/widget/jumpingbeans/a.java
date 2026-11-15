package com.transsion.baseui.widget.jumpingbeans;

import android.text.SpannableStringBuilder;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public final class a {

    private final JumpingBeansSpan[] f42474a;

    private final WeakReference f42475b;

    public static class C0583a {

        private final TextView f42476a;

        private int f42477b;

        private int f42478c;

        private float f42479d = 0.65f;

        private int f42480e = 1300;

        private int f42481f = -1;

        private CharSequence f42482g;

        private boolean f42483h;

        C0583a(TextView textView) {
            this.f42476a = textView;
        }

        private JumpingBeansSpan[] b(SpannableStringBuilder spannableStringBuilder) {
            JumpingBeansSpan[] jumpingBeansSpanArr = {new JumpingBeansSpan(this.f42476a, this.f42480e, 0, 0, this.f42479d)};
            spannableStringBuilder.setSpan(jumpingBeansSpanArr[0], this.f42477b, this.f42478c, 33);
            return jumpingBeansSpanArr;
        }

        private JumpingBeansSpan[] c(SpannableStringBuilder spannableStringBuilder) {
            if (this.f42481f == -1) {
                this.f42481f = this.f42480e / ((this.f42478c - this.f42477b) * 3);
            }
            int i10 = this.f42478c;
            int i11 = this.f42477b;
            JumpingBeansSpan[] jumpingBeansSpanArr = new JumpingBeansSpan[i10 - i11];
            while (i11 < this.f42478c) {
                JumpingBeansSpan jumpingBeansSpan = new JumpingBeansSpan(this.f42476a, this.f42480e, i11 - this.f42477b, this.f42481f, this.f42479d);
                int i12 = i11 + 1;
                spannableStringBuilder.setSpan(jumpingBeansSpan, i11, i12, 33);
                jumpingBeansSpanArr[i11 - this.f42477b] = jumpingBeansSpan;
                i11 = i12;
            }
            return jumpingBeansSpanArr;
        }

        private static CharSequence d(int i10, int i11, CharSequence charSequence) {
            if (charSequence == null) {
                throw new NullPointerException("The textView text must not be null");
            }
            if (i11 < i10) {
                throw new IllegalArgumentException("The start position must be smaller than the end position");
            }
            if (i10 < 0) {
                throw new IndexOutOfBoundsException("The start position must be non-negative");
            }
            if (i11 <= charSequence.length()) {
                return charSequence;
            }
            throw new IndexOutOfBoundsException("The end position must be smaller than the text length");
        }

        public a a() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f42482g);
            JumpingBeansSpan[] jumpingBeansSpanArrC = this.f42483h ? c(spannableStringBuilder) : b(spannableStringBuilder);
            this.f42476a.setText(spannableStringBuilder);
            return new a(jumpingBeansSpanArrC, this.f42476a);
        }

        public C0583a e(int i10, int i11) {
            CharSequence text = this.f42476a.getText();
            d(i10, i11, text);
            this.f42482g = text;
            this.f42483h = true;
            this.f42477b = i10;
            this.f42478c = i11;
            return this;
        }

        public C0583a f(float f10) {
            if (f10 <= 0.0f || f10 > 1.0f) {
                throw new IllegalArgumentException("The animated range must be in the (0, 1] range");
            }
            this.f42479d = f10;
            return this;
        }

        public C0583a g(boolean z10) {
            this.f42483h = z10;
            return this;
        }

        public C0583a h(int i10) {
            if (i10 < 1) {
                throw new IllegalArgumentException("The loop duration must be bigger than zero");
            }
            this.f42480e = i10;
            return this;
        }

        public C0583a i(int i10) {
            if (i10 < 0) {
                throw new IllegalArgumentException("The wave char offset must be non-negative");
            }
            this.f42481f = i10;
            return this;
        }
    }

    public static C0583a a(TextView textView) {
        return new C0583a(textView);
    }

    private a(JumpingBeansSpan[] jumpingBeansSpanArr, TextView textView) {
        this.f42474a = jumpingBeansSpanArr;
        this.f42475b = new WeakReference(textView);
    }
}
