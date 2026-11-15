package yo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;

public final class i implements f4.a {

    private final ConstraintLayout f76347a;

    public final AppCompatTextView f76348b;

    public final LinearLayoutCompat f76349c;

    private i(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat) {
        this.f76347a = constraintLayout;
        this.f76348b = appCompatTextView;
        this.f76349c = linearLayoutCompat;
    }

    public static i a(View view) {
        int i10 = R$id.rc_task_title;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.task_container;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                return new i((ConstraintLayout) view, appCompatTextView, linearLayoutCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.rewards_center_task_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76347a;
    }
}
