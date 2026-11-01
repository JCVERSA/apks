package e;

import android.content.res.Resources;
import android.util.AttributeSet;

public final class b implements d {

    public final Resources f586a;

    public final Resources.Theme f587b;

    public b(Resources resources, Resources.Theme theme) {
        this.f586a = resources;
        this.f587b = theme;
    }

    @Override
    public final e a(AttributeSet attributeSet, int[] iArr, String[] strArr) {
        Resources.Theme theme = this.f587b;
        return theme != null ? new c(theme.obtainStyledAttributes(attributeSet, iArr, 0, 0)) : new c(this.f586a.obtainAttributes(attributeSet, iArr));
    }
}
