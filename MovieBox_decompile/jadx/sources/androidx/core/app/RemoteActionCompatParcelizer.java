package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f7747a = (IconCompat) versionedParcel.v(remoteActionCompat.f7747a, 1);
        remoteActionCompat.f7748b = versionedParcel.l(remoteActionCompat.f7748b, 2);
        remoteActionCompat.f7749c = versionedParcel.l(remoteActionCompat.f7749c, 3);
        remoteActionCompat.f7750d = (PendingIntent) versionedParcel.r(remoteActionCompat.f7750d, 4);
        remoteActionCompat.f7751e = versionedParcel.h(remoteActionCompat.f7751e, 5);
        remoteActionCompat.f7752f = versionedParcel.h(remoteActionCompat.f7752f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.M(remoteActionCompat.f7747a, 1);
        versionedParcel.D(remoteActionCompat.f7748b, 2);
        versionedParcel.D(remoteActionCompat.f7749c, 3);
        versionedParcel.H(remoteActionCompat.f7750d, 4);
        versionedParcel.z(remoteActionCompat.f7751e, 5);
        versionedParcel.z(remoteActionCompat.f7752f, 6);
    }
}
