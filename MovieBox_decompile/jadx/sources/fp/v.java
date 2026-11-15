package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class v implements f4.a {

    private final ConstraintLayout f60450a;

    public final ConstraintLayout f60451b;

    public final ShapeableImageView f60452c;

    public final ShapeableImageView f60453d;

    public final AppCompatTextView f60454e;

    public final AppCompatTextView f60455f;

    public final AppCompatTextView f60456g;

    public final RoomJoinAnimationView f60457h;

    private v(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, RoomJoinAnimationView roomJoinAnimationView) {
        this.f60450a = constraintLayout;
        this.f60451b = constraintLayout2;
        this.f60452c = shapeableImageView;
        this.f60453d = shapeableImageView2;
        this.f60454e = appCompatTextView;
        this.f60455f = appCompatTextView2;
        this.f60456g = appCompatTextView3;
        this.f60457h = roomJoinAnimationView;
    }

    public static v a(View view) {
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
                                return new v(constraintLayout, constraintLayout, shapeableImageView, shapeableImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, roomJoinAnimationView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static v c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_community_rooms, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60450a;
    }
}
