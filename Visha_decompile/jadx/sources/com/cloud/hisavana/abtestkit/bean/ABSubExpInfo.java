package com.cloud.hisavana.abtestkit.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u000fJ\u0018\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u001e\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014JR\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00052\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aHÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0019J \u0010$\u001a\u00020#2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b$\u0010%R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010&\u001a\u0004\b'\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010&\u001a\u0004\b(\u0010\u000fR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010)\u001a\u0004\b*\u0010\u0012R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010+\u001a\u0004\b,\u0010\u0014¨\u0006-"}, d2 = {"Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;", "Landroid/os/Parcelable;", "", "varId", "expId", "", "buckets", "", "", "info", MethodDecl.initName, "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "component1", "()Ljava/lang/Long;", "component2", "component3", "()Ljava/util/List;", "component4", "()Ljava/util/Map;", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;)Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/Long;", "getVarId", "getExpId", "Ljava/util/List;", "getBuckets", "Ljava/util/Map;", "getInfo", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ABSubExpInfo implements Parcelable {
    public static final Parcelable.Creator<ABSubExpInfo> CREATOR = new Creator();

    @SerializedName("buckets")
    private final List<Long> buckets;

    @SerializedName("exp_id")
    private final Long expId;

    @SerializedName("info")
    private final Map<String, String> info;

    @SerializedName("var_id")
    private final Long varId;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ABSubExpInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABSubExpInfo createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            y45.j(parcel, "parcel");
            LinkedHashMap linkedHashMap = null;
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i = parcel.readInt();
                arrayList = new ArrayList(i);
                for (int i2 = 0; i2 != i; i2++) {
                    arrayList.add(Long.valueOf(parcel.readLong()));
                }
            }
            if (parcel.readInt() != 0) {
                int i3 = parcel.readInt();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(i3);
                for (int i4 = 0; i4 != i3; i4++) {
                    linkedHashMap2.put(parcel.readString(), parcel.readString());
                }
                linkedHashMap = linkedHashMap2;
            }
            return new ABSubExpInfo(lValueOf, lValueOf2, arrayList, linkedHashMap);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final ABSubExpInfo[] newArray(int i) {
            return new ABSubExpInfo[i];
        }
    }

    public ABSubExpInfo(Long l, Long l2, List<Long> list, Map<String, String> map) {
        this.varId = l;
        this.expId = l2;
        this.buckets = list;
        this.info = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ABSubExpInfo copy$default(ABSubExpInfo aBSubExpInfo, Long l, Long l2, List list, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            l = aBSubExpInfo.varId;
        }
        if ((i & 2) != 0) {
            l2 = aBSubExpInfo.expId;
        }
        if ((i & 4) != 0) {
            list = aBSubExpInfo.buckets;
        }
        if ((i & 8) != 0) {
            map = aBSubExpInfo.info;
        }
        return aBSubExpInfo.copy(l, l2, list, map);
    }

    public final Long getVarId() {
        return this.varId;
    }

    public final Long getExpId() {
        return this.expId;
    }

    public final List<Long> component3() {
        return this.buckets;
    }

    public final Map<String, String> component4() {
        return this.info;
    }

    public final ABSubExpInfo copy(Long varId, Long expId, List<Long> buckets, Map<String, String> info) {
        return new ABSubExpInfo(varId, expId, buckets, info);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABSubExpInfo)) {
            return false;
        }
        ABSubExpInfo aBSubExpInfo = (ABSubExpInfo) other;
        return y45.e(this.varId, aBSubExpInfo.varId) && y45.e(this.expId, aBSubExpInfo.expId) && y45.e(this.buckets, aBSubExpInfo.buckets) && y45.e(this.info, aBSubExpInfo.info);
    }

    public final List<Long> getBuckets() {
        return this.buckets;
    }

    public final Long getExpId() {
        return this.expId;
    }

    public final Map<String, String> getInfo() {
        return this.info;
    }

    public final Long getVarId() {
        return this.varId;
    }

    public int hashCode() {
        Long l = this.varId;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.expId;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        List<Long> list = this.buckets;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        Map<String, String> map = this.info;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "ABSubExpInfo(varId=" + this.varId + ", expId=" + this.expId + ", buckets=" + this.buckets + ", info=" + this.info + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        Long l = this.varId;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        }
        Long l2 = this.expId;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l2.longValue());
        }
        List<Long> list = this.buckets;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<Long> it = list.iterator();
            while (it.hasNext()) {
                parcel.writeLong(it.next().longValue());
            }
        }
        Map<String, String> map = this.info;
        if (map == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }
}
