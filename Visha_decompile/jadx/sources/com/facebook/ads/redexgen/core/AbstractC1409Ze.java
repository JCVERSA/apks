package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import okio.Utf8;

public abstract class AbstractC1409Ze extends WebView {
    public static byte[] A01;
    public static final String A02;
    public boolean A00;

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        A01 = new byte[]{-31, -4, 4, 7, 0, -1, -69, 15, 10, -69, 4, 9, 4, 15, 4, -4, 7, 4, 21, 0, -69, -34, 10, 10, 6, 4, 0, -24, -4, 9, -4, 2, 0, 13, -55, -70, -71, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -58, -43, -60, -42, -53, -56, -57, Utf8.REPLACEMENT_BYTE, 54, 75, 54, 72, 56, 71, 62, 69, 73, 15, -4, -22, -25, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -5, -18, -22, -4};
    }

    public abstract WebChromeClient A0G();

    public abstract WebViewClient A0H();

    static {
        A0C();
        A02 = AbstractC1409Ze.class.getSimpleName();
    }

    public AbstractC1409Ze(Activity activity, C1635dL c1635dL) {
        super(activity);
        A0E(c1635dL);
    }

    public AbstractC1409Ze(C1635dL c1635dL) {
        super(c1635dL);
        A0E(c1635dL);
    }

    public static void A0D(int i) {
        C1609cu context = SP.A00();
        if (context != null) {
            context.A08().AAy(A0B(56, 8, 37), i, new C1249Sw(A0B(35, 10, 3)));
        }
    }

    private void A0E(SQ sq) {
        setWebChromeClient(A0G());
        setWebViewClient(A0H());
        AbstractC1415Zk.A04(this);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        if (sq.A05().AAF()) {
            setWebContentsDebuggingEnabled(true);
        }
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        try {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        } catch (Exception unused) {
            Log.w(A02, A0B(0, 35, 59));
        }
    }

    private void A0F(String str) {
        loadUrl(A0B(45, 11, 117) + str);
    }

    public final void A0I(String str) {
        try {
            evaluateJavascript(str, null);
        } catch (IllegalStateException unused) {
            A0F(str);
        }
    }

    public final boolean A0J() {
        return this.A00;
    }

    @Override
    public void destroy() {
        this.A00 = true;
        super.destroy();
    }
}
