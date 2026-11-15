package bx;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.downloader.R$id;

public final class f1 implements f4.a {

    private final View f16040a;

    public final AppCompatImageView f16041b;

    public final ImageView f16042c;

    public final AppCompatTextView f16043d;

    public final View f16044e;

    private f1(View view, AppCompatImageView appCompatImageView, ImageView imageView, AppCompatTextView appCompatTextView, View view2) {
        this.f16040a = view;
        this.f16041b = appCompatImageView;
        this.f16042c = imageView;
        this.f16043d = appCompatTextView;
        this.f16044e = view2;
    }

    public static f1 a(View view) {
        View viewA;
        int i10 = R$id.iv_download_fail;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_download_icon;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.tv_download_status;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.v_download_tips))) != null) {
                    return new f1(view, appCompatImageView, imageView, appCompatTextView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16040a;
    }
}
