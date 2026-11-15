package com.transsion.dbdata.beans;

import com.transsion.dbdata.beans.media.AudioItem;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/dbdata/beans/AudioResultModel;", "", "listData", "", "Lcom/transsion/dbdata/beans/media/AudioItem;", "filterCount", "", MethodDecl.initName, "(Ljava/util/List;J)V", "getListData", "()Ljava/util/List;", "getFilterCount", "()J", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioResultModel {
    private final long filterCount;
    private final List<AudioItem> listData;

    /* JADX WARN: Multi-variable type inference failed */
    public AudioResultModel(List<? extends AudioItem> list, long j) {
        y45.j(list, "listData");
        this.listData = list;
        this.filterCount = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AudioResultModel copy$default(AudioResultModel audioResultModel, List list, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            list = audioResultModel.listData;
        }
        if ((i & 2) != 0) {
            j = audioResultModel.filterCount;
        }
        return audioResultModel.copy(list, j);
    }

    public final List<AudioItem> component1() {
        return this.listData;
    }

    public final long getFilterCount() {
        return this.filterCount;
    }

    public final AudioResultModel copy(List<? extends AudioItem> listData, long filterCount) {
        y45.j(listData, "listData");
        return new AudioResultModel(listData, filterCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioResultModel)) {
            return false;
        }
        AudioResultModel audioResultModel = (AudioResultModel) other;
        return y45.e(this.listData, audioResultModel.listData) && this.filterCount == audioResultModel.filterCount;
    }

    public final long getFilterCount() {
        return this.filterCount;
    }

    public final List<AudioItem> getListData() {
        return this.listData;
    }

    public int hashCode() {
        return (this.listData.hashCode() * 31) + Long.hashCode(this.filterCount);
    }

    public String toString() {
        return "AudioResultModel(listData=" + this.listData + ", filterCount=" + this.filterCount + ")";
    }
}
