package com.transsion.publish.adapter;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class n0 extends RecyclerView.a0 {

    private ShapeableImageView f48321a;

    private AppCompatTextView f48322b;

    private AppCompatTextView f48323c;

    private AppCompatImageView f48324d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.ivCover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48321a = (ShapeableImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tvSubjectTitle);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48322b = (AppCompatTextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.tvSubjectYear);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f48323c = (AppCompatTextView) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.iv_publish_subject_delete);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f48324d = (AppCompatImageView) viewFindViewById4;
    }

    public final ShapeableImageView f() {
        return this.f48321a;
    }

    public final AppCompatImageView g() {
        return this.f48324d;
    }

    public final AppCompatTextView h() {
        return this.f48323c;
    }

    public final AppCompatTextView i() {
        return this.f48322b;
    }
}
