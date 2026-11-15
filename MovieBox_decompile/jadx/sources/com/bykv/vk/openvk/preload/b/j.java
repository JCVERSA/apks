package com.bykv.vk.openvk.preload.b;

import java.util.List;

public abstract class j<IN, OUT> extends l<IN, OUT> {

    private String f19944d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object a(b<OUT> bVar, IN in2) throws Throwable {
        new m(bVar);
        this.f19944d = a(in2);
        l.a aVar = a().get(this.f19944d);
        while (aVar != null) {
            List<h> list = aVar.f19947a;
            try {
                Object objA = c.a(list, bVar.f19940a, this).a(in2);
                return !l.a(list) ? objA : bVar.a(objA);
            } catch (i.a e10) {
                Throwable cause = e10.getCause();
                new m(bVar);
                this.f19944d = a(in2, cause, this.f19944d);
                aVar = a().get(this.f19944d);
            } catch (Throwable th2) {
                new m(bVar);
                this.f19944d = a(in2, th2, this.f19944d);
                aVar = a().get(this.f19944d);
            }
        }
        throw new IllegalArgumentException("can not found branch，branch name is：" + this.f19944d);
    }

    protected abstract String a(IN in2);

    protected abstract String a(IN in2, Throwable th2, String str);
}
