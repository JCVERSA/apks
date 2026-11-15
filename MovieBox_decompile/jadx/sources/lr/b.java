package lr;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

public final class b implements kr.c {

    private final kr.c f66102a;

    private final int f66103b;

    private final int f66104c;

    private final int f66105d;

    private final float f66106e;

    private final float f66107f;

    public b(kr.c mStyle, int i10, int i11, int i12, float f10, float f11) {
        Intrinsics.h(mStyle, "mStyle");
        this.f66102a = mStyle;
        this.f66103b = i10;
        this.f66104c = i11;
        this.f66105d = i12;
        this.f66106e = f10;
        this.f66107f = f11;
    }

    @Override
    public View createView(Context context) {
        View viewCreateView = this.f66102a.createView(context);
        Intrinsics.e(viewCreateView);
        return viewCreateView;
    }

    @Override
    public int getGravity() {
        return this.f66103b;
    }

    @Override
    public float getHorizontalMargin() {
        return this.f66106e;
    }

    @Override
    public float getVerticalMargin() {
        return this.f66107f;
    }

    @Override
    public int getXOffset() {
        return this.f66104c;
    }

    @Override
    public int getYOffset() {
        return this.f66105d;
    }
}
