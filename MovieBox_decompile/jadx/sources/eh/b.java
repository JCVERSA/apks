package eh;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;

public final class b implements f4.a {

    private final LinearLayoutCompat f59674a;

    public final AppCompatImageView f59675b;

    public final TitleLayout f59676c;

    public final LinearLayoutCompat f59677d;

    public final TextView f59678e;

    public final TextView f59679f;

    private b(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, TitleLayout titleLayout, LinearLayoutCompat linearLayoutCompat2, TextView textView, TextView textView2) {
        this.f59674a = linearLayoutCompat;
        this.f59675b = appCompatImageView;
        this.f59676c = titleLayout;
        this.f59677d = linearLayoutCompat2;
        this.f59678e = textView;
        this.f59679f = textView2;
    }

    public static b a(View view) {
        int i10 = R$id.ivDefaultImage;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.llTitle;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
                i10 = R$id.tvDesc;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.tv_retry;
                    TextView textView2 = (TextView) f4.b.a(view, i10);
                    if (textView2 != null) {
                        return new b(linearLayoutCompat, appCompatImageView, titleLayout, linearLayoutCompat, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f59674a;
    }
}
