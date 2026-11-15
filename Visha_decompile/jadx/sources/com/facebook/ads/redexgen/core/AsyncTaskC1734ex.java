package com.facebook.ads.redexgen.core;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class AsyncTaskC1734ex extends AsyncTask<String, Void, C1735ey> {
    public static byte[] A05;
    public static String[] A06 = {"naFNcZuGe", "C9JAYYW4", "8H9N3VrVfLlJ9IUdYMoO", "YylQBw7bkupjVtNcwFivzoGwGcTau", "utPcy8I9vNMcCezdgtn", "ehhspVm5", "7sb5kaLRz1R8p", CmcdData.OBJECT_TYPE_MANIFEST};
    public static final String A07;
    public static final Set<String> A08;
    public SQ A00;
    public InterfaceC1713ec A01;
    public InterfaceC1733ew A02;
    public Map<String, String> A03;
    public Map<String, String> A04;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 8 out of bounds for length 8
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private final C1735ey A00(String... strArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        String[] strArr2 = A06;
        if (strArr2[4].length() == strArr2[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr3 = A06;
        strArr3[3] = "OBWBCzNqNMhSgl0vUrcBODbII9DBW";
        strArr3[2] = "nuEeWi2rsMih0JuNdplL";
        try {
            String str = strArr[0];
            if (!TextUtils.isEmpty(str) && !A08.contains(str)) {
                String strA02 = A02(str);
                if (this.A03 != null && !this.A03.isEmpty()) {
                    for (Map.Entry<String, String> entry : this.A03.entrySet()) {
                        strA02 = A03(strA02, entry.getKey(), entry.getValue());
                    }
                }
                int i = 1;
                while (true) {
                    int i2 = i + 1;
                    if (i > 2) {
                        return null;
                    }
                    if (A06(strA02)) {
                        return new C1735ey(this.A01);
                    }
                    i = i2;
                }
            }
            return null;
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A05 = new byte[]{75, 62, 43, 105, 56, 15, 15, 18, 15, 93, 18, 13, 24, 19, 20, 19, 26, 93, 8, 15, 17, 71, 93, 15, 0, 15, 2, 1, 9, 54, 45, 52, 52};
    }

    static {
        A04();
        A07 = AsyncTaskC1734ex.class.getSimpleName();
        A08 = new HashSet();
        A08.add(A01(0, 1, 15));
        A08.add(A01(29, 4, 63));
    }

    public AsyncTaskC1734ex(SQ sq) {
        this(sq, null, null);
    }

    public AsyncTaskC1734ex(SQ sq, Map<String, String> extraData) {
        this(sq, extraData, null);
    }

    public AsyncTaskC1734ex(SQ sq, Map<String, String> extraData, Map<String, String> postData) {
        this.A00 = sq;
        this.A03 = extraData != null ? new HashMap(extraData) : null;
        this.A04 = postData != null ? new HashMap(postData) : null;
    }

    private String A02(String str) {
        try {
            return A03(str, A01(23, 6, 9), AbstractC1344Wr.A01(this.A00.A04().A6o()));
        } catch (Exception unused) {
            return str;
        }
    }

    private String A03(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return str;
        }
        String strA01 = A01(3, 1, 49);
        if (str.contains(strA01)) {
            strA01 = A01(1, 1, 127);
        }
        StringBuilder sbAppend = new StringBuilder().append(str).append(strA01).append(str2);
        String prepend = A01(2, 1, 113);
        StringBuilder sbAppend2 = sbAppend.append(prepend);
        String prepend2 = URLEncoder.encode(str3);
        return sbAppend2.append(prepend2).toString();
    }

    private final void A05(C1735ey response) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A02 != null) {
                this.A02.AGS(response);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    private boolean A06(String str) {
        InterfaceC1713ec interfaceC1713ecAGC;
        InterfaceC1714ed interfaceC1714edA00 = C1732ev.A00(this.A00);
        try {
            if (this.A04 == null || this.A04.size() == 0) {
                interfaceC1713ecAGC = interfaceC1714edA00.AGC(str, new C1728er());
            } else {
                C1728er params = new C1728er();
                params.A05(this.A04);
                interfaceC1713ecAGC = interfaceC1714edA00.AGD(str, params.A08());
            }
            this.A01 = interfaceC1713ecAGC;
        } catch (Exception e) {
            Log.e(A07, A01(4, 19, 26) + str, e);
        }
        return this.A01 != null && this.A01.A94() == 200;
    }

    public final void A07(InterfaceC1733ew interfaceC1733ew) {
        this.A02 = interfaceC1733ew;
    }

    @Override
    public final C1735ey doInBackground(String[] strArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        try {
            return A00(strArr);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    @Override
    public final void onCancelled() {
        if (this.A02 != null) {
            this.A02.AGQ();
        }
    }

    @Override
    public final void onPostExecute(C1735ey c1735ey) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            A05(c1735ey);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
