package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class C2643jh implements Mm {
    public final C2785p9 a;
    public final C2718mh b;

    public C2643jh(C2718mh c2718mh, C2785p9 c2785p9) {
        this.b = c2718mh;
        this.a = c2785p9;
    }

    @Override
    public final void a(Object obj) {
        List list = (List) obj;
        C2785p9 c2785p9 = this.a;
        if (In.a((Collection) list)) {
            return;
        }
        c2785p9.d = new C2735n9[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Kk kk = (Kk) list.get(i);
            C2735n9[] c2735n9Arr = c2785p9.d;
            Map map = Cf.a;
            C2735n9 c2735n9 = new C2735n9();
            Integer num = kk.a;
            if (num != null) {
                c2735n9.a = num.intValue();
            }
            Integer num2 = kk.b;
            if (num2 != null) {
                c2735n9.b = num2.intValue();
            }
            if (!TextUtils.isEmpty(kk.d)) {
                c2735n9.c = kk.d;
            }
            c2735n9.d = kk.c;
            c2735n9Arr[i] = c2735n9;
            this.b.g += CodedOutputByteBufferNano.computeMessageSizeNoTag(c2785p9.d[i]);
            this.b.g += CodedOutputByteBufferNano.computeTagSize(10);
        }
    }
}
