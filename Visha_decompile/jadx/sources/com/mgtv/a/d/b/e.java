package com.mgtv.a.d.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTChannelAd;
import com.mgmi.model.VASTMediaFile;
import com.mgmi.model.m;
import com.mgmi.net.bean.BootDataItem;
import com.mgtv.a.c.f;
import com.mgtv.a.c.g;
import com.mgtv.a.c.h;
import com.mgtv.a.c.i;
import defpackage.f4d;
import defpackage.l4d;
import java.util.Iterator;
import java.util.List;

public class e {
    protected com.mgtv.a.c.c a;
    protected com.mgtv.a.c.c b;
    protected com.mgtv.a.c.c c;
    protected com.mgtv.a.c.c d;
    protected com.mgtv.a.c.c e;
    protected com.mgtv.a.c.c f;
    protected boolean g;
    protected boolean h = false;

    private com.mgtv.a.c.c b(Context context, VASTAd vASTAd, ViewGroup viewGroup) {
        com.mgtv.a.c.c cVar;
        if (this.h && (cVar = this.c) != null) {
            return cVar;
        }
        g gVar = new g();
        this.c = gVar;
        gVar.a(context);
        ((com.mgtv.a.c.a) this.c).a(new m());
        l4d.b(viewGroup, this.c.a());
        return this.c;
    }

    private com.mgtv.a.c.c c(Context context, VASTAd vASTAd, ViewGroup viewGroup) {
        com.mgtv.a.c.c cVar;
        if (this.h && (cVar = this.a) != null) {
            return cVar;
        }
        if (vASTAd instanceof VASTChannelAd) {
            i iVar = new i();
            this.a = iVar;
            iVar.a(context);
            ((com.mgtv.a.c.a) this.a).a(new m().a(vASTAd, true));
        } else {
            h hVar = new h();
            this.a = hVar;
            hVar.a(context);
            ((com.mgtv.a.c.a) this.a).a(new m());
        }
        l4d.b(viewGroup, this.a.a());
        return this.a;
    }

    private com.mgtv.a.c.c d(Context context, VASTAd vASTAd, ViewGroup viewGroup) {
        com.mgtv.a.c.c cVar;
        if (this.h && (cVar = this.d) != null) {
            return cVar;
        }
        com.mgtv.a.c.b bVar = new com.mgtv.a.c.b(context);
        this.d = bVar;
        bVar.a(context);
        ((com.mgtv.a.c.a) this.d).a(new m().a(vASTAd));
        l4d.b(viewGroup, this.d.a());
        return this.d;
    }

    public com.mgtv.a.c.c a(Context context, ViewGroup viewGroup, VASTAd vASTAd) {
        return a(context, viewGroup, vASTAd, false);
    }

