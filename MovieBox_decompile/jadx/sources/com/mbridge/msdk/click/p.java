package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.s0;
import java.net.URI;
import java.util.concurrent.Semaphore;

public class p extends f implements com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a {

    private g f33556b;

    private JumpLoaderResult f33557c;

    private boolean f33559e;

    private Context f33560f;

    private com.mbridge.msdk.foundation.same.task.b f33561g;

    private com.mbridge.msdk.click.entity.a f33562h;

    private boolean f33558d = true;

    private Handler f33563i = new Handler(Looper.getMainLooper());

    class a implements k {
        a() {
        }

        @Override
        public void a(JumpLoaderResult jumpLoaderResult) {
            p.this.f33557c = jumpLoaderResult;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            if (p.this.f33556b != null) {
                if (p.this.f33557c.isSuccess()) {
                    p.this.f33556b.a(p.this.f33557c);
                } else {
                    p.this.f33556b.a(p.this.f33557c, p.this.f33557c.getMsg());
                }
            }
        }
    }

    private class c extends com.mbridge.msdk.foundation.same.task.a {

        private final Context f33567b;

        private String f33568c;

        private String f33569d;

        private String f33570e;

        private CampaignEx f33571f;

        private boolean f33572g;

        private boolean f33573h;

        private int f33574i;

        private final Semaphore f33566a = new Semaphore(0);

        private o.f f33575j = new a();

        public c(Context context, String str, String str2, String str3, CampaignEx campaignEx, boolean z10, boolean z11, int i10) {
            this.f33567b = context;
            this.f33568c = str;
            this.f33569d = str2;
            this.f33570e = str3;
            this.f33571f = campaignEx;
            this.f33572g = z10;
            this.f33573h = z11;
            this.f33574i = i10;
        }

        private boolean a(int i10) {
            return i10 == 200;
        }

        private boolean b(int i10) {
            return i10 == 301 || i10 == 302 || i10 == 307;
        }

        private boolean c(String str) {
            return str.startsWith("/");
        }

        public boolean d(String str) {
            return q.a(str, this.f33571f, p.this.f33557c);
        }

        @Override
        public void cancelTask() {
        }

        @Override
        public void pauseTask(boolean z10) {
        }

        @Override
        public void runTask() {
            if (p.this.f33556b != null) {
                p.this.f33556b.b(null);
            }
            p.this.f33557c = new JumpLoaderResult();
            p.this.f33557c.setUrl(this.f33568c);
            p.this.f33557c = a(this.f33568c, this.f33572g, this.f33573h, this.f33571f, this.f33574i);
            if (!TextUtils.isEmpty(p.this.f33557c.getExceptionMsg())) {
                p.this.f33557c.setSuccess(true);
            }
            if (p.this.f33558d && p.this.f33557c.isSuccess()) {
                if (p.this.f33562h != null) {
                    p.this.f33557c.setStatusCode(p.this.f33562h.f33484f);
                }
                q.a(this.f33571f, p.this.f33557c, p.this.f33562h, this.f33569d, this.f33570e, this.f33567b, this.f33575j, this.f33566a);
            }
        }

        class a implements o.f {
            a() {
            }

            @Override
            public boolean a(String str) {
                boolean zD = c.this.d(str);
                if (zD) {
                    a();
                }
                return zD;
            }

            @Override
            public boolean b(String str) {
                return false;
            }

            @Override
            public boolean c(String str) {
                boolean zD = c.this.d(str);
                if (zD) {
                    a();
                }
                return zD;
            }

            @Override
            public void a(String str, boolean z10, String str2) {
                c.this.d(str);
                p.this.f33557c.setContent(str2);
                a();
            }

            @Override
            public void a(int i10, String str, String str2, String str3) {
                if (!TextUtils.isEmpty(str2)) {
                    p.this.f33557c.setExceptionMsg(str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    p.this.f33557c.setContent(str3);
                }
                c.this.d(str);
                a();
            }

            private void a() {
                synchronized (p.this) {
                    p.this.f33557c.setSuccess(true);
                    c.this.a();
                }
            }
        }

        private boolean b(String str) {
            return !URLUtil.isNetworkUrl(str);
        }

        public void a() {
            this.f33566a.release();
        }

