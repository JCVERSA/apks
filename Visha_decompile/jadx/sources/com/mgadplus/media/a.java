package com.mgadplus.media;

import android.content.Context;
import com.hunantv.media.widget.MgtvVideoView;
import com.mgmi.ads.api.c;
import java.lang.ref.WeakReference;

public final class a {
    public static a c;
    public MgtvVideoView a;
    public WeakReference b;

    public interface InterfaceC0156a {
        void d();
    }

    public static a b() {
        if (c == null) {
            synchronized (a.class) {
                try {
                    if (c == null) {
                        c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public MgtvVideoView a(Context context, InterfaceC0156a interfaceC0156a) {
        if (this.a == null) {
            this.a = new MgtvVideoView(c.a(), 1, true, false);
            this.b = new WeakReference(interfaceC0156a);
            return this.a;
        }
        WeakReference weakReference = this.b;
        if (weakReference != null) {
            InterfaceC0156a interfaceC0156a2 = (InterfaceC0156a) weakReference.get();
            if (interfaceC0156a != interfaceC0156a2) {
                if (interfaceC0156a2 != null) {
                    interfaceC0156a2.d();
                }
                this.b = new WeakReference(interfaceC0156a);
            }
        } else {
            this.b = new WeakReference(interfaceC0156a);
        }
        return this.a;
    }
}
