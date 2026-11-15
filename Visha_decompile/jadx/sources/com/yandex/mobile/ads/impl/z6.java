package com.yandex.mobile.ads.impl;

import com.hisavana.common.constant.ComConstants;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork;
import defpackage.db3;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.z6[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.z6[]) from 0x00ba: INVOKE (r0v1 com.yandex.mobile.ads.impl.z6[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m), WRAPPED]
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
public final class z6 {
    EF7("adcolony"),
    EF17("applovin"),
    EF27("applovin_max"),
    EF37("bigoads"),
    EF47("chartboost"),
    EF57("admanager"),
    EF67(ComConstants.PLATFORM_ADMOB),
    EF77("inmobi"),
    EF88("ironsource"),
    EF99("mintegral"),
    EF110("mytarget"),
    EF121("pangle"),
    EF132("tapjoy"),
    EF145("unityads"),
    EF158("vungle"),
    EF171("yandex");

    public static final a c = new a(0);
    private static final db3 e = kotlin.enums.a.a(new z6[]{new z6("adcolony"), new z6("applovin"), new z6("applovin_max"), new z6("bigoads"), new z6("chartboost"), new z6("admanager"), new z6(ComConstants.PLATFORM_ADMOB), new z6("inmobi"), new z6("ironsource"), new z6("mintegral"), new z6("mytarget"), new z6("pangle"), new z6("tapjoy"), new z6("unityads"), new z6("vungle"), new z6("yandex")});
    private final String b;

    public static final class a {

        public class C0335a {
            public static final int[] a;

            static {
                int[] iArr = new int[z6.values().length];
                try {
                    iArr[6] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    a aVar = z6.c;
                    iArr[0] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    a aVar2 = z6.c;
                    iArr[1] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    a aVar3 = z6.c;
                    iArr[2] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    a aVar4 = z6.c;
                    iArr[3] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    a aVar5 = z6.c;
                    iArr[4] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    a aVar6 = z6.c;
                    iArr[5] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    a aVar7 = z6.c;
                    iArr[7] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    a aVar8 = z6.c;
                    iArr[8] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    a aVar9 = z6.c;
                    iArr[9] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    a aVar10 = z6.c;
                    iArr[10] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    a aVar11 = z6.c;
                    iArr[11] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    a aVar12 = z6.c;
                    iArr[12] = 13;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    a aVar13 = z6.c;
                    iArr[13] = 14;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    a aVar14 = z6.c;
                    iArr[14] = 15;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    a aVar15 = z6.c;
                    iArr[15] = 16;
                } catch (NoSuchFieldError unused16) {
                }
                a = iArr;
            }
        }

        private a() {
        }

        public static AdQualityVerifiableNetwork a(z6 z6Var) {
            switch (z6Var == null ? -1 : C0335a.a[z6Var.ordinal()]) {
                case 1:
                    return AdQualityVerifiableNetwork.ADMOB;
                case 2:
                    return AdQualityVerifiableNetwork.ADCOLONY;
                case 3:
                    return AdQualityVerifiableNetwork.APPLOVIN;
                case 4:
                    return AdQualityVerifiableNetwork.APPLOVINMAX;
                case 5:
                    return AdQualityVerifiableNetwork.BIGOADS;
                case 6:
                    return AdQualityVerifiableNetwork.CHARTBOOST;
                case 7:
                    return AdQualityVerifiableNetwork.GOOGLE;
                case 8:
                    return AdQualityVerifiableNetwork.INMOBI;
                case 9:
                    return AdQualityVerifiableNetwork.IRONSOURCE;
                case 10:
                    return AdQualityVerifiableNetwork.MINTEGRAL;
                case 11:
                    return AdQualityVerifiableNetwork.MYTARGET;
                case 12:
                    return AdQualityVerifiableNetwork.PANGLE;
                case 13:
                    return AdQualityVerifiableNetwork.TAPJOY;
                case 14:
                    return AdQualityVerifiableNetwork.UNITYADS;
                case 15:
                    return AdQualityVerifiableNetwork.VUNGLE;
                case 16:
                    return AdQualityVerifiableNetwork.YANDEX;
                default:
                    return null;
            }
        }

        public a(int i) {
            this();
        }
    }

    static {
    }

    private z6(String str) {
        super(str, i);
        this.b = str;
    }

    public static db3 a() {
        return e;
    }

    public static z6 valueOf(String str) {
        return (z6) Enum.valueOf(z6.class, str);
    }

    public static z6[] values() {
        return (z6[]) d.clone();
    }

    public final String b() {
        return this.b;
    }
}
