package ps;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

public final class b implements os.c {

    private final os.c f69254a;

    private final int f69255b;

    private final int f69256c;

    private final int f69257d;

    private final float f69258e;

    private final float f69259f;

    public b(os.c mStyle, int i10, int i11, int i12, float f10, float f11) {
        Intrinsics.h(mStyle, "mStyle");
        this.f69254a = mStyle;
        this.f69255b = i10;
        this.f69256c = i11;
        this.f69257d = i12;
        this.f69258e = f10;
        this.f69259f = f11;
    }

    @Override
    public View createView(Context context) {
        View viewCreateView = this.f69254a.createView(context);
        Intrinsics.e(viewCreateView);
        return viewCreateView;
    }

    @Override
    public int getGravity() {
        return this.f69255b;
    }

    @Override
    public float getHorizontalMargin() {
        return this.f69258e;
    }

    @Override
    public float getVerticalMargin() {
        return this.f69259f;
    }

    @Override
    public int getXOffset() {
        return this.f69256c;
    }

    @Override
    public int getYOffset() {
        return this.f69257d;
    }
}
