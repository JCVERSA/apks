package com.mgmi.e;

import android.text.TextUtils;
import com.lzy.okgo.model.HttpHeaders;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.ADEventBean;
import com.mgmi.model.VASTAd;
import com.mgmi.model.m;
import com.mgmi.net.bean.BootDataItem;
import com.transsion.push.PushConstants;
import defpackage.g4d;
import defpackage.h2d;
import defpackage.jed;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class d {
    private static d a;

    private void a(m mVar, ADEventBean aDEventBean) {
    }

    public void b(ADEventBean aDEventBean, m mVar) {
        List<String> listD;
        int size;
        Map<String, String> map;
        com.mgmi.e.a.d dVarB = com.mgmi.net.b.a().b();
        if (mVar == null || dVarB == null) {
            return;
        }
        if (mVar.p()) {
            listD = mVar.d();
            if (listD == null || listD.size() == 0) {
                String strG = mVar.g();
                if (TextUtils.isEmpty(strG)) {
                    return;
                }
                listD = new ArrayList<>();
                listD.add(strG);
            }
        } else {
            listD = mVar.d();
        }
        if (listD == null || (size = listD.size()) == 0 || (map = aDEventBean.params) == null || map.keySet() == null) {
            return;
        }
        Set<String> setKeySet = map.keySet();
        if (size > 0) {
            Iterator<String> it = listD.iterator();
            while (it.hasNext()) {
                String next = it.next();
                for (String str : setKeySet) {
                    if (!TextUtils.isEmpty(str) && next.contains(str)) {
                        next = next.replace(str, map.get(str));
                    }
                }
                dVarB.a(next);
            }
        }
    }

    public void c(ADEventBean aDEventBean, m mVar) {
        Map<String, String> map;
        com.mgmi.e.a.d dVarB = com.mgmi.net.b.a().b();
        if (mVar == null || dVarB == null || mVar.k().size() <= 0 || (map = aDEventBean.params) == null || map.keySet() == null) {
            return;
        }
        Set<String> setKeySet = map.keySet();
        List<String> listK = mVar.k();
        List<String> listA = a(mVar);
        if (listA != null && listA.size() > 0) {
            listK.addAll(listA);
        }
        if (listK == null || listK.size() <= 0) {
            return;
        }
        Iterator<String> it = listK.iterator();
        while (it.hasNext()) {
            String next = it.next();
            for (String str : setKeySet) {
                if (!TextUtils.isEmpty(str)) {
                    next = next.replace(str, map.get(str));
                }
            }
            dVarB.a(a(next, mVar.c()));
        }
        a(mVar, aDEventBean);
    }

    public void d(ADEventBean aDEventBean, m mVar) {
        Map<String, String> map;
        com.mgmi.e.a.d dVarB = com.mgmi.net.b.a().b();
        if (mVar == null || dVarB == null || (map = aDEventBean.params) == null || map.keySet() == null) {
            return;
        }
        Set<String> setKeySet = map.keySet();
        List<String> listF = mVar.f();
        List<String> listB = b(mVar);
        if (listB != null && listB.size() > 0) {
            listF.addAll(listB);
        }
        if (listF == null || listF.size() <= 0) {
            return;
        }
        Iterator<String> it = listF.iterator();
        while (it.hasNext()) {
            String next = it.next();
            for (String str : setKeySet) {
                if (!TextUtils.isEmpty(str)) {
                    next = next.replace(str, map.get(str));
                }
            }
            dVarB.a(next.replace("[EV_KEY]", "interact_ad"));
        }
    }

    public void e(ADEventBean aDEventBean, m mVar) {
        Map<String, String> map;
        com.mgmi.e.a.d dVarB = com.mgmi.net.b.a().b();
        if (mVar == null || dVarB == null || (map = aDEventBean.params) == null || map.keySet() == null) {
            return;
        }
        Set<String> setKeySet = map.keySet();
        List<String> listI = mVar.i();
        List<String> listC = c(mVar);
        if (listC != null && listC.size() > 0) {
            listI.addAll(listC);
        }
        if (listI == null || listI.size() <= 0) {
            return;
        }
        Iterator<String> it = listI.iterator();
        while (it.hasNext()) {
            String next = it.next();
            for (String str : setKeySet) {
                if (!TextUtils.isEmpty(str)) {
                    next = next.replace(str, map.get(str));
                }
            }
            dVarB.a(next.replace("[EV_KEY]", "interact_ad"));
        }
    }

    public void f(ADEventBean aDEventBean, m mVar) {
        if (mVar == null || mVar.h() == null) {
            return;
        }
        Object objH = mVar.h();
        if (objH instanceof BootDataItem) {
            a(aDEventBean, (BootDataItem) objH);
        } else if (objH instanceof VASTAd) {
            a(aDEventBean, (VASTAd) objH);
        }
    }

    public static d a() {
        if (a == null) {
            synchronized (d.class) {
                try {
                    if (a == null) {
                        a = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public void a(ADEventBean aDEventBean, m mVar) {
        if (aDEventBean == null || mVar == null) {
            return;
        }
        try {
            if ("trace_inner".equals(aDEventBean.type)) {
                d(aDEventBean, mVar);
            } else if ("error".equals(aDEventBean.type)) {
                b(aDEventBean, mVar);
            } else if (PushConstants.PUSH_SERVICE_TYPE_CLICK.equals(aDEventBean.type)) {
                c(aDEventBean, mVar);
            } else if ("trace".equals(aDEventBean.type)) {
                e(aDEventBean, mVar);
            } else {
                f(aDEventBean, mVar);
            }
        } catch (Throwable unused) {
        }
    }

    private List<String> a(m mVar) {
        BootDataItem bootDataItem;
        List<BootDataItem> list;
        ArrayList arrayList = new ArrayList();
        if (mVar != null && (mVar.h() instanceof BootDataItem) && (bootDataItem = (BootDataItem) mVar.h()) != null && (list = bootDataItem.ad_list) != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                BootDataItem bootDataItem2 = list.get(i);
                if (bootDataItem2 != null && "boot".equalsIgnoreCase(bootDataItem2.ad_type) && !"3".equals(bootDataItem2.type) && bootDataItem2.click != null) {
                    arrayList.addAll(list.get(i).click);
                }
            }
        }
        return arrayList;
    }

    private List<String> c(m mVar) {
        BootDataItem bootDataItem;
        List<BootDataItem> list;
        ArrayList arrayList = new ArrayList();
        if (mVar != null && (mVar.h() instanceof BootDataItem) && (bootDataItem = (BootDataItem) mVar.h()) != null && (list = bootDataItem.ad_list) != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                BootDataItem bootDataItem2 = list.get(i);
                if (bootDataItem2 != null && "boot".equalsIgnoreCase(bootDataItem2.ad_type) && a(bootDataItem2) && bootDataItem2.interactTrace != null) {
                    arrayList.addAll(list.get(i).interactTrace);
                }
            }
        }
        return arrayList;
    }

    private List<String> b(m mVar) {
        BootDataItem bootDataItem;
        List<BootDataItem> list;
        ArrayList arrayList = new ArrayList();
        if (mVar != null && (mVar.h() instanceof BootDataItem) && (bootDataItem = (BootDataItem) mVar.h()) != null && (list = bootDataItem.ad_list) != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                BootDataItem bootDataItem2 = list.get(i);
                if (bootDataItem2 != null && "boot".equalsIgnoreCase(bootDataItem2.ad_type) && a(bootDataItem2) && bootDataItem2.trace != null) {
                    arrayList.add(list.get(i).trace);
                }
            }
        }
        return arrayList;
    }

    private boolean a(BootDataItem bootDataItem) {
        if (bootDataItem == null || bootDataItem.interact_tpid <= 0 || !"4".equals(bootDataItem.type)) {
            return false;
        }
        return (TextUtils.isEmpty(bootDataItem.interact_online) && TextUtils.isEmpty(bootDataItem.url)) ? false : true;
    }

    public void a(m mVar, int i, String str, String str2) {
        if (mVar == null) {
            return;
        }
        try {
            if (mVar.d() == null || mVar.d().size() <= 0) {
                return;
            }
            List<String> listD = mVar.d();
            ArrayList arrayList = new ArrayList();
            for (String str3 : listD) {
                SourceKitLogger.a("mgmi", "reportErrors url=" + str3);
                String strB = "null";
                String strReplace = str3.replace("[ERRORCODE]", String.valueOf(i)).replace("[ERRORMSG]", str2 == null ? "null" : g4d.b(str2));
                if (str != null) {
                    strB = g4d.b(str);
                }
                arrayList.add(strReplace.replace("[ERRORURL]", strB));
            }
            com.mgmi.net.b.a().b().a(arrayList);
        } catch (Throwable unused) {
        }
    }

    private void a(ADEventBean aDEventBean, BootDataItem bootDataItem) {
        Map<String, String> map = aDEventBean.params;
        if (map == null || map.keySet() == null) {
            return;
        }
        Set<String> setKeySet = map.keySet();
        List<String> listA = a(aDEventBean.type, bootDataItem);
        if (listA == null || listA.size() <= 0) {
            return;
        }
        Iterator<String> it = listA.iterator();
        while (it.hasNext()) {
            String next = it.next();
            for (String str : setKeySet) {
                if (!TextUtils.isEmpty(str) && next.contains(str)) {
                    next = next.replace(str, map.get(str));
                }
                String strReplace = next.replace(str, map.get(str));
                if (aDEventBean.isFullScreen) {
                    next = strReplace.replace("[STATUS]", "1");
                } else {
                    next = strReplace.replace("[STATUS]", "2");
                }
            }
            com.mgmi.net.b.a().b().a(next);
        }
    }

    private List<String> a(String str, BootDataItem bootDataItem) {
        if ("landClick".equals(str)) {
            return bootDataItem.landClick;
        }
        if ("landClose".equals(str)) {
            return bootDataItem.landClose;
        }
        if ("firstQuartile".equals(str)) {
            return bootDataItem.firstQuartile;
        }
        if ("midpoint".equals(str)) {
            return bootDataItem.midpoint;
        }
        if ("thirdQuartile".equals(str)) {
            return bootDataItem.thirdQuartile;
        }
        if ("complete".equals(str)) {
            return bootDataItem.complete;
        }
        if ("dlSt".equals(str)) {
            return bootDataItem.dlSt;
        }
        if ("dlFin".equals(str)) {
            return bootDataItem.dlFin;
        }
        if ("insSt".equals(str)) {
            return bootDataItem.insSt;
        }
        if ("insFin".equals(str)) {
            return bootDataItem.insFin;
        }
        if (HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE.equals(str)) {
            return bootDataItem.close;
        }
        if ("creativeTrack".equals(str)) {
            return bootDataItem.creativeTrack;
        }
        return null;
    }

    private void a(ADEventBean aDEventBean, VASTAd vASTAd) {
        Map<String, String> map = aDEventBean.params;
        if (map == null || map.keySet() == null) {
            return;
        }
        Set<String> setKeySet = map.keySet();
        List<String> trackingEventList = vASTAd.getTrackingEventList(null, aDEventBean.type);
        if (trackingEventList == null || trackingEventList.size() <= 0) {
            return;
        }
        Iterator<String> it = trackingEventList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            for (String str : setKeySet) {
                if (!TextUtils.isEmpty(str)) {
                    String strReplace = next.replace(str, map.get(str));
                    if (aDEventBean.isFullScreen) {
                        next = strReplace.replace("[STATUS]", "1");
                    } else {
                        next = strReplace.replace("[STATUS]", "2");
                    }
                }
            }
            com.mgmi.net.b.a().b().a(next);
        }
    }

    private String a(String str, String str2) {
        return str != null ? str.replace("[STATUS]", "2").replace("[CLICK_STATUS]", "0").replace("[CLICK_ASSIS]", String.valueOf(jed.a)).replace("[DPLINK]", a(str2)) : str;
    }

    private String a(String str) {
        String str2;
        String str3;
        String str4;
        if (TextUtils.isEmpty(str)) {
            return "0";
        }
        try {
            String[] strArrK = g4d.k(str);
            String str5 = null;
            if (strArrK == null || strArrK.length <= 0) {
                str2 = null;
                str3 = null;
                str4 = null;
            } else {
                String str6 = null;
                str2 = null;
                str3 = null;
                str4 = null;
                String str7 = null;
                for (String str8 : strArrK) {
                    if (g4d.n(str8)) {
                        str6 = str8;
                    } else if (g4d.m(str8)) {
                        str3 = str8;
                    } else if (g4d.t(str8)) {
                        if (g4d.f()) {
                            str7 = str8;
                        }
                    } else if (g4d.r(str8)) {
                        str2 = str8;
                    } else {
                        str4 = str8;
                    }
                }
                if (str6 != null) {
                    String strD = g4d.d(str6, "MiniProgram://", "?username");
                    if (strD == null) {
                        str6 = null;
                    } else {
                        if (h2d.b(com.mgmi.ads.api.c.a(), strD + "://") == null) {
                            str6 = null;
                        }
                    }
                }
                if (str2 != null) {
                    if (h2d.b(com.mgmi.ads.api.c.a(), str2) != null) {
                        str5 = str2;
                    } else if (!TextUtils.isEmpty(str7) && h2d.b(com.mgmi.ads.api.c.a(), str7) != null) {
                        str5 = str7;
                    }
                    str2 = str5;
                } else if (str7 != null && h2d.b(com.mgmi.ads.api.c.a(), str7) != null) {
                    str5 = str6;
                    str2 = str7;
                }
                str5 = str6;
            }
            if (!TextUtils.isEmpty(str5)) {
                return "4";
            }
            if (TextUtils.isEmpty(str2)) {
                return (TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4)) ? "3" : "2";
            }
            return "1";
        } catch (Throwable unused) {
            return "0";
        }
    }
}