        private JumpLoaderResult a(String str, boolean z10, boolean z11, CampaignEx campaignEx, int i10) {
            String scheme;
            String str2;
            String strA = str;
            String host = "";
            if (p.this.f33559e) {
                String strA2 = com.mbridge.msdk.setting.b.a(this.f33567b, strA);
                if (!TextUtils.isEmpty(strA2)) {
                    strA = strA + strA2;
                }
            }
            if (com.mbridge.msdk.util.b.a()) {
                strA = q.a(this.f33571f, strA);
            }
            String str3 = strA;
            JumpLoaderResult jumpLoaderResult = new JumpLoaderResult();
            i iVar = new i();
            try {
                if (b(str3)) {
                    str2 = "";
                } else {
                    URI uriCreate = URI.create(str3);
                    scheme = uriCreate.getScheme();
                    try {
                        host = uriCreate.getHost();
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                    }
                    str2 = host;
                    host = scheme;
                }
            } catch (Exception e11) {
                e = e11;
                scheme = "";
            }
            String strA3 = str3;
            String scheme2 = host;
            String host2 = str2;
            for (int i11 = 0; i11 < 10; i11++) {
                if (!p.this.f33558d) {
                    return null;
                }
                p.this.f33562h = iVar.a(strA3, z10, z11, campaignEx);
                if (p.this.f33562h != null) {
                    if (!TextUtils.isEmpty(p.this.f33562h.f33486h)) {
                        jumpLoaderResult.setUrl(strA3);
                        jumpLoaderResult.setExceptionMsg(p.this.f33562h.f33486h);
                        jumpLoaderResult.setType(1);
                        jumpLoaderResult.setHeader(p.this.f33562h.a());
                        jumpLoaderResult.setSuccess(false);
                        if (i11 != 0) {
                            break;
                        }
                        com.mbridge.msdk.click.retry.a.b().a(strA3, p.this.f33562h.f33486h, campaignEx, this.f33570e, z10, z11, i10);
                        break;
                    }
                    jumpLoaderResult.setSuccess(true);
                    if (!b(p.this.f33562h.f33484f)) {
                        if (a(p.this.f33562h.f33484f)) {
                            jumpLoaderResult.setjumpDone(true);
                            jumpLoaderResult.setUrl(strA3);
                            jumpLoaderResult.setContent(p.this.f33562h.f33485g);
                            break;
                        }
                        jumpLoaderResult.setjumpDone(false);
                        jumpLoaderResult.setUrl(strA3);
                        if (i11 != 0) {
                            break;
                        }
                        com.mbridge.msdk.click.retry.a.b().a(strA3, "error code:" + p.this.f33562h.f33484f, campaignEx, this.f33570e, z10, z11, i10);
                        break;
                    }
                    jumpLoaderResult.setIs302Jump(true);
                    if (!TextUtils.isEmpty(p.this.f33562h.f33479a)) {
                        strA3 = p.this.f33562h.f33479a;
                        if (b(strA3)) {
                            if (!c(strA3) || TextUtils.isEmpty(scheme2) || TextUtils.isEmpty(host2)) {
                                jumpLoaderResult.setjumpDone(true);
                                jumpLoaderResult.setUrl(strA3);
                                break;
                            }
                            strA3 = scheme2 + "://" + host2 + strA3;
                            host2 = null;
                            scheme2 = null;
                        } else if (!b(strA3)) {
                            try {
                                URI uriCreate2 = URI.create(strA3);
                                scheme2 = uriCreate2.getScheme();
                                host2 = uriCreate2.getHost();
                            } catch (Exception e12) {
                                e12.printStackTrace();
                            }
                        }
                        if (!a(strA3)) {
                            if (p.this.f33559e) {
                                String strA4 = com.mbridge.msdk.setting.b.a(this.f33567b, strA3);
                                if (!TextUtils.isEmpty(strA4)) {
                                    strA3 = strA3 + strA4;
                                }
                            }
                            if (com.mbridge.msdk.util.b.a()) {
                                strA3 = q.a(this.f33571f, strA3);
                            }
                        } else {
                            jumpLoaderResult.setjumpDone(true);
                            jumpLoaderResult.setUrl(strA3);
                            break;
                        }
                    } else {
                        jumpLoaderResult.setjumpDone(true);
                        jumpLoaderResult.setUrl(strA3);
                        break;
                    }
                } else {
                    jumpLoaderResult.setUrl(strA3);
                    jumpLoaderResult.setSuccess(false);
                    jumpLoaderResult.setMsg("request url is invalided");
                    break;
                }
            }
            return jumpLoaderResult;
        }

        private boolean a(String str) {
            return s0.a.b(str);
        }
    }

    public p(Context context) {
        this.f33560f = context;
        this.f33561g = new com.mbridge.msdk.foundation.same.task.b(context, 2);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(String str, g gVar, boolean z10, String str2, String str3, CampaignEx campaignEx, boolean z11, boolean z12, int i10) {
        com.mbridge.msdk.foundation.same.task.a cVar;
        this.f33556b = gVar;
        this.f33559e = z10;
        com.mbridge.msdk.click.entity.b bVar = new com.mbridge.msdk.click.entity.b();
        bVar.a(this.f33560f);
        bVar.c(str);
        bVar.b(z10);
        bVar.a(str2);
        bVar.b(str3);
        bVar.a(campaignEx);
        bVar.a(z11);
        bVar.c(z12);
        bVar.a(i10);
        if (str.startsWith("tcp")) {
            l lVar = new l(bVar);
            lVar.a(this.f33556b);
            lVar.a(new a());
            cVar = lVar;
        } else {
            cVar = new c(this.f33560f, str, str2, str3, campaignEx, z11, z12, i10);
        }
        this.f33561g.b(cVar, this);
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.task.a.b bVar) {
        if (bVar == com.mbridge.msdk.foundation.same.task.a.b.FINISH && this.f33558d) {
            this.f33563i.post(new b());
        }
    }
}
