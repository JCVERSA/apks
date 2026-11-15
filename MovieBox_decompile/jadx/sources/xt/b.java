package xt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.view.TitleLayout;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class b implements f4.a {

    private final ConstraintLayout f75427a;

    public final LinearLayout f75428b;

    public final CoordinatorLayout f75429c;

    public final LinearLayout f75430d;

    public final FrameLayout f75431e;

    public final MagicIndicator f75432f;

    public final TextView f75433g;

    public final TitleLayout f75434h;

    public final TextView f75435i;

    public final TextView f75436j;

    public final AppCompatImageView f75437k;

    public final ImageView f75438l;

    public final ViewPager2 f75439m;

    private b(ConstraintLayout constraintLayout, LinearLayout linearLayout, CoordinatorLayout coordinatorLayout, LinearLayout linearLayout2, FrameLayout frameLayout, MagicIndicator magicIndicator, TextView textView, TitleLayout titleLayout, TextView textView2, TextView textView3, AppCompatImageView appCompatImageView, ImageView imageView, ViewPager2 viewPager2) {
        this.f75427a = constraintLayout;
        this.f75428b = linearLayout;
        this.f75429c = coordinatorLayout;
        this.f75430d = linearLayout2;
        this.f75431e = frameLayout;
        this.f75432f = magicIndicator;
        this.f75433g = textView;
        this.f75434h = titleLayout;
        this.f75435i = textView2;
        this.f75436j = textView3;
        this.f75437k = appCompatImageView;
        this.f75438l = imageView;
        this.f75439m = viewPager2;
    }

    public static b a(View view) {
        int i10 = R$id.bottom_layout;
        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
        if (linearLayout != null) {
            i10 = R$id.cl_root;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
            if (coordinatorLayout != null) {
                i10 = R$id.connect_info_layout;
                LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                if (linearLayout2 != null) {
                    i10 = R$id.fl_select_page_container;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null) {
                        i10 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                        if (magicIndicator != null) {
                            i10 = R$id.sendMore;
                            TextView textView = (TextView) f4.b.a(view, i10);
                            if (textView != null) {
                                i10 = R$id.tool_bar;
                                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                                if (titleLayout != null) {
                                    i10 = R$id.transfer_connect_state;
                                    TextView textView2 = (TextView) f4.b.a(view, i10);
                                    if (textView2 != null) {
                                        i10 = R$id.transfer_connected_devicename;
                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                        if (textView3 != null) {
                                            i10 = R$id.transfer_connected_state_image;
                                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView != null) {
                                                i10 = R$id.v_top_bg;
                                                ImageView imageView = (ImageView) f4.b.a(view, i10);
                                                if (imageView != null) {
                                                    i10 = R$id.view_pager;
                                                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                    if (viewPager2 != null) {
                                                        return new b((ConstraintLayout) view, linearLayout, coordinatorLayout, linearLayout2, frameLayout, magicIndicator, textView, titleLayout, textView2, textView3, appCompatImageView, imageView, viewPager2);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_transfer_status, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75427a;
    }
}
