package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class y implements f4.a {

    private final ConstraintLayout f60471a;

    public final FrameLayout f60472b;

    public final Group f60473c;

    public final ShapeableImageView f60474d;

    public final b0 f60475e;

    public final c0 f60476f;

    public final AppCompatTextView f60477g;

    public final BLTextView f60478h;

    public final AppCompatTextView f60479i;

    public final AppCompatTextView f60480j;

    public final AppCompatTextView f60481k;

    public final RoomJoinAnimationView f60482l;

    public final View f60483m;

    public final BLView f60484n;

    private y(ConstraintLayout constraintLayout, FrameLayout frameLayout, Group group, ShapeableImageView shapeableImageView, b0 b0Var, c0 c0Var, AppCompatTextView appCompatTextView, BLTextView bLTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, RoomJoinAnimationView roomJoinAnimationView, View view, BLView bLView) {
        this.f60471a = constraintLayout;
        this.f60472b = frameLayout;
        this.f60473c = group;
        this.f60474d = shapeableImageView;
        this.f60475e = b0Var;
        this.f60476f = c0Var;
        this.f60477g = appCompatTextView;
        this.f60478h = bLTextView;
        this.f60479i = appCompatTextView2;
        this.f60480j = appCompatTextView3;
        this.f60481k = appCompatTextView4;
        this.f60482l = roomJoinAnimationView;
        this.f60483m = view;
        this.f60484n = bLView;
    }

    public static y a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.fl_new_post_cover;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.group_new_post;
            Group group = (Group) f4.b.a(view, i10);
            if (group != null) {
                i10 = R$id.iv_cover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null && (viewA = f4.b.a(view, (i10 = R$id.layout_new_post_image))) != null) {
                    b0 b0VarA = b0.a(viewA);
                    i10 = R$id.layout_new_post_video;
                    View viewA3 = f4.b.a(view, i10);
                    if (viewA3 != null) {
                        c0 c0VarA = c0.a(viewA3);
                        i10 = R$id.tv_member;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tv_new_count;
                            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                            if (bLTextView != null) {
                                i10 = R$id.tv_new_post_content;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    i10 = R$id.tv_tag;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView3 != null) {
                                        i10 = R$id.tv_title;
                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView4 != null) {
                                            i10 = R$id.v_join;
                                            RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) f4.b.a(view, i10);
                                            if (roomJoinAnimationView != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_line))) != null) {
                                                i10 = R$id.v_new_post_bg;
                                                BLView bLView = (BLView) f4.b.a(view, i10);
                                                if (bLView != null) {
                                                    return new y((ConstraintLayout) view, frameLayout, group, shapeableImageView, b0VarA, c0VarA, appCompatTextView, bLTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, roomJoinAnimationView, viewA2, bLView);
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

    public static y c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_room_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60471a;
    }
}
