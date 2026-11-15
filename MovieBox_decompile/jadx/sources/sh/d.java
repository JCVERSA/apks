package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.AdTagView;
import com.transsion.ad.view.MemberTagView;
import com.transsion.ad.view.RoundedCornerLayout;

public final class d implements f4.a {

    private final ConstraintLayout f72080a;

    public final AdTagView f72081b;

    public final RoundedCornerLayout f72082c;

    public final FrameLayout f72083d;

    public final FrameLayout f72084e;

    public final AppCompatTextView f72085f;

    public final ConstraintLayout f72086g;

    public final AppCompatImageView f72087h;

    public final AppCompatTextView f72088i;

    public final LinearLayoutCompat f72089j;

    public final MemberTagView f72090k;

    private d(ConstraintLayout constraintLayout, AdTagView adTagView, RoundedCornerLayout roundedCornerLayout, FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView2, LinearLayoutCompat linearLayoutCompat, MemberTagView memberTagView) {
        this.f72080a = constraintLayout;
        this.f72081b = adTagView;
        this.f72082c = roundedCornerLayout;
        this.f72083d = frameLayout;
        this.f72084e = frameLayout2;
        this.f72085f = appCompatTextView;
        this.f72086g = constraintLayout2;
        this.f72087h = appCompatImageView;
        this.f72088i = appCompatTextView2;
        this.f72089j = linearLayoutCompat;
        this.f72090k = memberTagView;
    }

    public static d a(View view) {
        int i10 = R$id.adIcon;
        AdTagView adTagView = (AdTagView) f4.b.a(view, i10);
        if (adTagView != null) {
            i10 = R$id.container;
            RoundedCornerLayout roundedCornerLayout = (RoundedCornerLayout) f4.b.a(view, i10);
            if (roundedCornerLayout != null) {
                i10 = R$id.flCloseContainer;
                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout != null) {
                    i10 = R$id.flVolumeContainer;
                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R$id.learn_more;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            i10 = R$id.tvAudio;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView != null) {
                                i10 = R$id.tvCd;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    i10 = R$id.viewCd;
                                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                    if (linearLayoutCompat != null) {
                                        i10 = R$id.viewMember;
                                        MemberTagView memberTagView = (MemberTagView) f4.b.a(view, i10);
                                        if (memberTagView != null) {
                                            return new d(constraintLayout, adTagView, roundedCornerLayout, frameLayout, frameLayout2, appCompatTextView, constraintLayout, appCompatImageView, appCompatTextView2, linearLayoutCompat, memberTagView);
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
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_interstitial_land_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f72080a;
    }
}
