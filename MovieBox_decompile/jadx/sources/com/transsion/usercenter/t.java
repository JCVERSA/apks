package com.transsion.usercenter;

import android.text.InputFilter;
import android.text.Spanned;
import kotlin.jvm.internal.Intrinsics;

public final class t implements InputFilter {

    private final int f55339a;

    private a f55340b;

    public interface a {
        void a();
    }

    public t(int i10) {
        this.f55339a = i10;
    }

    public final void a(a aVar) {
        this.f55340b = aVar;
    }

    @Override
    public CharSequence filter(CharSequence source, int i10, int i11, Spanned dest, int i12, int i13) {
        Intrinsics.h(source, "source");
        Intrinsics.h(dest, "dest");
        int length = this.f55339a - (dest.length() - (i13 - i12));
        if (length > 0) {
            if (length >= i11 - i10) {
                return null;
            }
            int i14 = length + i10;
            return (Character.isHighSurrogate(source.charAt(i14 + (-1))) && (i14 = i14 + (-1)) == i10) ? "" : source.subSequence(i10, i14);
        }
        a aVar = this.f55340b;
        if (aVar == null) {
            return "";
        }
        aVar.a();
        return "";
    }
}
