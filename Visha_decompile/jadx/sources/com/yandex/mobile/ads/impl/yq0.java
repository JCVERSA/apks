package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R;
import defpackage.j1a;
import defpackage.y45;

public final class yq0 extends ky<iy.f> {
    private final TextView a;
    private final TextView b;
    private final TextView c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yq0(View view) {
        super(view);
        y45.j(view, "itemView");
        View viewFindViewById = view.findViewById(R.id.item_title);
        y45.i(viewFindViewById, "findViewById(...)");
        this.a = (TextView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.item_subtitle);
        y45.i(viewFindViewById2, "findViewById(...)");
        this.b = (TextView) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.item_text);
        y45.i(viewFindViewById3, "findViewById(...)");
        this.c = (TextView) viewFindViewById3;
    }

    @Override
    public final void a(iy iyVar) {
        iy.f fVar = (iy.f) iyVar;
        y45.j(fVar, "unit");
        String strA = fVar.a();
        cy cyVarB = fVar.b();
        zw zwVarC = fVar.c();
        Context context = this.itemView.getContext();
        if (strA != null) {
            this.a.setVisibility(0);
            this.a.setText(strA);
        } else {
            this.a.setVisibility(8);
        }
        if (cyVarB == null || j1a.o0(cyVarB.d())) {
            this.b.setVisibility(8);
        } else {
            this.b.setVisibility(0);
            this.b.setText(cyVarB.d());
            y45.g(context);
            this.b.setTextColor(oh.a(context, cyVarB.a()));
            Integer numB = cyVarB.b();
            this.b.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, numB != null ? numB.intValue() : 0, 0);
        }
        if (zwVarC == null || j1a.o0(zwVarC.c())) {
            this.c.setVisibility(8);
            return;
        }
        this.c.setVisibility(0);
        this.c.setText(zwVarC.c());
        y45.g(context);
        this.c.setTextColor(oh.a(context, zwVarC.a()));
    }
}
