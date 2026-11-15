package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.ma;
import defpackage.c74;
import defpackage.y45;

public final class ma extends ky<iy.b> {
    private final c74 a;
    private final TextView b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ma(View view, c74 c74Var) {
        super(view);
        y45.j(view, "itemView");
        y45.j(c74Var, "onAdUnitsClick");
        this.a = c74Var;
        View viewFindViewById = view.findViewById(R.id.item_text);
        y45.i(viewFindViewById, "findViewById(...)");
        this.b = (TextView) viewFindViewById;
    }

    @Override
    public final void a(iy.b bVar) {
        y45.j(bVar, "unit");
        this.b.setText(this.itemView.getContext().getString(R.string.ad_units));
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ma.a(this.b, view);
            }
        });
    }

    public static final void a(ma maVar, View view) {
        y45.j(maVar, "this$0");
        maVar.a.invoke();
    }
}
