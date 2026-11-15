package com.vungle.ads;

public interface a {

    public static final class C0672a {
        public static void load$default(a aVar, String str, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: load");
            }
            if ((i10 & 1) != 0) {
                str = null;
            }
            aVar.load(str);
        }
    }

    Boolean canPlayAd();

    void load(String str);
}
