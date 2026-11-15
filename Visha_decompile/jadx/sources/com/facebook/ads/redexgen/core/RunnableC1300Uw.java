package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.classfile.ByteCode;

public class RunnableC1300Uw implements Runnable {
    public static byte[] A03;
    public final SQ A00;
    public final C1303Uz A01;
    public final String A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 28);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-66, -58, -72, -6, -5, 5, 6, 1, 4, ByteCode.T_LONG, 3, -10, 1, 0, 3, 5, -6, -1, -8, -38, -51, -39, -35, -51, -37, -36, -57, -47, -52};
    }

    public RunnableC1300Uw(C1303Uz c1303Uz, String str, SQ sq) {
        this.A01 = c1303Uz;
        this.A02 = str;
        this.A00 = sq;
    }

    @Override
    public final void run() throws Throwable {
        ArrayList<C1302Uy> arrayList;
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            C1249Sw nvl = new C1249Sw(A00(0, 3, 84));
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject.put(A00(3, 7, 118), jSONArray);
            jSONObject.put(A00(19, 10, 76), this.A02);
            synchronized (this.A01.A0D) {
                arrayList = new ArrayList(this.A01.A0D);
                this.A01.A0D.clear();
            }
            for (C1302Uy c1302Uy : arrayList) {
                jSONArray.put(A00(0, 0, 23) + c1302Uy.A00 + ';' + c1302Uy.A02 + ';' + c1302Uy.A01);
            }
            nvl.A07(jSONObject);
            nvl.A05(1);
            this.A00.A08().AAz(A00(10, 9, 117), AbstractC1248Sv.A2R, nvl);
        } catch (JSONException unused) {
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
