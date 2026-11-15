package com.mbridge.msdk.timer;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.l;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.i;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import java.util.LinkedList;
import java.util.List;

public class a {

    private long f37648a;

    private boolean f37649b;

    private LinkedList<i> f37650c;

    private LinkedList<i> f37651d;

    private int f37652e;

    private int f37653f;

    private e f37654g;

    private com.mbridge.msdk.videocommon.setting.a f37655h;

    private l f37656i;

    private g f37657j;

    private Handler f37658k;

    class HandlerC0528a extends Handler {
        HandlerC0528a() {
        }

        @Override
        public void handleMessage(Message message) {
            synchronized (a.this) {
                try {
                    int i10 = message.what;
                    if (i10 != 1) {
                        if (i10 == 2) {
                            a.this.c();
                        }
                    } else {
                        if (a.this.f37649b) {
                            return;
                        }
                        a aVar = a.this;
                        aVar.a(aVar.f37648a);
                        sendMessageDelayed(obtainMessage(1), a.this.f37648a);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    class b implements com.mbridge.msdk.reward.adapter.a {

        final com.mbridge.msdk.reward.adapter.c f37660a;

        b(com.mbridge.msdk.reward.adapter.c cVar) {
            this.f37660a = cVar;
        }

        @Override
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        }

        @Override
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f37658k.sendMessage(a.this.f37658k.obtainMessage(2));
            this.f37660a.a((com.mbridge.msdk.reward.adapter.a) null);
        }

        @Override
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f37658k.sendMessage(a.this.f37658k.obtainMessage(2));
            this.f37660a.a((com.mbridge.msdk.reward.adapter.a) null);
        }
    }

    static class c {

        static a f37662a = new a(null);
    }

    a(HandlerC0528a handlerC0528a) {
        this();
    }

    private a() {
        this.f37649b = false;
        this.f37650c = new LinkedList<>();
        this.f37651d = new LinkedList<>();
        this.f37652e = 0;
        this.f37653f = 0;
        this.f37658k = new HandlerC0528a();
    }

    private void b() {
        if (this.f37657j == null) {
            this.f37657j = g.a(com.mbridge.msdk.foundation.controller.c.m().d());
        }
        if (this.f37656i == null) {
            this.f37656i = l.a(this.f37657j);
        }
        List<i> listA = this.f37656i.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO);
        if (listA != null) {
            this.f37651d.addAll(listA);
            for (i iVar : listA) {
                a(iVar.a(), iVar.b());
            }
        }
        List<i> listA2 = this.f37656i.a(94);
        if (listA2 != null) {
            this.f37650c.addAll(listA2);
            for (i iVar2 : listA2) {
                b(iVar2.a(), iVar2.b());
            }
        }
        if (this.f37654g == null) {
            this.f37654g = e.a(this.f37657j);
        }
        if (this.f37655h == null) {
            this.f37655h = com.mbridge.msdk.videocommon.setting.b.b().c();
        }
    }

    public void c() {
        try {
            LinkedList<i> linkedList = this.f37650c;
            if (linkedList == null || linkedList.size() <= 0 || this.f37652e >= this.f37650c.size()) {
                LinkedList<i> linkedList2 = this.f37651d;
                if (linkedList2 != null && linkedList2.size() > 0 && this.f37653f < this.f37651d.size()) {
                    i iVar = this.f37651d.get(this.f37653f);
                    this.f37653f++;
                    if (a(iVar)) {
                        c(iVar.a(), iVar.b());
                    }
                }
            } else {
                i iVar2 = this.f37650c.get(this.f37652e);
                this.f37652e++;
                if (a(iVar2)) {
                    a(iVar2.a(), iVar2.b(), false);
                }
            }
        } catch (Throwable th2) {
            o0.b("LoopTimer", th2.getMessage(), th2);
        }
    }

    public static a a() {
        return c.f37662a;
    }

    public void a(long j10) {
        LinkedList<i> linkedList = this.f37650c;
        if (linkedList == null || linkedList.size() <= 0 || this.f37652e == 0 || this.f37650c.size() <= this.f37652e) {
            LinkedList<i> linkedList2 = this.f37651d;
            if (linkedList2 == null || linkedList2.size() <= 0 || this.f37653f == 0 || this.f37651d.size() == this.f37653f) {
                this.f37653f = 0;
                this.f37652e = 0;
                Handler handler = this.f37658k;
                handler.sendMessage(handler.obtainMessage(2));
            }
        }
    }

    private boolean a(i iVar) {
        boolean z10 = false;
        if (iVar == null || TextUtils.isEmpty(iVar.b())) {
            return false;
        }
        String strB = iVar.b();
        try {
            if (this.f37654g != null) {
                com.mbridge.msdk.videocommon.setting.a aVar = this.f37655h;
                int iA = this.f37654g.a(strB, aVar != null ? aVar.e() : 0L);
                if (iA == -1) {
                    a(strB);
                } else if (iA != 1) {
                }
                try {
                    Handler handler = this.f37658k;
                    handler.sendMessage(handler.obtainMessage(2));
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    o0.b("LoopTimer", th.getMessage(), th);
                    return z10;
                }
            }
            return true;
        } catch (Throwable th3) {
            th = th3;
            z10 = true;
        }
    }

    private void c(String str, String str2) {
        a(str, str2, true);
    }

    private void a(String str, String str2, boolean z10) {
        try {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (contextD == null) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(contextD, str, str2);
            cVar.d(z10);
            cVar.a(new b(cVar));
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar2.h(SameMD5.getMD5(t0.d()));
            cVar2.m(str2);
            if (z10) {
                cVar2.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO);
            } else {
                cVar2.a(94);
            }
            cVar2.g("0");
            cVar2.e("1");
            cVar.a(1, 8000, false, cVar2);
        } catch (Exception e10) {
            o0.b("LoopTimer", e10.getMessage(), e10);
        }
    }

    public void b(long j10) {
        b();
        this.f37648a = j10;
        this.f37649b = false;
        Handler handler = this.f37658k;
        handler.sendMessageDelayed(handler.obtainMessage(1), this.f37648a);
    }

    public void b(String str, String str2) {
        if (this.f37650c.contains(str2)) {
            return;
        }
        this.f37650c.add(new i(str, str2, 94));
        l lVar = this.f37656i;
        if (lVar != null) {
            lVar.a(str, str2, 94);
        }
    }

    private void b(String str) {
        l lVar = this.f37656i;
        if (lVar != null) {
            lVar.a(str);
        }
    }

    public void a(String str, String str2) {
        if (this.f37651d.contains(str2)) {
            return;
        }
        this.f37651d.add(new i(str, str2, MBSupportMuteAdType.INTERSTITIAL_VIDEO));
        l lVar = this.f37656i;
        if (lVar != null) {
            lVar.a(str, str2, MBSupportMuteAdType.INTERSTITIAL_VIDEO);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        LinkedList<i> linkedList = this.f37650c;
        if (linkedList != null && linkedList.contains(str)) {
            this.f37650c.remove(str);
        } else {
            LinkedList<i> linkedList2 = this.f37651d;
            if (linkedList2 != null && linkedList2.contains(str)) {
                this.f37651d.remove(str);
            }
        }
        b(str);
    }
}
