package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class m0 extends RecyclerView.a0 {

    private ImageView f48314a;

    private View f48315b;

    private TextView f48316c;

    private TextView f48317d;

    private View f48318e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.sv_item_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48314a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.sv_item_layer);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48315b = viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.sv_item_duration);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f48316c = (TextView) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.tv_select);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f48317d = (TextView) viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.rl_select);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f48318e = viewFindViewById5;
    }

    public final ImageView f() {
        return this.f48314a;
    }

    public final View g() {
        return this.f48315b;
    }

    public final View h() {
        return this.f48318e;
    }

    public final TextView i() {
        return this.f48316c;
    }

    public final TextView j() {
        return this.f48317d;
    }
}
