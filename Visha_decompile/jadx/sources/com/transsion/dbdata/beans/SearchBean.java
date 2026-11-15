package com.transsion.dbdata.beans;

import androidx.annotation.Nullable;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;

public class SearchBean {
    private int mItemType;
    private MediaBucket mMediaBucket;
    private MediaItem mediaItem;

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SearchBean) {
            return obj == this || ((SearchBean) obj).mediaItem == this.mediaItem;
        }
        return false;
    }

    public int getItemType() {
        return this.mItemType;
    }

    public MediaBucket getMediaBucket() {
        return this.mMediaBucket;
    }

    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    public void setItemType(int i) {
        this.mItemType = i;
    }

    public void setMediaBucket(MediaBucket mediaBucket) {
        this.mMediaBucket = mediaBucket;
    }

    public void setMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }
}
