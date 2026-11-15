package xt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.view.TitleLayout;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

public final class d implements f4.a {

    private final LinearLayoutCompat f75444a;

    public final Group f75445b;

    public final Group f75446c;

    public final AppCompatImageView f75447d;

    public final ShapeableImageView f75448e;

    public final LinearLayout f75449f;

    public final ConstraintLayout f75450g;

    public final ProgressBar f75451h;

    public final SwitchButton f75452i;

    public final TitleLayout f75453j;

    public final AppCompatTextView f75454k;

    public final AppCompatTextView f75455l;

    public final AppCompatTextView f75456m;

    public final AppCompatTextView f75457n;

    public final AppCompatTextView f75458o;

    public final AppCompatTextView f75459p;

    public final AppCompatTextView f75460q;

    private d(LinearLayoutCompat linearLayoutCompat, Group group, Group group2, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, LinearLayout linearLayout, ConstraintLayout constraintLayout, ProgressBar progressBar, SwitchButton switchButton, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7) {
        this.f75444a = linearLayoutCompat;
        this.f75445b = group;
        this.f75446c = group2;
        this.f75447d = appCompatImageView;
        this.f75448e = shapeableImageView;
        this.f75449f = linearLayout;
        this.f75450g = constraintLayout;
        this.f75451h = progressBar;
        this.f75452i = switchButton;
        this.f75453j = titleLayout;
        this.f75454k = appCompatTextView;
        this.f75455l = appCompatTextView2;
        this.f75456m = appCompatTextView3;
        this.f75457n = appCompatTextView4;
        this.f75458o = appCompatTextView5;
        this.f75459p = appCompatTextView6;
        this.f75460q = appCompatTextView7;
    }

    public static d a(View view) {
        int i10 = R$id.groupErrorLayout;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.groupSuccessLayout;
            Group group2 = (Group) f4.b.a(view, i10);
            if (group2 != null) {
                i10 = R$id.ivError;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ivTransWifiQrCode;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                    if (shapeableImageView != null) {
                        i10 = R$id.llSend;
                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                        if (linearLayout != null) {
                            i10 = R$id.llUp;
                            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                            if (constraintLayout != null) {
                                i10 = R$id.progressBar;
                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                if (progressBar != null) {
                                    i10 = R$id.switchButton;
                                    SwitchButton switchButton = (SwitchButton) f4.b.a(view, i10);
                                    if (switchButton != null) {
                                        i10 = R$id.toolBar;
                                        TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                                        if (titleLayout != null) {
                                            i10 = R$id.tvErrorTip;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView != null) {
                                                i10 = R$id.tvRetry;
                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView2 != null) {
                                                    i10 = R$id.tvSend;
                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView3 != null) {
                                                        i10 = R$id.tvShareLink;
                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView4 != null) {
                                                            i10 = R$id.tvShareQrCode;
                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView5 != null) {
                                                                i10 = R$id.tvWaitingForReceiver;
                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView6 != null) {
                                                                    i10 = R$id.tvWifiSsid;
                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView7 != null) {
                                                                        return new d((LinearLayoutCompat) view, group, group2, appCompatImageView, shapeableImageView, linearLayout, constraintLayout, progressBar, switchButton, titleLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_wifi_create, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75444a;
    }
}
