package defpackage;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.aatnhe;
import com.transsion.athena.config.data.model.aethna;
import com.transsion.athena.config.data.model.anateh;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.athena;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.config.data.model.enatha;
import com.transsion.athena.hatnea.atenha;
import com.transsion.athena.hatnea.athaen;
import com.transsion.athena.hatnea.c;
import com.transsion.ga.AthenaAnalytics;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class f5d {
    public static volatile f5d c;
    public g5d a;
    public anateh b = new anateh();

    public f5d(g5d g5dVar) {
        this.a = g5dVar;
    }

    public static f5d a(g5d g5dVar) {
        if (c == null) {
            synchronized (f5d.class) {
                try {
                    if (c == null) {
                        c = new f5d(g5dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public aethna b(long j) {
        aethna aethnaVar = new aethna();
        String strA = this.b.a(j);
        if (TextUtils.isEmpty(strA)) {
            strA = ehanat.a(true);
        }
        aethnaVar.a = strA + ehanat.h;
        aethnaVar.b = l();
        aethnaVar.c = this.b.b().f();
        return aethnaVar;
    }

    public List c() {
        return this.b.a();
    }

    public void d(int i) {
        List<athena> listA = this.b.a();
        Iterator<athena> it = listA.iterator();
        while (it.hasNext()) {
            if (it.next().b() == i) {
                return;
            }
        }
        athena athenaVar = new athena();
        athenaVar.a(i);
        listA.add(athenaVar);
    }

    public void e(Handler handler, y3d y3dVar) {
        if (ehanat.r()) {
            enatha enathaVarB = this.b.b();
            if (enathaVarB.a(32)) {
                c.d().e(new atenha(handler, enathaVarB, y3dVar));
            }
            for (athena athenaVar : this.b.a()) {
                int iE = athenaVar.e();
                long jC = iE > 0 ? ((long) iE) * DateUtils.MILLIS_PER_HOUR : enathaVarB.c();
                if (athenaVar.a(jC, 32)) {
                    c.d().e(new athaen(athenaVar, jC, y3dVar));
                }
            }
        }
    }

    public void f(athena athenaVar, String str) {
        athena athenaVar2 = athenaVar;
        String str2 = "cfg";
        String str3 = "iw";
        String str4 = "gpct";
        String str5 = "upct";
        String str6 = CmcdConfiguration.KEY_PLAYBACK_RATE;
        String str7 = "stats";
        String str8 = "cv";
        String str9 = "frq";
        try {
            String str10 = "ur";
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("ver")) {
                athenaVar2.c(jSONObject.getLong("ver"));
            }
            if (jSONObject.has("url")) {
                athenaVar2.e(jSONObject.getString("url"));
            }
            if (jSONObject.has("interval")) {
                athenaVar2.c(jSONObject.getInt("interval"));
            }
            if (jSONObject.has("offline")) {
                athenaVar2.d(jSONObject.getInt("offline"));
            }
            if (jSONObject.has("url_config")) {
                athenaVar2.c(jSONObject.getString("url_config"));
            }
            if (jSONObject.has("data")) {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                if (jSONArray.length() > 0) {
                    int i = 0;
                    JSONObject jSONObject2 = jSONArray.getJSONObject(0).getJSONObject("cfg");
                    int i2 = 0;
                    while (i2 < jSONArray.length()) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i2).getJSONObject(str2);
                        JSONArray jSONArray2 = jSONArray.getJSONObject(i2).getJSONArray("tids");
                        int i3 = i;
                        while (i3 < jSONArray2.length()) {
                            JSONObject jSONObject4 = jSONObject2;
                            long j = jSONArray2.getLong(i3);
                            TidConfigBean tidConfigBeanA = athenaVar2.a(j);
                            if (tidConfigBeanA == null) {
                                TidConfigBean tidConfigBean = new TidConfigBean();
                                tidConfigBean.setTid(j);
                                athenaVar2.a(tidConfigBean);
                                tidConfigBeanA = tidConfigBean;
                            }
                            int iOptInt = jSONObject4.optInt(str8, 0);
                            if (jSONObject3.has(str8)) {
                                iOptInt = jSONObject3.getInt(str8);
                            }
                            aatnhe tidConfig = tidConfigBeanA.getTidConfig();
                            String str11 = str8;
                            JSONObject jSONObject5 = jSONObject;
                            long j2 = iOptInt;
                            if (iOptInt > 0) {
                                j2 *= 60000;
                            }
                            tidConfig.b(j2);
                            int iOptInt2 = jSONObject4.optInt("gmin", 0);
                            if (jSONObject3.has("gmin")) {
                                iOptInt2 = jSONObject3.getInt("gmin");
                            }
                            tidConfigBeanA.getTidConfig().c(iOptInt2);
                            int iOptInt3 = jSONObject4.optInt("gmax", 100);
                            if (jSONObject3.has("gmax")) {
                                iOptInt3 = jSONObject3.getInt("gmax");
                            }
                            tidConfigBeanA.getTidConfig().b(iOptInt3);
                            int iOptInt4 = jSONObject4.optInt(hb0.KEY_NAME_NUM, 0);
                            if (jSONObject3.has(hb0.KEY_NAME_NUM)) {
                                iOptInt4 = jSONObject3.getInt(hb0.KEY_NAME_NUM);
                            }
                            tidConfigBeanA.getTidConfig().e(iOptInt4);
                            int iOptInt5 = jSONObject4.optInt("s", 10);
                            if (jSONObject3.has("s")) {
                                iOptInt5 = jSONObject3.getInt("s");
                            }
                            tidConfigBeanA.getTidConfig().d(((long) iOptInt5) * 60000);
                            String str12 = str3;
                            int iOptInt6 = jSONObject4.optInt(str12, 0);
                            if (jSONObject3.has(str12)) {
                                iOptInt6 = jSONObject3.getInt(str12);
                            }
                            tidConfigBeanA.getTidConfig().f(iOptInt6);
                            String str13 = str10;
                            int iOptInt7 = jSONObject4.optInt(str13, 100);
                            if (jSONObject3.has(str13)) {
                                iOptInt7 = jSONObject3.getInt(str13);
                            }
                            tidConfigBeanA.getTidConfig().j(iOptInt7);
                            String str14 = str9;
                            int iOptInt8 = jSONObject4.optInt(str14, 0);
                            if (jSONObject3.has(str14)) {
                                iOptInt8 = jSONObject3.getInt(str14);
                            }
                            str3 = str12;
                            tidConfigBeanA.getTidConfig().a(((long) (iOptInt8 * 60)) * 1000);
                            String str15 = str7;
                            int iOptInt9 = jSONObject4.optInt(str15, 0);
                            if (jSONObject3.has(str15)) {
                                iOptInt9 = jSONObject3.getInt(str15);
                            }
                            tidConfigBeanA.getTidConfig().h(iOptInt9);
                            String str16 = str6;
                            int iOptInt10 = jSONObject4.optInt(str16, 0);
                            if (jSONObject3.has(str16)) {
                                iOptInt10 = jSONObject3.getInt(str16);
                            }
                            str7 = str15;
                            tidConfigBeanA.getTidConfig().g(iOptInt10);
                            String str17 = str5;
                            int iOptInt11 = jSONObject4.optInt(str17, 1);
                            if (jSONObject3.has(str17)) {
                                iOptInt11 = jSONObject3.getInt(str17);
                            }
                            tidConfigBeanA.getTidConfig().i(iOptInt11);
                            String str18 = str4;
                            int iOptInt12 = jSONObject4.optInt(str18, 1);
                            if (jSONObject3.has(str18)) {
                                iOptInt12 = jSONObject3.getInt(str18);
                            }
                            str4 = str18;
                            tidConfigBeanA.getTidConfig().d(iOptInt12);
                            i3++;
                            athenaVar2 = athenaVar;
                            str9 = str14;
                            str10 = str13;
                            str8 = str11;
                            str6 = str16;
                            str2 = str2;
                            jSONObject2 = jSONObject4;
                            str5 = str17;
                            jSONObject = jSONObject5;
                        }
                        i2++;
                        athenaVar2 = athenaVar;
                        str8 = str8;
                        jSONObject2 = jSONObject2;
                        str5 = str5;
                        jSONObject = jSONObject;
                        i = 0;
                    }
                }
            }
            JSONObject jSONObject6 = jSONObject;
            if (jSONObject6.has("table")) {
                JSONObject jSONObject7 = jSONObject6.getJSONObject("table");
                for (TidConfigBean tidConfigBean2 : athenaVar.j()) {
                    String strOptString = jSONObject7.optString(String.valueOf(tidConfigBean2.getTid()), "");
                    if (strOptString.length() > 0) {
                        tidConfigBean2.setEvent(strOptString);
                    }
                }
            }
            athena athenaVarA = this.b.a(com.transsion.athena.data.athena.b());
            if (athenaVarA == null) {
                return;
            }
            ehanat.a(athenaVarA.i());
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            com.transsion.ga.anateh.a("updateAppConfig", e);
        }
    }

    public void g(String str) {
        try {
            enatha enathaVarB = this.b.b();
            JSONObject jSONObject = new JSONObject(str);
            enathaVarB.d(jSONObject.getLong("cv") * DateUtils.MILLIS_PER_HOUR);
            enathaVarB.e(jSONObject.getLong("threshold"));
            enathaVarB.b(jSONObject.getInt("once") == 1);
            if (jSONObject.has("networks")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("networks");
                enathaVarB.c(jSONObject2.getString("url"));
                enathaVarB.b(jSONObject2.getJSONObject("tids"));
            }
            if (jSONObject.has(TtmlNode.TAG_P)) {
                enathaVarB.a(jSONObject.getJSONArray(TtmlNode.TAG_P));
            }
            if (jSONObject.has("ver")) {
                enathaVarB.f(jSONObject.getLong("ver"));
            }
            if (jSONObject.has("delays")) {
                String[] strArrSplit = jSONObject.getString("delays").split(StringUtils.COMMA);
                enathaVarB.a(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]));
            }
            if (jSONObject.has("tz")) {
                enathaVarB.b(jSONObject.getString("tz"));
            }
            if (jSONObject.has("dlt")) {
                enathaVarB.d(jSONObject.getInt("dlt"));
            }
            enathaVarB.b(jSONObject.optInt("geo", 6));
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            com.transsion.ga.anateh.a("updateGlobalConfig", e);
        }
    }

    public void h(List list) {
        this.b.a((List<athena>) list);
    }

    public anateh i() {
        return this.b;
    }

    public final void j() {
        String str;
        try {
            this.a.getClass();
            byte[] bArrA = anehat.a("63D4BEBEBC7ABCA4BC6A796B6AB06B766A6C7D706B6B756F70B07B6F71A4A5AEBCB2D4BEBEBC6A69BCA4BC7A6B69B16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6A7BBCA4BC7A6B7BB16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F69BCA4BC7A6B69B06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F7BBCA4BC7A6B7BB06B767D72726A6C65B07B6F71BCB2D4BEBEBC7BBCA4BCAF726F777B6F7078AF68A8AF696E726F7D7A7B6F7078BCB2D4BEBEBC77BCA4BCAF726F777B6F7078AF68ADAF6B797B6C796ABCB2D4BEBEBC69BCA4BCAF7D6A7679707DAF7B76797B736E6F75706AAF68ACAF696E726F7D7ABCB2D4BEBEBC787BBCA4BC68AEAC7BBCB2D4BEBEBC787ABCA4BC68AEAC7ABCB2D4BEBEBC7879BCA4BC68AEAC79BCB2D4BEBEBC7568BCA4BC7D7C7B7A79787776757473AD71706F6EBCB2D4BEBEBC67BCA4BCABA7ADA899A99B9CAD9CA5A6AC9BAEABA9AEADAB99A9ACADA8A79D9D98A9AA9DBCD461D4D4");
            if (bArrA == null) {
                str = "";
            } else {
                for (int i = 0; i < bArrA.length; i++) {
                    bArrA[i] = (byte) (222 - ((char) bArrA[i]));
                }
                str = new String(bArrA);
            }
            ehanat.c(str);
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            com.transsion.ga.anateh.a("initSDKConfig", e);
        } finally {
            this.a.a(ehanat.j);
            this.a.b(ehanat.m);
        }
    }

    public void k() {
        try {
            j();
            anateh anatehVarA = anateh.a(this.a.f());
            if (anatehVarA == null) {
                this.a.e(this.b.e());
            } else {
                this.b = anatehVarA;
            }
            athena athenaVarA = this.b.a(com.transsion.athena.data.athena.b());
            if (athenaVarA == null) {
                return;
            }
            ehanat.a(athenaVarA.i());
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public Pair l() {
        List<byte[]> listB = this.b.b().b();
        if (!anehat.b(listB)) {
            return new Pair(0, ehanat.n);
        }
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() % ((long) listB.size()));
        return new Pair(Integer.valueOf(iCurrentTimeMillis), listB.get(iCurrentTimeMillis));
    }

    public void m() {
        this.b.d();
        this.a.e(this.b.e());
    }

    public void n() {
        enatha enathaVarB = this.b.b();
        enathaVarB.a(com.transsion.athena.taaneh.athena.z(AthenaAnalytics.I()));
        enathaVarB.a(true);
        this.a.e(this.b.e());
    }

    public void o() {
        g5d g5dVar = this.a;
        if (g5dVar != null) {
            g5dVar.e(this.b.e());
        }
    }
}
