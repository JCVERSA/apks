package com.yandex.mobile.ads.nativeads;

import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/NativeAdException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "detailMessage", "", "exception", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NativeAdException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdException(String str, Throwable th) {
        super(str, th);
        y45.j(str, "detailMessage");
        y45.j(th, "exception");
    }
}
