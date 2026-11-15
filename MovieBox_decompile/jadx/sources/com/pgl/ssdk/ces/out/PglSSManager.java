package com.pgl.ssdk.ces.out;

import android.content.Context;
import android.view.MotionEvent;
import com.pgl.ssdk.ces.b;
import java.util.Map;

public class PglSSManager {
    public static final int INIT_STATUS_FAIL_CONTEXT_NULL = 4;
    public static final int INIT_STATUS_FAIL_SO_LOADFAIL = 3;
    public static final int INIT_STATUS_FAIL_SO_MISSING = 2;
    public static final int INIT_STATUS_OK = 0;
    public static final int INIT_STATUS_UNINITIALIZE = 1;
    public static final String REPORT_SCENE_ADSHOW = "AdShow";

    private static volatile PglSSManager f39293a;

    private final b f39294b;

    private volatile int f39295c = 0;

    private PglSSManager(Context context, PglSSConfig pglSSConfig) {
        this.f39294b = b.a(context, pglSSConfig.getAppId(), pglSSConfig.getOVRegionType(), pglSSConfig.getCollectMode(), pglSSConfig.getAdSdkVersion());
    }

    public static int getInitStatus() {
        return b.g();
    }

    public static PglSSManager getInstance() {
        return f39293a;
    }

    public static String getLoadError() {
        if (b.i() != null) {
            return b.i().f39378b;
        }
        return null;
    }

    @DungeonFlag
    public static PglSSManager init(Context context, PglSSConfig pglSSConfig, String str, String str2, String str3, String str4) {
        if (context == null && pglSSConfig == null) {
            return null;
        }
        if (f39293a == null) {
            synchronized (PglSSManager.class) {
                try {
                    if (f39293a == null) {
                        f39293a = new PglSSManager(context, pglSSConfig);
                        if (b.g() == 0) {
                            f39293a.f39294b.a(pglSSConfig.getCustomInfo());
                            f39293a.f39294b.a(str, str3, str2, str4);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f39293a;
    }

    public void checkEventVirtual(MotionEvent motionEvent) {
        if (b.g() == 0) {
            this.f39294b.a(motionEvent);
        }
    }

    public long getECForBidding() {
        if (b.g() == 0) {
            return this.f39294b.e();
        }
        return 0L;
    }

    public Map<String, String> getFeatureHash(String str, byte[] bArr) {
        if (b.g() == 0) {
            return this.f39294b.a(str, bArr);
        }
        return null;
    }

    public String getSofChara() {
        if (b.g() == 0) {
            return this.f39294b.j();
        }
        return null;
    }

    public String getToken() {
        if (b.g() == 0) {
            return this.f39294b.k();
        }
        return null;
    }

    public void reportNow(String str, Map<String, Object> map) {
        if (b.g() == 0) {
            if ("AdShow".equals(str)) {
                this.f39294b.b();
            }
            int i10 = this.f39295c;
            b bVar = this.f39294b;
            if (i10 % bVar.f39281p == 0) {
                bVar.a(str, map);
            }
            this.f39295c++;
        }
    }

    public void setCustomInfo(Map<String, Object> map) {
        if (b.g() == 0) {
            this.f39294b.a(map);
        }
    }

    public void setDeviceId(String str) {
        if (b.g() == 0) {
            this.f39294b.b(str);
        }
    }

    public void setGaid(String str) {
        if (b.g() == 0) {
            this.f39294b.c(str);
        }
    }
}
