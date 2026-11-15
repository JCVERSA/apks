package ki;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.audio.R$id;

public final class d implements f4.a {

    private final ConstraintLayout f64010a;

    public final ConstraintLayout f64011b;

    public final ConstraintLayout f64012c;

    public final ConstraintLayout f64013d;

    public final AppCompatImageView f64014e;

    public final AppCompatImageView f64015f;

    public final AppCompatImageView f64016g;

    public final AppCompatImageView f64017h;

    public final AppCompatImageView f64018i;

    public final ProgressBar f64019j;

    public final TextView f64020k;

    public final TextView f64021l;

    private d(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, ProgressBar progressBar, TextView textView, TextView textView2) {
        this.f64010a = constraintLayout;
        this.f64011b = constraintLayout2;
        this.f64012c = constraintLayout3;
        this.f64013d = constraintLayout4;
        this.f64014e = appCompatImageView;
        this.f64015f = appCompatImageView2;
        this.f64016g = appCompatImageView3;
        this.f64017h = appCompatImageView4;
        this.f64018i = appCompatImageView5;
        this.f64019j = progressBar;
        this.f64020k = textView;
        this.f64021l = textView2;
    }

    public static d a(View view) {
        int i10 = R$id.clExpansion;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null) {
            i10 = R$id.clPackUp;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout2 != null) {
                ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
                i10 = R$id.iv_history;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.iv_next;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.ivPackUp;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView3 != null) {
                            i10 = R$id.iv_play;
                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView4 != null) {
                                i10 = R$id.iv_remove;
                                AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView5 != null) {
                                    i10 = R$id.pbSubject;
                                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                    if (progressBar != null) {
                                        i10 = R$id.tvAudioName;
                                        TextView textView = (TextView) f4.b.a(view, i10);
                                        if (textView != null) {
                                            i10 = R$id.tvAudioTime;
                                            TextView textView2 = (TextView) f4.b.a(view, i10);
                                            if (textView2 != null) {
                                                return new d(constraintLayout3, constraintLayout, constraintLayout2, constraintLayout3, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, progressBar, textView, textView2);
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

    @Override
    public ConstraintLayout getRoot() {
        return this.f64010a;
    }
}
