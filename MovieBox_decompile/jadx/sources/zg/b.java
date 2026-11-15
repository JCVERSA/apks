package zg;

import android.support.v4.media.session.PlaybackStateCompat;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

public abstract class b {
    public static final String a(long j10, int i10) {
        if (j10 < 0) {
            return "";
        }
        if (j10 < 1024) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format(Locale.ENGLISH, "%." + i10 + "fB", Arrays.copyOf(new Object[]{Double.valueOf(j10)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (j10 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
            String str2 = String.format(Locale.ENGLISH, "%." + i10 + "fKB", Arrays.copyOf(new Object[]{Double.valueOf(j10 / ((double) 1024))}, 1));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        if (j10 < 1073741824) {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f64324a;
            String str3 = String.format(Locale.ENGLISH, "%." + i10 + "fMB", Arrays.copyOf(new Object[]{Double.valueOf(j10 / ((double) 1048576))}, 1));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
        StringCompanionObject stringCompanionObject4 = StringCompanionObject.f64324a;
        String str4 = String.format(Locale.ENGLISH, "%." + i10 + "fGB", Arrays.copyOf(new Object[]{Double.valueOf(j10 / ((double) 1073741824))}, 1));
        Intrinsics.g(str4, "format(...)");
        return str4;
    }

    public static final String b(long j10, int i10, int i11) {
        if (j10 < 0) {
            return "";
        }
        if (j10 < 1024) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format(Locale.ENGLISH, "%." + i11 + "fB", Arrays.copyOf(new Object[]{Double.valueOf(j10)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (j10 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
            String str2 = String.format(Locale.ENGLISH, "%." + i11 + "fKB", Arrays.copyOf(new Object[]{Double.valueOf(j10 / ((double) 1024))}, 1));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        if (j10 < 1073741824) {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f64324a;
            String str3 = String.format(Locale.ENGLISH, "%." + i10 + "fMB", Arrays.copyOf(new Object[]{Double.valueOf(j10 / ((double) 1048576))}, 1));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
        StringCompanionObject stringCompanionObject4 = StringCompanionObject.f64324a;
        String str4 = String.format(Locale.ENGLISH, "%." + i10 + "fGB", Arrays.copyOf(new Object[]{Double.valueOf(j10 / ((double) 1073741824))}, 1));
        Intrinsics.g(str4, "format(...)");
        return str4;
    }
}
