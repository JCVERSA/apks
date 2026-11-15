package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.AdTagView;
import com.transsion.ad.view.MemberTagView;

public final class f implements f4.a {

    private final ConstraintLayout f72098a;

    public final AdTagView f72099b;

    public final ConstraintLayout f72100c;

    public final ConstraintLayout f72101d;

    public final ConstraintLayout f72102e;

    public final FrameLayout f72103f;

    public final FrameLayout f72104g;

    public final AppCompatImageView f72105h;

    public final AppCompatImageView f72106i;

    public final LinearLayout f72107j;

    public final ShapeableImageView f72108k;

    public final AppCompatTextView f72109l;

    public final AppCompatTextView f72110m;

    public final AppCompatTextView f72111n;

    public final ShapeableImageView f72112o;

    public final AppCompatTextView f72113p;

    public final AppCompatTextView f72114q;

    public final AppCompatTextView f72115r;

    public final AppCompatTextView f72116s;

    public final LinearLayoutCompat f72117t;

    public final MemberTagView f72118u;

    public final View f72119v;

    private f(ConstraintLayout constraintLayout, AdTagView adTagView, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, ShapeableImageView shapeableImageView2, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, LinearLayoutCompat linearLayoutCompat, MemberTagView memberTagView, View view) {
        this.f72098a = constraintLayout;
        this.f72099b = adTagView;
        this.f72100c = constraintLayout2;
        this.f72101d = constraintLayout3;
        this.f72102e = constraintLayout4;
        this.f72103f = frameLayout;
        this.f72104g = frameLayout2;
        this.f72105h = appCompatImageView;
        this.f72106i = appCompatImageView2;
        this.f72107j = linearLayout;
        this.f72108k = shapeableImageView;
        this.f72109l = appCompatTextView;
        this.f72110m = appCompatTextView2;
        this.f72111n = appCompatTextView3;
        this.f72112o = shapeableImageView2;
        this.f72113p = appCompatTextView4;
        this.f72114q = appCompatTextView5;
        this.f72115r = appCompatTextView6;
        this.f72116s = appCompatTextView7;
        this.f72117t = linearLayoutCompat;
        this.f72118u = memberTagView;
        this.f72119v = view;
    }

    public static f a(View view) {
        View viewA;
        int i10 = R$id.adIcon;
        AdTagView adTagView = (AdTagView) f4.b.a(view, i10);
        if (adTagView != null) {
            i10 = R$id.clAdEndLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.clAdInfo;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout2 != null) {
                    ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
                    i10 = R$id.container;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null) {
                        i10 = R$id.flVolumeContainer;
                        FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout2 != null) {
                            i10 = R$id.ivAdClose;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView != null) {
                                i10 = R$id.ivClose;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView2 != null) {
                                    i10 = R$id.llMember;
                                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                    if (linearLayout != null) {
                                        i10 = R$id.tvAdAvatar;
                                        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                        if (shapeableImageView != null) {
                                            i10 = R$id.tvAdBtn;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView != null) {
                                                i10 = R$id.tvAdDesc;
                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView2 != null) {
                                                    i10 = R$id.tvAdTitle;
                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView3 != null) {
                                                        i10 = R$id.tvAvatar;
                                                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                                                        if (shapeableImageView2 != null) {
                                                            i10 = R$id.tvBtn;
                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView4 != null) {
                                                                i10 = R$id.tvCd;
                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView5 != null) {
                                                                    i10 = R$id.tvDesc;
                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView6 != null) {
                                                                        i10 = R$id.tvTitle;
                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView7 != null) {
                                                                            i10 = R$id.viewCd;
                                                                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                                                            if (linearLayoutCompat != null) {
                                                                                i10 = R$id.viewMember;
                                                                                MemberTagView memberTagView = (MemberTagView) f4.b.a(view, i10);
                                                                                if (memberTagView != null && (viewA = f4.b.a(view, (i10 = R$id.viewMemberLiner))) != null) {
                                                                                    return new f(constraintLayout3, adTagView, constraintLayout, constraintLayout2, constraintLayout3, frameLayout, frameLayout2, appCompatImageView, appCompatImageView2, linearLayout, shapeableImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, shapeableImageView2, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, linearLayoutCompat, memberTagView, viewA);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_video_unspecified_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f72098a;
    }
}
