package com.transsion.baselib.db.notification;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0013\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005HÆ\u0003J.\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0017HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0017R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006#"}, d2 = {"Lcom/transsion/baselib/db/notification/PermanentMsgResp;", "Landroid/os/Parcelable;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "items", "", "Lcom/transsion/baselib/db/notification/PermanentMsgBean;", "<init>", "(Ljava/lang/Boolean;Ljava/util/List;)V", "getEnable", "()Ljava/lang/Boolean;", "setEnable", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/util/List;)Lcom/transsion/baselib/db/notification/PermanentMsgResp;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PermanentMsgResp implements Parcelable {
    public static final Parcelable.Creator<PermanentMsgResp> CREATOR = new a();
    private Boolean enable;
    private List<PermanentMsgBean> items;

    public static final class a implements Parcelable.Creator {
        @Override
        public final PermanentMsgResp createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList = null;
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() != 0) {
                int i10 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    arrayList2.add(parcel.readInt() == 0 ? null : PermanentMsgBean.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new PermanentMsgResp(boolValueOf, arrayList);
        }

        @Override
        public final PermanentMsgResp[] newArray(int i10) {
            return new PermanentMsgResp[i10];
        }
    }

    public PermanentMsgResp(Boolean bool, List<PermanentMsgBean> list) {
        this.enable = bool;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermanentMsgResp copy$default(PermanentMsgResp permanentMsgResp, Boolean bool, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bool = permanentMsgResp.enable;
        }
        if ((i10 & 2) != 0) {
            list = permanentMsgResp.items;
        }
        return permanentMsgResp.copy(bool, list);
    }

    public final Boolean getEnable() {
        return this.enable;
    }

    public final List<PermanentMsgBean> component2() {
        return this.items;
    }

    public final PermanentMsgResp copy(Boolean enable, List<PermanentMsgBean> items) {
        return new PermanentMsgResp(enable, items);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermanentMsgResp)) {
            return false;
        }
        PermanentMsgResp permanentMsgResp = (PermanentMsgResp) other;
        return Intrinsics.c(this.enable, permanentMsgResp.enable) && Intrinsics.c(this.items, permanentMsgResp.items);
    }

    public final Boolean getEnable() {
        return this.enable;
    }

    public final List<PermanentMsgBean> getItems() {
        return this.items;
    }

    public int hashCode() {
        Boolean bool = this.enable;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        List<PermanentMsgBean> list = this.items;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setEnable(Boolean bool) {
        this.enable = bool;
    }

    public final void setItems(List<PermanentMsgBean> list) {
        this.items = list;
    }

    public String toString() {
        return "PermanentMsgResp(enable=" + this.enable + ", items=" + this.items + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Boolean bool = this.enable;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        List<PermanentMsgBean> list = this.items;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        for (PermanentMsgBean permanentMsgBean : list) {
            if (permanentMsgBean == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                permanentMsgBean.writeToParcel(dest, flags);
            }
        }
    }
}
