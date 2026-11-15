package gm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.widget.PointView;

public final class i implements f4.a {

    private final LinearLayoutCompat f61136a;

    public final ShapeableImageView f61137b;

    public final AppCompatImageView f61138c;

    public final AppCompatTextView f61139d;

    public final GradientBorderView f61140e;

    public final PointView f61141f;

    public final ConstraintLayout f61142g;

    public final AppCompatTextView f61143h;

    public final AppCompatTextView f61144i;

    public final LinearLayoutCompat f61145j;

    public final AppCompatTextView f61146k;

    public final GradientBorderView f61147l;

    public final AppCompatTextView f61148m;

    public final AppCompatImageView f61149n;

    public final PointView f61150o;

    public final AppCompatTextView f61151p;

    public final RecyclerView f61152q;

    public final RecyclerView f61153r;

    public final AppCompatTextView f61154s;

    public final RecyclerView f61155t;

    public final NestedScrollView f61156u;

    public final GradientBorderView f61157v;

    public final ConstraintLayout f61158w;

    public final ConstraintLayout f61159x;

    public final AppCompatTextView f61160y;

    public final AppCompatTextView f61161z;

    private i(LinearLayoutCompat linearLayoutCompat, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, GradientBorderView gradientBorderView, PointView pointView, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, LinearLayoutCompat linearLayoutCompat2, AppCompatTextView appCompatTextView4, GradientBorderView gradientBorderView2, AppCompatTextView appCompatTextView5, AppCompatImageView appCompatImageView2, PointView pointView2, AppCompatTextView appCompatTextView6, RecyclerView recyclerView, RecyclerView recyclerView2, AppCompatTextView appCompatTextView7, RecyclerView recyclerView3, NestedScrollView nestedScrollView, GradientBorderView gradientBorderView3, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9) {
        this.f61136a = linearLayoutCompat;
        this.f61137b = shapeableImageView;
        this.f61138c = appCompatImageView;
        this.f61139d = appCompatTextView;
        this.f61140e = gradientBorderView;
        this.f61141f = pointView;
        this.f61142g = constraintLayout;
        this.f61143h = appCompatTextView2;
        this.f61144i = appCompatTextView3;
        this.f61145j = linearLayoutCompat2;
        this.f61146k = appCompatTextView4;
        this.f61147l = gradientBorderView2;
        this.f61148m = appCompatTextView5;
        this.f61149n = appCompatImageView2;
        this.f61150o = pointView2;
        this.f61151p = appCompatTextView6;
        this.f61152q = recyclerView;
        this.f61153r = recyclerView2;
        this.f61154s = appCompatTextView7;
        this.f61155t = recyclerView3;
        this.f61156u = nestedScrollView;
        this.f61157v = gradientBorderView3;
        this.f61158w = constraintLayout2;
        this.f61159x = constraintLayout3;
        this.f61160y = appCompatTextView8;
        this.f61161z = appCompatTextView9;
    }

    public static i a(View view) {
        int i10 = R$id.iv_avatar_premium;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_detail_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.iv_free_container;
                    GradientBorderView gradientBorderView = (GradientBorderView) f4.b.a(view, i10);
                    if (gradientBorderView != null) {
                        i10 = R$id.iv_free_points;
                        PointView pointView = (PointView) f4.b.a(view, i10);
                        if (pointView != null) {
                            i10 = R$id.iv_info;
                            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                            if (constraintLayout != null) {
                                i10 = R$id.iv_name;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    i10 = R$id.iv_next_billing_date;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView3 != null) {
                                        i10 = R$id.iv_or;
                                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                        if (linearLayoutCompat != null) {
                                            i10 = R$id.iv_premium;
                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView4 != null) {
                                                i10 = R$id.iv_premium_container;
                                                GradientBorderView gradientBorderView2 = (GradientBorderView) f4.b.a(view, i10);
                                                if (gradientBorderView2 != null) {
                                                    i10 = R$id.iv_premium_info;
                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView5 != null) {
                                                        i10 = R$id.iv_premium_mask;
                                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                                        if (appCompatImageView2 != null) {
                                                            i10 = R$id.iv_premium_points;
                                                            PointView pointView2 = (PointView) f4.b.a(view, i10);
                                                            if (pointView2 != null) {
                                                                i10 = R$id.iv_premium_title;
                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView6 != null) {
                                                                    i10 = R$id.iv_redeem_list;
                                                                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                                    if (recyclerView != null) {
                                                                        i10 = R$id.iv_sku_list;
                                                                        RecyclerView recyclerView2 = (RecyclerView) f4.b.a(view, i10);
                                                                        if (recyclerView2 != null) {
                                                                            i10 = R$id.iv_subscription_desc;
                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                            if (appCompatTextView7 != null) {
                                                                                i10 = R$id.iv_task_list;
                                                                                RecyclerView recyclerView3 = (RecyclerView) f4.b.a(view, i10);
                                                                                if (recyclerView3 != null) {
                                                                                    i10 = R$id.scroll_view;
                                                                                    NestedScrollView nestedScrollView = (NestedScrollView) f4.b.a(view, i10);
                                                                                    if (nestedScrollView != null) {
                                                                                        i10 = R$id.task_container_bar;
                                                                                        GradientBorderView gradientBorderView3 = (GradientBorderView) f4.b.a(view, i10);
                                                                                        if (gradientBorderView3 != null) {
                                                                                            i10 = R$id.titleLayout;
                                                                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                                                                            if (constraintLayout2 != null) {
                                                                                                i10 = R$id.top_layout;
                                                                                                ConstraintLayout constraintLayout3 = (ConstraintLayout) f4.b.a(view, i10);
                                                                                                if (constraintLayout3 != null) {
                                                                                                    i10 = R$id.tv_promo_code;
                                                                                                    AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                    if (appCompatTextView8 != null) {
                                                                                                        i10 = R$id.tv_redeem;
                                                                                                        AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                        if (appCompatTextView9 != null) {
                                                                                                            return new i((LinearLayoutCompat) view, shapeableImageView, appCompatImageView, appCompatTextView, gradientBorderView, pointView, constraintLayout, appCompatTextView2, appCompatTextView3, linearLayoutCompat, appCompatTextView4, gradientBorderView2, appCompatTextView5, appCompatImageView2, pointView2, appCompatTextView6, recyclerView, recyclerView2, appCompatTextView7, recyclerView3, nestedScrollView, gradientBorderView3, constraintLayout2, constraintLayout3, appCompatTextView8, appCompatTextView9);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_member_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f61136a;
    }
}
