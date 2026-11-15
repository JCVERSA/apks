package com.mgtv.a.d.e;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTMediaFile;
import com.mgmi.model.VASTStaticResource;
import com.mgtv.a.c.c;
import com.mgtv.a.d.b.b;
import com.mgtv.a.d.b.d;
import com.mgtv.a.d.b.e;
import defpackage.l4d;
import java.util.Iterator;
import java.util.List;

public class a extends b<VASTAd> {
    private boolean a;

    public a(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
    }

    private void d(Context context) {
        if (this.g == 0 || context == null) {
            return;
        }
        c();
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(context, this.g);
            l4d.g(this.k, this.n.h());
            l4d.b(this.k, this.n.h());
            this.a = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void b(Context context) {
        if (this.g != 0) {
            e eVar = this.l;
            if (eVar != null) {
                this.m = eVar.a(this.c, this.q);
            }
            c cVar = this.m;
            if (cVar != null) {
                ((com.mgtv.a.c.a) cVar).a(((VASTAd) this.g).getDuration());
            }
        }
    }

    @Override
    public void c() {
        com.mgtv.a.d.e.a.a aVar = new com.mgtv.a.d.e.a.a();
        this.n = aVar;
        d dVar = this.p;
        if (dVar != null) {
            aVar.a(dVar);
        }
    }

    @Override
    public final void e() {
        super.e();
        e eVar = this.l;
        if (eVar != null) {
            eVar.a();
        }
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            l4d.f(aVar.h(), 0);
        }
    }

    public boolean h() {
        c cVar = this.m;
        if (cVar != null) {
            return cVar.i();
        }
        return false;
    }

