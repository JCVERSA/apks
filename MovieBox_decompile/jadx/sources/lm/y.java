package lm;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.moviedetail.R$id;

public final class y implements f4.a {

    private final LinearLayoutCompat f65949a;

    public final AppCompatImageView f65950b;

    public final TextView f65951c;

    public final TextView f65952d;

    private y(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, TextView textView, TextView textView2) {
        this.f65949a = linearLayoutCompat;
        this.f65950b = appCompatImageView;
        this.f65951c = textView;
        this.f65952d = textView2;
    }

    public static y a(View view) {
        int i10 = R$id.ivDefaultImage;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.tvDesc;
            TextView textView = (TextView) f4.b.a(view, i10);
            if (textView != null) {
                i10 = R$id.tv_retry;
                TextView textView2 = (TextView) f4.b.a(view, i10);
                if (textView2 != null) {
                    return new y((LinearLayoutCompat) view, appCompatImageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f65949a;
    }
}
