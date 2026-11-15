package com.cloud.hisavana.abtestkit.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.google.gson.annotations.SerializedName;
import defpackage.y45;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\u0010\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0011J\u001e\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0011J`\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00052\u0012\b\u0002\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u001aHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dHÖ\u0003¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u001aHÖ\u0001¢\u0006\u0004\b\"\u0010\u001cJ \u0010'\u001a\u00020&2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u001aHÖ\u0001¢\u0006\u0004\b'\u0010(R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010)\u001a\u0004\b*\u0010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010)\u001a\u0004\b+\u0010\u0011R(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010,\u001a\u0004\b-\u0010\u0014R$\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010.\u001a\u0004\b/\u0010\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010)\u001a\u0004\b0\u0010\u0011¨\u00061"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "Landroid/os/Parcelable;", "", "projectId", "layerId", "", "", "whiteList", "", "Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;", "subExps", "updatedAt", MethodDecl.initName, "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;Ljava/lang/Long;)V", "toString", "()Ljava/lang/String;", "component1", "()Ljava/lang/Long;", "component2", "component3", "()Ljava/util/Map;", "component4", "()Ljava/util/List;", "component5", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;Ljava/lang/Long;)Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/Long;", "getProjectId", "getLayerId", "Ljava/util/Map;", "getWhiteList", "Ljava/util/List;", "getSubExps", "getUpdatedAt", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ABLayerInfo implements Parcelable {
    public static final Parcelable.Creator<ABLayerInfo> CREATOR = new Creator();

    @SerializedName(ClientABTestDTOKt.LAYER_ID)
    private final Long layerId;

    @SerializedName("project_id")
    private final Long projectId;

    @SerializedName("vars")
    private final List<ABSubExpInfo> subExps;

    @SerializedName("updated_at")
    private final Long updatedAt;

    @SerializedName("white_list")
    private final Map<String, Long> whiteList;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ABLayerInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABLayerInfo createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            ArrayList arrayList;
            y45.j(parcel, "parcel");
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i = parcel.readInt();
                linkedHashMap = new LinkedHashMap(i);
                for (int i2 = 0; i2 != i; i2++) {
                    linkedHashMap.put(parcel.readString(), Long.valueOf(parcel.readLong()));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i3 = parcel.readInt();
                arrayList = new ArrayList(i3);
                for (int i4 = 0; i4 != i3; i4++) {
                    arrayList.add(parcel.readInt() == 0 ? null : ABSubExpInfo.CREATOR.createFromParcel(parcel));
                }
            }
            return new ABLayerInfo(lValueOf, lValueOf2, linkedHashMap, arrayList, parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABLayerInfo[] newArray(int i) {
            return new ABLayerInfo[i];
        }
    }

    public ABLayerInfo(Long l, Long l2, Map<String, Long> map, List<ABSubExpInfo> list, Long l3) {
        this.projectId = l;
        this.layerId = l2;
        this.whiteList = map;
        this.subExps = list;
        this.updatedAt = l3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ABLayerInfo copy$default(ABLayerInfo aBLayerInfo, Long l, Long l2, Map map, List list, Long l3, int i, Object obj) {
        if ((i & 1) != 0) {
            l = aBLayerInfo.projectId;
        }
        if ((i & 2) != 0) {
            l2 = aBLayerInfo.layerId;
        }
        Long l4 = l2;
        if ((i & 4) != 0) {
            map = aBLayerInfo.whiteList;
        }
        Map map2 = map;
        if ((i & 8) != 0) {
            list = aBLayerInfo.subExps;
        }
        List list2 = list;
        if ((i & 16) != 0) {
            l3 = aBLayerInfo.updatedAt;
        }
        return aBLayerInfo.copy(l, l4, map2, list2, l3);
    }

    public final Long getProjectId() {
        return this.projectId;
    }

    public final Long getLayerId() {
        return this.layerId;
    }

    public final Map<String, Long> component3() {
        return this.whiteList;
    }

    public final List<ABSubExpInfo> component4() {
        return this.subExps;
    }

    public final Long getUpdatedAt() {
        return this.updatedAt;
    }

    public final ABLayerInfo copy(Long projectId, Long layerId, Map<String, Long> whiteList, List<ABSubExpInfo> subExps, Long updatedAt) {
        return new ABLayerInfo(projectId, layerId, whiteList, subExps, updatedAt);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABLayerInfo)) {
            return false;
        }
        ABLayerInfo aBLayerInfo = (ABLayerInfo) other;
        return y45.e(this.projectId, aBLayerInfo.projectId) && y45.e(this.layerId, aBLayerInfo.layerId) && y45.e(this.whiteList, aBLayerInfo.whiteList) && y45.e(this.subExps, aBLayerInfo.subExps) && y45.e(this.updatedAt, aBLayerInfo.updatedAt);
    }

    public final Long getLayerId() {
        return this.layerId;
    }

    public final Long getProjectId() {
        return this.projectId;
    }

    public final List<ABSubExpInfo> getSubExps() {
        return this.subExps;
    }

    public final Long getUpdatedAt() {
        return this.updatedAt;
    }

    public final Map<String, Long> getWhiteList() {
        return this.whiteList;
    }

    public int hashCode() {
        Long l = this.projectId;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.layerId;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Map<String, Long> map = this.whiteList;
        int iHashCode3 = (iHashCode2 + (map == null ? 0 : map.hashCode())) * 31;
        List<ABSubExpInfo> list = this.subExps;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        Long l3 = this.updatedAt;
        return iHashCode4 + (l3 != null ? l3.hashCode() : 0);
    }

    public String toString() {
        return "ABLayerInfo(projectId=" + this.projectId + ", layerId=" + this.layerId + ", whiteList=" + this.whiteList + ", subExps=" + this.subExps + ", updatedAt=" + this.updatedAt + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        Long l = this.projectId;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        }
        Long l2 = this.layerId;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l2.longValue());
        }
        Map<String, Long> map = this.whiteList;
        if (map == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(map.size());
            for (Map.Entry<String, Long> entry : map.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeLong(entry.getValue().longValue());
            }
        }
        List<ABSubExpInfo> list = this.subExps;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            for (ABSubExpInfo aBSubExpInfo : list) {
                if (aBSubExpInfo == null) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(1);
                    aBSubExpInfo.writeToParcel(parcel, flags);
                }
            }
        }
        Long l3 = this.updatedAt;
        if (l3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l3.longValue());
        }
    }
}