    public com.mgtv.a.c.c a(Context context, ViewGroup viewGroup, VASTAd vASTAd, boolean z) {
        if (vASTAd == null) {
            return null;
        }
        this.h = z;
        if (vASTAd.getCurrentStaticResource() != null && "file/h5_zip".equalsIgnoreCase(vASTAd.getCurrentStaticResource().getType())) {
            return d(context, vASTAd, viewGroup);
        }
        if (vASTAd.getMediaFiles() != null && vASTAd.getMediaFiles().size() > 0) {
            Iterator<VASTMediaFile> it = vASTAd.getMediaFiles().iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    return c(context, vASTAd, viewGroup);
                }
            }
        }
        return (vASTAd.getCurrentStaticResource() == null || TextUtils.isEmpty(vASTAd.getCurrentStaticResource().getUrl())) ? b(context, vASTAd, viewGroup) : a(context, vASTAd, viewGroup);
    }

    private com.mgtv.a.c.c b(Context context, BootDataItem bootDataItem, ViewGroup viewGroup) {
        com.mgtv.a.c.c cVar;
        if (this.h && (cVar = this.d) != null) {
            return cVar;
        }
        com.mgtv.a.c.b bVar = new com.mgtv.a.c.b(context);
        this.d = bVar;
        bVar.a(context);
        ((com.mgtv.a.c.a) this.d).a(new m().a(bootDataItem));
        l4d.c(viewGroup, this.d.a(), new FrameLayout.LayoutParams(-1, -1));
        return this.d;
    }

    private com.mgtv.a.c.c c(Context context, BootDataItem bootDataItem, ViewGroup viewGroup) {
        com.mgtv.a.c.c cVar;
        if (this.h && (cVar = this.a) != null) {
            return cVar;
        }
        h hVar = new h();
        this.a = hVar;
        hVar.a(context);
        ((com.mgtv.a.c.a) this.a).a(new m());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.width = f4d.a;
        layoutParams.height = f4d.b;
        l4d.c(viewGroup, this.a.a(), layoutParams);
        return this.a;
    }

    public void a(boolean z) {
        this.g = z;
    }

    private com.mgtv.a.c.c a(Context context, VASTAd vASTAd, ViewGroup viewGroup) {
        com.mgtv.a.c.c cVar;
        if (this.h && (cVar = this.b) != null) {
            return cVar;
        }
        f fVar = new f();
        this.b = fVar;
        fVar.c(this.g);
        this.b.a(context);
        ((com.mgtv.a.c.a) this.b).a(new m().a(vASTAd));
        l4d.b(viewGroup, this.b.a());
        return this.b;
    }

    public void b() {
        com.mgtv.a.c.c cVar = this.a;
        if (cVar != null) {
            cVar.l();
            if (this.a.a() != null) {
                a(this.a.a().getParent(), this.a.a());
            }
            this.a.q();
        }
        com.mgtv.a.c.c cVar2 = this.b;
        if (cVar2 != null) {
            if (cVar2.a() != null) {
                a(this.b.a().getParent(), this.b.a());
            }
            this.b.q();
        }
        com.mgtv.a.c.c cVar3 = this.d;
        if (cVar3 != null) {
            if (cVar3.a() != null) {
                a(this.d.a().getParent(), this.d.a());
            }
            this.d.q();
        }
        com.mgtv.a.c.c cVar4 = this.c;
        if (cVar4 != null) {
            if (cVar4.a() != null) {
                a(this.c.a().getParent(), this.c.a());
            }
            this.c.q();
        }
        this.b = null;
        this.a = null;
        this.d = null;
        this.c = null;
        this.f = null;
        this.e = null;
    }

    public com.mgtv.a.c.c a(Context context, ViewGroup viewGroup, BootDataItem bootDataItem) {
        if (bootDataItem == null) {
            return null;
        }
        if (bootDataItem.type.equals("2")) {
            return c(context, bootDataItem, viewGroup);
        }
        if (bootDataItem.type.equals("4")) {
            return b(context, bootDataItem, viewGroup);
        }
        return a(context, bootDataItem, viewGroup);
    }

    private com.mgtv.a.c.c a(Context context, BootDataItem bootDataItem, ViewGroup viewGroup) {
        com.mgtv.a.c.c cVar;
        if (this.h && (cVar = this.b) != null) {
            return cVar;
        }
        f fVar = new f();
        this.b = fVar;
        fVar.c(this.g);
        this.b.a(context);
        ((com.mgtv.a.c.a) this.b).a(new m().a(bootDataItem));
        l4d.c(viewGroup, this.b.a(), new FrameLayout.LayoutParams(-1, -1));
        return this.b;
    }

    public void a(Context context, ViewGroup viewGroup, List<VASTAd> list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                VASTAd vASTAd = list.get(i);
                if (vASTAd != null) {
                    a(context, viewGroup, vASTAd, true);
                }
            }
        }
    }

    public com.mgtv.a.c.c a(int i, com.mgtv.a.c.e eVar) {
        if (i == 1) {
            a(this.f, this.b, eVar);
        } else if (i == 2) {
            a(this.f, this.d, eVar);
        } else if (i == 0) {
            a(this.f, this.a, eVar);
        } else {
            a(this.f, this.c, eVar);
        }
        return this.f;
    }

    public void a(com.mgtv.a.c.c cVar, com.mgtv.a.c.c cVar2, com.mgtv.a.c.e eVar) {
        boolean z;
        com.mgtv.a.c.c cVar3;
        if (cVar == null || cVar == cVar2) {
            z = false;
        } else {
            this.e = cVar;
            cVar.a((com.mgtv.a.c.e) null);
            this.f = cVar2;
            z = true;
        }
        if (this.f == null) {
            this.f = cVar2;
        }
        com.mgtv.a.c.c cVar4 = this.f;
        if (cVar4 != null) {
            cVar4.a(eVar);
        }
        if (!z || (cVar3 = this.f) == null) {
            return;
        }
        l4d.a(cVar3.a(), 0.0f);
    }

    public final void a() {
        com.mgtv.a.c.c cVar = this.f;
        if (cVar != null) {
            l4d.a(cVar.a(), 1.0f);
        }
        com.mgtv.a.c.c cVar2 = this.e;
        if (cVar2 != null) {
            l4d.a(cVar2.a(), 0.0f);
            this.e = null;
        }
    }

    public void a(ViewParent viewParent, View view) {
        if (viewParent instanceof ViewGroup) {
            l4d.g((ViewGroup) viewParent, view);
        }
    }
}
