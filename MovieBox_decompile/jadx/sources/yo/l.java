package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.task.ad.StageTaskProgressLayout;

public final class l implements f4.a {

    private final ConstraintLayout f76365a;

    public final FrameLayout f76366b;

    public final View f76367c;

    public final AppCompatTextView f76368d;

    public final StageTaskProgressLayout f76369e;

    private l(ConstraintLayout constraintLayout, FrameLayout frameLayout, View view, AppCompatTextView appCompatTextView, StageTaskProgressLayout stageTaskProgressLayout) {
        this.f76365a = constraintLayout;
        this.f76366b = frameLayout;
        this.f76367c = view;
        this.f76368d = appCompatTextView;
        this.f76369e = stageTaskProgressLayout;
    }

    public static l a(View view) {
        View viewA;
        int i10 = R$id.ad_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null && (viewA = f4.b.a(view, (i10 = R$id.ad_mask))) != null) {
            i10 = R$id.btn_action;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.double_progress;
                StageTaskProgressLayout stageTaskProgressLayout = (StageTaskProgressLayout) f4.b.a(view, i10);
                if (stageTaskProgressLayout != null) {
                    return new l((ConstraintLayout) view, frameLayout, viewA, appCompatTextView, stageTaskProgressLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.stage_task_view_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76365a;
    }
}
