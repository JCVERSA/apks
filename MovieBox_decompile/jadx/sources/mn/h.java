package mn;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.player.longvideo.R$id;

public final class h implements f4.a {

    private final LinearLayoutCompat f66555a;

    public final EditText f66556b;

    public final AppCompatImageView f66557c;

    public final AppCompatImageView f66558d;

    public final AppCompatImageView f66559e;

    public final LinearLayoutCompat f66560f;

    public final LinearLayoutCompat f66561g;

    private h(LinearLayoutCompat linearLayoutCompat, EditText editText, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayoutCompat linearLayoutCompat2, LinearLayoutCompat linearLayoutCompat3) {
        this.f66555a = linearLayoutCompat;
        this.f66556b = editText;
        this.f66557c = appCompatImageView;
        this.f66558d = appCompatImageView2;
        this.f66559e = appCompatImageView3;
        this.f66560f = linearLayoutCompat2;
        this.f66561g = linearLayoutCompat3;
    }

    public static h a(View view) {
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
                        i10 = R$id.llSyncAdjust;
                        LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) f4.b.a(view, i10);
                        if (linearLayoutCompat2 != null) {
                            return new h(linearLayoutCompat, editText, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayoutCompat, linearLayoutCompat2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f66555a;
    }
}
