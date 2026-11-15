package com.mgmi.ads.api.a;

import com.mgmi.model.r;
import defpackage.fnd;
import java.lang.ref.WeakReference;

public class o extends fnd {
    private WeakReference<a> a;

    public interface a {
        void b(r rVar);
    }

    public o(a aVar) {
        super(null, null, "XmlTask", 1);
        this.a = new WeakReference<>(aVar);
        a(new fnd.a() {
            @Override
            public void a() {
            }

            @Override
            public void b() {
            }

            @Override
            public void a(Exception exc) {
            }

            @Override
            public void a(Float... fArr) {
            }

            @Override
            public void a(r rVar) {
                if (o.this.a == null || o.this.a.get() == null) {
                    return;
                }
                try {
                    ((a) o.this.a.get()).b(rVar);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, new fnd.b() {
            @Override
            public r a(String... strArr) throws Exception {
                com.mgmi.g.a.a aVar2 = new com.mgmi.g.a.a();
                if (aVar2.a(strArr[0]) == 100000) {
                    return aVar2.a();
                }
                return null;
            }
        });
    }
}
