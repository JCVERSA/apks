package androidx.compose.ui.text.platform;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.u;
import androidx.compose.ui.text.w;
import androidx.emoji2.text.EmojiCompat;
import java.util.List;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import o0.x;

public abstract class c {

    private static final a f6011a = new a();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.emoji2.text.EmojiCompat] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [int] */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static final CharSequence a(String str, float f10, d0 d0Var, List list, List list2, o0.e eVar, Function4 function4, boolean z10) {
        CharSequence charSequenceS;
        u uVarA;
        if (z10 && EmojiCompat.i()) {
            w wVarW = d0Var.w();
            androidx.compose.ui.text.e eVarD = (wVarW == null || (uVarA = wVarW.a()) == null) ? null : androidx.compose.ui.text.e.d(uVarA.a());
            charSequenceS = EmojiCompat.c().s(str, 0, str.length(), Integer.MAX_VALUE, eVarD == null ? 0 : androidx.compose.ui.text.e.g(eVarD.j(), androidx.compose.ui.text.e.f5783b.a()));
            Intrinsics.e(charSequenceS);
        } else {
            charSequenceS = str;
        }
        if (list.isEmpty() && list2.isEmpty() && Intrinsics.c(d0Var.D(), androidx.compose.ui.text.style.n.f6120c.a()) && x.d(d0Var.s())) {
            return charSequenceS;
        }
        Spannable spannableString = charSequenceS instanceof Spannable ? (Spannable) charSequenceS : new SpannableString(charSequenceS);
        if (Intrinsics.c(d0Var.A(), androidx.compose.ui.text.style.i.f6100b.d())) {
            SpannableExtensions_androidKt.u(spannableString, f6011a, 0, str.length());
        }
        if (b(d0Var) && d0Var.t() == null) {
            SpannableExtensions_androidKt.r(spannableString, d0Var.s(), f10, eVar);
        } else {
            androidx.compose.ui.text.style.g gVarT = d0Var.t();
            if (gVarT == null) {
                gVarT = androidx.compose.ui.text.style.g.f6077c.a();
            }
            SpannableExtensions_androidKt.q(spannableString, d0Var.s(), f10, eVar, gVarT);
        }
        SpannableExtensions_androidKt.y(spannableString, d0Var.D(), f10, eVar);
        SpannableExtensions_androidKt.w(spannableString, d0Var, list, eVar, function4);
        androidx.compose.ui.text.platform.extensions.e.b(spannableString, list2, eVar);
        return spannableString;
    }

    public static final boolean b(d0 d0Var) {
        u uVarA;
        w wVarW = d0Var.w();
        if (wVarW == null || (uVarA = wVarW.a()) == null) {
            return false;
        }
        return uVarA.b();
    }

    public static final class a extends CharacterStyle {
        a() {
        }

        @Override
        public void updateDrawState(TextPaint textPaint) {
        }
    }
}
