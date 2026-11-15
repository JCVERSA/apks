package mn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsion.player.longvideo.R$id;

public final class e implements f4.a {

    private final ConstraintLayout f66533a;

    public final BLTextView f66534b;

    public final BLTextView f66535c;

    public final AppCompatTextView f66536d;

    public final AppCompatTextView f66537e;

    private e(ConstraintLayout constraintLayout, BLTextView bLTextView, BLTextView bLTextView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f66533a = constraintLayout;
        this.f66534b = bLTextView;
        this.f66535c = bLTextView2;
        this.f66536d = appCompatTextView;
        this.f66537e = appCompatTextView2;
    }

    public static e a(View view) {
        int i10 = R$id.longVdTvOperator;
        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
        if (bLTextView != null) {
            i10 = R$id.longVdTvPlay;
            BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
            if (bLTextView2 != null) {
                i10 = R$id.longVodTvTips;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.longVodTvTitle;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new e((ConstraintLayout) view, bLTextView, bLTextView2, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66533a;
    }
}
