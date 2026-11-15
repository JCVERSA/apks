package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;

public class C1883hS extends AbstractRunnableC1322Vt {
    public static byte[] A03;
    public static String[] A04 = {"7HAtzWHHqocdVWrHWLF7dHgS7Bm2h12C", "DbOr4ijtOwCAaeVmvR816jBzMEkuu4t1", "lnUtOUEm1wuvoR9nZTKEc7Wj6", "rgunTSV1g2reSAbvPi4FwUaf05Z1esdk", "lf9TdmWUJKPBCDTsH0x6g9hItkASR1Wu", "rzwaJSO2zPm7h9LPx5qAuh7aJhmBGJeQ", "21sK4Gi1tfVdwS7GyFfEScwosNwGd1WZ", "FSSaRzfmWACYGxNNk9yD6VAWr"};
    public MP A00;
    public String A01;
    public final AnonymousClass72 A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-64, -29, -32, -17, -13, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -15, -97, -13, -24, -20, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -18, -12, -13, -83};
        String[] strArr = A04;
        if (strArr[6].charAt(4) != strArr[1].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[5] = "osBBqT7uNXEQnnthAEoQEGxFzU3x5jcE";
        strArr2[0] = "83ZlJzScQovvXu1byfPC9cIolLTrcwle";
        A03 = bArr;
    }

    static {
        A01();
    }

    public C1883hS(AnonymousClass72 anonymousClass72, MP mp, String str) {
        this.A02 = anonymousClass72;
        this.A00 = mp;
        this.A01 = str;
    }

    @Override
    public final void A07() {
        this.A02.A0V(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.ADB(new V1(AdErrorType.NETWORK_ERROR, A00(0, 16, 123)));
    }
}
