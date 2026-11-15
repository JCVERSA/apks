package com.transsion.publish.adapter;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class b extends RecyclerView.a0 {

    private TextView f48224a;

    private TextView f48225b;

    private FrameLayout f48226c;

    private ImageView f48227d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48224a = (TextView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_desc);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48225b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.rl_close);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f48226c = (FrameLayout) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.iv_play);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f48227d = (ImageView) viewFindViewById4;
    }

    public final ImageView f() {
        return this.f48227d;
    }

    public final FrameLayout g() {
        return this.f48226c;
    }

    public final TextView h() {
        return this.f48225b;
    }

    public final TextView i() {
        return this.f48224a;
    }
}
