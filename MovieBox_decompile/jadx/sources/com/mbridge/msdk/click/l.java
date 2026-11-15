package com.mbridge.msdk.click;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import java.net.URI;
import java.util.concurrent.Semaphore;

public class l extends com.mbridge.msdk.foundation.same.task.a {

    private final Context f33508b;

    private final String f33509c;

    private final String f33510d;

    private final String f33511e;

    private final CampaignEx f33512f;

    private final boolean f33513g;

    private final boolean f33514h;

    private final int f33515i;

    private final boolean f33516j;

    private com.mbridge.msdk.click.entity.a f33517k;

    private JumpLoaderResult f33518l;

    private g f33519m;

    private k f33520n;

    private final Semaphore f33507a = new Semaphore(0);

    private final o.f f33521o = new a();

    public l(com.mbridge.msdk.click.entity.b bVar) {
        this.f33508b = bVar.c();
        this.f33509c = bVar.e();
        this.f33510d = bVar.b();
        this.f33511e = bVar.d();
        this.f33512f = bVar.a();
        this.f33513g = bVar.g();
        this.f33514h = bVar.i();
        this.f33515i = bVar.f();
        this.f33516j = bVar.h();
    }

    @Override
    public void cancelTask() {
    }

    @Override
    public void pauseTask(boolean z10) {
    }

    @Override
    public void runTask() {
        JumpLoaderResult jumpLoaderResult;
        g gVar = this.f33519m;
        if (gVar != null) {
            gVar.b(null);
        }
        JumpLoaderResult jumpLoaderResult2 = new JumpLoaderResult();
        this.f33518l = jumpLoaderResult2;
        jumpLoaderResult2.setUrl(this.f33509c);
        JumpLoaderResult jumpLoaderResultC = c(this.f33509c);
        this.f33518l = jumpLoaderResultC;
        if (jumpLoaderResultC != null && !TextUtils.isEmpty(jumpLoaderResultC.getExceptionMsg())) {
            this.f33518l.setSuccess(true);
        }
        if (this.mState != com.mbridge.msdk.foundation.same.task.a.b.RUNNING) {
            k kVar = this.f33520n;
            if (kVar != null) {
                kVar.a(this.f33518l);
                return;
            }
            return;
        }
        JumpLoaderResult jumpLoaderResult3 = this.f33518l;
        if (jumpLoaderResult3 != null && !jumpLoaderResult3.isSuccess()) {
            k kVar2 = this.f33520n;
            if (kVar2 != null) {
                kVar2.a(this.f33518l);
                return;
            }
            return;
        }
        com.mbridge.msdk.click.entity.a aVar = this.f33517k;
        if (aVar != null && (jumpLoaderResult = this.f33518l) != null) {
            jumpLoaderResult.setStatusCode(aVar.f33484f);
        }
        m.a(this.f33512f, this.f33518l, this.f33517k, this.f33510d, this.f33511e, this.f33508b, this.f33521o, this.f33520n, this.f33507a);
    }

    class a implements o.f {
        a() {
        }

        @Override
        public boolean a(String str) {
            boolean zB = l.this.b(str);
            if (zB) {
                a();
            }
            return zB;
        }

        @Override
        public boolean b(String str) {
            return false;
        }

        @Override
        public boolean c(String str) {
            boolean zB = l.this.b(str);
            if (zB) {
                a();
            }
            return zB;
        }

        @Override
        public void a(String str, boolean z10, String str2) {
            l.this.b(str);
            l.this.f33518l.setContent(str2);
            a();
        }

