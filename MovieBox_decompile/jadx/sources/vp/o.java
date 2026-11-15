package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

public final class o implements f4.a {

    private final ConstraintLayout f73794a;

    public final AppCompatTextView f73795b;

    public final NativeWrapperAdView f73796c;

    public final NativeWrapperAdView f73797d;

    public final NativeWrapperAdView f73798e;

    private o(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, NativeWrapperAdView nativeWrapperAdView, NativeWrapperAdView nativeWrapperAdView2, NativeWrapperAdView nativeWrapperAdView3) {
        this.f73794a = constraintLayout;
        this.f73795b = appCompatTextView;
        this.f73796c = nativeWrapperAdView;
        this.f73797d = nativeWrapperAdView2;
        this.f73798e = nativeWrapperAdView3;
    }

    public static o a(View view) {
        int i10 = R$id.ad_group_title;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.native_ad_view_1;
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
            if (nativeWrapperAdView != null) {
                i10 = R$id.native_ad_view_2;
                NativeWrapperAdView nativeWrapperAdView2 = (NativeWrapperAdView) f4.b.a(view, i10);
                if (nativeWrapperAdView2 != null) {
                    i10 = R$id.native_ad_view_3;
                    NativeWrapperAdView nativeWrapperAdView3 = (NativeWrapperAdView) f4.b.a(view, i10);
                    if (nativeWrapperAdView3 != null) {
                        return new o((ConstraintLayout) view, appCompatTextView, nativeWrapperAdView, nativeWrapperAdView2, nativeWrapperAdView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.search_hot_hi_native_group_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73794a;
    }
}
