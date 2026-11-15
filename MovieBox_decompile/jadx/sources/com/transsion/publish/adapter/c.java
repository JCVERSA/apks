package com.transsion.publish.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class c extends RecyclerView.a0 {

    private ImageView f48233a;

    private View f48234b;

    private View f48235c;

    private TextView f48236d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(View view) {
        super(view);
        Intrinsics.e(view);
        this.f48233a = (ImageView) view.findViewById(R$id.iv_photo);
        this.f48234b = view.findViewById(R$id.iv_clear);
        this.f48235c = view.findViewById(R$id.rl_add);
        this.f48236d = (TextView) view.findViewById(R$id.tv_number);
    }

    public final View f() {
        return this.f48235c;
    }

    public final View g() {
        return this.f48234b;
    }

    public final ImageView h() {
        return this.f48233a;
    }

    public final TextView i() {
        return this.f48236d;
    }
}
