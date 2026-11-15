package androidx.compose.ui.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import k0.e1;

public abstract class b {
    public static final CharSequence i(CharSequence charSequence) {
        if (charSequence.length() == 0) {
            return charSequence;
        }
        Spannable spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
        SpannableExtensions_androidKt.u(spannableString, new l0.c(), spannableString.length() - 1, spannableString.length() - 1);
        return spannableString;
    }

    public static final int j(e1 e1Var, int i10) {
        int iL = e1Var.l();
        for (int i11 = 0; i11 < iL; i11++) {
            if (e1Var.k(i11) > i10) {
                return i11;
            }
        }
        return e1Var.l();
    }

    public static final boolean k(d0 d0Var, boolean z10) {
        if (!z10 || o0.w.e(d0Var.q(), o0.x.c(0)) || o0.w.e(d0Var.q(), o0.w.f67429b.a())) {
            return false;
        }
        int iZ = d0Var.z();
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6091b;
        return (androidx.compose.ui.text.style.h.k(iZ, aVar.g()) || androidx.compose.ui.text.style.h.k(d0Var.z(), aVar.f()) || androidx.compose.ui.text.style.h.k(d0Var.z(), aVar.c())) ? false : true;
    }

    public static final int l(int i10) {
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6091b;
        if (androidx.compose.ui.text.style.h.k(i10, aVar.d())) {
            return 3;
        }
        if (androidx.compose.ui.text.style.h.k(i10, aVar.e())) {
            return 4;
        }
        if (androidx.compose.ui.text.style.h.k(i10, aVar.a())) {
            return 2;
        }
        return (!androidx.compose.ui.text.style.h.k(i10, aVar.f()) && androidx.compose.ui.text.style.h.k(i10, aVar.b())) ? 1 : 0;
    }

    public static final int m(int i10) {
        androidx.compose.ui.text.style.e.b.a aVar = androidx.compose.ui.text.style.e.b.f6062a;
        if (androidx.compose.ui.text.style.e.b.e(i10, aVar.c())) {
            return 0;
        }
        if (androidx.compose.ui.text.style.e.b.e(i10, aVar.b())) {
            return 1;
        }
        return androidx.compose.ui.text.style.e.b.e(i10, aVar.a()) ? 2 : 0;
    }

    public static final int n(int i10) {
        androidx.compose.ui.text.style.d.a aVar = androidx.compose.ui.text.style.d.f6053a;
        if (androidx.compose.ui.text.style.d.e(i10, aVar.a())) {
            return Build.VERSION.SDK_INT <= 32 ? 2 : 4;
        }
        androidx.compose.ui.text.style.d.e(i10, aVar.b());
        return 0;
    }

    public static final int o(int i10) {
        androidx.compose.ui.text.style.e.c.a aVar = androidx.compose.ui.text.style.e.c.f6067a;
        if (androidx.compose.ui.text.style.e.c.f(i10, aVar.a())) {
            return 0;
        }
        if (androidx.compose.ui.text.style.e.c.f(i10, aVar.b())) {
            return 1;
        }
        if (androidx.compose.ui.text.style.e.c.f(i10, aVar.c())) {
            return 2;
        }
        return androidx.compose.ui.text.style.e.c.f(i10, aVar.d()) ? 3 : 0;
    }

    public static final int p(int i10) {
        androidx.compose.ui.text.style.e.d.a aVar = androidx.compose.ui.text.style.e.d.f6073a;
        return (!androidx.compose.ui.text.style.e.d.d(i10, aVar.a()) && androidx.compose.ui.text.style.e.d.d(i10, aVar.b())) ? 1 : 0;
    }
}
