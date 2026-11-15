package com.transsion.tools.utils;

import androidx.recyclerview.widget.DiffUtil;
import com.transsion.dbdata.beans.SkinsMenu;
import java.util.List;

public class SkinsMenuDiffCallback extends DiffUtil.Callback {
    public final List a;
    public final List b;

    public SkinsMenuDiffCallback(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    @Override
    public boolean areContentsTheSame(int i, int i2) {
        return ((SkinsMenu) this.a.get(i)).equals(this.b.get(i2));
    }

    @Override
    public boolean areItemsTheSame(int i, int i2) {
        return ((SkinsMenu) this.a.get(i)).name.equals(((SkinsMenu) this.b.get(i2)).name);
    }

    @Override
    public int getNewListSize() {
        return this.b.size();
    }

    @Override
    public int getOldListSize() {
        return this.a.size();
    }
}
