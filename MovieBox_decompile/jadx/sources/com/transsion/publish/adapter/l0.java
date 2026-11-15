package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class l0 extends RecyclerView.a0 {

    private ImageView f48309a;

    private View f48310b;

    private View f48311c;

    private TextView f48312d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(View view) {
        super(view);
        Intrinsics.e(view);
        this.f48309a = (ImageView) view.findViewById(R$id.iv_photo);
        this.f48310b = view.findViewById(R$id.iv_clear);
        this.f48311c = view.findViewById(R$id.rl_add);
        this.f48312d = (TextView) view.findViewById(R$id.tv_number);
    }

    public final View f() {
        return this.f48311c;
    }

    public final View g() {
        return this.f48310b;
    }

    public final ImageView h() {
        return this.f48309a;
    }

    public final TextView i() {
        return this.f48312d;
    }
}
