package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class f0 extends RecyclerView.a0 {

    private ImageView f48266a;

    private TextView f48267b;

    private View f48268c;

    private View f48269d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.sv_item_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48266a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_select);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48267b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.view_masking);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f48268c = viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.rl_select);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f48269d = viewFindViewById4;
    }

    public final ImageView f() {
        return this.f48266a;
    }

    public final View g() {
        return this.f48269d;
    }

    public final TextView h() {
        return this.f48267b;
    }

    public final View i() {
        return this.f48268c;
    }
}
