package com.transsion.moviedetail.staff.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import p6.a;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000eJ\u001a\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/transsion/moviedetail/staff/bean/MovieStaffSubject;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lp6/a;", "Ljava/io/Serializable;", "", "itemType", "<init>", "(I)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "component1", "copy", "(I)Lcom/transsion/moviedetail/staff/bean/MovieStaffSubject;", "", "toString", "()Ljava/lang/String;", "I", "getItemType", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MovieStaffSubject extends Subject implements a, Serializable {
    private final int itemType;

    public MovieStaffSubject() {
        this(0, 1, null);
    }

    public static MovieStaffSubject copy$default(MovieStaffSubject movieStaffSubject, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = movieStaffSubject.itemType;
        }
        return movieStaffSubject.copy(i10);
    }

    public final int getItemType() {
        return this.itemType;
    }

    public final MovieStaffSubject copy(int itemType) {
        return new MovieStaffSubject(itemType);
    }

    public boolean equals(Object other) {
        String subjectId;
        return (other instanceof MovieStaffSubject) && Intrinsics.c(((MovieStaffSubject) other).getSubjectId(), getSubjectId()) && (subjectId = getSubjectId()) != null && subjectId.length() != 0;
    }

    @Override
    public int getItemType() {
        return this.itemType;
    }

    public int hashCode() {
        String subjectId = getSubjectId();
        return subjectId != null ? subjectId.hashCode() : super.hashCode();
    }

    public String toString() {
        return "MovieStaffSubject(itemType=" + this.itemType + ")";
    }

    public MovieStaffSubject(int i10) {
        super(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null);
        this.itemType = i10;
    }

    public MovieStaffSubject(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 1 : i10);
    }
}
