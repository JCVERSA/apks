package androidx.compose.material;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.ui.R$string;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;

public abstract class m {
    public static final String a(int i10, androidx.compose.runtime.i iVar, int i11) {
        String string;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-726638443, i11, -1, "androidx.compose.material.getString (Strings.android.kt:24)");
        }
        iVar.l(AndroidCompositionLocals_androidKt.f());
        Resources resources = ((Context) iVar.l(AndroidCompositionLocals_androidKt.g())).getResources();
        l.a aVar = l.f3111a;
        if (l.i(i10, aVar.e())) {
            string = resources.getString(R$string.navigation_menu);
        } else if (l.i(i10, aVar.a())) {
            string = resources.getString(R$string.close_drawer);
        } else if (l.i(i10, aVar.b())) {
            string = resources.getString(R$string.close_sheet);
        } else if (l.i(i10, aVar.c())) {
            string = resources.getString(R$string.default_error_message);
        } else if (l.i(i10, aVar.d())) {
            string = resources.getString(R$string.dropdown_menu);
        } else if (l.i(i10, aVar.g())) {
            string = resources.getString(R$string.range_start);
        } else {
            string = l.i(i10, aVar.f()) ? resources.getString(R$string.range_end) : "";
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return string;
    }
}
