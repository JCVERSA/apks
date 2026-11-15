package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.yz0;
import defpackage.e74;
import defpackage.j1a;
import defpackage.jn5;
import defpackage.y45;

public final class yz0 extends ky<iy.g> {
    private final lx a;
    private final e74 b;
    private final e74 c;
    private jn5 d;
    private final LinearLayout e;
    private final ImageView f;
    private final TextView g;
    private final ImageView h;
    private final TextView i;
    private final TextView j;
    private final ImageView k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yz0(View view, lx lxVar, e74 e74Var, e74 e74Var2) {
        super(view);
        y45.j(view, "itemView");
        y45.j(lxVar, "imageLoader");
        y45.j(e74Var, "onNetworkClick");
        y45.j(e74Var2, "onWaringButtonClick");
        this.a = lxVar;
        this.b = e74Var;
        this.c = e74Var2;
        View viewFindViewById = view.findViewById(R.id.item_mediation_adapter);
        y45.i(viewFindViewById, "findViewById(...)");
        this.e = (LinearLayout) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.item_logo);
        y45.i(viewFindViewById2, "findViewById(...)");
        this.f = (ImageView) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.item_name);
        y45.i(viewFindViewById3, "findViewById(...)");
        this.g = (TextView) viewFindViewById3;
        View viewFindViewById4 = view.findViewById(R.id.navigation_icon);
        y45.i(viewFindViewById4, "findViewById(...)");
        this.h = (ImageView) viewFindViewById4;
        View viewFindViewById5 = view.findViewById(R.id.item_info_first);
        y45.i(viewFindViewById5, "findViewById(...)");
        this.i = (TextView) viewFindViewById5;
        View viewFindViewById6 = view.findViewById(R.id.item_info_second);
        y45.i(viewFindViewById6, "findViewById(...)");
        this.j = (TextView) viewFindViewById6;
        View viewFindViewById7 = view.findViewById(R.id.item_warning_button);
        y45.i(viewFindViewById7, "findViewById(...)");
        this.k = (ImageView) viewFindViewById7;
    }

    public static final void b(yz0 yz0Var, iy.g gVar, View view) {
        y45.j(yz0Var, "this$0");
        y45.j(gVar, "$unit");
        yz0Var.b.invoke(gVar);
    }

    @Override
    public final void a(final iy.g gVar) {
        y45.j(gVar, "unit");
        Context context = this.itemView.getContext();
        this.g.setText(gVar.f());
        cy cyVarC = gVar.c();
        if (cyVarC != null) {
            this.i.setVisibility(0);
            this.i.setText(cyVarC.d());
            this.i.setTextAppearance(context, cyVarC.c());
            TextView textView = this.i;
            Context context2 = this.itemView.getContext();
            y45.i(context2, "getContext(...)");
            textView.setTextColor(oh.a(context2, cyVarC.a()));
            TextView textView2 = this.i;
            Integer numB = cyVarC.b();
            textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, numB != null ? numB.intValue() : 0, 0);
        } else {
            this.i.setVisibility(8);
        }
        zw zwVarD = gVar.d();
        this.j.setText(zwVarD.c());
        this.j.setTextAppearance(context, zwVarD.b());
        TextView textView3 = this.j;
        Context context3 = this.itemView.getContext();
        y45.i(context3, "getContext(...)");
        textView3.setTextColor(oh.a(context3, zwVarD.a()));
        LinearLayout linearLayout = this.e;
        String strJ = gVar.j();
        linearLayout.setClickable(((strJ == null || j1a.o0(strJ)) && gVar.g() == null) ? false : true);
        String strJ2 = gVar.j();
        if (strJ2 == null || j1a.o0(strJ2)) {
            this.k.setVisibility(8);
        } else {
            this.k.setVisibility(0);
            this.e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    yz0.a(this.b, gVar, view);
                }
            });
        }
        this.f.setImageResource(0);
        jn5 jn5Var = this.d;
        if (jn5Var != null) {
            jn5Var.cancel();
        }
        lx lxVar = this.a;
        String strE = gVar.e();
        if (strE == null) {
            strE = "";
        }
        this.d = lxVar.a(strE, this.f);
        if (gVar.g() == null) {
            this.h.setVisibility(8);
        } else {
            this.h.setVisibility(0);
            this.e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    yz0.b(this.b, gVar, view);
                }
            });
        }
    }

    public static final void a(yz0 yz0Var, iy.g gVar, View view) {
        y45.j(yz0Var, "this$0");
        y45.j(gVar, "$unit");
        yz0Var.c.invoke(gVar.j());
    }
}
