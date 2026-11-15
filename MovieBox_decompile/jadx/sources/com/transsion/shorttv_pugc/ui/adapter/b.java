package com.transsion.shorttv_pugc.ui.adapter;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import qr.e0;

public final class b extends RecyclerView.a0 {

    private final e0 f52005a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(View view) {
        super(view);
        Intrinsics.h(view, "view");
        e0 e0VarA = e0.a(view);
        Intrinsics.g(e0VarA, "bind(...)");
        this.f52005a = e0VarA;
    }

    public final e0 f() {
        return this.f52005a;
    }
}
