package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.gq[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.gq[]) from 0x004d: INVOKE (r0v1 com.yandex.mobile.ads.impl.gq[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class gq {
    EF9("IABConsent_ConsentString", "IABTCF_TCString"),
    EF21("IABConsent_SubjectToGDPR", "IABTCF_gdprApplies"),
    EF33("IABConsent_CMPPresent", "IABTCF_CmpSdkID"),
    EF45("IABConsent_ParsedPurposeConsents", "IABTCF_PurposeConsents"),
    EF57("IABConsent_ParsedVendorConsents", "IABTCF_VendorConsents"),
    EF68(null, "IABTCF_AddtlConsent");

    public static final a d;
    private final String b;
    private final String c;

    public static final class a {
        private a() {
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(gqVarArr);
        d = new a(0);
    }

    private gq(String str, String str2) {
        super(str, i);
        this.b = str;
        this.c = str2;
    }

    public static gq valueOf(String str) {
        return (gq) Enum.valueOf(gq.class, str);
    }

    public static gq[] values() {
        return (gq[]) e.clone();
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.c;
    }
}
