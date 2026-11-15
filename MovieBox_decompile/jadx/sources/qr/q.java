package qr;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.noober.background.view.BLTextView;
import com.transsion.shorttv.R$id;

public final class q implements f4.a {

    private final LinearLayoutCompat f70136a;

    public final AppCompatImageView f70137b;

    public final LinearLayoutCompat f70138c;

    public final TextView f70139d;

    public final BLTextView f70140e;

    private q(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat2, TextView textView, BLTextView bLTextView) {
        this.f70136a = linearLayoutCompat;
        this.f70137b = appCompatImageView;
        this.f70138c = linearLayoutCompat2;
        this.f70139d = textView;
        this.f70140e = bLTextView;
    }

    public static q a(View view) {
        int i10 = R$id.ivDefaultImage;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
            i10 = R$id.tvDesc;
            TextView textView = (TextView) f4.b.a(view, i10);
            if (textView != null) {
                i10 = R$id.tv_retry;
                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                if (bLTextView != null) {
                    return new q(linearLayoutCompat, appCompatImageView, linearLayoutCompat, textView, bLTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f70136a;
    }
}
