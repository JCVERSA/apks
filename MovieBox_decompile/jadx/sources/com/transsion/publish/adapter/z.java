package com.transsion.publish.adapter;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class z extends RecyclerView.a0 {

    private TextView f48349a;

    private View f48350b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.tvLocation);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48349a = (TextView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.iv_publish_location_delete);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48350b = viewFindViewById2;
    }

    public final View f() {
        return this.f48350b;
    }

    public final TextView g() {
        return this.f48349a;
    }
}
