package k0;

import android.os.Build;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

public final class e {

    public static final e f63429a = new e();

    private e() {
    }

    public final BoringLayout a(CharSequence charSequence, TextPaint textPaint, int i10, BoringLayout.Metrics metrics, Layout.Alignment alignment, boolean z10, boolean z11, TextUtils.TruncateAt truncateAt, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("negative width");
        }
        if (i11 >= 0) {
            return Build.VERSION.SDK_INT >= 33 ? d.a(charSequence, textPaint, i10, alignment, 1.0f, 0.0f, metrics, z10, z11, truncateAt, i11) : f.a(charSequence, textPaint, i10, alignment, 1.0f, 0.0f, metrics, z10, truncateAt, i11);
        }
        throw new IllegalArgumentException("negative ellipsized width");
    }

    public final boolean b(BoringLayout boringLayout) {
        if (Build.VERSION.SDK_INT >= 33) {
            return d.c(boringLayout);
        }
        return false;
    }

    public final BoringLayout.Metrics c(CharSequence charSequence, TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic) {
        return Build.VERSION.SDK_INT >= 33 ? d.b(charSequence, textPaint, textDirectionHeuristic) : f.b(charSequence, textPaint, textDirectionHeuristic);
    }
}
