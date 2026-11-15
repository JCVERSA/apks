package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class y extends RecyclerView.a0 {

    private ImageView f48344a;

    private TextView f48345b;

    private View f48346c;

    private View f48347d;

    private View f48348e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.iv_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48344a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48345b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.tv_desc);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f48346c = viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.rl_close);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f48347d = viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.layout);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f48348e = viewFindViewById5;
    }

    public final View f() {
        return this.f48347d;
    }

    public final TextView g() {
        return this.f48345b;
    }
}
