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

public final class c implements f4.a {

    private final ConstraintLayout f72070a;

    public final AdTagView f72071b;

    public final RoundedCornerLayout f72072c;

    public final FrameLayout f72073d;

    public final FrameLayout f72074e;

    public final ConstraintLayout f72075f;

    public final AppCompatImageView f72076g;

    public final AppCompatTextView f72077h;

    public final LinearLayoutCompat f72078i;

    public final MemberTagView f72079j;

    private c(ConstraintLayout constraintLayout, AdTagView adTagView, RoundedCornerLayout roundedCornerLayout, FrameLayout frameLayout, FrameLayout frameLayout2, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat, MemberTagView memberTagView) {
        this.f72070a = constraintLayout;
        this.f72071b = adTagView;
        this.f72072c = roundedCornerLayout;
        this.f72073d = frameLayout;
        this.f72074e = frameLayout2;
        this.f72075f = constraintLayout2;
        this.f72076g = appCompatImageView;
        this.f72077h = appCompatTextView;
        this.f72078i = linearLayoutCompat;
        this.f72079j = memberTagView;
    }

    public static c a(View view) {
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
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i10 = R$id.tvAudio;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView != null) {
                            i10 = R$id.tvCd;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.viewCd;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                if (linearLayoutCompat != null) {
                                    i10 = R$id.viewMember;
                                    MemberTagView memberTagView = (MemberTagView) f4.b.a(view, i10);
                                    if (memberTagView != null) {
                                        return new c(constraintLayout, adTagView, roundedCornerLayout, frameLayout, frameLayout2, constraintLayout, appCompatImageView, appCompatTextView, linearLayoutCompat, memberTagView);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_interstitial_half_screen_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f72070a;
    }
}
