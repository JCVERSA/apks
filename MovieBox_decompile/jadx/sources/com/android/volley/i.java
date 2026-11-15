package com.android.volley;

public class i {

    public final Object f18634a;

    public final c.a f18635b;

    public final VolleyError f18636c;

    public boolean f18637d;

    public interface a {
        void onErrorResponse(VolleyError volleyError);
    }

    public interface b {
        void onResponse(Object obj);
    }

    private i(Object obj, c.a aVar) {
        this.f18637d = false;
        this.f18634a = obj;
        this.f18635b = aVar;
        this.f18636c = null;
    }

    public static i a(VolleyError volleyError) {
        return new i(volleyError);
    }

    public static i c(Object obj, c.a aVar) {
        return new i(obj, aVar);
    }

    public boolean b() {
        return this.f18636c == null;
    }

    private i(VolleyError volleyError) {
        this.f18637d = false;
        this.f18634a = null;
        this.f18635b = null;
        this.f18636c = volleyError;
    }
}
