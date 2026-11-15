package com.transsion.payment.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\u0017\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bHÆ\u0003JA\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bHÆ\u0001J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0013\u0010 \u001a\u00020\u00062\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u001fHÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\u0016\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006*"}, d2 = {"Lcom/transsion/payment/lib/bean/CreateOrderReq;", "Landroid/os/Parcelable;", "productId", "", "cpFrontPage", "subscriptOrder", "", "extStrJson", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V", "getProductId", "()Ljava/lang/String;", "setProductId", "(Ljava/lang/String;)V", "getCpFrontPage", "setCpFrontPage", "getSubscriptOrder", "()Z", "setSubscriptOrder", "(Z)V", "getExtStrJson", "()Ljava/util/Map;", "setExtStrJson", "(Ljava/util/Map;)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CreateOrderReq implements Parcelable {
    public static final Parcelable.Creator<CreateOrderReq> CREATOR = new a();
    private String cpFrontPage;
    private Map<String, String> extStrJson;
    private String productId;
    private boolean subscriptOrder;

    public static final class a implements Parcelable.Creator {
        @Override
        public final CreateOrderReq createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            boolean z10 = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i10 = parcel.readInt();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    linkedHashMap2.put(parcel.readString(), parcel.readString());
                }
                linkedHashMap = linkedHashMap2;
            }
            return new CreateOrderReq(string, string2, z10, linkedHashMap);
        }

        @Override
        public final CreateOrderReq[] newArray(int i10) {
            return new CreateOrderReq[i10];
        }
    }

    public CreateOrderReq(String productId, String str, boolean z10, Map<String, String> map) {
        Intrinsics.h(productId, "productId");
        this.productId = productId;
        this.cpFrontPage = str;
        this.subscriptOrder = z10;
        this.extStrJson = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CreateOrderReq copy$default(CreateOrderReq createOrderReq, String str, String str2, boolean z10, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = createOrderReq.productId;
        }
        if ((i10 & 2) != 0) {
            str2 = createOrderReq.cpFrontPage;
        }
        if ((i10 & 4) != 0) {
            z10 = createOrderReq.subscriptOrder;
        }
        if ((i10 & 8) != 0) {
            map = createOrderReq.extStrJson;
        }
        return createOrderReq.copy(str, str2, z10, map);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final boolean getSubscriptOrder() {
        return this.subscriptOrder;
    }

    public final Map<String, String> component4() {
        return this.extStrJson;
    }

    public final CreateOrderReq copy(String productId, String cpFrontPage, boolean subscriptOrder, Map<String, String> extStrJson) {
        Intrinsics.h(productId, "productId");
        return new CreateOrderReq(productId, cpFrontPage, subscriptOrder, extStrJson);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateOrderReq)) {
            return false;
        }
        CreateOrderReq createOrderReq = (CreateOrderReq) other;
        return Intrinsics.c(this.productId, createOrderReq.productId) && Intrinsics.c(this.cpFrontPage, createOrderReq.cpFrontPage) && this.subscriptOrder == createOrderReq.subscriptOrder && Intrinsics.c(this.extStrJson, createOrderReq.extStrJson);
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final Map<String, String> getExtStrJson() {
        return this.extStrJson;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final boolean getSubscriptOrder() {
        return this.subscriptOrder;
    }

    public int hashCode() {
        int iHashCode = this.productId.hashCode() * 31;
        String str = this.cpFrontPage;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + e.a(this.subscriptOrder)) * 31;
        Map<String, String> map = this.extStrJson;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final void setCpFrontPage(String str) {
        this.cpFrontPage = str;
    }

    public final void setExtStrJson(Map<String, String> map) {
        this.extStrJson = map;
    }

    public final void setProductId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.productId = str;
    }

    public final void setSubscriptOrder(boolean z10) {
        this.subscriptOrder = z10;
    }

    public String toString() {
        return "CreateOrderReq(productId=" + this.productId + ", cpFrontPage=" + this.cpFrontPage + ", subscriptOrder=" + this.subscriptOrder + ", extStrJson=" + this.extStrJson + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.productId);
        dest.writeString(this.cpFrontPage);
        dest.writeInt(this.subscriptOrder ? 1 : 0);
        Map<String, String> map = this.extStrJson;
        if (map == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            dest.writeString(entry.getKey());
            dest.writeString(entry.getValue());
        }
    }

    public CreateOrderReq(String str, String str2, boolean z10, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? null : map);
    }
}
