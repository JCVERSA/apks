package com.yandex.mobile.ads.common;

import defpackage.db3;
import kotlin.Metadata;
import kotlin.enums.a;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.common.AdType[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.common.AdType[]) from 0x0042: INVOKE (r0v1 com.yandex.mobile.ads.common.AdType[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/yandex/mobile/ads/common/AdType;", "", "UNKNOWN", "BANNER", "INTERSTITIAL", "REWARDED", "NATIVE", "APP_OPEN_AD", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class AdType {
    UNKNOWN,
    BANNER,
    INTERSTITIAL,
    REWARDED,
    NATIVE,
    APP_OPEN_AD;

    private static final db3 c;

    static {
        c = a.a(adTypeArr);
    }

    private AdType() {
        super(str, i);
    }

    public static db3 getEntries() {
        return c;
    }

    public static AdType valueOf(String str) {
        return (AdType) Enum.valueOf(AdType.class, str);
    }

    public static AdType[] values() {
        return (AdType[]) b.clone();
    }
}
