package com.mgtv.a.b;

import android.view.View;
import com.mgmi.net.bean.BootAdBean;

public class b extends com.mgtv.a.b.a.a<BootAdBean> {
    public b() {
        this("boot");
    }

    public void a(View view) {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar instanceof com.mgtv.a.d.c.a) {
            ((com.mgtv.a.d.c.a) bVar).a(view);
        }
    }

    public void b(View view) {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar instanceof com.mgtv.a.d.c.a) {
            ((com.mgtv.a.d.c.a) bVar).b(view);
        }
    }

    @Override
    public void e_() {
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            com.mgtv.a.d.b.b bVar = this.k;
            if (bVar != null) {
                aVar.a(bVar.p());
            }
            this.l.f();
        }
        com.mgtv.a.b.a.b bVar2 = this.m;
        if (bVar2 != null) {
            bVar2.o();
        }
    }

    @Override
    public void g() {
        super.g();
        com.mgtv.a.b.a.b bVar = this.m;
        if (bVar != null) {
            bVar.r();
        }
    }

    public b(String str) {
        super(str);
    }
}
