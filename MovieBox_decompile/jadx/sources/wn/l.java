package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.view.PostDetailOperationView;

public final class l implements f4.a {

    private final ConstraintLayout f74437a;

    public final ConstraintLayout f74438b;

    public final Group f74439c;

    public final AppCompatTextView f74440d;

    public final AppCompatTextView f74441e;

    public final AppCompatImageView f74442f;

    public final AppCompatTextView f74443g;

    public final ShapeableImageView f74444h;

    public final AppCompatTextView f74445i;

    public final AppCompatImageView f74446j;

    public final PostDetailOperationView f74447k;

    public final AppCompatTextView f74448l;

    public final AppCompatTextView f74449m;

    private l(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, Group group, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView3, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView4, AppCompatImageView appCompatImageView2, PostDetailOperationView postDetailOperationView, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f74437a = constraintLayout;
        this.f74438b = constraintLayout2;
        this.f74439c = group;
        this.f74440d = appCompatTextView;
        this.f74441e = appCompatTextView2;
        this.f74442f = appCompatImageView;
        this.f74443g = appCompatTextView3;
        this.f74444h = shapeableImageView;
        this.f74445i = appCompatTextView4;
        this.f74446j = appCompatImageView2;
        this.f74447k = postDetailOperationView;
        this.f74448l = appCompatTextView5;
        this.f74449m = appCompatTextView6;
    }

    public static l a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.groupNoCommentYet;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.itemCommentContent;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.itemCommentData;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.itemCommentLikeIcon;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.itemCommentReply;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            i10 = R$id.itemCommentUserAvatar;
                            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                            if (shapeableImageView != null) {
                                i10 = R$id.itemCommentUserName;
                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView4 != null) {
                                    i10 = R$id.ivRight;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView2 != null) {
                                        i10 = R$id.postDetailOperationView;
                                        PostDetailOperationView postDetailOperationView = (PostDetailOperationView) f4.b.a(view, i10);
                                        if (postDetailOperationView != null) {
                                            i10 = R$id.tvComments;
                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView5 != null) {
                                                i10 = R$id.tvNoCommentYet;
                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView6 != null) {
                                                    return new l(constraintLayout, constraintLayout, group, appCompatTextView, appCompatTextView2, appCompatImageView, appCompatTextView3, shapeableImageView, appCompatTextView4, appCompatImageView2, postDetailOperationView, appCompatTextView5, appCompatTextView6);
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

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_post_detail_comments_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74437a;
    }
}
