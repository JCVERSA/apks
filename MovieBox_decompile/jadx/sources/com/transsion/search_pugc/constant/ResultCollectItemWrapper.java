package com.transsion.search_pugc.constant;

import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ResultCollectItemWrapper {

    private final UGCVideo f50300a;

    private final Type f50301b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;", "", "<init>", "(Ljava/lang/String;I)V", "DATA", "FOOTER", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Type {
        DATA,
        FOOTER;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ResultCollectItemWrapper() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final UGCVideo a() {
        return this.f50300a;
    }

    public final Type b() {
        return this.f50301b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResultCollectItemWrapper)) {
            return false;
        }
        ResultCollectItemWrapper resultCollectItemWrapper = (ResultCollectItemWrapper) obj;
        return Intrinsics.c(this.f50300a, resultCollectItemWrapper.f50300a) && this.f50301b == resultCollectItemWrapper.f50301b;
    }

    public int hashCode() {
        UGCVideo uGCVideo = this.f50300a;
        return ((uGCVideo == null ? 0 : uGCVideo.hashCode()) * 31) + this.f50301b.hashCode();
    }

    public String toString() {
        return "ResultCollectItemWrapper(data=" + this.f50300a + ", type=" + this.f50301b + ")";
    }

    public ResultCollectItemWrapper(UGCVideo uGCVideo, Type type) {
        Intrinsics.h(type, "type");
        this.f50300a = uGCVideo;
        this.f50301b = type;
    }

    public ResultCollectItemWrapper(UGCVideo uGCVideo, Type type, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : uGCVideo, (i10 & 2) != 0 ? Type.DATA : type);
    }
}
