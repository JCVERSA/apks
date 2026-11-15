package com.yandex.mobile.ads.impl;

import androidx.recyclerview.widget.DiffUtil;
import defpackage.y45;

public final class gx extends DiffUtil.ItemCallback<iy> {
    @Override
    public final boolean areContentsTheSame(iy iyVar, iy iyVar2) {
        iy iyVar3 = iyVar;
        iy iyVar4 = iyVar2;
        y45.j(iyVar3, "prevItem");
        y45.j(iyVar4, "newItem");
        return iyVar3.a(iyVar4);
    }

    @Override
    public final boolean areItemsTheSame(iy iyVar, iy iyVar2) {
        iy iyVar3 = iyVar;
        iy iyVar4 = iyVar2;
        y45.j(iyVar3, "prevItem");
        y45.j(iyVar4, "newItem");
        return iyVar3.a(iyVar4);
    }
}
