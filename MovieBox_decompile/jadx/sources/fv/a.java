package fv;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class a {

    public static final C0733a f60519a = new C0733a(null);

    public static final class C0733a {
        public C0733a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SpannableStringBuilder a(String prefix, String desc, int i10) {
            Intrinsics.h(prefix, "prefix");
            Intrinsics.h(desc, "desc");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(desc);
            int iN0 = StringsKt.n0(desc, ':', 0, false, 6, null);
            if (iN0 == -1) {
                return spannableStringBuilder;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i10), 0, iN0, 33);
            return spannableStringBuilder;
        }

        private C0733a() {
        }
    }
}
