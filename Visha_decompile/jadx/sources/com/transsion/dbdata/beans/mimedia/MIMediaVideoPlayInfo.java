package com.transsion.dbdata.beans.mimedia;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0002\b\u0014\b\u0087\b\u0018\u00002\u00020\u0001Bi\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0013J\r\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\n¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b \u0010\u0017J\u0012\u0010!\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u0017J\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010\u0017J\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010\u0017J\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010\u0017J\u0010\u0010%\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b%\u0010&J\u0012\u0010'\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b'\u0010(J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003¢\u0006\u0004\b)\u0010*Jr\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0001¢\u0006\u0004\b+\u0010,J\u0010\u0010-\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b-\u0010\u001fJ\u001a\u00100\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010.HÖ\u0003¢\u0006\u0004\b0\u00101R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u00102\u001a\u0004\b3\u0010\u0017\"\u0004\b4\u00105R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u00102\u001a\u0004\b6\u0010\u0017R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u00102\u001a\u0004\b7\u0010\u0017R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u00102\u001a\u0004\b8\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u00102\u001a\u0004\b9\u0010\u0017R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010:\u001a\u0004\b;\u0010&R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010<\u001a\u0004\b=\u0010(R(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010>\u001a\u0004\b?\u0010*\"\u0004\b@\u0010A¨\u0006B"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;", "Landroid/os/Parcelable;", "", "sourceId", "title", "description", "cover", PlayAudioData.TAG_SIZE, "", "playDuration", "", "status", "", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;", "dataList", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/util/List;)V", "", "isOnline", "()Z", "isUploading", "isRequestVideo", "toString", "()Ljava/lang/String;", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "()J", "component7", "()Ljava/lang/Integer;", "component8", "()Ljava/util/List;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/util/List;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getSourceId", "setSourceId", "(Ljava/lang/String;)V", "getTitle", "getDescription", "getCover", "getSize", "J", "getPlayDuration", "Ljava/lang/Integer;", "getStatus", "Ljava/util/List;", "getDataList", "setDataList", "(Ljava/util/List;)V", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaVideoPlayInfo implements Parcelable {
    public static final Parcelable.Creator<MIMediaVideoPlayInfo> CREATOR = new Creator();
    private final String cover;
    private List<MIMediaVideoPlayItemInfo> dataList;
    private final String description;
    private final long playDuration;
    private final String size;
    private String sourceId;
    private final Integer status;
    private final String title;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<MIMediaVideoPlayInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final MIMediaVideoPlayInfo createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            long j = parcel.readLong();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(MIMediaVideoPlayItemInfo.CREATOR.createFromParcel(parcel));
            }
            return new MIMediaVideoPlayInfo(string, string2, string3, string4, string5, j, numValueOf, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final MIMediaVideoPlayInfo[] newArray(int i) {
            return new MIMediaVideoPlayInfo[i];
        }
    }

    public MIMediaVideoPlayInfo() {
        this(null, null, null, null, null, 0L, null, null, 255, null);
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getSize() {
        return this.size;
    }

    public final long getPlayDuration() {
        return this.playDuration;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final List<MIMediaVideoPlayItemInfo> component8() {
        return this.dataList;
    }

    public final MIMediaVideoPlayInfo copy(String sourceId, String title, String description, String cover, String size, long playDuration, Integer status, List<MIMediaVideoPlayItemInfo> dataList) {
        y45.j(dataList, "dataList");
        return new MIMediaVideoPlayInfo(sourceId, title, description, cover, size, playDuration, status, dataList);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MIMediaVideoPlayInfo)) {
            return false;
        }
        MIMediaVideoPlayInfo mIMediaVideoPlayInfo = (MIMediaVideoPlayInfo) other;
        return y45.e(this.sourceId, mIMediaVideoPlayInfo.sourceId) && y45.e(this.title, mIMediaVideoPlayInfo.title) && y45.e(this.description, mIMediaVideoPlayInfo.description) && y45.e(this.cover, mIMediaVideoPlayInfo.cover) && y45.e(this.size, mIMediaVideoPlayInfo.size) && this.playDuration == mIMediaVideoPlayInfo.playDuration && y45.e(this.status, mIMediaVideoPlayInfo.status) && y45.e(this.dataList, mIMediaVideoPlayInfo.dataList);
    }

    public final String getCover() {
        return this.cover;
    }

    public final List<MIMediaVideoPlayItemInfo> getDataList() {
        return this.dataList;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getPlayDuration() {
        return this.playDuration;
    }

    public final String getSize() {
        return this.size;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.sourceId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.cover;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.size;
        int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + Long.hashCode(this.playDuration)) * 31;
        Integer num = this.status;
        return ((iHashCode5 + (num != null ? num.hashCode() : 0)) * 31) + this.dataList.hashCode();
    }

    public final boolean isOnline() {
        Integer num = this.status;
        return num != null && num.intValue() == 1;
    }

    public final boolean isRequestVideo() {
        Integer num = this.status;
        return num != null && num.intValue() == 3;
    }

    public final boolean isUploading() {
        Integer num = this.status;
        return num != null && num.intValue() == 2;
    }

    public final void setDataList(List<MIMediaVideoPlayItemInfo> list) {
        y45.j(list, "<set-?>");
        this.dataList = list;
    }

    public final void setSourceId(String str) {
        this.sourceId = str;
    }

    public String toString() {
        return "MIMediaVideoPlayInfo(sourceId=" + this.sourceId + ", title=" + this.title + ", description=" + this.description + ", cover=" + this.cover + ", size=" + this.size + ", playDuration=" + this.playDuration + ", status=" + this.status + ", dataList=" + this.dataList + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        y45.j(dest, "dest");
        dest.writeString(this.sourceId);
        dest.writeString(this.title);
        dest.writeString(this.description);
        dest.writeString(this.cover);
        dest.writeString(this.size);
        dest.writeLong(this.playDuration);
        Integer num = this.status;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        List<MIMediaVideoPlayItemInfo> list = this.dataList;
        dest.writeInt(list.size());
        Iterator<MIMediaVideoPlayItemInfo> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }

    public MIMediaVideoPlayInfo(String str, String str2, String str3, String str4, String str5, long j, Integer num, List<MIMediaVideoPlayItemInfo> list) {
        y45.j(list, "dataList");
        this.sourceId = str;
        this.title = str2;
        this.description = str3;
        this.cover = str4;
        this.size = str5;
        this.playDuration = j;
        this.status = num;
        this.dataList = list;
    }

    public MIMediaVideoPlayInfo(String str, String str2, String str3, String str4, String str5, long j, Integer num, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? "0" : str5, (i & 32) != 0 ? 0L : j, (i & 64) != 0 ? null : num, (i & 128) != 0 ? y71.k() : list);
    }
}
