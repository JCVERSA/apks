package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.ka;
import defpackage.e74;
import defpackage.y45;

public final class ka extends ky<iy.a> {
    private final e74 a;
    private final TextView b;
    private final TextView c;
    private final TextView d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ka(e74 e74Var, View view) {
        super(view);
        y45.j(view, "itemView");
        y45.j(e74Var, "onAdUnitClick");
        this.a = e74Var;
        View viewFindViewById = view.findViewById(R.id.item_name);
        y45.i(viewFindViewById, "findViewById(...)");
        this.b = (TextView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.item_ad_unit_format);
        y45.i(viewFindViewById2, "findViewById(...)");
        this.c = (TextView) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.item_ad_unit_id);
        y45.i(viewFindViewById3, "findViewById(...)");
        this.d = (TextView) viewFindViewById3;
    }

    @Override
    public final void a(final iy.a aVar) {
        y45.j(aVar, "unit");
        this.b.setText(aVar.c());
        this.c.setText(aVar.a());
        this.d.setText(aVar.b());
        this.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ka.a(this.b, aVar, view);
            }
        });
    }

    public static final void a(ka kaVar, iy.a aVar, View view) {
        y45.j(kaVar, "this$0");
        y45.j(aVar, "$unit");
        kaVar.a.invoke(aVar.b());
    }
}
