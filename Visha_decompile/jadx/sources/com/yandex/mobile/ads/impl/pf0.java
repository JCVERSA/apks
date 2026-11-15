package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class pf0 extends ky<iy.e> {
    private final TextView a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pf0(View view) {
        super(view);
        y45.j(view, "itemView");
        View viewFindViewById = view.findViewById(R.id.item_text);
        y45.i(viewFindViewById, "findViewById(...)");
        this.a = (TextView) viewFindViewById;
    }

    @Override
    public final void a(iy iyVar) {
        iy.e eVar = (iy.e) iyVar;
        y45.j(eVar, "unit");
        this.a.setText(eVar.a());
    }
}
