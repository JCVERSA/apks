package com.android.volley.toolbox;

import android.content.Context;
import java.io.File;

public class o {

    class a implements c.InterfaceC0157c {

        private File f18693a = null;

        final Context f18694b;

        a(Context context) {
            this.f18694b = context;
        }

        @Override
        public File get() {
            if (this.f18693a == null) {
                this.f18693a = new File(this.f18694b.getCacheDir(), "volley");
            }
            return this.f18693a;
        }
    }

    public static com.android.volley.h a(Context context) {
        return c(context, null);
    }

    private static com.android.volley.h b(Context context, com.android.volley.f fVar) {
        com.android.volley.h hVar = new com.android.volley.h(new c(new a(context.getApplicationContext())), fVar);
        hVar.g();
        return hVar;
    }

    public static com.android.volley.h c(Context context, com.android.volley.toolbox.a aVar) {
        return b(context, aVar == null ? new b(new g()) : new b(aVar));
    }
}
