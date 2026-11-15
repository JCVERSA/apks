package com.facebook.ads.redexgen.core;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.hunantv.media.drm.IDrmSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okio.Utf8;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.classfile.ByteCode;

public final class C7Q extends AbstractC1954im {
    public static byte[] A04;
    public static String[] A05 = {"b4EbQiKGBOPn48tIsiPL5n4N5SxNZ1EN", "C4qAvqPXqcx1", "av0PnThHX1ufh2ncI3f6iPLWfGZcgSDj", "l1hdtvJdt41N", "aFghpyqA523JYmrsO", "P4eeegJbz09MXnMZrJhy5IVHeFKKR7Ef", "fwPno9KqPJ0g1dx57vycq8IipA21WGGJ", "Ava7qu9S1KN"};
    public static final String A06;
    public C1334Wh A00;
    public final Uri A01;
    public final N3 A02;
    public final Map<String, String> A03;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 41);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 4 out of bounds for length 4
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private final List<Intent> A06() {
        List<MM> listA05 = A05();
        ArrayList arrayList = new ArrayList();
        if (listA05 != null) {
            Iterator<MM> it = listA05.iterator();
            while (it.hasNext()) {
                Intent intentA00 = A00(it.next());
                if (intentA00 != null) {
                    arrayList.add(intentA00);
                }
            }
        }
        return arrayList;
    }

    public static void A07() {
        A04 = new byte[]{88, 111, 111, 114, 111, 61, 109, 124, 111, 110, 116, 115, 122, 61, 124, 109, 109, 110, 116, 105, 120, 66, 121, 124, 105, 124, 51, 20, 28, 25, 16, 17, 85, 1, 26, 85, 26, 5, 16, 27, 85, 24, 20, 7, 30, 16, 1, 85, 0, 7, 25, 79, 85, 51, 53, 8, 7, 13, 27, 6, 0, 13, Utf8.REPLACEMENT_BYTE, 48, 58, 44, 49, 55, 58, 112, 55, 48, 42, 59, 48, 42, 112, Utf8.REPLACEMENT_BYTE, 61, 42, 55, 49, 48, 112, 26, 23, 31, 18, 5, 10, 0, 22, ByteCode.T_LONG, 13, 0, 74, 13, 10, 16, 1, 10, 16, 74, 5, 7, 16, 13, ByteCode.T_LONG, 10, 74, 50, 45, 33, 51, 34, 51, 51, 48, 42, 55, 38, 28, 39, 34, 55, 34, 65, 77, 94, 71, 73, 88, 22, 3, 3, 72, 73, 88, 77, 69, 64, 95, 19, 69, 72, 17, 9, 95, 27, 4, 17, 26, 17, 16, 43, 16, 17, 17, 4, 24, 29, 26, 31, 125, 98, 119, 124, 119, 118, 77, 97, 102, 125, 96, 119, 77, 116, 115, 126, 126, 112, 115, 113, 121, 77, 103, 96, 126, 123, 100, 113, 122, 113, 112, 75, 103, 96, 123, 102, 113, 75, 97, 102, 120, 100, 117, 102, 103, 125, 122, 115, 81, 86, 77, 80, 71, 125, 75, 70, 56, Utf8.REPLACEMENT_BYTE, 36, 57, 46, 20, 62, 57, 39, 81, 86, 77, 80, 71, 125, 87, 80, 78, 125, 85, 71, 64, 125, 68, 67, 78, 78, 64, 67, 65, 73, 59, 42, 35, 117, 23, 6, 15, 19, 17, 12, 14, 19, 23, 89};
    }

    static {
        A07();
        A06 = C7Q.class.getSimpleName();
    }

    public C7Q(C1635dL c1635dL, US us, String str, Uri uri, Map<String, String> extraData, MO mo, boolean z, N3 n3) {
        super(c1635dL, us, str, mo, z);
        this.A01 = uri;
        this.A03 = extraData;
        this.A02 = n3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
    
        if (r3.startsWith(r0) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Intent A00(MM mm) {
        if (TextUtils.isEmpty(mm.A05())) {
            return null;
        }
        String strA03 = mm.A03();
        C1635dL c1635dL = ((MH) this).A01;
        String appLinkUri = mm.A05();
        if (!AbstractC1349Ww.A04(c1635dL, appLinkUri)) {
            C1635dL c1635dL2 = ((MH) this).A01;
            if (A05[6].charAt(8) != 'P') {
                throw new RuntimeException();
            }
            A05[5] = "ldjYBpnAKJ5YKanQesg35Gt0OkPWSzAG";
            if (!A09(c1635dL2, strA03)) {
                return null;
            }
        }
        if (!TextUtils.isEmpty(strA03)) {
            String appLinkUri2 = A04(250, 4, 102);
            if (!strA03.startsWith(appLinkUri2)) {
                String appLinkUri3 = A04(ByteCode.IMPDEP1, 10, 74);
            }
            return new Intent(A04(62, 26, 119), WQ.A00(strA03));
        }
        PackageManager packageManager = ((MH) this).A01.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        String appLinkUri4 = mm.A04();
        if (TextUtils.isEmpty(appLinkUri4)) {
            boolean zIsEmpty = TextUtils.isEmpty(strA03);
            String[] strArr = A05;
            String str = strArr[7];
            String appLinkUri5 = strArr[1];
            if (str.length() == appLinkUri5.length()) {
                throw new RuntimeException();
            }
            A05[2] = "P0UyeT8Oj9P4H3GWuZ6UwWdLOtPXQiGU";
            if (zIsEmpty) {
                String appLinkUri6 = mm.A05();
                return packageManager.getLaunchIntentForPackage(appLinkUri6);
            }
        }
        Intent intentA01 = A01(mm);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentA01, 65536);
        if (intentA01.getComponent() == null) {
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                String str2 = resolveInfo.activityInfo.packageName;
                String strA05 = mm.A05();
                if (A05[0].charAt(20) != '5') {
                    throw new RuntimeException();
                }
                A05[5] = "zQ3PtZjh8GquAUsdZUz15LBCi8uwCZq5";
                if (str2.equals(strA05)) {
                    intentA01.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                    break;
                }
            }
        }
        if (listQueryIntentActivities.isEmpty() || intentA01.getComponent() == null) {
            if (!A09(((MH) this).A01, strA03)) {
                return null;
            }
            String appLinkUri7 = mm.A05();
            intentA01.setPackage(appLinkUri7);
        }
        return intentA01;
    }

    private Intent A01(MM mm) {
        Intent intent = new Intent(A04(88, 26, 77));
        intent.addFlags(268435456);
        if (!TextUtils.isEmpty(mm.A05()) && !TextUtils.isEmpty(mm.A04())) {
            intent.setComponent(new ComponentName(mm.A05(), mm.A04()));
        }
        if (!TextUtils.isEmpty(mm.A03())) {
            intent.setData(WQ.A00(mm.A03()));
        }
        return intent;
    }

    private final Uri A02() {
        String queryParameter = this.A01.getQueryParameter(A04(219, 9, 98));
        if (!TextUtils.isEmpty(queryParameter)) {
            return WQ.A00(queryParameter);
        }
        Uri uri = this.A01;
        String storeUrl = A04(IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE, 8, 11);
        String storeId = uri.getQueryParameter(storeUrl);
        Locale locale = Locale.US;
        Object[] objArr = {storeId};
        String storeUrl2 = A04(126, 22, 5);
        return WQ.A00(String.format(locale, storeUrl2, objArr));
    }

    private ME A03() throws W9 {
        WN wn = new WN();
        try {
            return WN.A06(wn, ((MH) this).A01, A02(), ((MH) this).A03, this.A03);
        } catch (W9 unused) {
            String str = A04(26, 27, 92) + this.A01.toString();
            String queryParameter = this.A01.getQueryParameter(A04(228, 22, 11));
            if (queryParameter != null && queryParameter.length() > 0) {
                WN.A0E(wn, ((MH) this).A01, WQ.A00(queryParameter), ((MH) this).A03);
            }
            return ME.A09;
        }
    }

    private List<MM> A05() {
        String queryParameter = this.A01.getQueryParameter(A04(114, 12, 106));
        if (TextUtils.isEmpty(queryParameter)) {
            return null;
        }
        String appsiteDataString = A04(53, 2, 65);
        if (appsiteDataString.equals(queryParameter)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(queryParameter);
            String appsiteDataString2 = A04(55, 7, 64);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(appsiteDataString2);
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    MM mmA00 = MM.A00(jSONArrayOptJSONArray.optJSONObject(i));
                    if (mmA00 != null) {
                        arrayList.add(mmA00);
                    }
                }
            }
        } catch (JSONException e) {
            InterfaceC1247Su interfaceC1247SuA08 = ((MH) this).A01.A08();
            int i2 = AbstractC1248Sv.A24;
            C1249Sw c1249Sw = new C1249Sw(e);
            String appsiteDataString3 = A04(IDrmSession.ERROR_SESSION_DRM_NULL, 7, 61);
            interfaceC1247SuA08.AAy(appsiteDataString3, i2, c1249Sw);
            String str = A06;
            String appsiteDataString4 = A04(0, 26, 52);
            Log.w(str, appsiteDataString4, e);
        }
        return arrayList;
    }

    private boolean A08() {
        List<Intent> appLaunchIntents = A06();
        if (appLaunchIntents == null) {
            return false;
        }
        Iterator<Intent> it = appLaunchIntents.iterator();
        while (it.hasNext()) {
            try {
                if (WB.A0D(((MH) this).A01, it.next())) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean A09(C1635dL c1635dL, String str) {
        return Build.VERSION.SDK_INT >= 30 && str != null && U7.A23(c1635dL);
    }

    @Override
    public final ME A0H() {
        ME meA0M = ME.A09;
        if (((AbstractC1954im) this).A03) {
            meA0M = A0M();
        } else {
            this.A03.put(A04(188, 16, 61), String.valueOf(true));
        }
        Map<String, String> map = this.A03;
        if (A05[2].charAt(5) != 'T') {
            throw new RuntimeException();
        }
        A05[4] = "kOq5WVrOOgnK8qBpA";
        A0J(map, meA0M);
        N3.A06(this.A02, ((MH) this).A01);
        return meA0M;
    }

    public final ME A0M() {
        ME meA03 = ME.A09;
        String strA04 = A04(148, 15, 93);
        boolean zA0K = A0K(this.A01);
        if (!zA0K) {
            zA0K = A08();
        }
        if (!zA0K) {
            try {
                meA03 = A03();
                if (meA03 != ME.A09) {
                    strA04 = A04(188, 16, 61);
                } else {
                    strA04 = A04(163, 25, 59);
                }
            } catch (Exception unused) {
                meA03 = ME.A04;
            }
        }
        Map<String, String> map = this.A03;
        String redirectionAction = String.valueOf(true);
        map.put(strA04, redirectionAction);
        return meA03;
    }

    public final void A0N(C1334Wh c1334Wh) {
        this.A00 = c1334Wh;
    }
}
