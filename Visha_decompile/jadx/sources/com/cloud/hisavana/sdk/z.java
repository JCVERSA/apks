package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import defpackage.rqd;
import defpackage.ul4;
import java.util.List;

public abstract class z implements rqd {
    public a a;
    public volatile int b = 1;
    public int c;
    public int d;

    public interface a {
        void a(TaErrorCode taErrorCode, Bundle bundle);

        void a(List list);

        void b(List list, Bundle bundle);

        void c(TaErrorCode taErrorCode, Bundle bundle);
    }

    public int b() {
        return this.b;
    }

    public void c(int i) {
        this.d = i;
    }

    public void d(a aVar) {
        this.a = aVar;
    }

    public void e() {
        try {
            if (ul4.j()) {
                this.a = null;
            }
        } catch (Exception unused) {
        }
    }

    public void f(int i) {
        this.c = i;
    }
}
