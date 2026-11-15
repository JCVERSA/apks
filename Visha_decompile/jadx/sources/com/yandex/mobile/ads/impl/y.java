package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.y;
import defpackage.e74;
import defpackage.y45;

public final class y extends ky<iy.c> {
    private final e74 a;
    private final TextView b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(e74 e74Var, View view) {
        super(view);
        y45.j(view, "itemView");
        y45.j(e74Var, "onButtonClick");
        this.a = e74Var;
        View viewFindViewById = view.findViewById(R.id.item_button);
        y45.i(viewFindViewById, "findViewById(...)");
        this.b = (TextView) viewFindViewById;
    }

    @Override
    public final void a(final iy.c cVar) {
        y45.j(cVar, "unit");
        this.b.setText(cVar.b());
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                y.a(this.b, cVar, view);
            }
        });
    }

    public static final void a(y yVar, iy.c cVar, View view) {
        y45.j(yVar, "this$0");
        y45.j(cVar, "$unit");
        yVar.a.invoke(cVar.a());
    }
}
