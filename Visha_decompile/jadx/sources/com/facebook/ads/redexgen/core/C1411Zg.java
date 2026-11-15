package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

public class C1411Zg {
    public static String[] A07 = {"MaUhfef1XHChQSOAsPU", "01oMUC4JT554rhL", "9TYVZPZrh7WqyaB", "ShOi1FYvFM9bF84GqYiu0GZZ4HOF35Af", "s", "YvdeaQsxQHJ3CZVDgFIjqRdATcpqYXuO", "b384kAccrLIUxrnk6NdGu", "f4PnsWwvvRSNWXAtteJ0H"};
    public final String A00 = C1411Zg.class.getSimpleName();
    public final WeakReference<AtomicBoolean> A01;
    public final WeakReference<AtomicBoolean> A02;
    public final WeakReference<LH> A03;
    public final WeakReference<InterfaceC1412Zh> A04;
    public final WeakReference<C1708eX> A05;
    public final WeakReference<C1031Ki> A06;

    public C1411Zg(C1031Ki c1031Ki, InterfaceC1412Zh interfaceC1412Zh, C1708eX c1708eX, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, C1635dL c1635dL) {
        this.A06 = new WeakReference<>(c1031Ki);
        this.A04 = new WeakReference<>(interfaceC1412Zh);
        this.A05 = new WeakReference<>(c1708eX);
        this.A01 = new WeakReference<>(atomicBoolean);
        this.A02 = new WeakReference<>(atomicBoolean2);
        this.A03 = new WeakReference<>(c1635dL.A0F());
    }

    private LH A00() {
        LH funnel = this.A03.get();
        if (funnel == null) {
            return new C1971j3();
        }
        return funnel;
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(this.A00, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return AbstractC1344Wr.A01(T5.A02());
    }

    @JavascriptInterface
    public void logFunnel(int i, String str) {
        A00().AK6(i, str);
    }

    @JavascriptInterface
    public void onMainAssetLoaded() {
        A00().AK7();
        if (this.A06.get() != null && this.A01.get() != null && this.A02.get() != null && this.A02.get().get()) {
            this.A01.get().set(true);
            A00().AK8();
            if (this.A06.get().isShown()) {
                A00().AK9();
                new Handler(Looper.getMainLooper()).post(new C1037Ko(this.A05));
            }
            InterfaceC1412Zh interfaceC1412Zh = this.A04.get();
            if (interfaceC1412Zh != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC1410Zf(this, interfaceC1412Zh));
            }
        }
    }

    @JavascriptInterface
    public void onPageInitialized() {
        C1031Ki webView = this.A06.get();
        if (webView == null || webView.A0J()) {
            A00().AKA(true);
            return;
        }
        InterfaceC1412Zh interfaceC1412Zh = this.A04.get();
        if (interfaceC1412Zh == null) {
            A00().AKA(true);
            return;
        }
        LH lhA00 = A00();
        String[] strArr = A07;
        if (strArr[3].charAt(2) == strArr[5].charAt(2)) {
            throw new RuntimeException();
        }
        A07[6] = "MExJxptNjWm815DyzsGP1";
        lhA00.AKA(false);
        interfaceC1412Zh.AET();
    }
}