        private void a() {
            synchronized (this) {
                try {
                    l.this.f33518l.setSuccess(true);
                    if (l.this.f33520n != null) {
                        l.this.f33520n.a(l.this.f33518l);
                    }
                    l.this.a();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void a(int i10, String str, String str2, String str3) {
            if (!TextUtils.isEmpty(str2)) {
                l.this.f33518l.setExceptionMsg(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                l.this.f33518l.setContent(str3);
            }
            l.this.b(str);
            a();
        }
    }

    public boolean b(String str) {
        return m.a(str, this.f33512f, this.f33518l);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0163 A[LOOP:0: B:15:0x003e->B:65:0x0163, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x015c A[SYNTHETIC] */
    private JumpLoaderResult c(String str) {
        String scheme;
        String str2;
        int i10;
        String strA = a(str);
        JumpLoaderResult jumpLoaderResult = new JumpLoaderResult();
        n nVar = new n();
        i iVar = new i();
        String host = "";
        try {
            if (URLUtil.isNetworkUrl(strA)) {
                URI uriCreate = URI.create(strA);
                scheme = uriCreate.getScheme();
                try {
                    host = uriCreate.getHost();
                } catch (Exception e10) {
                    e = e10;
                    o0.b("SocketRequestTask", e.getMessage());
                }
                str2 = host;
                host = scheme;
            } else {
                str2 = "";
            }
        } catch (Exception e11) {
            e = e11;
            scheme = "";
        }
        String strA2 = strA;
        for (int i11 = 0; i11 < 10; i11++) {
            if (this.mState != com.mbridge.msdk.foundation.same.task.a.b.RUNNING) {
                return null;
            }
            if (strA2.startsWith("tcp")) {
                this.f33517k = nVar.a(strA2, this.f33512f, this.f33513g, this.f33514h);
                i10 = 3;
            } else {
                this.f33517k = iVar.a(strA2, this.f33513g, this.f33514h, this.f33512f);
                i10 = 1;
            }
            com.mbridge.msdk.click.entity.a aVar = this.f33517k;
            if (aVar == null) {
                jumpLoaderResult.setUrl(strA2);
                jumpLoaderResult.setSuccess(false);
                break;
            }
            if (!TextUtils.isEmpty(aVar.f33486h)) {
                jumpLoaderResult.setUrl(strA2);
                jumpLoaderResult.setExceptionMsg(this.f33517k.f33486h);
                jumpLoaderResult.setType(i10);
                jumpLoaderResult.setHeader(this.f33517k.a());
                jumpLoaderResult.setSuccess(false);
                if (i11 != 0) {
                    break;
                }
                com.mbridge.msdk.click.retry.a.b().a(strA2, this.f33517k.f33486h, this.f33512f, this.f33511e, this.f33513g, this.f33514h, this.f33515i);
                break;
            }
            int i12 = this.f33517k.f33484f;
            if (i12 == 200) {
                jumpLoaderResult.setjumpDone(true);
                jumpLoaderResult.setUrl(strA2);
                jumpLoaderResult.setSuccess(true);
                String str3 = this.f33517k.f33485g;
                jumpLoaderResult.setContent(str3 != null ? str3 : null);
                break;
            }
            if (i12 != 301 && i12 != 302 && i12 != 307) {
                jumpLoaderResult.setjumpDone(false);
                jumpLoaderResult.setUrl(strA2);
                if (i11 != 0) {
                    break;
                }
                com.mbridge.msdk.click.retry.a.b().a(strA2, this.f33517k.f33486h, this.f33512f, this.f33511e, this.f33513g, this.f33514h, this.f33515i);
                break;
            }
            jumpLoaderResult.setSuccess(true);
            jumpLoaderResult.setIs302Jump(true);
            if (TextUtils.isEmpty(this.f33517k.f33479a)) {
                jumpLoaderResult.setjumpDone(true);
                jumpLoaderResult.setUrl(strA2);
                break;
            }
            String str4 = this.f33517k.f33479a;
            if (str4.startsWith("http")) {
                if (s0.a.b(str4)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(str4);
                    break;
                }
                strA2 = a(str4);
            } else {
                if (!str4.startsWith("/") || TextUtils.isEmpty(host) || TextUtils.isEmpty(str2)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(str4);
                    break;
                }
                str4 = host + "://" + str2 + str4;
                host = null;
                str2 = null;
                if (s0.a.b(str4)) {
                    jumpLoaderResult.setjumpDone(true);
                    jumpLoaderResult.setUrl(str4);
                    break;
                }
                strA2 = a(str4);
            }
        }
        return jumpLoaderResult;
    }

    public void a(g gVar) {
        this.f33519m = gVar;
    }

    public void a(k kVar) {
        this.f33520n = kVar;
    }

    public void a() {
        this.f33507a.release();
    }

    private String a(String str) {
        if (this.f33516j) {
            String strA = com.mbridge.msdk.setting.b.a(this.f33508b, str);
            if (!TextUtils.isEmpty(strA)) {
                str = str + strA;
            }
        }
        return com.mbridge.msdk.util.b.a() ? m.a(this.f33512f, str) : str;
    }
}
