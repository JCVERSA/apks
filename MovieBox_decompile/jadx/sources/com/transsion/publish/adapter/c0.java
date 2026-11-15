package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class c0 extends RecyclerView.a0 {

    private ImageView f48237a;

    private TextView f48238b;

    private TextView f48239c;

    private TextView f48240d;

    private ImageView f48241e;

    private View f48242f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.sv_item_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f48237a = (ImageView) viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f48238b = (TextView) viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.tv_desc);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f48239c = (TextView) viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.tv_select);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f48240d = (TextView) viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.iv_play);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f48241e = (ImageView) viewFindViewById5;
        View viewFindViewById6 = itemView.findViewById(R$id.view_masking);
        Intrinsics.g(viewFindViewById6, "findViewById(...)");
        this.f48242f = viewFindViewById6;
    }

    public final ImageView f() {
        return this.f48241e;
    }

    public final TextView g() {
        return this.f48239c;
    }

    public final TextView h() {
        return this.f48240d;
    }

    public final TextView i() {
        return this.f48238b;
    }

    public final View j() {
        return this.f48242f;
    }
}
