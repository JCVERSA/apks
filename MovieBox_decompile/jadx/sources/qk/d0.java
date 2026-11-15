package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class d0 implements f4.a {

    private final BLConstraintLayout f69712a;

    public final Group f69713b;

    public final ShapeableImageView f69714c;

    public final ShapeableImageView f69715d;

    public final AppCompatImageView f69716e;

    public final TnTextView f69717f;

    public final TnTextView f69718g;

    public final View f69719h;

    private d0(BLConstraintLayout bLConstraintLayout, Group group, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, TnTextView tnTextView, TnTextView tnTextView2, View view) {
        this.f69712a = bLConstraintLayout;
        this.f69713b = group;
        this.f69714c = shapeableImageView;
        this.f69715d = shapeableImageView2;
        this.f69716e = appCompatImageView;
        this.f69717f = tnTextView;
        this.f69718g = tnTextView2;
        this.f69719h = view;
    }

    public static d0 a(View view) {
        View viewA;
        int i10 = R$id.group_room_info;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.ivCover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.iv_room_cover;
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView2 != null) {
                    i10 = R$id.ivVideoPlay;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.tv_room_title;
                        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                        if (tnTextView != null) {
                            i10 = R$id.tvTitle;
                            TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                            if (tnTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.v_room_info))) != null) {
                                return new d0((BLConstraintLayout) view, group, shapeableImageView, shapeableImageView2, appCompatImageView, tnTextView, tnTextView2, viewA);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_adapter_room_entrance_post, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f69712a;
    }
}
