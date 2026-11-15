package jt;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.subtitle.R$id;

public final class j implements f4.a {

    private final LinearLayoutCompat f63338a;

    public final EditText f63339b;

    public final AppCompatImageView f63340c;

    public final AppCompatImageView f63341d;

    public final AppCompatImageView f63342e;

    public final LinearLayoutCompat f63343f;

    private j(LinearLayoutCompat linearLayoutCompat, EditText editText, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayoutCompat linearLayoutCompat2) {
        this.f63338a = linearLayoutCompat;
        this.f63339b = editText;
        this.f63340c = appCompatImageView;
        this.f63341d = appCompatImageView2;
        this.f63342e = appCompatImageView3;
        this.f63343f = linearLayoutCompat2;
    }

    public static j a(View view) {
        int i10 = R$id.et_sync_adjust;
        EditText editText = (EditText) f4.b.a(view, i10);
        if (editText != null) {
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_sync_adjust_minus;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.iv_sync_adjust_plus;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView3 != null) {
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
                        return new j(linearLayoutCompat, editText, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayoutCompat);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f63338a;
    }
}
