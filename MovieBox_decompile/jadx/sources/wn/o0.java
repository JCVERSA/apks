package wn;

import android.view.View;
import android.widget.ProgressBar;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLTextView;
import com.transsion.postdetail.R$id;

public final class o0 implements f4.a {

    private final View f74513a;

    public final BLImageView f74514b;

    public final ProgressBar f74515c;

    public final BLTextView f74516d;

    public final View f74517e;

    private o0(View view, BLImageView bLImageView, ProgressBar progressBar, BLTextView bLTextView, View view2) {
        this.f74513a = view;
        this.f74514b = bLImageView;
        this.f74515c = progressBar;
        this.f74516d = bLTextView;
        this.f74517e = view2;
    }

    public static o0 a(View view) {
        View viewA;
        int i10 = R$id.ivMute;
        BLImageView bLImageView = (BLImageView) f4.b.a(view, i10);
        if (bLImageView != null) {
            i10 = R$id.playerProgress;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.tvVideoDuration;
                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                if (bLTextView != null && (viewA = f4.b.a(view, (i10 = R$id.vMuteHotZone))) != null) {
                    return new o0(view, bLImageView, progressBar, bLTextView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f74513a;
    }
}
