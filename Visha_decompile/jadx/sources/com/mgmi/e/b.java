package com.mgmi.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import defpackage.i4d;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.lang3.time.DateUtils;

public class b {
    private static b a;
    private List<e> c;
    private boolean b = false;
    private final BroadcastReceiver d = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
                String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                if (TextUtils.isEmpty(schemeSpecificPart)) {
                    return;
                }
                b.this.a(context, "", c.CONVERTION_TYPE_INSTALL_COMPLETE, schemeSpecificPart, "");
            }
        }
    };

    @Deprecated
    public void a(Context context) {
    }

    private void b(Context context) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(this.d, intentFilter);
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                try {
                    if (a == null) {
                        a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public void b(e eVar, String str, String str2) {
        if (str2 == null || !str2.equals(eVar.b())) {
            return;
        }
        eVar.a(str);
    }

    public void b() {
        List<e> list = this.c;
        if (list == null || list.isEmpty()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Iterator<e> it = this.c.iterator();
        while (it.hasNext()) {
            e next = it.next();
            if (next != null && jCurrentTimeMillis > next.l().longValue()) {
                it.remove();
                return;
            }
        }
    }

    public void a(Context context, @NonNull String str, String str2, List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5, List<String> list6, List<String> list7, List<String> list8, List<String> list9, List<String> list10) {
        if (context == null || TextUtils.isEmpty(str2)) {
            return;
        }
        if (!this.b) {
            this.b = true;
            try {
                b(context.getApplicationContext());
            } catch (Exception unused) {
            }
        }
        e eVar = new e(str2);
        eVar.c(str);
        eVar.i(list);
        eVar.g(list3);
        eVar.h(list4);
        eVar.f(list2);
        eVar.j(list5);
        eVar.e(list6);
        eVar.b(list8);
        eVar.c(list9);
        eVar.a(list7);
        eVar.d(list10);
        eVar.a(Long.valueOf(System.currentTimeMillis() + DateUtils.MILLIS_PER_HOUR));
        if (this.c == null) {
            this.c = new CopyOnWriteArrayList();
        }
        this.c.add(eVar);
    }

    public void a(e eVar, String str, String str2) {
        if (str2 == null || !str2.equals(eVar.b())) {
            return;
        }
        eVar.b(str);
    }

    public void a(Context context, final String str, final c cVar, final String str2, final String str3) {
        i4d.a().b(new Runnable() {
            @Override
            public void run() {
                try {
                    c cVar2 = cVar;
                    if (cVar2 == c.CONVERTION_TYPE_DOWNLOAD_START) {
                        if (b.this.c == null || b.this.c.isEmpty()) {
                            return;
                        }
                        for (e eVar : b.this.c) {
                            b.this.a(eVar, str3, str);
                            String str4 = str;
                            if (str4 != null && str4.equals(eVar.b())) {
                                b.this.a(eVar, cVar);
                            }
                        }
                        return;
                    }
                    if (cVar2 == c.CONVERTION_TYPE_DOWNLOAD_COMPLETE) {
                        if (b.this.c == null || b.this.c.isEmpty()) {
                            return;
                        }
                        for (e eVar2 : b.this.c) {
                            b.this.b(eVar2, str2, str);
                            String str5 = str;
                            if (str5 != null && str5.equals(eVar2.b())) {
                                b.this.a(eVar2, cVar);
                            }
                        }
                        return;
                    }
                    if (cVar2 == c.CONVERTION_TYPE_START_INSTALL) {
                        if (TextUtils.isEmpty(str2) || b.this.c == null || b.this.c.isEmpty()) {
                            return;
                        }
                        for (e eVar3 : b.this.c) {
                            if (eVar3.a() != null && str2.equals(eVar3.a())) {
                                b.this.a(eVar3, cVar);
                            }
                        }
                        return;
                    }
                    if (cVar2 != c.CONVERTION_TYPE_INSTALL_COMPLETE || TextUtils.isEmpty(str2) || b.this.c == null || b.this.c.isEmpty()) {
                        return;
                    }
                    for (e eVar4 : b.this.c) {
                        if (eVar4.a() != null && eVar4.a().equals(str2)) {
                            b.this.a(eVar4, cVar);
                        }
                    }
                } catch (UnsupportedOperationException | ConcurrentModificationException unused) {
                }
            }
        });
    }

    private String a(String str, c cVar) {
        if (!TextUtils.isEmpty(str)) {
            if (!str.contains("[CLICK_STATUS]")) {
                return null;
            }
            if (cVar == c.CONVERTION_TYPE_USER_CANCEL_DOWNLOAD) {
                return str.replace("[CLICK_STATUS]", "2");
            }
            if (cVar == c.CONVERTION_TYPE_DOWNLOAD_START) {
                return str.replace("[CLICK_STATUS]", "1");
            }
            if (cVar == c.CONVERTION_TYPE_USER_PAUSE_DOWNLOAD) {
                return str.replace("[CLICK_STATUS]", "6");
            }
            if (cVar == c.CONVERTION_TYPE_DOWNLOAD_COMPLETE) {
                return str.replace("[CLICK_STATUS]", "3");
            }
            if (cVar == c.CONVERTION_TYPE_INSTALL_COMPLETE) {
                return str.replace("[CLICK_STATUS]", "5");
            }
            if (cVar == c.CONVERTION_TYPE_START_INSTALL) {
                return str.replace("[CLICK_STATUS]", "4");
            }
        }
        return str;
    }

    public void a(e eVar, c cVar) {
        if (cVar == c.CONVERTION_TYPE_DOWNLOAD_START) {
            List<String> listK = eVar.k();
            if (listK != null && listK.size() > 0) {
                Iterator<String> it = listK.iterator();
                while (it.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it.next(), cVar));
                }
            }
            List<String> listH = eVar.h();
            if (listH != null && listH.size() > 0) {
                Iterator<String> it2 = listH.iterator();
                while (it2.hasNext()) {
                    com.mgmi.net.b.a().b().a(it2.next());
                }
            }
            List<String> listG = eVar.g();
            if (listG != null && listG.size() > 0) {
                Iterator<String> it3 = listG.iterator();
                while (it3.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it3.next(), cVar));
                }
            }
            List<String> listC = eVar.c();
            if (listC != null && listC.size() > 0) {
                Iterator<String> it4 = listC.iterator();
                while (it4.hasNext()) {
                    com.mgmi.net.b.a().b().a(it4.next());
                }
            }
        } else if (cVar == c.CONVERTION_TYPE_DOWNLOAD_COMPLETE) {
            List<String> listK2 = eVar.k();
            if (listK2 != null && listK2.size() > 0) {
                Iterator<String> it5 = listK2.iterator();
                while (it5.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it5.next(), cVar));
                }
            }
            List<String> listI = eVar.i();
            if (listI != null && listI.size() > 0) {
                Iterator<String> it6 = listI.iterator();
                while (it6.hasNext()) {
                    com.mgmi.net.b.a().b().a(it6.next());
                }
            }
            List<String> listG2 = eVar.g();
            if (listG2 != null && listG2.size() > 0) {
                Iterator<String> it7 = listG2.iterator();
                while (it7.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it7.next(), cVar));
                }
            }
            List<String> listD = eVar.d();
            if (listD != null && listD.size() > 0) {
                Iterator<String> it8 = listD.iterator();
                while (it8.hasNext()) {
                    com.mgmi.net.b.a().b().a(it8.next());
                }
            }
        } else if (cVar == c.CONVERTION_TYPE_START_INSTALL) {
            List<String> listK3 = eVar.k();
            if (listK3 != null && listK3.size() > 0) {
                Iterator<String> it9 = listK3.iterator();
                while (it9.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it9.next(), cVar));
                }
            }
            List<String> listJ = eVar.j();
            if (listJ != null && listJ.size() > 0) {
                Iterator<String> it10 = listJ.iterator();
                while (it10.hasNext()) {
                    com.mgmi.net.b.a().b().a(it10.next());
                }
            }
            List<String> listG3 = eVar.g();
            if (listG3 != null && listG3.size() > 0) {
                Iterator<String> it11 = listG3.iterator();
                while (it11.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it11.next(), cVar));
                }
            }
            List<String> listE = eVar.e();
            if (listE != null && listE.size() > 0) {
                Iterator<String> it12 = listE.iterator();
                while (it12.hasNext()) {
                    com.mgmi.net.b.a().b().a(it12.next());
                }
            }
        } else if (cVar == c.CONVERTION_TYPE_INSTALL_COMPLETE) {
            List<String> listK4 = eVar.k();
            if (listK4 != null && listK4.size() > 0) {
                Iterator<String> it13 = listK4.iterator();
                while (it13.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it13.next(), cVar));
                }
            }
            List<String> listM = eVar.m();
            if (listM != null && listM.size() > 0) {
                Iterator<String> it14 = listM.iterator();
                while (it14.hasNext()) {
                    com.mgmi.net.b.a().b().a(it14.next());
                }
            }
            List<String> listG4 = eVar.g();
            if (listG4 != null && listG4.size() > 0) {
                Iterator<String> it15 = listG4.iterator();
                while (it15.hasNext()) {
                    com.mgmi.net.b.a().b().a(a(it15.next(), cVar));
                }
            }
            List<String> listF = eVar.f();
            if (listF != null && listF.size() > 0) {
                Iterator<String> it16 = listF.iterator();
                while (it16.hasNext()) {
                    com.mgmi.net.b.a().b().a(it16.next());
                }
            }
        }
        b();
    }
}
