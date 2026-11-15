package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class i1 implements f4.a {

    private final LinearLayout f16090a;

    public final AppCompatImageView f16091b;

    public final LinearLayout f16092c;

    public final TextView f16093d;

    private i1(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, TextView textView) {
        this.f16090a = linearLayout;
        this.f16091b = appCompatImageView;
        this.f16092c = linearLayout2;
        this.f16093d = textView;
    }

    public static i1 a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i11 = R$id.tvTip;
            TextView textView = (TextView) f4.b.a(view, i11);
            if (textView != null) {
                return new i1(linearLayout, appCompatImageView, linearLayout, textView);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_lottery_tip_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f16090a;
    }
}
