package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class x implements f4.a {

    private final ConstraintLayout f60462a;

    public final ConstraintLayout f60463b;

    public final ShapeableImageView f60464c;

    public final ShapeableImageView f60465d;

    public final AppCompatTextView f60466e;

    public final AppCompatTextView f60467f;

    public final AppCompatTextView f60468g;

    public final RoomJoinAnimationView f60469h;

    public final BLView f60470i;

    private x(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, RoomJoinAnimationView roomJoinAnimationView, BLView bLView) {
        this.f60462a = constraintLayout;
        this.f60463b = constraintLayout2;
        this.f60464c = shapeableImageView;
        this.f60465d = shapeableImageView2;
        this.f60466e = appCompatTextView;
        this.f60467f = appCompatTextView2;
        this.f60468g = appCompatTextView3;
        this.f60469h = roomJoinAnimationView;
        this.f60470i = bLView;
    }

    public static x a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.iv_cover_bg;
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView2 != null) {
                i10 = R$id.tv_members;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_tag;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            i10 = R$id.v_join;
                            RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) f4.b.a(view, i10);
                            if (roomJoinAnimationView != null) {
                                i10 = R$id.v_stroke;
                                BLView bLView = (BLView) f4.b.a(view, i10);
                                if (bLView != null) {
                                    return new x(constraintLayout, constraintLayout, shapeableImageView, shapeableImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, roomJoinAnimationView, bLView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static x c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_recommend_rooms, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60462a;
    }
}
