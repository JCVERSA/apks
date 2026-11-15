package com.transsion.transfer.androidasync.http.server;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.transfer.androidasync.http.b0;
import com.transsion.transfer.androidasync.http.f0;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class n implements r {

    static Hashtable f53404c;

    static Hashtable f53405d;

    final ArrayList f53406a = new ArrayList();

    private b f53407b = new b();

    abstract class a extends com.transsion.transfer.androidasync.http.server.c {

        Matcher f53408o;

        a() {
        }
    }

    class b implements q, r {
        b() {
        }

        @Override
        public d a(String str, String str2) {
            return n.this.a(str, str2);
        }

        @Override
        public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
            d dVarA = a(bVar.y(), bVar.getPath());
            if (dVarA != null) {
                dVarA.f53417d.b(bVar, dVar);
            } else {
                dVar.c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
                dVar.d();
            }
        }
    }

    private static class c {

        String f53411a;

        Pattern f53412b;

        q f53413c;

        private c() {
        }
    }

    public static class d {

        public final String f53414a;

        public final String f53415b;

        public final Matcher f53416c;

        public final q f53417d;

        private d(String str, String str2, Matcher matcher, q qVar, com.transsion.transfer.androidasync.http.server.a aVar) {
            this.f53414a = str;
            this.f53415b = str2;
            this.f53416c = matcher;
            this.f53417d = qVar;
        }
    }

    static {
        Hashtable hashtable = new Hashtable();
        f53404c = hashtable;
        hashtable.put("js", "application/javascript");
        f53404c.put("json", "application/json");
        f53404c.put("png", "image/png");
        f53404c.put("jpg", "image/jpeg");
        f53404c.put("jpeg", "image/jpeg");
        f53404c.put("html", "text/html");
        f53404c.put("css", "text/css");
        f53404c.put("mp4", MimeTypes.VIDEO_MP4);
        f53404c.put("mov", "video/quicktime");
        f53404c.put("wmv", "video/x-ms-wmv");
        f53404c.put("txt", ShareConstant.SHARE_TYPE_TEXT);
        f53405d = new Hashtable();
    }

    public static b0 e(String str, com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        String strC = bVar.getHeaders().c("Connection");
        boolean z10 = false;
        if (strC != null) {
            for (String str2 : strC.split(",")) {
                if ("Upgrade".equalsIgnoreCase(str2.trim())) {
                    z10 = true;
                    break;
                }
            }
        }
        if ("websocket".equalsIgnoreCase(bVar.getHeaders().c("Upgrade")) && z10 && TextUtils.equals(str, bVar.getHeaders().c("Sec-WebSocket-Protocol"))) {
            return new f0(bVar, dVar);
        }
        return null;
    }

    public static String g(String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf == -1) {
            return null;
        }
        String str2 = (String) f53404c.get(str.substring(iLastIndexOf + 1));
        if (str2 != null) {
            return str2;
        }
        return null;
    }

    public static void h(String str, AsyncHttpServer.a aVar, com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        b0 b0VarE = e(str, bVar, dVar);
        if (b0VarE != null) {
            aVar.a(b0VarE, bVar);
        } else {
            dVar.c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
            dVar.d();
        }
    }

    @Override
    public d a(String str, String str2) {
        synchronized (this.f53406a) {
            try {
                for (c cVar : this.f53406a) {
                    if (TextUtils.equals(str, cVar.f53411a) || cVar.f53411a == null) {
                        Matcher matcher = cVar.f53412b.matcher(str2);
                        if (matcher.matches()) {
                            q qVar = cVar.f53413c;
                            if (qVar instanceof r) {
                                return ((r) cVar.f53413c).a(str, matcher.group(1));
                            }
                            return new d(str, str2, matcher, qVar, null);
                        }
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void c(String str, String str2, q qVar) {
        d(str, str2, qVar, null);
    }

    public void d(String str, String str2, q qVar, com.transsion.transfer.androidasync.http.server.a aVar) {
        c cVar = new c();
        cVar.f53412b = Pattern.compile("^" + str2);
        cVar.f53413c = qVar;
        cVar.f53411a = str;
        synchronized (this.f53406a) {
            this.f53406a.add(cVar);
        }
    }

    public void f(String str, q qVar) {
        c("GET", str, qVar);
    }

    public void i(String str, q qVar) {
        c("POST", str, qVar);
    }

    public void j(String str, final String str2, final AsyncHttpServer.a aVar) {
        f(str, new q() {
            @Override
            public final void b(b bVar, d dVar) {
                n.h(str2, aVar, bVar, dVar);
            }
        });
    }
}
