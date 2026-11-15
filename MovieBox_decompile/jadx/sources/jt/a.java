package jt;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.Space;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.subtitle.R$id;

public final class a implements f4.a {

    private final ConstraintLayout f63256a;

    public final FrameLayout f63257b;

    public final FrameLayout f63258c;

    public final FrameLayout f63259d;

    public final FrameLayout f63260e;

    public final Space f63261f;

    public final Space f63262g;

    public final View f63263h;

    private a(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, Space space, Space space2, View view) {
        this.f63256a = constraintLayout;
        this.f63257b = frameLayout;
        this.f63258c = frameLayout2;
        this.f63259d = frameLayout3;
        this.f63260e = frameLayout4;
        this.f63261f = space;
        this.f63262g = space2;
        this.f63263h = view;
    }

    public static a a(View view) {
        View viewA;
        int i10 = R$id.flSearchContainer;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.flStyleContainer;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null) {
                i10 = R$id.fl_subtitle_container;
                FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout3 != null) {
                    i10 = R$id.flSyncAdjustContainer;
                    FrameLayout frameLayout4 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout4 != null) {
                        i10 = R$id.guideline_bottom_controller;
                        Space space = (Space) f4.b.a(view, i10);
                        if (space != null) {
                            i10 = R$id.guideline_player;
                            Space space2 = (Space) f4.b.a(view, i10);
                            if (space2 != null && (viewA = f4.b.a(view, (i10 = R$id.v_bg_start))) != null) {
                                return new a((ConstraintLayout) view, frameLayout, frameLayout2, frameLayout3, frameLayout4, space, space2, viewA);
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
        return this.f63256a;
    }
}
