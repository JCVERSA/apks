package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.task.ad.StageTaskProgressLayout;

public final class g implements f4.a {

    private final ConstraintLayout f76335a;

    public final AppCompatTextView f76336b;

    public final AppCompatTextView f76337c;

    public final StageTaskProgressLayout f76338d;

    public final CardView f76339e;

    private g(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, StageTaskProgressLayout stageTaskProgressLayout, CardView cardView) {
        this.f76335a = constraintLayout;
        this.f76336b = appCompatTextView;
        this.f76337c = appCompatTextView2;
        this.f76338d = stageTaskProgressLayout;
        this.f76339e = cardView;
    }

    public static g a(View view) {
        int i10 = R$id.btn_action;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.dada_title;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.double_progress;
                StageTaskProgressLayout stageTaskProgressLayout = (StageTaskProgressLayout) f4.b.a(view, i10);
                if (stageTaskProgressLayout != null) {
                    i10 = R$id.icon_cardview;
                    CardView cardView = (CardView) f4.b.a(view, i10);
                    if (cardView != null) {
                        return new g((ConstraintLayout) view, appCompatTextView, appCompatTextView2, stageTaskProgressLayout, cardView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.rc_dada_activate_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76335a;
    }
}
