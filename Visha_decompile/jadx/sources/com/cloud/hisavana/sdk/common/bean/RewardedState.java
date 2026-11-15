package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.FrameMetricsAggregator;
import com.transsion.dbdata.beans.media.PlayVideoData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0018J\u0010\u0010\u001b\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0018J\u0010\u0010\u001c\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0018J\u0010\u0010\u001d\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u0018J\u0010\u0010\u001e\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0018Jj\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\"\u001a\u00020!HÖ\u0001¢\u0006\u0004\b\"\u0010#J\u001a\u0010&\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020!HÖ\u0001¢\u0006\u0004\b(\u0010#J \u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020!HÖ\u0001¢\u0006\u0004\b-\u0010.R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010/\u001a\u0004\b0\u0010\u0014\"\u0004\b1\u00102R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u00103\u001a\u0004\b4\u0010\u0016\"\u0004\b5\u00106R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u00107\u001a\u0004\b\u0007\u0010\u0018\"\u0004\b8\u00109R\"\u0010\b\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00107\u001a\u0004\b\b\u0010\u0018\"\u0004\b:\u00109R\"\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00107\u001a\u0004\b\t\u0010\u0018\"\u0004\b;\u00109R\"\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u00107\u001a\u0004\b\n\u0010\u0018\"\u0004\b<\u00109R\"\u0010\u000b\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u00107\u001a\u0004\b\u000b\u0010\u0018\"\u0004\b=\u00109R\"\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u00107\u001a\u0004\b\f\u0010\u0018\"\u0004\b>\u00109R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u00107\u001a\u0004\b\r\u0010\u0018\"\u0004\b?\u00109¨\u0006@"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/RewardedState;", "Landroid/os/Parcelable;", "", "countdownRemainDuration", "", "videoVolume", "", "isAlreadyMeasure", "isRewarded", "isPlayStart", PlayVideoData.TAG_PLAY_COMPLETE, "isShowRetainDialog", "isShowRuDialog", "isPaused", MethodDecl.initName, "(JFZZZZZZZ)V", "", "toString", "()Ljava/lang/String;", "component1", "()J", "component2", "()F", "component3", "()Z", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JFZZZZZZZ)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "J", "getCountdownRemainDuration", "setCountdownRemainDuration", "(J)V", "F", "getVideoVolume", "setVideoVolume", "(F)V", "Z", "setAlreadyMeasure", "(Z)V", "setRewarded", "setPlayStart", "setPlayComplete", "setShowRetainDialog", "setShowRuDialog", "setPaused", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RewardedState implements Parcelable {
    public static final Parcelable.Creator<RewardedState> CREATOR = new Creator();
    private long countdownRemainDuration;
    private boolean isAlreadyMeasure;
    private boolean isPaused;
    private boolean isPlayComplete;
    private boolean isPlayStart;
    private boolean isRewarded;
    private boolean isShowRetainDialog;
    private boolean isShowRuDialog;
    private float videoVolume;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<RewardedState> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final RewardedState createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new RewardedState(parcel.readLong(), parcel.readFloat(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final RewardedState[] newArray(int i) {
            return new RewardedState[i];
        }
    }

    public RewardedState() {
        this(0L, 0.0f, false, false, false, false, false, false, false, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public final long getCountdownRemainDuration() {
        return this.countdownRemainDuration;
    }

    public final float getVideoVolume() {
        return this.videoVolume;
    }

    public final boolean getIsAlreadyMeasure() {
        return this.isAlreadyMeasure;
    }

    public final boolean getIsRewarded() {
        return this.isRewarded;
    }

    public final boolean getIsPlayStart() {
        return this.isPlayStart;
    }

    public final boolean getIsPlayComplete() {
        return this.isPlayComplete;
    }

    public final boolean getIsShowRetainDialog() {
        return this.isShowRetainDialog;
    }

    public final boolean getIsShowRuDialog() {
        return this.isShowRuDialog;
    }

    public final boolean getIsPaused() {
        return this.isPaused;
    }

    public final RewardedState copy(long countdownRemainDuration, float videoVolume, boolean isAlreadyMeasure, boolean isRewarded, boolean isPlayStart, boolean isPlayComplete, boolean isShowRetainDialog, boolean isShowRuDialog, boolean isPaused) {
        return new RewardedState(countdownRemainDuration, videoVolume, isAlreadyMeasure, isRewarded, isPlayStart, isPlayComplete, isShowRetainDialog, isShowRuDialog, isPaused);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RewardedState)) {
            return false;
        }
        RewardedState rewardedState = (RewardedState) other;
        return this.countdownRemainDuration == rewardedState.countdownRemainDuration && Float.compare(this.videoVolume, rewardedState.videoVolume) == 0 && this.isAlreadyMeasure == rewardedState.isAlreadyMeasure && this.isRewarded == rewardedState.isRewarded && this.isPlayStart == rewardedState.isPlayStart && this.isPlayComplete == rewardedState.isPlayComplete && this.isShowRetainDialog == rewardedState.isShowRetainDialog && this.isShowRuDialog == rewardedState.isShowRuDialog && this.isPaused == rewardedState.isPaused;
    }

    public final long getCountdownRemainDuration() {
        return this.countdownRemainDuration;
    }

    public final float getVideoVolume() {
        return this.videoVolume;
    }

    public int hashCode() {
        return (((((((((((((((Long.hashCode(this.countdownRemainDuration) * 31) + Float.hashCode(this.videoVolume)) * 31) + Boolean.hashCode(this.isAlreadyMeasure)) * 31) + Boolean.hashCode(this.isRewarded)) * 31) + Boolean.hashCode(this.isPlayStart)) * 31) + Boolean.hashCode(this.isPlayComplete)) * 31) + Boolean.hashCode(this.isShowRetainDialog)) * 31) + Boolean.hashCode(this.isShowRuDialog)) * 31) + Boolean.hashCode(this.isPaused);
    }

    public final boolean isAlreadyMeasure() {
        return this.isAlreadyMeasure;
    }

    public final boolean isPaused() {
        return this.isPaused;
    }

    public final boolean isPlayComplete() {
        return this.isPlayComplete;
    }

    public final boolean isPlayStart() {
        return this.isPlayStart;
    }

    public final boolean isRewarded() {
        return this.isRewarded;
    }

    public final boolean isShowRetainDialog() {
        return this.isShowRetainDialog;
    }

    public final boolean isShowRuDialog() {
        return this.isShowRuDialog;
    }

    public final void setAlreadyMeasure(boolean z) {
        this.isAlreadyMeasure = z;
    }

    public final void setCountdownRemainDuration(long j) {
        this.countdownRemainDuration = j;
    }

    public final void setPaused(boolean z) {
        this.isPaused = z;
    }

    public final void setPlayComplete(boolean z) {
        this.isPlayComplete = z;
    }

    public final void setPlayStart(boolean z) {
        this.isPlayStart = z;
    }

    public final void setRewarded(boolean z) {
        this.isRewarded = z;
    }

    public final void setShowRetainDialog(boolean z) {
        this.isShowRetainDialog = z;
    }

    public final void setShowRuDialog(boolean z) {
        this.isShowRuDialog = z;
    }

    public final void setVideoVolume(float f) {
        this.videoVolume = f;
    }

    public String toString() {
        return "RewardedState(countdownRemainDuration=" + this.countdownRemainDuration + ", videoVolume=" + this.videoVolume + ", isAlreadyMeasure=" + this.isAlreadyMeasure + ", isRewarded=" + this.isRewarded + ", isPlayStart=" + this.isPlayStart + ", isPlayComplete=" + this.isPlayComplete + ", isShowRetainDialog=" + this.isShowRetainDialog + ", isShowRuDialog=" + this.isShowRuDialog + ", isPaused=" + this.isPaused + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeLong(this.countdownRemainDuration);
        parcel.writeFloat(this.videoVolume);
        parcel.writeInt(this.isAlreadyMeasure ? 1 : 0);
        parcel.writeInt(this.isRewarded ? 1 : 0);
        parcel.writeInt(this.isPlayStart ? 1 : 0);
        parcel.writeInt(this.isPlayComplete ? 1 : 0);
        parcel.writeInt(this.isShowRetainDialog ? 1 : 0);
        parcel.writeInt(this.isShowRuDialog ? 1 : 0);
        parcel.writeInt(this.isPaused ? 1 : 0);
    }

    public RewardedState(long j, float f, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.countdownRemainDuration = j;
        this.videoVolume = f;
        this.isAlreadyMeasure = z;
        this.isRewarded = z2;
        this.isPlayStart = z3;
        this.isPlayComplete = z4;
        this.isShowRetainDialog = z5;
        this.isShowRuDialog = z6;
        this.isPaused = z7;
    }

    public RewardedState(long j, float f, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 1.0f : f, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? false : z4, (i & 64) != 0 ? false : z5, (i & 128) != 0 ? false : z6, (i & 256) == 0 ? z7 : false);
    }
}
