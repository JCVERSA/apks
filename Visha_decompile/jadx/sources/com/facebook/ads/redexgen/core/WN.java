package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.apiinvoke.invoke.RspCode;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.tranplayer.MediaPlayer;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class WN {
    public static byte[] A00;
    public static String[] A01 = {"T4dPy6oALRnRtXie0LYtNa7PXoaz5xNV", "GuB", "", "N5ZcwGbFLOfjQt8i7LOYdNhhAY9bfZ8J", "XGEF2r9HzP4eyBZiq0puzcaX55o", "r68Pu4BAqG0jUrZ19Ek7iVXcY822rh1q", "w97ZnD7u", "Y1Vl"};

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A00 = new byte[]{77, 66, 83, 74, 78, 56, 77, 83, 95, 73, 79, 89, 94, 73, 83, 88, 67, 71, 73, 66, 84, 91, 74, 82, 69, 70, 74, 84, 81, 74, 86, 90, 91, 65, 80, 91, 65, 85, 87, 90, 90, 83, 68, 73, 82, 89, 91, 87, 95, 88, 88, 122, 117, 60, 111, 59, 104, 111, 122, 105, 111, 59, 90, 110, 127, 114, 126, 117, 120, 126, 85, 126, 111, 108, 116, 105, 112, 90, 120, 111, 114, 109, 114, 111, 98, 53, 59, 86, 122, 112, 126, 59, 104, 110, 105, 126, 59, 111, 115, 122, 111, 59, 114, 111, 60, 104, 59, 114, 117, 59, 98, 116, 110, 105, 59, 90, 117, 127, 105, 116, 114, 127, 86, 122, 117, 114, 125, 126, 104, 111, 53, 99, 118, 119, 59, 125, 114, 119, 126, 53, 28, 1, 13, ByteCode.T_LONG, 24, 6, 12, ByteCode.T_LONG, 21, 21, 17, 18, 38, 55, 58, 54, 61, 48, 54, 29, 54, 39, 36, 60, 33, 56, 26, 104, 64, 79, 126, 64, 66, 85, 72, 87, 72, 85, 88, 41, 38, 44, 58, 39, 33, 44, 36, 43, 33, 55, 42, 44, 33, 107, 44, 43, 49, 32, 43, 49, 107, 36, 38, 49, 44, 42, 43, 107, 19, 12, 0, 18, 58, 53, Utf8.REPLACEMENT_BYTE, 41, 52, 50, Utf8.REPLACEMENT_BYTE, 117, 50, 53, 47, 62, 53, 47, 117, 56, 58, 47, 62, 60, 52, 41, 34, 117, 25, 9, 20, 12, 8, 26, 25, 23, 30, 112, 125, 125, 126, 70, 86, 75, 83, 87, 65, 86, 113, 118, 104, 50, 48, 61, 61, 52, 35, 24, 53, 20, 22, 27, 27, 18, 5, 35, 14, 7, 18, 54, 57, 60, 48, 59, 33, 1, 58, 62, 48, 59, 113, 125, 127, 60, 115, 124, 118, 96, 125, 123, 118, 60, 112, 96, 125, 101, 97, 119, 96, 60, 115, 98, 98, 126, 123, 113, 115, 102, 123, 125, 124, 77, 123, 118, 15, 3, 1, 66, 13, 2, 8, 30, 3, 5, 8, 66, 26, 9, 2, 8, 5, 2, ByteCode.T_LONG, 103, 107, 105, 42, 98, 101, 103, 97, 102, 107, 107, 111, 42, 99, 107, 107, 99, 104, 97, 116, 104, 101, 125, 119, 112, 107, 118, 97, 101, 106, 42, 67, 107, 107, 99, 104, 97, 84, 104, 101, 125, 87, 112, 107, 118, 97, 69, 74, 75, 114, 97, 118, 104, 101, 125, 65, 124, 112, 97, 118, 106, 101, 104, 69, 103, 112, 109, 114, 109, 112, 125, 109, 97, 99, 32, 104, 111, 109, 107, 108, 97, 97, 101, 32, 101, 111, 122, 111, 96, 111, 66, 78, 79, 71, 72, 70, 126, 82, 84, 81, 81, 78, 83, 85, 82, 108, 84, 77, 85, 72, 118, 72, 79, 69, 78, 86, 3, 15, 14, 6, 9, 7, Utf8.REPLACEMENT_BYTE, 19, 21, 16, 16, 15, 18, 20, 19, 51, 16, 12, 9, 20, 51, 3, 18, 5, 5, 14, 45, 21, 12, 20, 9, 55, 9, 14, 4, 15, 23, 5, 20, 3, 7, 18, 3, 57, 8, 3, 17, 57, 18, 7, 4, 75, 79, 4, ByteCode.T_LONG, 14, 22, 7, 16, 7, 6, 61, 1, 14, ByteCode.T_LONG, 1, 9, 61, 6, 7, 14, 3, 27, 61, 15, 17, 39, 46, 33, 43, 35, 42, 61, 27, 38, 34, 42, 23, ByteCode.T_LONG, ByteCode.T_LONG, 15, 36, 56, 56, 60, 118, 99, 99, 60, 32, 45, 53, 98, 43, 35, 35, 43, 32, 41, 98, 47, 35, 33, 99, Utf8.REPLACEMENT_BYTE, 56, 35, 62, 41, 99, 45, 60, 60, Utf8.REPLACEMENT_BYTE, 99, 38, 58, 58, 62, 61, 82, 78, 78, 74, 73, 0, 21, 21, 74, 86, 91, 67, 20, 93, 85, 85, 93, 86, 95, 20, 89, 85, 87, 21, 94, 5, 24, 21, 64, 71, 90, 93, 72, 71, 93, 118, 78, 72, 68, 76, 90, 61, 39, ByteCode.T_LONG, 55, 53, 55, ByteCode.T_LONG, 50, 61, 56, 32, 49, 38, ByteCode.T_LONG, 55, 56, 61, 55, Utf8.REPLACEMENT_BYTE, 39, ByteCode.T_LONG, 59, 58, ByteCode.T_LONG, 55, 32, 53, 13, 23, 59, 7, 22, 1, 5, 16, 13, 18, 1, 59, 5, 23, 59, 7, 16, 5, 59, 18, 86, 106, 102, 117, 108, 98, 115, 85, 76, 95, 72, 86, 91, 67, 57, 37, 40, 48, 103, 46, 38, 38, 46, 37, 44, 103, 42, 38, 36, 53, 34, 52, 46, 61, 34, 10, 40, 35, 34, 35, 56, Utf8.REPLACEMENT_BYTE, 39, 35, 51, 31, 50, 65, 94, 82, 64, 99, 78, 71, 82};
    }

    static {
        A09();
    }

    private int A00(C1635dL c1635dL) {
        PackageInfo packageInfo;
        try {
            PackageManager packageManager = c1635dL.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(A07(RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE, 19, 65), 0)) != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                return Integer.parseInt(packageInfo.versionName.split(A07(166, 2, 9), 2)[0]);
            }
            return -1;
        } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
            return -1;
        }
    }

    public static Intent A01(Uri uri) {
        Intent intent = new Intent(A07(ByteCode.INVOKEDYNAMIC, 26, 10), uri);
        intent.setComponent(null);
        intent.setSelector(null);
        return intent;
    }

    public static Intent A02(C1635dL c1635dL, Uri uri) {
        Intent intentA01 = A01(uri);
        intentA01.addCategory(A07(IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, 33, 20));
        intentA01.addFlags(268435456);
        intentA01.putExtra(A07(MediaPlayer.Event.LosePicSerious, 34, 93), c1635dL.getPackageName());
        intentA01.putExtra(A07(494, 14, 41), false);
        if (U7.A1y(c1635dL)) {
            if (A07(TypedValues.PositionType.TYPE_CURVE_FIT, 2, 98).equals(uri.getScheme())) {
                intentA01.setPackage(A07(RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE, 19, 65));
            }
        }
        return intentA01;
    }

    public static Intent A03(C1635dL c1635dL, Uri uri) {
        Intent intentA01 = A01(uri);
        intentA01.setPackage(A07(TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY, 19, 35));
        intentA01.putExtra(A07(259, 8, 30), c1635dL.getPackageName());
        intentA01.putExtra(A07(682, 7, 117), true);
        return intentA01;
    }

    public static Uri A04(C1635dL c1635dL, Uri uri) {
        boolean zEquals = A07(676, 6, 72).equals(uri.getScheme());
        String strA07 = A07(587, 26, 117);
        if (zEquals) {
            return WQ.A00(strA07 + uri.getEncodedQuery());
        }
        if (uri.toString().startsWith(strA07)) {
            return uri;
        }
        c1635dL.A0F().AB3(5);
        return null;
    }

    private final ME A05(C1635dL c1635dL, Uri uri, String str, Map<String, String> map) throws W9 {
        boolean zA05 = U8.A05(c1635dL);
        boolean isInAppBrowserEnabled = A0F(uri);
        if (isInAppBrowserEnabled && zA05) {
            A0C(c1635dL, uri, str, map);
            ME me2 = ME.A08;
            if (A01[7].length() == 30) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[2] = "";
            strArr[1] = "Q7p";
            return me2;
        }
        c1635dL.A0F().A9p(zA05);
        A0A(c1635dL, uri);
        return ME.A07;
    }

    public static ME A06(WN wn, C1635dL c1635dL, Uri uri, String str, Map<String, String> extraData) throws W9 {
        boolean z = A0F(uri) && A07(689, 15, 6).equals(uri.getHost());
        boolean isGooglePlayWebLink = A07(676, 6, 72).equals(uri.getScheme());
        if (!isGooglePlayWebLink && !z) {
            return wn.A05(c1635dL, uri, str, extraData);
        }
        try {
            wn.A0B(c1635dL, uri, str);
            return ME.A03;
        } catch (WL unused) {
            return wn.A05(c1635dL, uri, str, extraData);
        }
    }

    private String A08(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    private void A0A(C1635dL c1635dL, Uri uri) throws W9 {
        WB.A0D(c1635dL, A02(c1635dL, uri));
    }

    private final void A0B(C1635dL c1635dL, Uri uri, String str) throws W9, WL {
        if (A0H(c1635dL)) {
            if (U7.A1H(c1635dL)) {
                String queryParameter = uri.getQueryParameter(A07(613, 2, 62));
                if (!TextUtils.isEmpty(queryParameter)) {
                    if (A01[3].charAt(29) != 'Z') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A01;
                    strArr[4] = "AXwrjbGi2NqoDqohSkmHlyhQGK6";
                    strArr[6] = "xSKC0PNk";
                    String strA07 = A07(615, 13, 102);
                    String packageName = uri.toString();
                    AbstractC1122Nw.A03(queryParameter, strA07, packageName);
                }
            }
            boolean z = (c1635dL.A0H().A01() && U7.A1b(c1635dL)) || (U7.A1z(c1635dL) && A0I(c1635dL));
            if (!z) {
                boolean shouldTryToOpenSplitScreen = U7.A2L(c1635dL);
                if (shouldTryToOpenSplitScreen) {
                    boolean shouldTryToOpenSplitScreen2 = WB.A0E(c1635dL, A03(c1635dL, uri));
                    if (shouldTryToOpenSplitScreen2) {
                        return;
                    }
                }
            }
            boolean zA0M = A0M(c1635dL, uri, str);
            if (A01[3].charAt(29) != 'Z') {
                A01[7] = "w5Gj6271lmeoEbiTTMEsWTdaWp";
                if (zA0M) {
                    return;
                }
            } else {
                A01[3] = "TMuIQjN9vpUXBqY7VYY4Z8DVMg5lcZnK";
                if (zA0M) {
                    return;
                }
            }
            boolean shouldTryToOpenSplitScreen3 = A0K(c1635dL, uri);
            if (shouldTryToOpenSplitScreen3) {
                return;
            }
            Intent intentA02 = A02(c1635dL, uri);
            intentA02.setPackage(A07(TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY, 19, 35));
            if (Build.VERSION.SDK_INT >= 24 && z) {
                intentA02.addFlags(268472320);
            }
            WB.A0D(c1635dL, intentA02);
            return;
        }
        throw new WL();
    }

    private void A0C(C1635dL c1635dL, Uri uri, String str, Map<String, String> map) {
        AdActivityIntent adActivityIntentA05 = WB.A05(c1635dL);
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            adActivityIntentA05.addFlags(268435456);
        }
        adActivityIntentA05.putExtra(A07(722, 8, 120), EnumC1305Vb.A03);
        adActivityIntentA05.putExtra(A07(249, 10, 107), uri.toString());
        adActivityIntentA05.putExtra(A07(277, 11, 26), str);
        adActivityIntentA05.putExtra(A07(533, 11, 0), System.currentTimeMillis());
        if (map != null) {
            String strA07 = A07(267, 10, 56);
            adActivityIntentA05.putExtra(strA07, map.get(strA07));
            String strA08 = A07(655, 21, 43);
            adActivityIntentA05.putExtra(strA08, map.get(strA08));
            String strA09 = A07(628, 27, 27);
            adActivityIntentA05.putExtra(strA09, map.get(strA09));
            String strA010 = A07(TypedValues.PositionType.TYPE_POSITION_TYPE, 23, 45);
            adActivityIntentA05.putExtra(strA010, map.get(strA010));
            String strA011 = A07(714, 8, 25);
            String str2 = map.get(strA011);
            if (str2 != null) {
                adActivityIntentA05.putExtra(strA011, str2);
            }
        }
        try {
            WB.A0B(c1635dL, adActivityIntentA05);
        } catch (W9 e) {
            Throwable cause = e.getCause();
            W9 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            c1635dL.A08().AAy(A07(ByteCode.JSR, 11, 110), AbstractC1248Sv.A0D, new C1249Sw(cause2));
            Log.e(A07(149, 17, 28), A07(50, 90, 84), cause2);
        }
    }

    public static void A0D(WN wn, C1635dL c1635dL, Uri uri, String str) {
        wn.A0N(c1635dL, uri, str);
    }

    public static void A0E(WN wn, C1635dL c1635dL, Uri uri, String str) throws W9 {
        A06(wn, c1635dL, uri, str, null);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0035  */
    /* JADX WARN: Code duplicated, block: B:18:? A[RETURN, SYNTHETIC] */
    public static boolean A0F(Uri uri) {
        boolean isHttpPermitted;
        boolean isHttpPermitted2 = Build.VERSION.SDK_INT < 24 || NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() || NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(uri.getHost());
        String scheme = uri.getScheme();
        if (isHttpPermitted2) {
            boolean isHttpPermitted3 = A07(544, 4, 48).equalsIgnoreCase(scheme);
            if (!isHttpPermitted3) {
                isHttpPermitted = A07(582, 5, 1).equalsIgnoreCase(scheme);
                if (isHttpPermitted) {
                    return false;
                }
            }
        } else {
            isHttpPermitted = A07(582, 5, 1).equalsIgnoreCase(scheme);
            if (isHttpPermitted) {
                return false;
            }
        }
        return true;
    }

    private boolean A0G(C1635dL c1635dL) {
        if (!U7.A1E(c1635dL)) {
            return false;
        }
        int deviceFBVersion = U7.A0E(c1635dL);
        int iA00 = A00(c1635dL);
        if (deviceFBVersion == -1 || iA00 == -1 || deviceFBVersion > iA00) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        String[] strArr = A01;
        String str = strArr[4];
        String str2 = strArr[6];
        int length = str.length();
        int fbVersionWithGPOverlay = str2.length();
        if (length == fbVersionWithGPOverlay) {
            throw new RuntimeException();
        }
        A01[7] = "9F";
        if (i < 28) {
            return false;
        }
        String[] strArr2 = A01;
        String str3 = strArr2[2];
        String str4 = strArr2[1];
        int length2 = str3.length();
        int fbVersionWithGPOverlay2 = str4.length();
        if (length2 != fbVersionWithGPOverlay2) {
            String[] strArr3 = A01;
            strArr3[4] = "HTEWLbQNfCJbfH7LEcJTogLCYG9";
            strArr3[6] = "jIuteURS";
            return true;
        }
        return true;
    }

    private boolean A0H(C1635dL c1635dL) {
        Intent playStoreIntent = new Intent(A07(ByteCode.INVOKEDYNAMIC, 26, 10), WQ.A00(A07(548, 34, 3)));
        Iterator<ResolveInfo> it = c1635dL.getPackageManager().queryIntentActivities(playStoreIntent, 0).iterator();
        do {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[5].charAt(7) != strArr[0].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "NqbTETCkL6wtg2G74gvKWlTJws9";
            strArr2[6] = "JszVyiBC";
            if (!zHasNext) {
                return false;
            }
        } while (!it.next().activityInfo.applicationInfo.packageName.equals(A07(TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY, 19, 35)));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0079 A[PHI: r0 r1 r5
      0x0079: PHI (r0v21 int) = (r0v17 int), (r0v25 int) binds: [B:33:0x00d7, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0079: PHI (r1v15 java.lang.String) = (r1v12 java.lang.String), (r1v19 java.lang.String) binds: [B:33:0x00d7, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]
      0x0079: PHI (r5v2 java.lang.String) = (r5v0 java.lang.String), (r5v3 java.lang.String) binds: [B:33:0x00d7, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    public static boolean A0I(C1635dL c1635dL) {
        String strA07;
        String strA08;
        int identifier;
        boolean z = Build.VERSION.SDK_INT >= 24;
        boolean zA0J = A0J(c1635dL);
        String[] strArr = A01;
        if (strArr[5].charAt(7) != strArr[0].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[2] = "";
        strArr2[1] = "LeI";
        boolean z2 = z && zA0J;
        boolean z3 = true;
        boolean supportsSplitScreenMultiWindow = true;
        boolean appResizingSupported = true;
        boolean onAndAboveNOS = U7.A28(c1635dL);
        if (onAndAboveNOS) {
            Resources system = Resources.getSystem();
            String[] strArr3 = A01;
            if (strArr3[5].charAt(7) != strArr3[0].charAt(7)) {
                String strA09 = A07(431, 26, 110);
                strA07 = A07(245, 4, 93);
                strA08 = A07(ByteCode.PUTSTATIC, 7, 7);
                identifier = system.getIdentifier(strA09, strA07, strA08);
                if (identifier != 0) {
                    z3 = Resources.getSystem().getBoolean(identifier);
                }
            } else {
                String[] strArr4 = A01;
                strArr4[2] = "";
                strArr4[1] = "Rqc";
                String strA010 = A07(431, 26, 110);
                strA07 = A07(245, 4, 93);
                strA08 = A07(ByteCode.PUTSTATIC, 7, 7);
                identifier = system.getIdentifier(strA010, strA07, strA08);
                if (identifier != 0) {
                    z3 = Resources.getSystem().getBoolean(identifier);
                }
            }
            int identifier2 = system.getIdentifier(A07(457, 37, 47), strA07, strA08);
            if (identifier2 != 0) {
                supportsSplitScreenMultiWindow = Resources.getSystem().getBoolean(identifier2);
            }
            appResizingSupported = WZ.A0C(c1635dL);
            z2 &= z3 && supportsSplitScreenMultiWindow && appResizingSupported;
        }
        c1635dL.A0F().ABW(zA0J, z2, z3, supportsSplitScreenMultiWindow, appResizingSupported);
        return z2;
    }

    public static boolean A0J(C1635dL c1635dL) {
        ActivityInfo activityInfo;
        try {
            Activity activityA0E = c1635dL.A0E();
            PackageManager packageManager = c1635dL.getPackageManager();
            if (activityA0E == null || packageManager == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT > 32) {
                activityInfo = packageManager.getActivityInfo(activityA0E.getComponentName(), PackageManager.ComponentInfoFlags.of(0L));
            } else {
                activityInfo = packageManager.getActivityInfo(activityA0E.getComponentName(), 128);
            }
            Field declaredField = ActivityInfo.class.getDeclaredField(A07(704, 10, 8));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(activityInfo);
            return (obj instanceof Integer) && ((Integer) obj).intValue() != 0;
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            c1635dL.A0F().ABV(e.getMessage());
        }
        return false;
    }

    public static boolean A0K(C1635dL c1635dL, Uri uri) {
        String strA07 = A07(TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY, 19, 35);
        if (!U7.A1G(c1635dL)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            c1635dL.A0F().AB3(1);
            return false;
        }
        PackageManager packageManager = c1635dL.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(strA07, 0);
            if (packageInfo != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                String[] strArrSplit = packageInfo.versionName.split(A07(166, 2, 9), 2);
                if (strArrSplit.length < 1) {
                    c1635dL.A0F().AB3(2);
                    return false;
                }
                if (Integer.parseInt(strArrSplit[0]) < U7.A0G(c1635dL)) {
                    c1635dL.A0F().AB3(3);
                    return false;
                }
            }
            Intent intent = new Intent(A07(ByteCode.INVOKEDYNAMIC, 26, 10));
            String packageName = c1635dL.getPackageName();
            intent.setPackage(strA07);
            Uri hsdpUri = A04(c1635dL, uri);
            if (hsdpUri == null) {
                return false;
            }
            intent.setData(hsdpUri);
            intent.putExtra(A07(682, 7, 117), true);
            intent.putExtra(A07(259, 8, 30), packageName);
            if (intent.resolveActivity(packageManager) != null) {
                Activity activityA0E = c1635dL.A0E();
                if (activityA0E == null) {
                    activityA0E = ActivityUtils.A00();
                }
                if (activityA0E != null) {
                    activityA0E.startActivityForResult(intent, 945321098);
                    c1635dL.A0F().AB3(0);
                    return true;
                }
                c1635dL.A0F().AB3(7);
                return false;
            }
            LH lhA0F = c1635dL.A0F();
            String[] strArr = A01;
            if (strArr[2].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[2] = "";
            strArr2[1] = "uL3";
            lhA0F.AB3(6);
            return false;
        } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
            c1635dL.A0F().AB3(4);
            return false;
        }
    }

    private boolean A0L(C1635dL c1635dL, Uri uri, String str) throws W9 {
        try {
            Activity activityA0E = c1635dL.A0E();
            String string = uri.toString();
            if (activityA0E != null && !TextUtils.isEmpty(string)) {
                Intent fbIntent = new Intent();
                if (U7.A1F(c1635dL)) {
                    String strA06 = AbstractC1910hy.A06(str);
                    if (TextUtils.isEmpty(strA06)) {
                        return false;
                    }
                    fbIntent.putExtra(A07(0, 20, 67), A08(strA06));
                }
                fbIntent.setComponent(new ComponentName(A07(RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE, 19, 65), A07(341, 71, 75)));
                fbIntent.putExtra(A07(140, 9, 22), string);
                fbIntent.putExtra(A07(37, 13, 89), A08(A07(20, 17, 90)));
                if (!WB.A0E(c1635dL, fbIntent)) {
                    activityA0E.startActivityForResult(fbIntent, 2);
                    return true;
                }
                return true;
            }
            return false;
        } catch (ActivityNotFoundException | IllegalStateException e) {
            c1635dL.A0F().AB2(e.getMessage());
            return false;
        }
    }

    private boolean A0M(C1635dL c1635dL, Uri uri, String str) throws W9 {
        return A0G(c1635dL) && A0L(c1635dL, uri, str);
    }

    private final boolean A0N(C1635dL c1635dL, Uri uri, String str) {
        return WB.A0G(c1635dL, uri, str);
    }

    public static boolean A0O(WN wn, C1635dL c1635dL, Uri uri, String str) {
        try {
            A0E(wn, c1635dL, uri, str);
            return true;
        } catch (W9 e) {
            Throwable cause = e.getCause();
            W9 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            c1635dL.A08().AAy(A07(ByteCode.JSR, 11, 110), AbstractC1248Sv.A05, new C1249Sw(cause2));
            return false;
        }
    }
}