    @Override
    public void m() {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(q());
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00a6 A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x000c, B:9:0x0011, B:11:0x0019, B:13:0x001f, B:15:0x0025, B:17:0x002f, B:19:0x003d, B:21:0x0042, B:20:0x0040, B:23:0x004a, B:25:0x0054, B:27:0x0066, B:36:0x0094, B:37:0x00a0, B:39:0x00a6, B:41:0x00ae, B:43:0x00b3, B:46:0x00bc, B:51:0x00c4, B:54:0x00c9, B:55:0x00d3, B:58:0x00d8, B:29:0x0074, B:30:0x0082, B:32:0x0088, B:34:0x0090), top: B:62:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b3 A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x000c, B:9:0x0011, B:11:0x0019, B:13:0x001f, B:15:0x0025, B:17:0x002f, B:19:0x003d, B:21:0x0042, B:20:0x0040, B:23:0x004a, B:25:0x0054, B:27:0x0066, B:36:0x0094, B:37:0x00a0, B:39:0x00a6, B:41:0x00ae, B:43:0x00b3, B:46:0x00bc, B:51:0x00c4, B:54:0x00c9, B:55:0x00d3, B:58:0x00d8, B:29:0x0074, B:30:0x0082, B:32:0x0088, B:34:0x0090), top: B:62:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x00bc A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x000c, B:9:0x0011, B:11:0x0019, B:13:0x001f, B:15:0x0025, B:17:0x002f, B:19:0x003d, B:21:0x0042, B:20:0x0040, B:23:0x004a, B:25:0x0054, B:27:0x0066, B:36:0x0094, B:37:0x00a0, B:39:0x00a6, B:41:0x00ae, B:43:0x00b3, B:46:0x00bc, B:51:0x00c4, B:54:0x00c9, B:55:0x00d3, B:58:0x00d8, B:29:0x0074, B:30:0x0082, B:32:0x0088, B:34:0x0090), top: B:62:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d3 A[Catch: all -> 0x00e2, TryCatch #0 {all -> 0x00e2, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x000c, B:9:0x0011, B:11:0x0019, B:13:0x001f, B:15:0x0025, B:17:0x002f, B:19:0x003d, B:21:0x0042, B:20:0x0040, B:23:0x004a, B:25:0x0054, B:27:0x0066, B:36:0x0094, B:37:0x00a0, B:39:0x00a6, B:41:0x00ae, B:43:0x00b3, B:46:0x00bc, B:51:0x00c4, B:54:0x00c9, B:55:0x00d3, B:58:0x00d8, B:29:0x0074, B:30:0x0082, B:32:0x0088, B:34:0x0090), top: B:62:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d8 A[Catch: all -> 0x00e2, TRY_LEAVE, TryCatch #0 {all -> 0x00e2, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x000c, B:9:0x0011, B:11:0x0019, B:13:0x001f, B:15:0x0025, B:17:0x002f, B:19:0x003d, B:21:0x0042, B:20:0x0040, B:23:0x004a, B:25:0x0054, B:27:0x0066, B:36:0x0094, B:37:0x00a0, B:39:0x00a6, B:41:0x00ae, B:43:0x00b3, B:46:0x00bc, B:51:0x00c4, B:54:0x00c9, B:55:0x00d3, B:58:0x00d8, B:29:0x0074, B:30:0x0082, B:32:0x0088, B:34:0x0090), top: B:62:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:? A[LOOP:0: B:37:0x00a0->B:65:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean a(VASTAd vASTAd) {
        T t;
        boolean z;
        int i;
        VASTStaticResource vASTStaticResource;
        super.a(vASTAd);
        try {
            if (this.j != null && (t = this.g) != 0) {
                if (t instanceof VASTAd) {
                    VASTAd vASTAd2 = (VASTAd) t;
                    if (vASTAd2.isInteractAd() && vASTAd2.isInteractValide()) {
                        if (vASTAd2.getCurrentMediaFile() == null || vASTAd2.getCurrentMediaFile().getVideoClick() == null || vASTAd2.getCurrentMediaFile().getVideoClick().getClickThrough() == null) {
                            this.d = false;
                        } else {
                            this.d = true;
                        }
                        b((VASTAd) this.g);
                        return true;
                    }
                }
                if (((VASTAd) this.g).getCurrentStaticResource() == null || TextUtils.isEmpty(((VASTAd) this.g).getCurrentStaticResource().getUrl())) {
                    this.c = 0;
                    Iterator<VASTMediaFile> it = ((VASTAd) this.g).getMediaFiles().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        VASTMediaFile next = it.next();
                        if (next != null) {
                            this.i = next;
                        }
                    }
                    for (VASTMediaFile vASTMediaFile : ((VASTAd) this.g).getMediaFiles()) {
                        if (vASTMediaFile != null) {
                            this.i = vASTMediaFile;
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        if (!c(this.j)) {
                            return false;
                        }
                        i = this.c;
                        if (i != 1 || i == 2) {
                            vASTStaticResource = this.h;
                            if (vASTStaticResource == null) {
                                return false;
                            }
                            this.m.a(vASTStaticResource.getUrl());
                        } else {
                            VASTMediaFile vASTMediaFile2 = this.i;
                            if (vASTMediaFile2 == null) {
                                return false;
                            }
                            this.m.a(vASTMediaFile2.getValue());
                        }
                    }
                    return z;
                }
                this.h = ((VASTAd) this.g).getCurrentStaticResource();
                this.c = 1;
                z = true;
                while (r1.hasNext()) {
                    if (vASTMediaFile != null) {
                        this.i = vASTMediaFile;
                        z = true;
                        break;
                    }
                }
                if (z) {
                    if (!c(this.j)) {
                        return false;
                    }
                    i = this.c;
                    if (i != 1) {
                        vASTStaticResource = this.h;
                        if (vASTStaticResource == null) {
                            return false;
                        }
                        this.m.a(vASTStaticResource.getUrl());
                    } else {
                        vASTStaticResource = this.h;
                        if (vASTStaticResource == null) {
                            return false;
                        }
                        this.m.a(vASTStaticResource.getUrl());
                    }
                }
                return z;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override
    public boolean c(Context context) {
        if (context == null) {
            return false;
        }
        b(context);
        a(context);
        return this.m != null;
    }

    public void b(VASTAd vASTAd) {
        if (vASTAd == null) {
            com.mgtv.a.c.e eVar = this.o;
            if (eVar != null) {
                eVar.d();
                return;
            }
            return;
        }
        vASTAd.setmSupoortClick(this.d);
    }

    @Override
    public void d(String str) {
        super.d(str);
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    public void b(boolean z) {
        com.mgtv.a.d.b.a aVar = this.n;
        if (aVar == null || !(aVar instanceof com.mgtv.a.d.e.a.a)) {
            return;
        }
        ((com.mgtv.a.d.e.a.a) aVar).b(z);
    }

    @Override
    public void a(Context context, List<VASTAd> list) {
        e eVar = this.l;
        if (eVar != null) {
            eVar.a(true);
            this.l.a(context, this.k, list);
        }
    }

    @Override
    public void a(Context context) {
        if (!this.a) {
            com.mgtv.a.d.b.a aVar = this.n;
            if (aVar != null) {
                l4d.g(this.k, aVar.h());
            }
            d(context);
        } else if (this.n == null) {
            d(context);
        }
        com.mgtv.a.d.b.a aVar2 = this.n;
        if (aVar2 != null) {
            aVar2.c(this.g);
        }
    }
}
