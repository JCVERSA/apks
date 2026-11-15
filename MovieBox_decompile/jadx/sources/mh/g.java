package mh;

import okhttp3.Call;
import okhttp3.EventListener;

public class g implements EventListener.Factory {

    private EventListener.Factory f66458a;

    private int f66459b;

    private boolean f66460c;

    private boolean f66461d;

    private boolean f66462e;

    private boolean f66463f;

    private String f66464g;

    private String f66465h;

    public g() {
        this.f66459b = 0;
        this.f66460c = false;
        this.f66461d = false;
        this.f66462e = false;
        this.f66463f = false;
        this.f66465h = "All";
    }

    public void a(String str) {
        this.f66464g = str;
    }

    public void b(boolean z10) {
        this.f66463f = z10;
    }

    @Override
    public EventListener create(Call call) {
        EventListener.Factory factory = this.f66458a;
        EventListener eventListenerCreate = factory != null ? factory.create(call) : null;
        String strHost = call.request().url().host();
        if (d.d() || d.a(strHost)) {
            o.f66480a.h("NetworkMonitor", "==== MonitorFactory host : ${host} matches ====");
            return new f(eventListenerCreate, this.f66459b, this.f66460c, this.f66465h, this.f66463f, this.f66464g, this.f66461d, this.f66462e);
        }
        o.f66480a.h("NetworkMonitor", "==== MonitorFactory host : ${host} does not matche ====");
        return eventListenerCreate == null ? EventListener.NONE : eventListenerCreate;
    }

    public g(EventListener.Factory factory, int i10, boolean z10) {
        this.f66461d = false;
        this.f66462e = false;
        this.f66463f = false;
        this.f66465h = "All";
        this.f66458a = factory;
        this.f66459b = i10;
        this.f66460c = z10;
    }
}
