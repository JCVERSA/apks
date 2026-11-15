package com.transsion.moviedetail.adapter;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetailapi.SubjectLayoutStyle;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.LayoutStyle;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

final class ForYouSubjectProvider extends BaseItemProvider {

    private final Subject f45217e;

    private final int f45218f;

    private final int f45219g;

    private final float f45220h;

    private final float f45221i;

    public ForYouSubjectProvider(Subject subject, int i10) {
        this.f45217e = subject;
        this.f45218f = i10;
        int iE = y.e();
        this.f45219g = iE;
        float fA = (iE - a0.a(((i10 - 1) * 8) + 24)) / i10;
        this.f45220h = fA;
        this.f45221i = (fA * 149.0f) / 107.0f;
    }

    @Override
    public int l() {
        return 1002;
    }

    @Override
    public int m() {
        LayoutStyle style;
        Subject subject = this.f45217e;
        if (subject != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.MUSIC.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                return R$layout.movie_detail_item_for_you_hor;
            }
        }
        Subject subject2 = this.f45217e;
        String shape = (subject2 == null || (style = subject2.getStyle()) == null) ? null : style.getShape();
        if (Intrinsics.c(shape, SubjectLayoutStyle.Horizontal.getValue())) {
            return R$layout.movie_detail_item_for_you_hor;
        }
        return Intrinsics.c(shape, SubjectLayoutStyle.Square.getValue()) ? R$layout.movie_detail_item_for_you_square : R$layout.movie_detail_item_for_you;
    }

    @Override
    public void b(BaseViewHolder holder, Subject item) {
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(false);
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ForYouSubjectProvider$convert$1$1(item, shapeableImageView, null), 3, null);
            } else {
                ni.f.a aVar = ni.f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                Cover cover = item.getCover();
                ni.f.b bVarC = bVarM.g(cover != null ? cover.getUrl() : null).m((int) this.f45220h).c((int) this.f45221i);
                Cover cover2 = item.getCover();
                if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarC.l(thumbnail).d(shapeableImageView);
            }
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getViewOrNull(R$id.tv_title);
        if (appCompatTextView != null) {
            appCompatTextView.setText(item.getTitle());
        }
        TextView textView = (TextView) holder.getView(R$id.tv_for_you_corner);
        textView.setText(item.getCorner());
        String corner = item.getCorner();
        textView.setVisibility(corner == null || corner.length() == 0 ? 8 : 0);
    }
}
