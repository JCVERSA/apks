package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLImageView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

public final class k implements f4.a {

    private final ConstraintLayout f63344a;

    public final AppCompatEditText f63345b;

    public final BLImageView f63346c;

    public final BLImageView f63347d;

    public final ConstraintLayout f63348e;

    public final AppCompatTextView f63349f;

    private k(ConstraintLayout constraintLayout, AppCompatEditText appCompatEditText, BLImageView bLImageView, BLImageView bLImageView2, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView) {
        this.f63344a = constraintLayout;
        this.f63345b = appCompatEditText;
        this.f63346c = bLImageView;
        this.f63347d = bLImageView2;
        this.f63348e = constraintLayout2;
        this.f63349f = appCompatTextView;
    }

    public static k a(View view) {
        int i10 = R$id.et_sync_adjust;
        AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
        if (appCompatEditText != null) {
            i10 = R$id.iv_sync_adjust_minus;
            BLImageView bLImageView = (BLImageView) f4.b.a(view, i10);
            if (bLImageView != null) {
                i10 = R$id.iv_sync_adjust_plus;
                BLImageView bLImageView2 = (BLImageView) f4.b.a(view, i10);
                if (bLImageView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i10 = R$id.tvTitle;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        return new k(constraintLayout, appCompatEditText, bLImageView, bLImageView2, constraintLayout, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_subtitle_sync_adjust_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63344a;
    }
}
