package com.transsion.athena.aethna;

import android.os.Handler;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.anateh;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.config.data.model.enatha;
import com.transsion.athena.taaneh.anehat;
import java.security.SecureRandom;
import java.util.List;
import org.json.JSONObject;

public class athena {

    private static volatile athena f41427a;

    public static SecureRandom f41428b = new SecureRandom();

    private final com.transsion.athena.aethna.anehat.athena f41429c = com.transsion.athena.aethna.anehat.athena.a(com.transsion.athena.aethna.anehat.aethna.athena.b());

    private volatile boolean f41430d;

    private athena() {
    }

    public static athena c() {
        if (f41427a == null) {
            synchronized (athena.class) {
                try {
                    if (f41427a == null) {
                        f41427a = new athena();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f41427a;
    }

    public TidConfigBean a(int i10, String str) {
        com.transsion.athena.config.data.model.athena athenaVarA = this.f41429c.b().a(i10);
        if (athenaVarA != null) {
            return athenaVarA.b(str);
        }
        return null;
    }

    public TidConfigBean b(long j10) {
        anateh anatehVarB = this.f41429c.b();
        anatehVarB.getClass();
        com.transsion.athena.config.data.model.athena athenaVarA = anatehVarB.a(anehat.a(j10));
        if (athenaVarA == null) {
            return null;
        }
        for (TidConfigBean tidConfigBean : athenaVarA.j()) {
            if (tidConfigBean.getTid() == j10) {
                return tidConfigBean;
            }
        }
        return null;
    }

    public List<byte[]> d() {
        return this.f41429c.b().b().b();
    }

    public int e() {
        return this.f41429c.b().b().e();
    }

    public String f() {
        return this.f41429c.b().b().g();
    }

    public int g() {
        return this.f41429c.b().b().h();
    }

    public void h() {
        this.f41429c.d();
        this.f41430d = true;
    }

    public Pair<Integer, byte[]> i() {
        return this.f41429c.e();
    }

    public void j() {
        this.f41429c.f();
    }

    public void k() {
        this.f41429c.g();
    }

    public void l() {
        this.f41429c.h();
    }

    public int a(long j10, float f10) {
        if (!this.f41430d) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable init not completed");
            return 101;
        }
        if (!ehanat.r()) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable sdk disable");
            return 100;
        }
        enatha enathaVarB = this.f41429c.b().b();
        anateh anatehVarB = this.f41429c.b();
        anatehVarB.getClass();
        com.transsion.athena.config.data.model.athena athenaVarA = anatehVarB.a(anehat.a(j10));
        if (!com.transsion.athena.config.data.model.anehat.a(enathaVarB.b()) && athenaVarA != null && !athenaVarA.l()) {
            TidConfigBean tidConfigBeanA = athenaVarA.a(j10);
            if (tidConfigBeanA == null) {
                com.transsion.athena.taaneh.aethna.a("isTidEnable tid config is null");
                return 103;
            }
            if (!tidConfigBeanA.inSamplingRange()) {
                com.transsion.athena.taaneh.aethna.a("isTidEnable tid " + tidConfigBeanA.getTid() + " is not in sampling range");
                return 105;
            }
            if (tidConfigBeanA.isEnable()) {
                return 0;
            }
            com.transsion.athena.taaneh.aethna.a("isTidEnable tid config is closed");
            return 104;
        }
        if (ehanat.p()) {
            return a(f10) ? 0 : 105;
        }
        return 102;
    }

    public com.transsion.athena.config.data.model.athena b(int i10) {
        return this.f41429c.b().a(i10);
    }

    public int b() {
        return this.f41429c.b().b().a();
    }

    public List<TidConfigBean> c(int i10) {
        return this.f41429c.b(i10);
    }

    public int a(int i10, String str, float f10) {
        if (!this.f41430d) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable init not completed");
            return 101;
        }
        if (!ehanat.r()) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable sdk disable");
            return 100;
        }
        enatha enathaVarB = this.f41429c.b().b();
        com.transsion.athena.config.data.model.athena athenaVarA = this.f41429c.b().a(i10);
        if (!com.transsion.athena.config.data.model.anehat.a(enathaVarB.b()) && athenaVarA != null && !athenaVarA.l()) {
            TidConfigBean tidConfigBeanB = athenaVarA.b(str);
            if (tidConfigBeanB == null) {
                try {
                    if (!anehat.b()) {
                        return 103;
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(SafeStringUtils.SP_APPID, i10);
                    jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
                    com.transsion.athena.taaneh.aethna.b("invalid or not registered:%s", jSONObject.toString());
                    return 103;
                } catch (Exception e10) {
                    com.transsion.athena.taaneh.aethna.b("checkTidEnable exception:%s", e10.getMessage());
                    return 103;
                }
            }
            if (!tidConfigBeanB.inSamplingRange()) {
                com.transsion.athena.taaneh.aethna.a("isTidEnable device is not in sampling range");
                return 105;
            }
            if (tidConfigBeanB.isEnable()) {
                return 0;
            }
            com.transsion.athena.taaneh.aethna.a("isTidEnable tid config is closed");
            return 104;
        }
        if (!ehanat.p() || "location#page_view#athena_anr_full#athena_crash_full".contains(str)) {
            return 102;
        }
        return a(f10) ? 0 : 105;
    }

    private boolean a(float f10) {
        if (f10 == 1.0f) {
            return true;
        }
        int i10 = (int) (10000.0f * f10);
        int iAbs = Math.abs(f41428b.nextInt()) % 10000;
        boolean z10 = iAbs < i10;
        com.transsion.athena.taaneh.aethna.a("checkSamplingRate false, samplingRate : %f, samplingRateInTenThousand : %d, randomHash : %d", Float.valueOf(f10), Integer.valueOf(i10), Integer.valueOf(iAbs));
        return z10;
    }

    public void a(Handler handler, aethna aethnaVar) {
        this.f41429c.a(handler, aethnaVar);
    }

    public void a(int i10) {
        this.f41429c.a(i10);
    }

    public void a(List<com.transsion.athena.config.data.model.athena> list) {
        this.f41429c.a(list);
    }

    public List<com.transsion.athena.config.data.model.athena> a() {
        return this.f41429c.a();
    }

    public com.transsion.athena.config.data.model.aethna a(long j10) {
        return this.f41429c.a(j10);
    }

    public void a(String str) {
        this.f41429c.a(str);
    }

    public void a(com.transsion.athena.config.data.model.athena athenaVar, String str) {
        this.f41429c.a(athenaVar, str);
    }
}
