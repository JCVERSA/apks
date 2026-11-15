package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class l31 extends RecyclerView.ViewHolder {
    private final wg2<ImageView, xj0> a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l31(ImageView imageView, fk0 fk0Var) {
        super(imageView);
        y45.j(imageView, "imageView");
        y45.j(fk0Var, "imageViewAdapter");
        this.a = new wg2<>(fk0Var);
    }

    public final void a(xj0 xj0Var) {
        y45.j(xj0Var, ES6Iterator.VALUE_PROPERTY);
        this.a.b(xj0Var);
    }
}
