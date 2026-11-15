package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f7833a = versionedParcel.p(iconCompat.f7833a, 1);
        iconCompat.f7835c = versionedParcel.j(iconCompat.f7835c, 2);
        iconCompat.f7836d = versionedParcel.r(iconCompat.f7836d, 3);
        iconCompat.f7837e = versionedParcel.p(iconCompat.f7837e, 4);
        iconCompat.f7838f = versionedParcel.p(iconCompat.f7838f, 5);
        iconCompat.f7839g = (ColorStateList) versionedParcel.r(iconCompat.f7839g, 6);
        iconCompat.f7841i = versionedParcel.t(iconCompat.f7841i, 7);
        iconCompat.f7842j = versionedParcel.t(iconCompat.f7842j, 8);
        iconCompat.t();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(true, true);
        iconCompat.u(versionedParcel.f());
        int i10 = iconCompat.f7833a;
        if (-1 != i10) {
            versionedParcel.F(i10, 1);
        }
        byte[] bArr = iconCompat.f7835c;
        if (bArr != null) {
            versionedParcel.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f7836d;
        if (parcelable != null) {
            versionedParcel.H(parcelable, 3);
        }
        int i11 = iconCompat.f7837e;
        if (i11 != 0) {
            versionedParcel.F(i11, 4);
        }
        int i12 = iconCompat.f7838f;
        if (i12 != 0) {
            versionedParcel.F(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.f7839g;
        if (colorStateList != null) {
            versionedParcel.H(colorStateList, 6);
        }
        String str = iconCompat.f7841i;
        if (str != null) {
            versionedParcel.J(str, 7);
        }
        String str2 = iconCompat.f7842j;
        if (str2 != null) {
            versionedParcel.J(str2, 8);
        }
    }
}
