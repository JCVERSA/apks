package com.transsion.mimedia;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.DiffUtil;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import defpackage.y45;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\nR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/transsion/mimedia/MediaLibraryDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$Callback;", "", "getOldListSize", "()I", "getNewListSize", "oldItemPosition", "newItemPosition", "", "areItemsTheSame", "(II)Z", "areContentsTheSame", "", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/util/List;", "oldList", "b", "newList", "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryDiffCallback extends DiffUtil.Callback {

    public final List oldList;

    public final List newList;

    @Override
    public boolean areContentsTheSame(int oldItemPosition, int newItemPosition) {
        return y45.e(this.oldList.get(oldItemPosition), this.newList.get(newItemPosition));
    }

    @Override
    public boolean areItemsTheSame(int oldItemPosition, int newItemPosition) {
        return y45.e(((MIMediaLibraryData) this.oldList.get(oldItemPosition)).getMediaLibraryId(), ((MIMediaLibraryData) this.newList.get(newItemPosition)).getMediaLibraryId());
    }

    @Override
    public int getNewListSize() {
        return this.newList.size();
    }

    @Override
    public int getOldListSize() {
        return this.oldList.size();
    }
}
