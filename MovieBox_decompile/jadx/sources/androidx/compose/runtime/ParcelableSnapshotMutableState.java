package androidx.compose.runtime;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0001\u0018\u0000 \u0012*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003:\u0001\u0013B\u001d\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Landroidx/compose/runtime/ParcelableSnapshotMutableState;", "T", "Landroidx/compose/runtime/SnapshotMutableStateImpl;", "Landroid/os/Parcelable;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Landroidx/compose/runtime/q2;", "policy", "<init>", "(Ljava/lang/Object;Landroidx/compose/runtime/q2;)V", "Landroid/os/Parcel;", "parcel", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Companion", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"BanParcelableUsage"})
public final class ParcelableSnapshotMutableState<T> extends SnapshotMutableStateImpl implements Parcelable {
    public static final int $stable = 0;
    private static final int PolicyNeverEquals = 0;
    private static final int PolicyReferentialEquality = 2;
    private static final int PolicyStructuralEquality = 1;

    @JvmField
    public static final Parcelable.Creator<ParcelableSnapshotMutableState<Object>> CREATOR = new a();

    public static final class a implements Parcelable.ClassLoaderCreator {
        a() {
        }

        @Override
        public ParcelableSnapshotMutableState createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override
        public ParcelableSnapshotMutableState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            q2 q2VarG;
            if (classLoader == null) {
                classLoader = a.class.getClassLoader();
            }
            Object value = parcel.readValue(classLoader);
            int i10 = parcel.readInt();
            if (i10 == 0) {
                q2VarG = r2.g();
            } else if (i10 == 1) {
                q2VarG = r2.j();
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Unsupported MutableState policy " + i10 + " was restored");
                }
                q2VarG = r2.h();
            }
            return new ParcelableSnapshotMutableState(value, q2VarG);
        }

        @Override
        public ParcelableSnapshotMutableState[] newArray(int i10) {
            return new ParcelableSnapshotMutableState[i10];
        }
    }

    public ParcelableSnapshotMutableState(T t10, q2 q2Var) {
        super(t10, q2Var);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        int i10;
        parcel.writeValue(getValue());
        q2 policy = getPolicy();
        if (Intrinsics.c(policy, r2.g())) {
            i10 = 0;
        } else if (Intrinsics.c(policy, r2.j())) {
            i10 = 1;
        } else {
            if (!Intrinsics.c(policy, r2.h())) {
                throw new IllegalStateException("Only known types of MutableState's SnapshotMutationPolicy are supported");
            }
            i10 = 2;
        }
        parcel.writeInt(i10);
    }
}
