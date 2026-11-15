package com.transsion.magicvideo.utils;

import androidx.recyclerview.widget.DiffUtil;
import com.transsion.dbdata.beans.media.MediaItem;
import java.util.List;

public class MediaItemDiffCallback extends DiffUtil.Callback {
    public final List a;
    public final List b;

    public MediaItemDiffCallback(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    @Override
    public boolean areContentsTheSame(int i, int i2) {
        return ((MediaItem) this.a.get(i)).equals(this.b.get(i2));
    }

    @Override
    public boolean areItemsTheSame(int i, int i2) {
        return ((MediaItem) this.a.get(i)).id == ((MediaItem) this.b.get(i2)).id;
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
