package hh;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

public final class a implements gh.c {
    @Override
    public TextView createView(Context context) {
        TextView textView = new TextView(context);
        textView.setId(R.id.message);
        textView.setGravity(f(context));
        textView.setTextColor(e(context));
        textView.setTextSize(0, g(context));
        int iC = c(context);
        int i10 = i(context);
        textView.setPaddingRelative(iC, i10, iC, i10);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setBackground(b(context));
        textView.setZ(h(context));
        textView.setMaxLines(d(context));
        return textView;
    }

    protected final Drawable b(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-2013265920);
        Intrinsics.e(context);
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        return gradientDrawable;
    }

    protected final int c(Context context) {
        Intrinsics.e(context);
        return (int) TypedValue.applyDimension(1, 24.0f, context.getResources().getDisplayMetrics());
    }

    protected final int d(Context context) {
        return 5;
    }

    protected final int e(Context context) {
        return -285212673;
    }

    protected final int f(Context context) {
        return 17;
    }

    protected final float g(Context context) {
        Intrinsics.e(context);
        return TypedValue.applyDimension(2, 14.0f, context.getResources().getDisplayMetrics());
    }

    @Override
    public int getGravity() {
        return gh.c.a.a(this);
    }

    @Override
    public float getHorizontalMargin() {
        return gh.c.a.b(this);
    }

    @Override
    public float getVerticalMargin() {
        return gh.c.a.c(this);
    }

    @Override
    public int getXOffset() {
        return gh.c.a.d(this);
    }

    @Override
    public int getYOffset() {
        return gh.c.a.e(this);
    }

    protected final float h(Context context) {
        Intrinsics.e(context);
        return TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics());
    }

    protected final int i(Context context) {
        Intrinsics.e(context);
        return (int) TypedValue.applyDimension(1, 16.0f, context.getResources().getDisplayMetrics());
    }
}
