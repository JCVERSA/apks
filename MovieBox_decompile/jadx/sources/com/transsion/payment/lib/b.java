package com.transsion.payment.lib;

public interface b {

    public static final class a {
        public static void a(b bVar, Integer num, String str, boolean z10, String str2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
            }
            if ((i10 & 1) != 0) {
                num = 0;
            }
            if ((i10 & 8) != 0) {
                str2 = null;
            }
            bVar.a(num, str, z10, str2);
        }
    }

    void a(Integer num, String str, boolean z10, String str2);

    void b(boolean z10);

    void c(int i10, String str, String str2);
}
