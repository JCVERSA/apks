package androidx.compose.runtime;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0001\u0018\u0000 \u00102\u00020\u00012\u00020\u0002:\u0001\u0011B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Landroidx/compose/runtime/ParcelableSnapshotMutableDoubleState;", "Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;", "Landroid/os/Parcelable;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "<init>", "(D)V", "Landroid/os/Parcel;", "parcel", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Companion", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"BanParcelableUsage"})
public final class ParcelableSnapshotMutableDoubleState extends SnapshotMutableDoubleStateImpl implements Parcelable {
    public static final int $stable = 0;

    @JvmField
    public static final Parcelable.Creator<ParcelableSnapshotMutableDoubleState> CREATOR = new a();

    public static final class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ParcelableSnapshotMutableDoubleState createFromParcel(Parcel parcel) {
            return new ParcelableSnapshotMutableDoubleState(parcel.readDouble());
        }

        @Override
        public ParcelableSnapshotMutableDoubleState[] newArray(int i10) {
            return new ParcelableSnapshotMutableDoubleState[i10];
        }
    }

    public ParcelableSnapshotMutableDoubleState(double d10) {
        super(d10);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public Double getValue() {
        return z0.a(this);
    }

    @Override
    public void setValue(double d10) {
        z0.c(this, d10);
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        parcel.writeDouble(getDoubleValue());
    }

    @Override
    public Object getValue() {
        return getValue();
    }

    @Override
    public void setValue(Object obj) {
        setValue(((Number) obj).doubleValue());
    }
}
