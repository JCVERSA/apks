package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.prize.PrizeListView;
import com.transsion.rewardscenter.redeem.RedeemView;
import com.transsion.rewardscenter.view.PrizeFlowView;
import com.transsion.rewardscenter.view.RewardsCenterTaskView;

public final class d implements f4.a {

    private final ConstraintLayout f76299a;

    public final AppCompatImageView f76300b;

    public final AppCompatImageView f76301c;

    public final AppCompatImageView f76302d;

    public final h f76303e;

    public final PrizeFlowView f76304f;

    public final CardView f76305g;

    public final CardView f76306h;

    public final PrizeListView f76307i;

    public final ConstraintLayout f76308j;

    public final CardView f76309k;

    public final RedeemView f76310l;

    public final CardView f76311m;

    public final RewardsCenterTaskView f76312n;

    public final NestedScrollView f76313o;

    public final AppCompatTextView f76314p;

    public final ConstraintLayout f76315q;

    public final AppCompatTextView f76316r;

    private d(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, h hVar, PrizeFlowView prizeFlowView, CardView cardView, CardView cardView2, PrizeListView prizeListView, ConstraintLayout constraintLayout2, CardView cardView3, RedeemView redeemView, CardView cardView4, RewardsCenterTaskView rewardsCenterTaskView, NestedScrollView nestedScrollView, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout3, AppCompatTextView appCompatTextView2) {
        this.f76299a = constraintLayout;
        this.f76300b = appCompatImageView;
        this.f76301c = appCompatImageView2;
        this.f76302d = appCompatImageView3;
        this.f76303e = hVar;
        this.f76304f = prizeFlowView;
        this.f76305g = cardView;
        this.f76306h = cardView2;
        this.f76307i = prizeListView;
        this.f76308j = constraintLayout2;
        this.f76309k = cardView3;
        this.f76310l = redeemView;
        this.f76311m = cardView4;
        this.f76312n = rewardsCenterTaskView;
        this.f76313o = nestedScrollView;
        this.f76314p = appCompatTextView;
        this.f76315q = constraintLayout3;
        this.f76316r = appCompatTextView2;
    }

    public static d a(View view) {
        View viewA;
        int i10 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_banner;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.iv_prize_triangle;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null && (viewA = f4.b.a(view, (i10 = R$id.member_info))) != null) {
                    h hVarA = h.a(viewA);
                    i10 = R$id.prize_flow;
                    PrizeFlowView prizeFlowView = (PrizeFlowView) f4.b.a(view, i10);
                    if (prizeFlowView != null) {
                        i10 = R$id.rc_banner_card;
                        CardView cardView = (CardView) f4.b.a(view, i10);
                        if (cardView != null) {
                            i10 = R$id.rc_prize_card;
                            CardView cardView2 = (CardView) f4.b.a(view, i10);
                            if (cardView2 != null) {
                                i10 = R$id.rc_prize_list_view;
                                PrizeListView prizeListView = (PrizeListView) f4.b.a(view, i10);
                                if (prizeListView != null) {
                                    i10 = R$id.rc_prize_section;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                    if (constraintLayout != null) {
                                        i10 = R$id.rc_redeem_card;
                                        CardView cardView3 = (CardView) f4.b.a(view, i10);
                                        if (cardView3 != null) {
                                            i10 = R$id.rc_redeem_view;
                                            RedeemView redeemView = (RedeemView) f4.b.a(view, i10);
                                            if (redeemView != null) {
                                                i10 = R$id.rc_task_card;
                                                CardView cardView4 = (CardView) f4.b.a(view, i10);
                                                if (cardView4 != null) {
                                                    i10 = R$id.rc_task_view;
                                                    RewardsCenterTaskView rewardsCenterTaskView = (RewardsCenterTaskView) f4.b.a(view, i10);
                                                    if (rewardsCenterTaskView != null) {
                                                        i10 = R$id.scroll_view;
                                                        NestedScrollView nestedScrollView = (NestedScrollView) f4.b.a(view, i10);
                                                        if (nestedScrollView != null) {
                                                            i10 = R$id.title;
                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView != null) {
                                                                i10 = R$id.titleLayout;
                                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                                                if (constraintLayout2 != null) {
                                                                    i10 = R$id.tv_terms;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView2 != null) {
                                                                        return new d((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, hVarA, prizeFlowView, cardView, cardView2, prizeListView, constraintLayout, cardView3, redeemView, cardView4, rewardsCenterTaskView, nestedScrollView, appCompatTextView, constraintLayout2, appCompatTextView2);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_rewards_center, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76299a;
    }
}
