package i0;

import androidx.compose.runtime.k;
import java.util.Arrays;

public abstract class h {
    public static final String a(int i10, androidx.compose.runtime.i iVar, int i11) {
        if (k.H()) {
            k.Q(1223887937, i11, -1, "androidx.compose.ui.res.stringResource (StringResources.android.kt:32)");
        }
        String string = g.a(iVar, 0).getString(i10);
        if (k.H()) {
            k.P();
        }
        return string;
    }

    public static final String b(int i10, Object[] objArr, androidx.compose.runtime.i iVar, int i11) {
        if (k.H()) {
            k.Q(2071230100, i11, -1, "androidx.compose.ui.res.stringResource (StringResources.android.kt:46)");
        }
        String string = g.a(iVar, 0).getString(i10, Arrays.copyOf(objArr, objArr.length));
        if (k.H()) {
            k.P();
        }
        return string;
    }
}
