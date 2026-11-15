package com.mgmi.ads.api.a;

import android.content.Context;
import com.mgmi.model.r;
import java.util.Map;

public class a extends e {

    public interface InterfaceC0162a {
        void a(r rVar);
    }

    public a(Context context) {
        super(context);
    }

    @Override
    public void a(boolean z, int i) {
    }

    @Override
    public void b() {
        super.b();
    }

    @Override
    public void c() {
        super.c();
    }

    @Override
    public void a() {
        super.a();
    }

    public void a(d dVar, final InterfaceC0162a interfaceC0162a) {
        a(dVar, new e.a() {
            @Override
            public void a() {
            }

            @Override
            public void a(r rVar) {
                interfaceC0162a.a(rVar);
            }
        }, "CommonVideoAdsloader");
    }

    @Override
    public Map<String, String> a(Context context, d dVar) {
        com.mgmi.model.n nVarA = new com.mgmi.model.n().a(dVar.k()).a(dVar.o()).c(110110).a(4390).b(-1).a(this.i);
        nVarA.a(new com.mgmi.platform.view.a(10));
        return com.mgmi.f.b.a(context, nVarA);
    }

    @Override
    public void a(com.mgmi.net.bean.b bVar, d dVar) {
        bVar.b(false);
        bVar.a(4);
    }

    @Override
    public void a(d dVar) {
        dVar.a(com.mgmi.platform.b.a().f() + "/app/live/float");
    }
}
