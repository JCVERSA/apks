package com.transsion.audio;

import androidx.recyclerview.widget.DiffUtil;
import com.transsion.dbdata.beans.media.MediaBucket;
import java.util.List;

public class MediaBucketDiffCallBack extends DiffUtil.Callback {
    public List a;
    public List b;

    public MediaBucketDiffCallBack(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    @Override
    public boolean areContentsTheSame(int i, int i2) {
        MediaBucket mediaBucket = (MediaBucket) this.a.get(i);
        MediaBucket mediaBucket2 = (MediaBucket) this.b.get(i2);
        return mediaBucket.bucketId == mediaBucket2.bucketId && mediaBucket.count == mediaBucket2.count && mediaBucket.uriType == mediaBucket2.uriType && mediaBucket.parentName.equals(mediaBucket2.parentName) && mediaBucket.uri.toString().equals(mediaBucket2.uri.toString());
    }

    @Override
    public boolean areItemsTheSame(int i, int i2) {
        return ((MediaBucket) this.a.get(i)).bucketId == ((MediaBucket) this.b.get(i2)).bucketId;
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
