package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import wy.a;

public class ColorTransitionPagerTitleView extends SimplePagerTitleView {
    public ColorTransitionPagerTitleView(Context context) {
        super(context);
    }

    @Override
    public void onDeselected(int i10, int i11) {
    }

    @Override
    public void onEnter(int i10, int i11, float f10, boolean z10) {
        setTextColor(a.a(f10, this.f67260b, this.f67259a));
    }

    @Override
    public void onLeave(int i10, int i11, float f10, boolean z10) {
        setTextColor(a.a(f10, this.f67259a, this.f67260b));
    }

    @Override
    public void onSelected(int i10, int i11) {
    }
}
