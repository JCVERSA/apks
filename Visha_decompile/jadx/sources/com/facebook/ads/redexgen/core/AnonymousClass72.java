package com.facebook.ads.redexgen.core;

import android.view.View;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.classfile.ByteCode;

public final class AnonymousClass72 extends AbstractC1881hQ {
    public static byte[] A03;
    public long A00;
    public View A01;
    public C6M A02;

    static {
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 81);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{20, 23, 38, -15, -16, -3, -3, -12, 1, -18, 1, -12, -11, 1, -12, 2, -9, -18, 3, -8, -4, -12, -5, 0, -7, 1, 6, -9, 8, -7, 10, -7, 5, ByteCode.T_LONG, 38, 55, 27, 40, 40, 37, 40, -42, 45, 30, 31, 34, 27, -42, 38, 23, 40, 41, 31, 36, 29, -42, 25, 30, 23, 31, 36, 27, 26, -42, 23, 26, 41, -42, -8, 23, 36, 36, 27, 40};
    }

    public AnonymousClass72(C6M c6m, NT nt) {
        super(c6m, nt);
        this.A00 = 10000L;
        this.A02 = c6m;
    }

    private C1884hT A01(Runnable runnable) {
        return new C1884hT(this, runnable);
    }

    private List<JSONObject> A04(NU nu) {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObjectA03 = nu.A03();
        String strA03 = A03(22, 12, 71);
        if (jSONObjectA03.has(strA03)) {
            try {
                this.A00 = jSONObjectA03.getJSONObject(strA03).optInt(A03(3, 19, 62), 10000);
                JSONArray adsArray = jSONObjectA03.getJSONArray(A03(0, 3, 98));
                if (adsArray.length() > 0) {
                    for (int i = 0; i < adsArray.length(); i++) {
                        arrayList.add((JSONObject) adsArray.get(i));
                    }
                }
            } catch (JSONException unused) {
                String strA04 = A03(36, 38, 101);
                this.A02.A0F().A5Y(V1.A01(AdErrorType.UNKNOWN_ERROR, strA04).A03().getErrorCode(), strA04);
                return arrayList;
            }
        } else {
            arrayList.add(jSONObjectA03);
        }
        return arrayList;
    }

    private void A06(InterfaceC1947id interfaceC1947id, JSONObject jSONObject, TF tf) {
        this.A0C = false;
        C1883hS c1883hS = new C1883hS(this, interfaceC1947id, AbstractC1344Wr.A02(jSONObject, A03(34, 2, 114)));
        A0H().postDelayed(c1883hS, tf.A05());
        interfaceC1947id.AAk(this.A02, this.A09, this.A08.A08, A01(c1883hS), jSONObject, tf);
    }

    @Override
    public final void A0P() {
        if (this.A01 != null) {
            this.A02.A0F().A4W();
            this.A07.A0E(this.A01);
        } else {
            this.A02.A0F().A4X();
        }
    }

    @Override
    public final void A0R(MP mp, TE te, TC tc, final NU nu) {
        this.A02.A0F().A4Q();
        final InterfaceC1947id interfaceC1947id = (InterfaceC1947id) mp;
        if (interfaceC1947id.AJa()) {
            final List<JSONObject> listA04 = A04(nu);
            A06(interfaceC1947id, listA04.get(0), nu.A01());
            if (listA04.size() > 1) {
                A0H().postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.A02.A0a(interfaceC1947id, listA04, nu);
                    }
                }, this.A00);
                return;
            }
            return;
        }
        A06(interfaceC1947id, nu.A03(), nu.A01());
    }

    @Override
    public final void A0U(String str) {
        this.A02.A0F().A4V(str != null);
        super.A0U(str);
    }

    @Override
    public final void A0Y(boolean z) {
        super.A0Y(z);
        this.A01 = null;
    }

    public final void A0a(InterfaceC1947id interfaceC1947id, List list, NU nu) {
        A06(interfaceC1947id, (JSONObject) list.get(1), nu.A01());
    }
}
