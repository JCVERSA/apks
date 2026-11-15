package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class FitWindowsLinearLayout extends LinearLayout {

    private z f1462a;

    public FitWindowsLinearLayout(@NonNull Context context) {
        super(context);
    }

    @Override
    protected boolean fitSystemWindows(Rect rect) {
        z zVar = this.f1462a;
        if (zVar != null) {
            zVar.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(z zVar) {
    }

    public FitWindowsLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
