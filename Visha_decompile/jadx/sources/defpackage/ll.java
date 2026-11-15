package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.transsion.playercommon.R;

public final class ll {
    public final t70 a;

    public ll(t70 t70Var) {
        y45.j(t70Var, "mBannerOptions");
        this.a = t70Var;
    }

    public final void a(Context context, AttributeSet attributeSet) {
        y45.j(context, "context");
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BannerViewPager);
            y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            b(typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void b(TypedArray typedArray) {
        int integer = typedArray.getInteger(R.styleable.BannerViewPager_bvp_interval, 3000);
        boolean z = typedArray.getBoolean(R.styleable.BannerViewPager_bvp_auto_play, true);
        boolean z2 = typedArray.getBoolean(R.styleable.BannerViewPager_bvp_can_loop, true);
        int dimension = (int) typedArray.getDimension(R.styleable.BannerViewPager_bvp_page_margin, 0.0f);
        int dimension2 = (int) typedArray.getDimension(R.styleable.BannerViewPager_bvp_round_corner, 0.0f);
        int dimension3 = (int) typedArray.getDimension(R.styleable.BannerViewPager_bvp_reveal_width, -1000.0f);
        int i = typedArray.getInt(R.styleable.BannerViewPager_bvp_scroll_duration, 0);
        this.a.s(integer);
        this.a.o(z);
        this.a.q(z2);
        this.a.w(dimension);
        this.a.y(dimension2);
        this.a.x(dimension3);
        this.a.t(dimension3);
        this.a.B(i);
    }
}
