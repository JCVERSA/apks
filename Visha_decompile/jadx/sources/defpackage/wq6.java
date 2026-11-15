package defpackage;

import okhttp3.Call;
import okhttp3.EventListener;

public class wq6 implements EventListener.Factory {
    public EventListener.Factory a;
    public int b;
    public boolean c;
    public String g;
    public boolean d = false;
    public boolean e = false;
    public boolean f = false;
    public String h = "All";

    public wq6(EventListener.Factory factory, int i, boolean z) {
        this.a = factory;
        this.b = i;
        this.c = z;
    }

    public void a(String str) {
        this.g = str;
    }

    public void b(boolean z) {
        this.f = z;
    }

    @Override
    public EventListener create(Call call) {
        EventListener.Factory factory = this.a;
        EventListener eventListenerCreate = factory != null ? factory.create(call) : null;
        String strHost = call.request().url().host();
        if (yr4.d() || yr4.a(strHost)) {
            wlb.a.h("NetworkMonitor", "==== MonitorFactory host : ${host} matches ====");
            return new vq6(eventListenerCreate, this.b, this.c, this.h, this.f, this.g, this.d, this.e);
        }
        wlb.a.h("NetworkMonitor", "==== MonitorFactory host : ${host} does not matche ====");
        return eventListenerCreate == null ? EventListener.NONE : eventListenerCreate;
    }
}
