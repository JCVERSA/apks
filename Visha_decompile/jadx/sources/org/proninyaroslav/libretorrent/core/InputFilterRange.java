package org.proninyaroslav.libretorrent.core;

import android.text.InputFilter;
import android.text.Spanned;

public class InputFilterRange implements InputFilter {
    public static final InputFilterRange c = new Builder().c(0).b(65535).a();
    public static final InputFilterRange d = new Builder().c(0).b(Integer.MAX_VALUE).a();
    public Integer a;
    public Integer b;

    public static class Builder {
        public Integer a;
        public Integer b;

        public InputFilterRange a() {
            Integer num = this.a;
            if (num == null || this.b == null || num.intValue() <= this.b.intValue()) {
                return new InputFilterRange(this.a, this.b);
            }
            throw new IllegalArgumentException("max < min");
        }

        public Builder b(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        public Builder c(int i) {
            this.a = Integer.valueOf(i);
            return this;
        }
    }

    public final boolean a(int i) {
        Integer num;
        Integer num2 = this.a;
        return (num2 == null || i >= num2.intValue()) && ((num = this.b) == null || i <= num.intValue());
    }

    @Override
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (charSequence.length() == 1 && charSequence.charAt(0) == '-') {
            return null;
        }
        try {
            if (a(Integer.parseInt(spanned.toString() + charSequence.toString()))) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }

    public InputFilterRange(Integer num, Integer num2) {
        this.a = num;
        this.b = num2;
    }
}
