package defpackage;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.flipper.FlipperLayout;

public abstract class ty3 {

    public static final class a extends ViewOutlineProvider {
        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            float f = wn8.f(view.getWidth() / 2.0f, view.getHeight() / 2.0f);
            if (Build.VERSION.SDK_INT < 30) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), f);
                return;
            }
            Path path = new Path();
            path.addCircle(view.getWidth() / 2.0f, view.getHeight() / 2.0f, f, Path.Direction.CCW);
            outline.setPath(path);
        }
    }

    public static final int b(int i, int i2, boolean z, int i3) {
        if (!z || i2 <= 1) {
            return i;
        }
        if (i == 0) {
            return i2 - 2;
        }
        return i == i2 - 1 ? i3 : i;
    }

    public static final ViewGroup c(final FlipperLayout flipperLayout) {
        y45.j(flipperLayout, "<this>");
        int iM = olb.m(flipperLayout.getContext(), R.attr.os_comp_color_page_focus, R.color.os_comp_color_page_focus_hios) | (-16777216);
        View viewInflate = ((ViewStub) flipperLayout.findViewById(R.id.stubDots)).inflate();
        y45.h(viewInflate, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) viewInflate;
        RecyclerView.Adapter adapter = flipperLayout.getViewPager().getAdapter();
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            if (itemCount > 1) {
                viewGroup.setVisibility(0);
                int dimensionPixelOffset = viewGroup.getResources().getDimensionPixelOffset(R.dimen.os_spring_page_marker_radius) * 2;
                int dimensionPixelOffset2 = viewGroup.getResources().getDimensionPixelOffset(R.dimen.os_flipper_layout_circle_indicator_margin_lr);
                for (final int i = 0; i < itemCount; i++) {
                    ImageView imageView = new ImageView(viewGroup.getContext());
                    imageView.setBackground(new ColorDrawable(iM));
                    imageView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            ty3.d(flipperLayout, i, view);
                        }
                    });
                    if (flipperLayout.getIsCyclic() && (i == 0 || i == itemCount - 1)) {
                        imageView.setVisibility(8);
                    }
                    imageView.setClipToOutline(true);
                    imageView.setOutlineProvider(new a());
                    ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(dimensionPixelOffset, dimensionPixelOffset);
                    marginLayoutParams.setMarginStart(dimensionPixelOffset2);
                    marginLayoutParams.setMarginEnd(marginLayoutParams.getMarginStart());
                    zfb zfbVar = zfb.a;
                    viewGroup.addView(imageView, i, marginLayoutParams);
                }
            } else {
                viewGroup.setVisibility(8);
            }
        }
        return viewGroup;
    }

    public static final void d(FlipperLayout flipperLayout, int i, View view) {
        y45.j(flipperLayout, "$this_inflateLayoutDot");
        f(flipperLayout.getViewPager(), i, false, 2, null);
    }

    public static final void e(ViewPager2 viewPager2, int i, boolean z) {
        y45.j(viewPager2, "<this>");
        if (viewPager2.isFakeDragging()) {
            return;
        }
        viewPager2.setCurrentItem(i, z);
    }

    public static void f(ViewPager2 viewPager2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        e(viewPager2, i, z);
    }

    public static final void g(ViewGroup viewGroup, int i, float f, int i2, boolean z, int i3, boolean z2) {
        float f2;
        if (viewGroup == null) {
            return;
        }
        int iB = b(i, i2, z, i3);
        int i4 = z2 ? i - 1 : i + 1;
        if (z && i2 > 1) {
            if (i4 < 0) {
                i4 = i2 - 1;
            } else if (i4 >= i2) {
                i4 = 0;
            }
        }
        int iB2 = b(i4, i2, z, i3);
        int childCount = viewGroup.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = viewGroup.getChildAt(i5);
            if (i5 == iB) {
                f2 = 0.65f - (0.53f * f);
            } else {
                f2 = 0.12f;
                if (i5 == iB2) {
                    f2 = 0.12f + (0.53f * f);
                }
            }
            childAt.setAlpha(f2);
        }
    }

    public static final void h(ViewGroup viewGroup, int i, int i2, boolean z, int i3) {
        if (viewGroup == null) {
            return;
        }
        int iB = b(i, i2, z, i3);
        int childCount = viewGroup.getChildCount();
        int i4 = 0;
        while (i4 < childCount) {
            viewGroup.getChildAt(i4).setAlpha(i4 == iB ? 0.65f : 0.12f);
            i4++;
        }
    }
}
