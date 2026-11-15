package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\b\u0087\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0014J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0014J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0012J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0014J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0012J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0012J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\rHÆ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u008c\u0001\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\rHÆ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b \u0010\u0012J\u0010\u0010!\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010&\u001a\u00020%2\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b(\u0010\"J \u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b-\u0010.R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010/\u001a\u0004\b0\u0010\u0012\"\u0004\b1\u00102R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u00103\u001a\u0004\b4\u0010\u0014\"\u0004\b5\u00106R$\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u00103\u001a\u0004\b7\u0010\u0014\"\u0004\b8\u00106R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u00103\u001a\u0004\b9\u0010\u0014\"\u0004\b:\u00106R$\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00103\u001a\u0004\b;\u0010\u0014\"\u0004\b<\u00106R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010/\u001a\u0004\b=\u0010\u0012\"\u0004\b>\u00102R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u00103\u001a\u0004\b?\u0010\u0014\"\u0004\b@\u00106R$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010/\u001a\u0004\bA\u0010\u0012\"\u0004\bB\u00102R$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010/\u001a\u0004\bC\u0010\u0012\"\u0004\bD\u00102R(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010E\u001a\u0004\bF\u0010\u001d\"\u0004\bG\u0010H¨\u0006I"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "Landroid/os/Parcelable;", "", "program", "", "width", "height", "xPosition", "yPosition", TypedValues.CycleType.S_WAVE_OFFSET, "duration", "iconResource", "iconClick", "", "iconClickTracking", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "()Ljava/util/List;", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "toString", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getProgram", "setProgram", "(Ljava/lang/String;)V", "Ljava/lang/Integer;", "getWidth", "setWidth", "(Ljava/lang/Integer;)V", "getHeight", "setHeight", "getXPosition", "setXPosition", "getYPosition", "setYPosition", "getOffset", "setOffset", "getDuration", "setDuration", "getIconResource", "setIconResource", "getIconClick", "setIconClick", "Ljava/util/List;", "getIconClickTracking", "setIconClickTracking", "(Ljava/util/List;)V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VastIcon implements Parcelable {
    public static final Parcelable.Creator<VastIcon> CREATOR = new Creator();
    private Integer duration;
    private Integer height;
    private String iconClick;
    private List<String> iconClickTracking;
    private String iconResource;
    private String offset;
    private String program;
    private Integer width;
    private Integer xPosition;
    private Integer yPosition;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VastIcon> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastIcon createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new VastIcon(parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastIcon[] newArray(int i) {
            return new VastIcon[i];
        }
    }

    public VastIcon() {
        this(null, null, null, null, null, null, null, null, null, null, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null);
    }

    public final String getProgram() {
        return this.program;
    }

    public final List<String> component10() {
        return this.iconClickTracking;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final Integer getXPosition() {
        return this.xPosition;
    }

    public final Integer getYPosition() {
        return this.yPosition;
    }

    public final String getOffset() {
        return this.offset;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final String getIconResource() {
        return this.iconResource;
    }

    public final String getIconClick() {
        return this.iconClick;
    }

    public final VastIcon copy(String program, Integer width, Integer height, Integer xPosition, Integer yPosition, String offset, Integer duration, String iconResource, String iconClick, List<String> iconClickTracking) {
        y45.j(iconClickTracking, "iconClickTracking");
        return new VastIcon(program, width, height, xPosition, yPosition, offset, duration, iconResource, iconClick, iconClickTracking);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastIcon)) {
            return false;
        }
        VastIcon vastIcon = (VastIcon) other;
        return y45.e(this.program, vastIcon.program) && y45.e(this.width, vastIcon.width) && y45.e(this.height, vastIcon.height) && y45.e(this.xPosition, vastIcon.xPosition) && y45.e(this.yPosition, vastIcon.yPosition) && y45.e(this.offset, vastIcon.offset) && y45.e(this.duration, vastIcon.duration) && y45.e(this.iconResource, vastIcon.iconResource) && y45.e(this.iconClick, vastIcon.iconClick) && y45.e(this.iconClickTracking, vastIcon.iconClickTracking);
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final String getIconClick() {
        return this.iconClick;
    }

    public final List<String> getIconClickTracking() {
        return this.iconClickTracking;
    }

    public final String getIconResource() {
        return this.iconResource;
    }

    public final String getOffset() {
        return this.offset;
    }

    public final String getProgram() {
        return this.program;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final Integer getXPosition() {
        return this.xPosition;
    }

    public final Integer getYPosition() {
        return this.yPosition;
    }

    public int hashCode() {
        String str = this.program;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.width;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.xPosition;
        int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.yPosition;
        int iHashCode5 = (iHashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str2 = this.offset;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num5 = this.duration;
        int iHashCode7 = (iHashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str3 = this.iconResource;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.iconClick;
        return ((iHashCode8 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.iconClickTracking.hashCode();
    }

    public final void setDuration(Integer num) {
        this.duration = num;
    }

    public final void setHeight(Integer num) {
        this.height = num;
    }

    public final void setIconClick(String str) {
        this.iconClick = str;
    }

    public final void setIconClickTracking(List<String> list) {
        y45.j(list, "<set-?>");
        this.iconClickTracking = list;
    }

    public final void setIconResource(String str) {
        this.iconResource = str;
    }

    public final void setOffset(String str) {
        this.offset = str;
    }

    public final void setProgram(String str) {
        this.program = str;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public final void setXPosition(Integer num) {
        this.xPosition = num;
    }

    public final void setYPosition(Integer num) {
        this.yPosition = num;
    }

    public String toString() {
        return "VastIcon(program=" + this.program + ", width=" + this.width + ", height=" + this.height + ", xPosition=" + this.xPosition + ", yPosition=" + this.yPosition + ", offset=" + this.offset + ", duration=" + this.duration + ", iconResource=" + this.iconResource + ", iconClick=" + this.iconClick + ", iconClickTracking=" + this.iconClickTracking + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeString(this.program);
        Integer num = this.width;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Integer num2 = this.height;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        Integer num3 = this.xPosition;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        }
        Integer num4 = this.yPosition;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num4.intValue());
        }
        parcel.writeString(this.offset);
        Integer num5 = this.duration;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num5.intValue());
        }
        parcel.writeString(this.iconResource);
        parcel.writeString(this.iconClick);
        parcel.writeStringList(this.iconClickTracking);
    }

    public VastIcon(String str, Integer num, Integer num2, Integer num3, Integer num4, String str2, Integer num5, String str3, String str4, List<String> list) {
        y45.j(list, "iconClickTracking");
        this.program = str;
        this.width = num;
        this.height = num2;
        this.xPosition = num3;
        this.yPosition = num4;
        this.offset = str2;
        this.duration = num5;
        this.iconResource = str3;
        this.iconClick = str4;
        this.iconClickTracking = list;
    }

    public VastIcon(String str, Integer num, Integer num2, Integer num3, Integer num4, String str2, Integer num5, String str3, String str4, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? 0 : num, (i & 4) != 0 ? 0 : num2, (i & 8) != 0 ? -1 : num3, (i & 16) != 0 ? -1 : num4, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? 0 : num5, (i & 128) != 0 ? null : str3, (i & 256) != 0 ? null : str4, (i & 512) != 0 ? new ArrayList() : list);
    }
}
