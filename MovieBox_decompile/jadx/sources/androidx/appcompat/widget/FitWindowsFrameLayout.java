package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class FitWindowsFrameLayout extends FrameLayout {

    private z f1461a;

    public FitWindowsFrameLayout(@NonNull Context context) {
        super(context);
    }

    @Override
    protected boolean fitSystemWindows(Rect rect) {
        z zVar = this.f1461a;
        if (zVar != null) {
            zVar.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public FitWindowsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setOnFitSystemWindowsListener(z zVar) {
    }
}
