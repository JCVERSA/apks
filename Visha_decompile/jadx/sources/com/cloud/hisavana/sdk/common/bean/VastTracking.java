package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u000bJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000bJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000bJL\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u000bJ\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u001b\u0010\u0015J \u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b \u0010!R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\"\u001a\u0004\b#\u0010\u000b\"\u0004\b$\u0010%R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\"\u001a\u0004\b&\u0010\u000b\"\u0004\b'\u0010%R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\"\u001a\u0004\b(\u0010\u000b\"\u0004\b)\u0010%R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\"\u001a\u0004\b*\u0010\u000b\"\u0004\b+\u0010%R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\"\u001a\u0004\b,\u0010\u000b\"\u0004\b-\u0010%¨\u0006."}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "Landroid/os/Parcelable;", "", "startTrack", "quarter", "midpoint", "thirdQuarter", "complete", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getStartTrack", "setStartTrack", "(Ljava/lang/String;)V", "getQuarter", "setQuarter", "getMidpoint", "setMidpoint", "getThirdQuarter", "setThirdQuarter", "getComplete", "setComplete", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VastTracking implements Parcelable {
    public static final Parcelable.Creator<VastTracking> CREATOR = new Creator();
    private String complete;
    private String midpoint;
    private String quarter;
    private String startTrack;
    private String thirdQuarter;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VastTracking> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastTracking createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new VastTracking(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastTracking[] newArray(int i) {
            return new VastTracking[i];
        }
    }

    public VastTracking() {
        this(null, null, null, null, null, 31, null);
    }

    public static VastTracking copy$default(VastTracking vastTracking, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = vastTracking.startTrack;
        }
        if ((i & 2) != 0) {
            str2 = vastTracking.quarter;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = vastTracking.midpoint;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = vastTracking.thirdQuarter;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = vastTracking.complete;
        }
        return vastTracking.copy(str, str6, str7, str8, str5);
    }

    public final String getStartTrack() {
        return this.startTrack;
    }

    public final String getQuarter() {
        return this.quarter;
    }

    public final String getMidpoint() {
        return this.midpoint;
    }

    public final String getThirdQuarter() {
        return this.thirdQuarter;
    }

    public final String getComplete() {
        return this.complete;
    }

    public final VastTracking copy(String startTrack, String quarter, String midpoint, String thirdQuarter, String complete) {
        return new VastTracking(startTrack, quarter, midpoint, thirdQuarter, complete);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastTracking)) {
            return false;
        }
        VastTracking vastTracking = (VastTracking) other;
        return y45.e(this.startTrack, vastTracking.startTrack) && y45.e(this.quarter, vastTracking.quarter) && y45.e(this.midpoint, vastTracking.midpoint) && y45.e(this.thirdQuarter, vastTracking.thirdQuarter) && y45.e(this.complete, vastTracking.complete);
    }

    public final String getComplete() {
        return this.complete;
    }

    public final String getMidpoint() {
        return this.midpoint;
    }

    public final String getQuarter() {
        return this.quarter;
    }

    public final String getStartTrack() {
        return this.startTrack;
    }

    public final String getThirdQuarter() {
        return this.thirdQuarter;
    }

    public int hashCode() {
        String str = this.startTrack;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.quarter;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.midpoint;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.thirdQuarter;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.complete;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setComplete(String str) {
        this.complete = str;
    }

    public final void setMidpoint(String str) {
        this.midpoint = str;
    }

    public final void setQuarter(String str) {
        this.quarter = str;
    }

    public final void setStartTrack(String str) {
        this.startTrack = str;
    }

    public final void setThirdQuarter(String str) {
        this.thirdQuarter = str;
    }

    public String toString() {
        return "VastTracking(startTrack=" + this.startTrack + ", quarter=" + this.quarter + ", midpoint=" + this.midpoint + ", thirdQuarter=" + this.thirdQuarter + ", complete=" + this.complete + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeString(this.startTrack);
        parcel.writeString(this.quarter);
        parcel.writeString(this.midpoint);
        parcel.writeString(this.thirdQuarter);
        parcel.writeString(this.complete);
    }

    public VastTracking(String str, String str2, String str3, String str4, String str5) {
        this.startTrack = str;
        this.quarter = str2;
        this.midpoint = str3;
        this.thirdQuarter = str4;
        this.complete = str5;
    }

    public VastTracking(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5);
    }
}
