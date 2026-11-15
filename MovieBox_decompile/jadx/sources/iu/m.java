package iu;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;

public final class m implements f4.a {

    private final FrameLayout f62719a;

    public final AppCompatTextView f62720b;

    public final AppCompatTextView f62721c;

    public final BLTextView f62722d;

    private m(FrameLayout frameLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, BLTextView bLTextView) {
        this.f62719a = frameLayout;
        this.f62720b = appCompatTextView;
        this.f62721c = appCompatTextView2;
        this.f62722d = bLTextView;
    }

    public static m a(View view) {
        int i10 = R$id.tvUGCImmDownloading;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tvUGCImmDownloadingPercent;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.tvUGCImmDownloadingView;
                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                if (bLTextView != null) {
                    return new m((FrameLayout) view, appCompatTextView, appCompatTextView2, bLTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f62719a;
    }
}
