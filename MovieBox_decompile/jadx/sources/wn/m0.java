package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLTextView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

public final class m0 implements f4.a {

    private final View f74482a;

    public final BLTextView f74483b;

    public final Space f74484c;

    public final BLTextView f74485d;

    public final AppCompatTextView f74486e;

    private m0(View view, BLTextView bLTextView, Space space, BLTextView bLTextView2, AppCompatTextView appCompatTextView) {
        this.f74482a = view;
        this.f74483b = bLTextView;
        this.f74484c = space;
        this.f74485d = bLTextView2;
        this.f74486e = appCompatTextView;
    }

    public static m0 a(View view) {
        int i10 = R$id.go_to_setting;
        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
        if (bLTextView != null) {
            i10 = R$id.guideline;
            Space space = (Space) f4.b.a(view, i10);
            if (space != null) {
                i10 = R$id.retry;
                BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                if (bLTextView2 != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        return new m0(view, bLTextView, space, bLTextView2, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static m0 b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.view_imm_video_not_net, viewGroup);
        return a(viewGroup);
    }

    @Override
    public View getRoot() {
        return this.f74482a;
    }
}
