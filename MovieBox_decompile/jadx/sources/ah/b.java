package ah;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;

public class b extends SpannableString {
    public b(CharSequence charSequence) {
        super(charSequence);
    }

    public b a(Object... objArr) {
        return b(0, length(), objArr);
    }

    public b b(int i10, int i11, Object... objArr) {
        if (i10 <= i11 && objArr != null && objArr.length != 0) {
            for (Object obj : objArr) {
                if (obj != null) {
                    super.setSpan(obj, i10, i11, 33);
                }
            }
        }
        return this;
    }

    public b c(int i10) {
        a(new ForegroundColorSpan(i10));
        return this;
    }

    public b d(int i10) {
        a(new AbsoluteSizeSpan(i10, true));
        return this;
    }

    public b e(Typeface typeface) {
        a(new a(typeface));
        return this;
    }

    public b(CharSequence charSequence, int i10, int i11) {
        super(charSequence);
        d(i10);
        c(i11);
    }

    public b() {
        super("");
    }
}
