package bx;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.transsnet.downloader.R$id;

public final class l implements f4.a {

    private final FrameLayout f16146a;

    public final Group f16147b;

    public final Group f16148c;

    public final AppCompatImageView f16149d;

    public final TextView f16150e;

    public final TextView f16151f;

    public final TextView f16152g;

    public final TextView f16153h;

    public final TextView f16154i;

    public final View f16155j;

    public final View f16156k;

    public final View f16157l;

    public final View f16158m;

    private l(FrameLayout frameLayout, Group group, Group group2, AppCompatImageView appCompatImageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view, View view2, View view3, View view4) {
        this.f16146a = frameLayout;
        this.f16147b = group;
        this.f16148c = group2;
        this.f16149d = appCompatImageView;
        this.f16150e = textView;
        this.f16151f = textView2;
        this.f16152g = textView3;
        this.f16153h = textView4;
        this.f16154i = textView5;
        this.f16155j = view;
        this.f16156k = view2;
        this.f16157l = view3;
        this.f16158m = view4;
    }

    public static l a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i10 = R$id.groupBatteryPermission;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.groupPremium;
            Group group2 = (Group) f4.b.a(view, i10);
            if (group2 != null) {
                i10 = R$id.ivPremium;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.tvBatteryPermission;
                    TextView textView = (TextView) f4.b.a(view, i10);
                    if (textView != null) {
                        i10 = R$id.tvCancel;
                        TextView textView2 = (TextView) f4.b.a(view, i10);
                        if (textView2 != null) {
                            i10 = R$id.tvDownloadXXSizeAtOnce;
                            TextView textView3 = (TextView) f4.b.a(view, i10);
                            if (textView3 != null) {
                                i10 = R$id.tvPremium;
                                TextView textView4 = (TextView) f4.b.a(view, i10);
                                if (textView4 != null) {
                                    i10 = R$id.tvResumeAll;
                                    TextView textView5 = (TextView) f4.b.a(view, i10);
                                    if (textView5 != null && (viewA = f4.b.a(view, (i10 = R$id.viewBgPremium))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.viewLine1))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.viewLine2))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.viewLine3))) != null) {
                                        return new l((FrameLayout) view, group, group2, appCompatImageView, textView, textView2, textView3, textView4, textView5, viewA, viewA2, viewA3, viewA4);
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
    public FrameLayout getRoot() {
        return this.f16146a;
    }
}
