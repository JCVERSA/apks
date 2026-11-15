package com.transsion.push.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0013\u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tHÆ\u0003JA\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0012\b\u0002\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tHÆ\u0001J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u001bHÖ\u0001J\t\u0010!\u001a\u00020\u0007HÖ\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006'"}, d2 = {"Lcom/transsion/push/bean/PermanentPushResp;", "Landroid/os/Parcelable;", "pager", "Lcom/transsion/push/bean/PagerConfig;", "cfg", "Lcom/transsion/push/bean/PermanentConfig;", CampaignEx.JSON_KEY_TITLE, "", "items", "", "Lcom/transsion/push/bean/PermanentItemBean;", "<init>", "(Lcom/transsion/push/bean/PagerConfig;Lcom/transsion/push/bean/PermanentConfig;Ljava/lang/String;Ljava/util/List;)V", "getPager", "()Lcom/transsion/push/bean/PagerConfig;", "getCfg", "()Lcom/transsion/push/bean/PermanentConfig;", "getTitle", "()Ljava/lang/String;", "getItems", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PermanentPushResp implements Parcelable {
    public static final Parcelable.Creator<PermanentPushResp> CREATOR = new Creator();
    private final PermanentConfig cfg;
    private final List<PermanentItemBean> items;
    private final PagerConfig pager;
    private final String title;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<PermanentPushResp> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final PermanentPushResp createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList = null;
            PagerConfig pagerConfigCreateFromParcel = parcel.readInt() == 0 ? null : PagerConfig.CREATOR.createFromParcel(parcel);
            PermanentConfig permanentConfigCreateFromParcel = parcel.readInt() == 0 ? null : PermanentConfig.CREATOR.createFromParcel(parcel);
            String string = parcel.readString();
            if (parcel.readInt() != 0) {
                int i10 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    arrayList2.add(parcel.readInt() == 0 ? null : PermanentItemBean.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new PermanentPushResp(pagerConfigCreateFromParcel, permanentConfigCreateFromParcel, string, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final PermanentPushResp[] newArray(int i10) {
            return new PermanentPushResp[i10];
        }
    }

    public PermanentPushResp(PagerConfig pagerConfig, PermanentConfig permanentConfig, String str, List<PermanentItemBean> list) {
        this.pager = pagerConfig;
        this.cfg = permanentConfig;
        this.title = str;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermanentPushResp copy$default(PermanentPushResp permanentPushResp, PagerConfig pagerConfig, PermanentConfig permanentConfig, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            pagerConfig = permanentPushResp.pager;
        }
        if ((i10 & 2) != 0) {
            permanentConfig = permanentPushResp.cfg;
        }
        if ((i10 & 4) != 0) {
            str = permanentPushResp.title;
        }
        if ((i10 & 8) != 0) {
            list = permanentPushResp.items;
        }
        return permanentPushResp.copy(pagerConfig, permanentConfig, str, list);
    }

    public final PagerConfig getPager() {
        return this.pager;
    }

    public final PermanentConfig getCfg() {
        return this.cfg;
    }

    public final String getTitle() {
        return this.title;
    }

    public final List<PermanentItemBean> component4() {
        return this.items;
    }

    public final PermanentPushResp copy(PagerConfig pager, PermanentConfig cfg, String title, List<PermanentItemBean> items) {
        return new PermanentPushResp(pager, cfg, title, items);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermanentPushResp)) {
            return false;
        }
        PermanentPushResp permanentPushResp = (PermanentPushResp) other;
        return Intrinsics.c(this.pager, permanentPushResp.pager) && Intrinsics.c(this.cfg, permanentPushResp.cfg) && Intrinsics.c(this.title, permanentPushResp.title) && Intrinsics.c(this.items, permanentPushResp.items);
    }

    public final PermanentConfig getCfg() {
        return this.cfg;
    }

    public final List<PermanentItemBean> getItems() {
        return this.items;
    }

    public final PagerConfig getPager() {
        return this.pager;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        PagerConfig pagerConfig = this.pager;
        int iHashCode = (pagerConfig == null ? 0 : pagerConfig.hashCode()) * 31;
        PermanentConfig permanentConfig = this.cfg;
        int iHashCode2 = (iHashCode + (permanentConfig == null ? 0 : permanentConfig.hashCode())) * 31;
        String str = this.title;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        List<PermanentItemBean> list = this.items;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "PermanentPushResp(pager=" + this.pager + ", cfg=" + this.cfg + ", title=" + this.title + ", items=" + this.items + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        PagerConfig pagerConfig = this.pager;
        if (pagerConfig == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            pagerConfig.writeToParcel(dest, flags);
        }
        PermanentConfig permanentConfig = this.cfg;
        if (permanentConfig == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            permanentConfig.writeToParcel(dest, flags);
        }
        dest.writeString(this.title);
        List<PermanentItemBean> list = this.items;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        for (PermanentItemBean permanentItemBean : list) {
            if (permanentItemBean == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                permanentItemBean.writeToParcel(dest, flags);
            }
        }
    }
}
