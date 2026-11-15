package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import okio.Utf8;
import org.json.JSONObject;

public class C1454aP extends AbstractRunnableC1322Vt {
    public static byte[] A05;
    public final int A00;
    public final SQ A01;
    public final InterfaceC1241So A02;
    public final C1249Sw A03;
    public final String A04;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 7);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{115, -97, -64, -67, -48, -62, 123, -66, -51, -68, -50, -61, 123, -67, -64, -66, -68, -48, -50, -64, 123, -50, -96, -55, -47, -60, -51, -54, -55, -56, -64, -55, -49, -97, -68, -49, -68, -85, -51, -54, -47, -60, -65, -64, -51, 123, -55, -54, -49, 123, -60, -55, -59, -64, -66, -49, -64, -65, 113, -121, SocketData.CLAZZ_TYPE_CODE, -119, 62, -121, -111, 62, SocketData.CLAZZ_TYPE_CODE, -109, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_FILE_BLOCK, Utf8.REPLACEMENT_BYTE, -109, -106, -106, -101, -90, -101, -95, -96, -109, -98, -111, -101, -96, -104, -95, 116, -119, 116, 124, 127, 116, 117, 127, 120, 114, 119, 124, -122, 126, 114, -122, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 116, 118, 120, -26, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -26, -21, -24, -106, -119, -121, -109, -106, -120, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -120, -123, -104, -123, -122, -123, -105, -119, -59, -72, -60, -56, -72, -58, -57, -78, -68, -73, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_URI, 124, SocketData.CLAZZ_TYPE_FILE, -109, SocketData.CLAZZ_TYPE_FILE_BLOCK, 127, -104, -102, -121, -103, -98, -107, SocketData.CLAZZ_TYPE_FILE_BLOCK, -124, -120, -108, -119, SocketData.CLAZZ_TYPE_FILE_BLOCK};
    }

    public C1454aP(SQ sq, String str, int i, C1249Sw c1249Sw, InterfaceC1241So interfaceC1241So) {
        this.A01 = sq;
        this.A04 = str;
        this.A00 = i;
        this.A03 = c1249Sw;
        this.A02 = interfaceC1241So;
    }

    @Override
    public final void A07() {
        String strA03;
        Map<String, String> mapA5S;
        String strA8D;
        try {
            if (C1242Sp.A0K(this.A01, this.A04, this.A00, this.A03)) {
                return;
            }
            C1281Ud.A08(this.A01, UV.A0A.toString() + A00(0, 1, 50) + this.A04);
            Throwable cause = this.A03.getCause();
            if (cause != null) {
                strA03 = X7.A03(this.A01, cause);
            } else if (U9.A0R(this.A01)) {
                SQ sq = this.A01;
                Throwable deLogExceptionCause = this.A03;
                strA03 = X7.A03(sq, deLogExceptionCause);
            } else {
                strA03 = A00(0, 0, 81) + this.A03.getMessage();
            }
            if (U9.A0V(this.A01)) {
                mapA5S = this.A01.A04().A5S();
            } else if (this.A02 != null) {
                mapA5S = this.A02.A7r();
            } else if (C1242Sp.A02) {
                C1242Sp.A0F(new RuntimeException(A00(1, 57, 84), this.A03));
                mapA5S = new HashMap<>();
            } else {
                mapA5S = this.A01.A04().A5S();
            }
            mapA5S.put(A00(136, 7, 19), this.A04);
            mapA5S.put(A00(143, 12, 30), String.valueOf(this.A00));
            JSONObject jSONObjectA03 = this.A03.A03();
            if (jSONObjectA03 != null) {
                mapA5S.put(A00(71, 15, 43), jSONObjectA03.toString());
            }
            if ((A00(106, 5, 124).equals(this.A04) || A00(111, 15, 29).equals(this.A04)) && (strA8D = this.A01.A04().A8D()) != null) {
                mapA5S.put(A00(86, 20, 12), strA8D);
            }
            String strA0C = this.A01.A0C();
            if (strA0C != null && !TextUtils.isEmpty(strA0C)) {
                mapA5S.put(A00(126, 10, 76), strA0C);
            }
            InterfaceC1240Sn interfaceC1240Sn = (InterfaceC1240Sn) C1242Sp.A0A.get();
            if (interfaceC1240Sn == null) {
                C1242Sp.A0F(new RuntimeException(A00(58, 13, 23)));
            } else {
                interfaceC1240Sn.AKK(strA03, mapA5S, this.A01);
            }
        } catch (Throwable t) {
            C1242Sp.A0F(t);
        }
    }
}
