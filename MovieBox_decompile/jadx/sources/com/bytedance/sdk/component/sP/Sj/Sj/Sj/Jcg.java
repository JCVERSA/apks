package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.TEQ;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.aa;
import com.bytedance.sdk.component.sP.Sj.uvD;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Jcg extends Zq {
    public static int Sj = -1;
    int EjP;
    String HiB;
    Fmk TKC;
    HttpURLConnection sP;

    public Jcg(HttpURLConnection httpURLConnection, Fmk fmk) {
        this.EjP = Sj;
        this.sP = httpURLConnection;
        this.TKC = fmk;
    }

    @Override
    public aa Dq() {
        return aa.HTTP_1_1;
    }

    @Override
    public boolean EjP() {
        return TKC() >= 200 && TKC() < 300;
    }

    @Override
    public String HiB() throws IOException {
        return !TextUtils.isEmpty(this.HiB) ? this.HiB : this.sP.getResponseMessage();
    }

    @Override
    public com.bytedance.sdk.component.sP.Sj.vS Jcg() {
        if (this.sP == null) {
            return new com.bytedance.sdk.component.sP.Sj.vS(new String[0]);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.sP.getHeaderFields().entrySet()) {
            for (String str : entry.getValue()) {
                if (!"Content-Range".equalsIgnoreCase(entry.getKey()) || TKC() != 206) {
                    arrayList.add(entry.getKey());
                    arrayList.add(str);
                }
            }
        }
        return new com.bytedance.sdk.component.sP.Sj.vS((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override
    public long Sj() {
        return 0L;
    }

    public Fmk TEQ() {
        return this.TKC;
    }

    @Override
    public int TKC() {
        try {
            return this.sP.getResponseCode();
        } catch (Exception unused) {
            return this.EjP;
        }
    }

    @Override
    public void close() {
        try {
            vS().close();
        } catch (Exception unused) {
        }
    }

    @Override
    public long sP() {
        return 0L;
    }

    public String toString() {
        return "";
    }

    @Override
    public TEQ uA() {
        if (TEQ() == null || TEQ().sP == null) {
            return null;
        }
        return new TEQ(TEQ().sP);
    }

    @Override
    public uvD vS() {
        Dq dq2;
        com.bytedance.sdk.component.TKC.Sj.Sj sj2;
        com.bytedance.sdk.component.TKC.Sj.Sj sj3;
        Fmk fmk = this.TKC;
        if (fmk != null && (sj3 = fmk.sP) != null) {
            sj3.Ym();
        }
        try {
            try {
                dq2 = new Dq(this.sP);
            } catch (Exception unused) {
                HttpURLConnection httpURLConnection = this.sP;
                dq2 = new Dq(httpURLConnection, httpURLConnection.getErrorStream());
            }
        } catch (Throwable th2) {
            th2.getMessage();
            dq2 = null;
        }
        Fmk fmk2 = this.TKC;
        if (fmk2 != null && (sj2 = fmk2.sP) != null) {
            sj2.Fmk();
        }
        return dq2;
    }

    public Jcg(int i10, String str, Fmk fmk) {
        this.HiB = str;
        this.TKC = fmk;
        this.EjP = i10;
    }
}
