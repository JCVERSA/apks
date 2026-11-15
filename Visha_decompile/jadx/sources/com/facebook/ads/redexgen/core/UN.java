package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import androidx.media3.common.PlaybackException;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import org.json.JSONObject;
import org.mozilla.classfile.ByteCode;

public final class UN extends Handler {
    public static byte[] A04;
    public static String[] A05 = {"4udqyVbWZXJvSc0AlbflTWwfFOYrDaDf", "2YLZ8zu95yTf3T209", "2VJPb0Yp69Qd6undQokFBSWI7sS3NGkE", "Nq0QHebF7aCImjCS8", "WfWu3jj6ZslW8HMUv7JinXygwhejXyBb", "C4PEiJW5iwJTin2vYgbWRkUl1o", "sWvNSKALPWxj", "lJrPEKSWvzui7DJNo"};
    public static final String A06;
    public final Context A00;
    public final AudienceNetworkRemoteServiceApi.MessageHandler A01;
    public final AudienceNetworkRemoteServiceApi.PackageVerifier A02;
    public final VM A03;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_AUTHENTICATION_EXPIRED);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        byte[] bArr = {-8, -16, -12, -14, -16, -14, -66, -53, -53, -56, -37, -59, -49, -37, -62, -47, -54, -54, -63, -56, -37, -56, -53, -61, -61, -63, -64, -13, -12, -14, -1, -31, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -1, -23, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -1, -21, -27, -7, 17, 18, 16, 29, 0, 19, 12, 2, 10, 3, 29, 9, 3, 23, -48, -47, -49, -36, -48, -62, -49, -45, -58, -64, -62, -36, -62, -43, -47, -49, -66, -48, 21, 22, 20, 33, 21, 7, 20, 24, ByteCode.T_LONG, 5, 7, 33, 21, 6, 13, 33, 24, 7, 20, 21, ByteCode.T_LONG, 17, 16};
        if (A05[5].length() == 23) {
            throw new RuntimeException();
        }
        A05[5] = "AJ3";
        A04 = bArr;
    }

    static {
        A04();
        A06 = UN.class.getSimpleName();
    }

    public UN(Context context, AudienceNetworkRemoteServiceApi.MessageHandler messageHandler, AudienceNetworkRemoteServiceApi.PackageVerifier packageVerifier) {
        super(Looper.getMainLooper());
        this.A00 = context;
        this.A02 = packageVerifier;
        this.A03 = VM.A00();
        this.A01 = messageHandler;
    }

    public static Bundle A00() {
        Bundle bundle = new Bundle();
        bundle.putString(A03(72, 23, 92), A03(0, 6, 92));
        bundle.putString(A03(54, 18, 23), new JSONObject().toString());
        return bundle;
    }

    private C1856gz A01(C1852gv c1852gv, String str) {
        C1856gz c1856gz = new C1856gz(c1852gv, this.A03, str);
        c1856gz.A0G(c1852gv.A0B(), c1852gv.A07());
        return c1856gz;
    }

    private C1853gw A02(C1843gm c1843gm, String str) {
        C1853gw c1853gw = new C1853gw(c1843gm, this.A03, str);
        c1853gw.A0J(c1843gm.A05, c1843gm.A02, c1843gm.A08);
        return c1853gw;
    }

    @Override
    public final void handleMessage(Message msg) throws Throwable {
        String strVerifyPackage;
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A01 != null && this.A01.handleMessage(msg)) {
                return;
            }
            Messenger messenger = msg.replyTo;
            if (msg.what == 1) {
                if (messenger != null) {
                    VM.A00().A07(2, null, A00(), messenger);
                    return;
                }
                return;
            }
            String callingAppPackage = msg.getData().getString(A03(27, 13, 58));
            if (callingAppPackage == null) {
                return;
            }
            C1635dL c1635dLA05 = RB.A05(this.A00, callingAppPackage);
            c1635dLA05.A0F().AIi(msg.getData().getBoolean(A03(6, 21, 22), false));
            if (this.A02 != null) {
                strVerifyPackage = this.A02.verifyPackage(this.A00, msg, msg.getData().getString(A03(40, 14, 88)));
            } else {
                strVerifyPackage = null;
            }
            if (strVerifyPackage == null) {
                if (messenger != null) {
                    VM.A00().A07(20, callingAppPackage, null, messenger);
                }
                c1635dLA05.A0F().AHB();
                return;
            }
            switch (msg.what) {
                case 1010:
                    if (messenger == null) {
                        return;
                    }
                    UK ukA04 = VM.A00().A04(callingAppPackage);
                    if (ukA04 == null) {
                        ukA04 = VM.A00().A05(callingAppPackage, messenger, strVerifyPackage);
                    }
                    C1852gv intAdModel = AbstractC1119Nt.A04(c1635dLA05, msg.getData(), strVerifyPackage);
                    if (ukA04.A00 == null) {
                        ukA04.A00 = A01(intAdModel, callingAppPackage);
                    } else if (ukA04.A00 instanceof C1856gz) {
                        ((C1856gz) ukA04.A00).A0G(intAdModel.A0B(), intAdModel.A07());
                    }
                    VM.A00().A07(1011, callingAppPackage, A00(), messenger);
                    return;
                case 1012:
                case 2002:
                    VM.A00().A08(callingAppPackage);
                    return;
                case 2000:
                    if (messenger == null) {
                        return;
                    }
                    UK ukA05 = VM.A00().A04(callingAppPackage);
                    if (ukA05 == null) {
                        ukA05 = VM.A00().A05(callingAppPackage, messenger, strVerifyPackage);
                    }
                    C1843gm c1843gmA05 = AbstractC1119Nt.A05(c1635dLA05, msg.getData(), strVerifyPackage);
                    if (ukA05.A00 == null) {
                        ukA05.A00 = A02(c1843gmA05, callingAppPackage);
                    } else if (ukA05.A00 instanceof C1853gw) {
                        C1853gw c1853gw = (C1853gw) ukA05.A00;
                        String adId = c1843gmA05.A05;
                        c1853gw.A0J(adId, c1843gmA05.A02, c1843gmA05.A08);
                    }
                    VM.A00().A07(2001, callingAppPackage, A00(), messenger);
                    return;
                case 2003:
                    InterfaceC1102Nc interfaceC1102NcA03 = VM.A00().A03(callingAppPackage);
                    if (interfaceC1102NcA03 instanceof C1853gw) {
                        RewardData rewardDataA01 = AbstractC1120Nu.A01(msg.getData());
                        C1853gw c1853gw2 = (C1853gw) interfaceC1102NcA03;
                        if (rewardDataA01 != null) {
                            c1853gw2.A0I(rewardDataA01);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        } catch (Throwable th) {
            if (A05[5].length() == 23) {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[6] = "nIV8RMn07Ah5";
            strArr[1] = "ZacTvu5dUvRq7FGBf";
            AbstractC1314Vl.A00(th, this);
        }
    }
}
