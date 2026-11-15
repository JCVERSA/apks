package com.yandex.mobile.ads.impl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.mobile.ads.R;
import defpackage.e74;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class qw extends ListAdapter<iy, ky<iy>> {
    private final hh2 a;
    private final vh2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qw(e74 e74Var, lx lxVar, hh2 hh2Var, vh2 vh2Var) {
        super(new gx());
        y45.j(e74Var, "onAction");
        y45.j(lxVar, "imageLoader");
        y45.j(hh2Var, "viewHolderMapper");
        y45.j(vh2Var, "viewTypeMapper");
        this.a = hh2Var;
        this.b = vh2Var;
    }

    @Override
    public final int getItemViewType(int i) {
        iy item = getItem(i);
        vh2 vh2Var = this.b;
        y45.g(item);
        vh2Var.getClass();
        y45.j(item, "viewHolder");
        if (item instanceof iy.c) {
            return R.layout.debug_panel_item_action_button;
        }
        if (item instanceof iy.h) {
            return R.layout.debug_panel_item_switch;
        }
        if (item instanceof iy.d) {
            return R.layout.debug_panel_item_divider;
        }
        if (item instanceof iy.e) {
            return R.layout.deubg_panel_item_header;
        }
        if (item instanceof iy.f) {
            return R.layout.deubg_panel_item_key_value;
        }
        if (item instanceof iy.g) {
            return R.layout.debug_panel_item_mediation_adapter;
        }
        if (item instanceof iy.b) {
            return R.layout.debug_panel_item_ad_units;
        }
        if (item instanceof iy.a) {
            return R.layout.debug_panel_item_ad_unit;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ky kyVar = (ky) viewHolder;
        y45.j(kyVar, "holder");
        iy item = getItem(i);
        y45.g(item);
        kyVar.a(item);
    }

    @Override
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        y45.j(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        hh2 hh2Var = this.a;
        y45.g(viewInflate);
        return hh2Var.a(viewInflate, i);
    }
}
