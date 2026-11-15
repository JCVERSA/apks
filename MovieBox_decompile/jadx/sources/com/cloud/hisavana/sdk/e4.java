package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import java.util.List;

public abstract class e4 implements x3 {

    protected a f21824a;

    protected volatile int f21825b = 1;

    protected int f21826c;

    protected int f21827d;

    public interface a {
        void a(TaErrorCode taErrorCode, Bundle bundle);

        void a(List list);

        void b(List list, Bundle bundle);

        void c(TaErrorCode taErrorCode, Bundle bundle);
    }

    public int b() {
        return this.f21825b;
    }

    public void c(int i10) {
        this.f21827d = i10;
    }

    public void d(a aVar) {
        this.f21824a = aVar;
    }

    public void e(int i10) {
        this.f21826c = i10;
    }
}
