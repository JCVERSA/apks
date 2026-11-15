package com.mbridge.msdk.videocommon;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class a {

    private static ConcurrentHashMap<String, C0547a> f39024a = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39025b = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39026c = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39027d = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39028e = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39029f = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39030g = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39031h = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39032i = new ConcurrentHashMap<>();

    private static ConcurrentHashMap<String, C0547a> f39033j = new ConcurrentHashMap<>();

    public static class C0547a {

        private WindVaneWebView f39034a;

        private boolean f39035b;

        public void a(WindVaneWebView windVaneWebView) {
            this.f39034a = windVaneWebView;
        }

        public WindVaneWebView b() {
            return this.f39034a;
        }

        public boolean c() {
            return this.f39035b;
        }

        public void a(String str) {
            WindVaneWebView windVaneWebView = this.f39034a;
            if (windVaneWebView != null) {
                windVaneWebView.setTag(str);
            }
        }

        public String a() {
            WindVaneWebView windVaneWebView = this.f39034a;
            if (windVaneWebView != null) {
                return (String) windVaneWebView.getTag();
            }
            return "";
        }

        public void a(boolean z10) {
            this.f39035b = z10;
        }
    }

    public static void a(String str, C0547a c0547a, boolean z10, boolean z11) {
        if (z10) {
            if (z11) {
                f39031h.put(str, c0547a);
                return;
            } else {
                f39030g.put(str, c0547a);
                return;
            }
        }
        if (z11) {
            f39033j.put(str, c0547a);
        } else {
            f39032i.put(str, c0547a);
        }
    }

    public static C0547a b(String str) {
        if (f39030g.containsKey(str)) {
            return f39030g.get(str);
        }
        if (f39031h.containsKey(str)) {
            return f39031h.get(str);
        }
        if (f39032i.containsKey(str)) {
            return f39032i.get(str);
        }
        if (f39033j.containsKey(str)) {
            return f39033j.get(str);
        }
        return null;
    }

    public static void c(String str) {
        for (Map.Entry<String, C0547a> entry : f39030g.entrySet()) {
            if (entry.getKey().contains(str)) {
                f39030g.remove(entry.getKey());
            }
        }
    }

    public static void d(String str) {
        for (Map.Entry<String, C0547a> entry : f39031h.entrySet()) {
            if (entry.getKey().contains(str)) {
                f39031h.remove(entry.getKey());
            }
        }
    }

    public static void e(String str) {
        if (f39030g.containsKey(str)) {
            f39030g.remove(str);
        }
        if (f39032i.containsKey(str)) {
            f39032i.remove(str);
        }
        if (f39031h.containsKey(str)) {
            f39031h.remove(str);
        }
        if (f39033j.containsKey(str)) {
            f39033j.remove(str);
        }
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : f39030g.keySet()) {
                if (!TextUtils.isEmpty(str2) && str2.startsWith(str)) {
                    f39030g.remove(str2);
                }
            }
        } else {
            f39030g.clear();
        }
        f39031h.clear();
    }

    public static void b(int i10, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i10 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i10 == 94) {
                if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0547a> concurrentHashMap = f39025b;
                    if (concurrentHashMap != null) {
                        concurrentHashMap.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0547a> concurrentHashMap2 = f39028e;
                if (concurrentHashMap2 != null) {
                    concurrentHashMap2.remove(requestIdNotice);
                    return;
                }
                return;
            }
            if (i10 != 287) {
                if (i10 != 288) {
                    ConcurrentHashMap<String, C0547a> concurrentHashMap3 = f39024a;
                    if (concurrentHashMap3 != null) {
                        concurrentHashMap3.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0547a> concurrentHashMap4 = f39027d;
                if (concurrentHashMap4 != null) {
                    concurrentHashMap4.remove(requestIdNotice);
                    return;
                }
                return;
            }
            if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0547a> concurrentHashMap5 = f39026c;
                if (concurrentHashMap5 != null) {
                    concurrentHashMap5.remove(requestIdNotice);
                    return;
                }
                return;
            }
            ConcurrentHashMap<String, C0547a> concurrentHashMap6 = f39029f;
            if (concurrentHashMap6 != null) {
                concurrentHashMap6.remove(requestIdNotice);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public static void a() {
        f39032i.clear();
        f39033j.clear();
    }

    public static C0547a a(int i10, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i10 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i10 != 94) {
                if (i10 != 287) {
                    if (i10 != 288) {
                        ConcurrentHashMap<String, C0547a> concurrentHashMap = f39024a;
                        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
                            return f39024a.get(requestIdNotice);
                        }
                    } else {
                        ConcurrentHashMap<String, C0547a> concurrentHashMap2 = f39027d;
                        if (concurrentHashMap2 != null && concurrentHashMap2.size() > 0) {
                            return f39027d.get(requestIdNotice);
                        }
                    }
                } else if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0547a> concurrentHashMap3 = f39026c;
                    if (concurrentHashMap3 != null && concurrentHashMap3.size() > 0) {
                        return f39026c.get(requestIdNotice);
                    }
                } else {
                    ConcurrentHashMap<String, C0547a> concurrentHashMap4 = f39029f;
                    if (concurrentHashMap4 != null && concurrentHashMap4.size() > 0) {
                        return f39029f.get(requestIdNotice);
                    }
                }
            } else if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0547a> concurrentHashMap5 = f39025b;
                if (concurrentHashMap5 != null && concurrentHashMap5.size() > 0) {
                    return f39025b.get(requestIdNotice);
                }
            } else {
                ConcurrentHashMap<String, C0547a> concurrentHashMap6 = f39028e;
                if (concurrentHashMap6 != null && concurrentHashMap6.size() > 0) {
                    return f39028e.get(requestIdNotice);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static void b(int i10, String str, C0547a c0547a) {
        try {
            if (i10 == 94) {
                if (f39028e == null) {
                    f39028e = new ConcurrentHashMap<>();
                }
                f39028e.put(str, c0547a);
            } else if (i10 == 287) {
                if (f39029f == null) {
                    f39029f = new ConcurrentHashMap<>();
                }
                f39029f.put(str, c0547a);
            } else if (i10 != 288) {
                if (f39024a == null) {
                    f39024a = new ConcurrentHashMap<>();
                }
                f39024a.put(str, c0547a);
            } else {
                if (f39027d == null) {
                    f39027d = new ConcurrentHashMap<>();
                }
                f39027d.put(str, c0547a);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public static void a(int i10, String str, C0547a c0547a) {
        try {
            if (i10 == 94) {
                if (f39025b == null) {
                    f39025b = new ConcurrentHashMap<>();
                }
                f39025b.put(str, c0547a);
            } else {
                if (i10 != 287) {
                    return;
                }
                if (f39026c == null) {
                    f39026c = new ConcurrentHashMap<>();
                }
                f39026c.put(str, c0547a);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }
}
