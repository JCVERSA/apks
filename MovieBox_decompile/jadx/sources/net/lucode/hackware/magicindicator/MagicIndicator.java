package net.lucode.hackware.magicindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import vy.a;

public class MagicIndicator extends FrameLayout {

    private a f67165a;

    public MagicIndicator(Context context) {
        super(context);
    }

    public a getNavigator() {
        return this.f67165a;
    }

    public void onPageScrollStateChanged(int i10) {
        a aVar = this.f67165a;
        if (aVar != null) {
            aVar.onPageScrollStateChanged(i10);
        }
    }

    public void onPageScrolled(int i10, float f10, int i11) {
        a aVar = this.f67165a;
        if (aVar != null) {
            aVar.onPageScrolled(i10, f10, i11);
        }
    }

    public void onPageSelected(int i10) {
        a aVar = this.f67165a;
        if (aVar != null) {
            aVar.onPageSelected(i10);
        }
    }

    public void setNavigator(a aVar) {
        a aVar2 = this.f67165a;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.onDetachFromMagicIndicator();
        }
        this.f67165a = aVar;
        removeAllViews();
        if (this.f67165a instanceof View) {
            addView((View) this.f67165a, new FrameLayout.LayoutParams(-1, -1));
            this.f67165a.onAttachToMagicIndicator();
        }
    }

    public MagicIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
