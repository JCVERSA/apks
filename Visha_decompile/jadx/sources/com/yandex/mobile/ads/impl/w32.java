package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.Switch;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.w32;
import defpackage.s74;
import defpackage.y45;

public final class w32 extends ky<iy.h> {
    private final s74 a;

    @SuppressLint({"UseSwitchCompatOrMaterialCode"})
    private final Switch b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w32(View view, s74 s74Var) {
        super(view);
        y45.j(view, "itemView");
        y45.j(s74Var, "onCheckedChange");
        this.a = s74Var;
        View viewFindViewById = view.findViewById(R.id.item_switch);
        y45.i(viewFindViewById, "findViewById(...)");
        this.b = (Switch) viewFindViewById;
    }

    @Override
    public final void a(final iy.h hVar) {
        y45.j(hVar, "unit");
        this.b.setOnCheckedChangeListener(null);
        this.b.setText(hVar.c());
        this.b.setChecked(hVar.a());
        this.b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                w32.a(this.b, hVar, compoundButton, z);
            }
        });
    }

    public static final void a(w32 w32Var, iy.h hVar, CompoundButton compoundButton, boolean z) {
        y45.j(w32Var, "this$0");
        y45.j(hVar, "$unit");
        w32Var.a.invoke(hVar.b(), Boolean.valueOf(z));
    }
}
