package hh;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

public final class b implements gh.c {

    private final gh.c f61358a;

    private final int f61359b;

    private final int f61360c;

    private final int f61361d;

    private final float f61362e;

    private final float f61363f;

    public b(gh.c mStyle, int i10, int i11, int i12, float f10, float f11) {
        Intrinsics.h(mStyle, "mStyle");
        this.f61358a = mStyle;
        this.f61359b = i10;
        this.f61360c = i11;
        this.f61361d = i12;
        this.f61362e = f10;
        this.f61363f = f11;
    }

    @Override
    public View createView(Context context) {
        View viewCreateView = this.f61358a.createView(context);
        Intrinsics.e(viewCreateView);
        return viewCreateView;
    }

    @Override
    public int getGravity() {
        return this.f61359b;
    }

    @Override
    public float getHorizontalMargin() {
        return this.f61362e;
    }

    @Override
    public float getVerticalMargin() {
        return this.f61363f;
    }

    @Override
    public int getXOffset() {
        return this.f61360c;
    }

    @Override
    public int getYOffset() {
        return this.f61361d;
    }
}
