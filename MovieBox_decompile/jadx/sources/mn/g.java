package mn;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.noober.background.view.BLTextView;
import com.transsion.player.longvideo.R$id;

public final class g implements f4.a {

    private final ConstraintLayout f66545a;

    public final Group f66546b;

    public final Group f66547c;

    public final BLTextView f66548d;

    public final AppCompatTextView f66549e;

    public final AppCompatTextView f66550f;

    public final AppCompatTextView f66551g;

    public final BLTextView f66552h;

    public final LinearLayout f66553i;

    public final ConstraintLayout f66554j;

    private g(ConstraintLayout constraintLayout, Group group, Group group2, BLTextView bLTextView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView2, LinearLayout linearLayout, ConstraintLayout constraintLayout2) {
        this.f66545a = constraintLayout;
        this.f66546b = group;
        this.f66547c = group2;
        this.f66548d = bLTextView;
        this.f66549e = appCompatTextView;
        this.f66550f = appCompatTextView2;
        this.f66551g = appCompatTextView3;
        this.f66552h = bLTextView2;
        this.f66553i = linearLayout;
        this.f66554j = constraintLayout2;
    }

    public static g a(View view) {
        int i10 = R$id.group1;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.group2;
            Group group2 = (Group) f4.b.a(view, i10);
            if (group2 != null) {
                i10 = R$id.interceptPremium;
                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                if (bLTextView != null) {
                    i10 = R$id.interceptTip;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.interceptTitle;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.interceptTitleCam;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView3 != null) {
                                i10 = R$id.interceptWatchAd;
                                BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                                if (bLTextView2 != null) {
                                    i10 = R$id.llBtn;
                                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                    if (linearLayout != null) {
                                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                        return new g(constraintLayout, group, group2, bLTextView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView2, linearLayout, constraintLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66545a;
    }
}
