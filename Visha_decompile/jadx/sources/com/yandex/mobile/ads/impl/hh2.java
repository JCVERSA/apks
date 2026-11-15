package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.annotation.LayoutRes;
import com.yandex.mobile.ads.R;
import defpackage.e74;
import defpackage.y45;

public final class hh2 {
    private final e74 a;
    private final lx b;

    public hh2(e74 e74Var, lx lxVar) {
        y45.j(e74Var, "onAction");
        y45.j(lxVar, "imageLoader");
        this.a = e74Var;
        this.b = lxVar;
    }

    public final ky a(View view, @LayoutRes int i) {
        ky kaVar;
        y45.j(view, "itemView");
        if (i == R.layout.debug_panel_item_action_button) {
            return new y(bh2.b, view);
        }
        if (i == R.layout.debug_panel_item_switch) {
            kaVar = new w32(view, new ch2(this));
        } else {
            if (i == R.layout.deubg_panel_item_header) {
                return new pf0(view);
            }
            if (i == R.layout.deubg_panel_item_key_value) {
                return new yq0(view);
            }
            if (i == R.layout.debug_panel_item_mediation_adapter) {
                kaVar = new yz0(view, this.b, new dh2(this), new eh2(this));
            } else if (i == R.layout.debug_panel_item_ad_units) {
                kaVar = new ma(view, new fh2(this));
            } else {
                if (i != R.layout.debug_panel_item_ad_unit) {
                    return new o30(view);
                }
                kaVar = new ka(new gh2(this), view);
            }
        }
        return kaVar;
    }
}
