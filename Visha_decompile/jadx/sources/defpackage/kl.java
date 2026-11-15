package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import com.zhpan.bannerview.R;

public class kl {
    public final u70 a;

    public kl(u70 u70Var) {
        this.a = u70Var;
    }

    public void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BannerViewPager);
            b(typedArrayObtainStyledAttributes);
            c(typedArrayObtainStyledAttributes);
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
        int i = typedArray.getInt(R.styleable.BannerViewPager_bvp_page_style, 0);
        int i2 = typedArray.getInt(R.styleable.BannerViewPager_bvp_scroll_duration, 0);
        this.a.I(integer);
        this.a.v(z);
        this.a.x(z2);
        this.a.M(dimension);
        this.a.Q(dimension2);
        this.a.P(dimension3);
        this.a.J(dimension3);
        this.a.O(i);
        this.a.T(i2);
    }

    public final void c(TypedArray typedArray) {
        int color = typedArray.getColor(R.styleable.BannerViewPager_bvp_indicator_checked_color, Color.parseColor("#8C18171C"));
        int color2 = typedArray.getColor(R.styleable.BannerViewPager_bvp_indicator_normal_color, Color.parseColor("#8C6C6D72"));
        int dimension = (int) typedArray.getDimension(R.styleable.BannerViewPager_bvp_indicator_radius, v70.a(8.0f));
        int i = typedArray.getInt(R.styleable.BannerViewPager_bvp_indicator_gravity, 0);
        int i2 = typedArray.getInt(R.styleable.BannerViewPager_bvp_indicator_style, 0);
        int i3 = typedArray.getInt(R.styleable.BannerViewPager_bvp_indicator_slide_mode, 0);
        int i4 = typedArray.getInt(R.styleable.BannerViewPager_bvp_indicator_visibility, 0);
        this.a.E(color2, color);
        this.a.F(dimension, dimension);
        this.a.A(i);
        this.a.G(i2);
        this.a.D(i3);
        this.a.H(i4);
        this.a.z(dimension);
        this.a.B(dimension / 2);
    }
}
