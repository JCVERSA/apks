package com.transsion.publish.adapter;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class w extends RecyclerView.a0 {

    private TextView f48342a;

    private View f48343b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.tvGroup);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48342a = (TextView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.iv_publish_group_delete);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48343b = viewFindViewById2;
    }

    public final View f() {
        return this.f48343b;
    }

    public final TextView g() {
        return this.f48342a;
    }
}
