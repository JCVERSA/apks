package defpackage;

import android.os.Handler;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.aethna;
import com.transsion.athena.config.data.model.anateh;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.athena;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.config.data.model.enatha;
import com.transsion.athena.taaneh.a;
import java.security.SecureRandom;
import java.util.List;
import org.json.JSONObject;

public class e5d {
    public static volatile e5d c;
    public static SecureRandom d = new SecureRandom();
    public final f5d a = f5d.a(g5d.d());
    public volatile boolean b;

    public static e5d o() {
        if (c == null) {
            synchronized (e5d.class) {
                try {
                    if (c == null) {
                        c = new e5d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public int a(int i, String str, float f) {
        if (!this.b) {
            c4d.b("isTidEnable init not completed");
            return 101;
        }
        if (!ehanat.r()) {
            c4d.b("isTidEnable sdk disable");
            return 100;
        }
        enatha enathaVarB = this.a.i().b();
        athena athenaVarA = this.a.i().a(i);
        if (anehat.a(enathaVarB.b()) || athenaVarA == null || athenaVarA.l()) {
            if (!ehanat.p() || "location#page_view#athena_anr_full#athena_crash_full".contains(str)) {
                return 102;
            }
            return k(f) ? 0 : 105;
        }
        TidConfigBean tidConfigBeanB = athenaVarA.b(str);
        if (tidConfigBeanB != null) {
            if (!tidConfigBeanB.inSamplingRange()) {
                c4d.b("isTidEnable device is not in sampling range");
                return 105;
            }
            if (tidConfigBeanB.isEnable()) {
                return 0;
            }
            c4d.b("isTidEnable tid config is closed");
            return 104;
        }
        try {
            if (!a.i()) {
                return 103;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appid", i);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
            c4d.e("invalid or not registered:%s", jSONObject.toString());
            return 103;
        } catch (Exception e) {
            c4d.e("checkTidEnable exception:%s", e.getMessage());
            return 103;
        }
    }

    public int b(long j, float f) {
        if (!this.b) {
            c4d.b("isTidEnable init not completed");
            return 101;
        }
        if (!ehanat.r()) {
            c4d.b("isTidEnable sdk disable");
            return 100;
        }
        enatha enathaVarB = this.a.i().b();
        anateh anatehVarI = this.a.i();
        anatehVarI.getClass();
        athena athenaVarA = anatehVarI.a(a.a(j));
        if (anehat.a(enathaVarB.b()) || athenaVarA == null || athenaVarA.l()) {
            if (ehanat.p()) {
                return k(f) ? 0 : 105;
            }
            return 102;
        }
        TidConfigBean tidConfigBeanA = athenaVarA.a(j);
        if (tidConfigBeanA == null) {
            c4d.b("isTidEnable tid config is null");
            return 103;
        }
        if (tidConfigBeanA.inSamplingRange()) {
            if (tidConfigBeanA.isEnable()) {
                return 0;
            }
            c4d.b("isTidEnable tid config is closed");
            return 104;
        }
        c4d.b("isTidEnable tid " + tidConfigBeanA.getTid() + " is not in sampling range");
        return 105;
    }

    public TidConfigBean c(int i, String str) {
        athena athenaVarA = this.a.i().a(i);
        if (athenaVarA != null) {
            return athenaVarA.b(str);
        }
        return null;
    }

    public aethna d(long j) {
        return this.a.b(j);
    }

    public List e() {
        return this.a.c();
    }

    public void f(int i) {
        this.a.d(i);
    }

    public void g(Handler handler, y3d y3dVar) {
        this.a.e(handler, y3dVar);
    }

    public void h(athena athenaVar, String str) {
        this.a.f(athenaVar, str);
    }

    public void i(String str) {
        this.a.g(str);
    }

    public void j(List list) {
        this.a.h(list);
    }

    public final boolean k(float f) {
        boolean z = true;
        if (f != 1.0f) {
            int i = (int) (10000.0f * f);
            int iAbs = Math.abs(d.nextInt()) % 10000;
            z = iAbs < i;
            c4d.c("checkSamplingRate false, samplingRate : %f, samplingRateInTenThousand : %d, randomHash : %d", Float.valueOf(f), Integer.valueOf(i), Integer.valueOf(iAbs));
        }
        return z;
    }

    public int l() {
        return this.a.i().b().a();
    }

    public TidConfigBean m(long j) {
        anateh anatehVarI = this.a.i();
        anatehVarI.getClass();
        athena athenaVarA = anatehVarI.a(a.a(j));
        if (athenaVarA == null) {
            return null;
        }
        for (TidConfigBean tidConfigBean : athenaVarA.j()) {
            if (tidConfigBean.getTid() == j) {
                return tidConfigBean;
            }
        }
        return null;
    }

    public athena n(int i) {
        return this.a.i().a(i);
    }

    public List p() {
        return this.a.i().b().b();
    }

    public int q() {
        return this.a.i().b().e();
    }

    public String r() {
        return this.a.i().b().g();
    }

    public int s() {
        return this.a.i().b().h();
    }

    public void t() {
        this.a.k();
        this.b = true;
    }

    public Pair u() {
        return this.a.l();
    }

    public void v() {
        this.a.m();
    }

    public void w() {
        this.a.n();
    }

    public void x() {
        this.a.o();
    }
}
