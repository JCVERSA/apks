package com.facebook.ads.redexgen.core;

import java.util.Map;

public class B7<K, V> extends C2134lv<K, V>.Itr<Map.Entry<K, V>> {
    public final C2134lv A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B7(final C2134lv this$0) {
        super(this$0, null);
        this.A00 = this$0;
    }

    public final Map.Entry<K, V> A03(int entry) {
        return new B5(this.A00, entry);
    }
}
