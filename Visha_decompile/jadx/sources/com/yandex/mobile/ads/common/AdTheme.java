package com.yandex.mobile.ads.common;

import defpackage.db3;
import kotlin.Metadata;
import kotlin.enums.a;
import org.mozilla.javascript.ES6Iterator;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.common.AdTheme[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.common.AdTheme[]) from 0x001e: INVOKE (r0v1 com.yandex.mobile.ads.common.AdTheme[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/yandex/mobile/ads/common/AdTheme;", "", "", "b", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", ES6Iterator.VALUE_PROPERTY, "LIGHT", "DARK", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class AdTheme {
    LIGHT("light"),
    DARK("dark");

    private static final db3 d;

    private final String value;

    static {
        d = a.a(adThemeArr);
    }

    private AdTheme(String str) {
        super(str, i);
        this.value = str;
    }

    public static db3 getEntries() {
        return d;
    }

    public static AdTheme valueOf(String str) {
        return (AdTheme) Enum.valueOf(AdTheme.class, str);
    }

    public static AdTheme[] values() {
        return (AdTheme[]) c.clone();
    }

    public final String getValue() {
        return this.value;
    }
}
