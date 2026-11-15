package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.mobile.ads.impl.iy;
import defpackage.y45;

public abstract class ky<T extends iy> extends RecyclerView.ViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ky(View view) {
        super(view);
        y45.j(view, "itemView");
    }

    public abstract void a(T t);
}
