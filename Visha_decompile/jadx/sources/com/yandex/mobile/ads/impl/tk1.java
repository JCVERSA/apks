package com.yandex.mobile.ads.impl;

import defpackage.c74;
import defpackage.ef5;
import defpackage.ib3;
import defpackage.ld9;
import defpackage.yi5;
import java.lang.annotation.Annotation;
import kotlin.LazyThreadSafetyMode;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.tk1[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.tk1[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.tk1[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
@ld9
public final class tk1 {
    c,
    d;

    public static final b Companion;
    private static final yi5 b;

    public static final class b {
        private b() {
        }

        public final ef5 serializer() {
            return (ef5) tk1.b.getValue();
        }

        public b(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(tk1VarArr);
        Companion = new b(0);
        b = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            @Override
            public final Object invoke() {
                return ib3.a("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationResultStatus", tk1.values(), new String[]{"success", "error"}, new Annotation[][]{null, null}, null);
            }
        });
    }

    private tk1() {
        super(str, i);
    }

    public static tk1 valueOf(String str) {
        return (tk1) Enum.valueOf(tk1.class, str);
    }

    public static tk1[] values() {
        return (tk1[]) e.clone();
    }
}
