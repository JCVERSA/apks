package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0016\b\u0087\u0081\u0002\u0018\u0000 \u00142\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u0015B\u0011\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0012\u001a\u0004\b\u0013\u0010\bj\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"¨\u0006#"}, d2 = {"Lcom/transsion/memberapi/MemberSource;", "Landroid/os/Parcelable;", "", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "()Ljava/lang/String;", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Ljava/lang/String;", "getValue", "Companion", "a", "SOURCE_HDDL", "SOURCE_MULTI_DL", "SOURCE_AD_DIALOG", "SOURCE_DOWNLOAD_DIALOG", "SOURCE_LANDSCAPE_PLAY", "SOURCE_OTHER_DOWNLOAD_DIALOG", "SOURCE_AD", "THREE_IN_ONE_POPUP", "SOURCE_STREAM_RESOLUTION_DIALOG", "SOURCE_STREAM_RESOLUTION_TIP", "SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR", "SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG", "SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum MemberSource implements Parcelable {
    SOURCE_HDDL("HDDL"),
    SOURCE_MULTI_DL("Multi_DL_DIALOG"),
    SOURCE_AD_DIALOG("AD_DIALOG"),
    SOURCE_DOWNLOAD_DIALOG("DOWNLOAD_DIALOG"),
    SOURCE_LANDSCAPE_PLAY("LANDSCAPE_PLAY"),
    SOURCE_OTHER_DOWNLOAD_DIALOG("OTHER_DOWNLOAD_DIALOG"),
    SOURCE_AD("SOURCE_AD"),
    THREE_IN_ONE_POPUP("THREE_IN_ONE_POPUP"),
    SOURCE_STREAM_RESOLUTION_DIALOG("STREAM_RESOLUTION_DIALOG"),
    SOURCE_STREAM_RESOLUTION_TIP("STREAM_RESOLUTION_TIP"),
    SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR("SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR"),
    SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG("SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG"),
    SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT("SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT");

    private final String value;
    private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<MemberSource> CREATOR = new Parcelable.Creator() {
        @Override
        public final MemberSource createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return MemberSource.valueOf(parcel.readString());
        }

        @Override
        public final MemberSource[] newArray(int i10) {
            return new MemberSource[i10];
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final MemberSource a(String value) {
            Intrinsics.h(value, "value");
            switch (value.hashCode()) {
                case -1829735462:
                    if (value.equals("THREE_IN_ONE_POPUP")) {
                        return MemberSource.THREE_IN_ONE_POPUP;
                    }
                    break;
                case -440595233:
                    if (value.equals("DOWNLOAD_DIALOG")) {
                        return MemberSource.SOURCE_DOWNLOAD_DIALOG;
                    }
                    break;
                case -420306344:
                    if (value.equals("LANDSCAPE_PLAY")) {
                        return MemberSource.SOURCE_LANDSCAPE_PLAY;
                    }
                    break;
                case -292643118:
                    if (value.equals("SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR")) {
                        return MemberSource.SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR;
                    }
                    break;
                case -63224452:
                    if (value.equals("SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG")) {
                        return MemberSource.SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG;
                    }
                    break;
                case 2212484:
                    if (value.equals("HDDL")) {
                        return MemberSource.SOURCE_HDDL;
                    }
                    break;
                case 30702908:
                    if (value.equals("STREAM_RESOLUTION_DIALOG")) {
                        return MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG;
                    }
                    break;
                case 148144095:
                    if (value.equals("SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT")) {
                        return MemberSource.SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT;
                    }
                    break;
                case 684919184:
                    if (value.equals("OTHER_DOWNLOAD_DIALOG")) {
                        return MemberSource.SOURCE_OTHER_DOWNLOAD_DIALOG;
                    }
                    break;
                case 702700807:
                    if (value.equals("STREAM_RESOLUTION_TIP")) {
                        return MemberSource.SOURCE_STREAM_RESOLUTION_TIP;
                    }
                    break;
                case 1088214727:
                    if (value.equals("SOURCE_AD")) {
                        return MemberSource.SOURCE_AD;
                    }
                    break;
                case 1456277732:
                    if (value.equals("AD_DIALOG")) {
                        return MemberSource.SOURCE_AD_DIALOG;
                    }
                    break;
                case 1758712121:
                    if (value.equals("Multi_DL_DIALOG")) {
                        return MemberSource.SOURCE_MULTI_DL;
                    }
                    break;
            }
            throw new IllegalArgumentException();
        }

        private Companion() {
        }
    }

    MemberSource(String str) {
        this.value = str;
    }

    public static EnumEntries<MemberSource> getEntries() {
        return $ENTRIES;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final String getValue() {
        return this.value;
    }

    @Override
    public String toString() {
        return this.value;
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(name());
    }
}
