package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

public abstract class AbstractC1869hD implements InterfaceC1118Ns {
    public static byte[] A06;
    public final InterfaceC1100Na A00;
    public final HandlerC1107Nh A01;
    public final C1635dL A02;
    public final Handler A03;
    public final String A04;
    public final InterfaceC1112Nm A05;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{-104, -85, -92, -102, -94, -101, -75, -101, -82, -86, -88, -105, -87, -75, -95, -101, -81, -25, -20, -14, -3, -29, -16, -16, -19, -16, -3, -31, -19, -30, -29, -3, -23, -29, -9, -6, -5, -7, 6, -24, -21, 6, -16, -21, 6, -14, -20, 0, 21, 22, 20, 33, 7, 20, 20, 17, 20, 33, 15, 7, 21, 21, 3, 9, 7, 33, 13, 7, 27};
    }

    public abstract void A08();

    public abstract void A09();

    public abstract void A0D(boolean z);

    public AbstractC1869hD(C1635dL c1635dL, String str, InterfaceC1113Nn interfaceC1113Nn) {
        this.A02 = c1635dL;
        this.A04 = str;
        DynamicLoaderFactory.makeLoader(this.A02).getInitApi().onAdLoadInvoked(this.A02);
        this.A00 = new C1872hG(c1635dL, this);
        this.A01 = new HandlerC1107Nh(c1635dL, this);
        this.A03 = new Handler(Looper.getMainLooper());
        this.A05 = interfaceC1113Nn.A5K(this.A00, this, this.A01);
    }

    public final InterfaceC1100Na A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A04;
    }

    public final void A05() {
        if (this.A01.A01) {
            this.A02.A0F().AHG();
            A06();
        } else {
            this.A02.A0F().AH8();
            this.A01.A02 = true;
            this.A01.A0E(UA.A02.get());
        }
    }

    public final void A06() {
        this.A02.A0F().AHM();
        if (!this.A01.A0F(this.A05.A8H(), this.A05.A5J(this.A04))) {
            A09();
            this.A02.A0F().AHE();
        }
    }

    public final void A07() {
        if (!U7.A0u(this.A02)) {
            return;
        }
        XJ.A00(new C1870hE(this));
    }

    public final void A0A(int i) {
        this.A01.A0D(this.A02, i);
    }

    public final void A0B(int i, AdErrorType adErrorType, String str) {
        Bundle bundle = new Bundle();
        String strA01 = A01(48, 21, 124);
        if (str != null) {
            bundle.putString(strA01, str);
        } else {
            bundle.putString(strA01, adErrorType.getDefaultErrorMessage());
        }
        bundle.putInt(A01(17, 18, 88), adErrorType.getErrorCode());
        AED(i, this.A04, bundle);
    }

    public final void A0C(Message message) {
        this.A05.A9b(message);
    }

    @Override
    public final void AED(int i, String str, Bundle bundle) {
        Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.getData().putString(A01(35, 13, 97), str);
        if (bundle != null) {
            messageObtain.getData().putBundle(A01(0, 17, 16), bundle);
        }
        Runnable callbackApiRunnable = new C1871hF(this, messageObtain);
        this.A03.post(callbackApiRunnable);
    }
}
