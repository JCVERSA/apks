package com.yandex.mobile.ads.impl;

import android.view.View;
import java.util.List;

public interface mg2 {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.mg2$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.mg2$a[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.mg2$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class a {
        b,
        c,
        d;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a() {
            super(str, i);
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) e.clone();
        }
    }

    void a();

    void a(float f);

    void a(float f, long j);

    void a(View view, List<xb2> list);

    void a(a aVar);

    void a(xc2 xc2Var);

    void a(String str);

    void b();

    void c();

    void d();

    void e();

    void f();

    void g();

    void h();

    void i();

    void j();

    void k();

    void l();

    void m();

    void n();
}
