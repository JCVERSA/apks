package com.google.firebase.abt.component;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import kc.b;

public class a {

    private final Map f30220a = new HashMap();

    private final Context f30221b;

    private final b f30222c;

    protected a(Context context, b bVar) {
        this.f30221b = context;
        this.f30222c = bVar;
    }

    protected jb.b a(String str) {
        return new jb.b(this.f30221b, this.f30222c, str);
    }

    public synchronized jb.b b(String str) {
        try {
            if (!this.f30220a.containsKey(str)) {
                this.f30220a.put(str, a(str));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (jb.b) this.f30220a.get(str);
    }
}
