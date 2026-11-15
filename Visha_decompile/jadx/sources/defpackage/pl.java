package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import com.zhpan.indicator.R;

public abstract class pl {
    public static void a(Context context, AttributeSet attributeSet, rz4 rz4Var) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.IndicatorView);
            int i = typedArrayObtainStyledAttributes.getInt(R.styleable.IndicatorView_vpi_slide_mode, 0);
            int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.IndicatorView_vpi_style, 0);
            int color = typedArrayObtainStyledAttributes.getColor(R.styleable.IndicatorView_vpi_slider_checked_color, Color.parseColor("#6C6D72"));
            int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.IndicatorView_vpi_slider_normal_color, Color.parseColor("#8C18171C"));
            int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.IndicatorView_vpi_orientation, 0);
            float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.IndicatorView_vpi_slider_radius, tz4.a(8.0f));
            rz4Var.n(color);
            rz4Var.s(color2);
            rz4Var.u(i3);
            rz4Var.r(i2);
            rz4Var.x(i);
            float f = dimension * 2.0f;
            rz4Var.D(f, f);
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
