package com.bytedance.sdk.openadsdk.zR;

import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import org.json.JSONObject;

public class TKC {
    private Sj EjP;
    private EjP TKC;
    private sP sP;
    private final String Sj = "StrategyCenter";
    private int HiB = 0;
    private Runnable vS = new Runnable() {
        @Override
        public void run() {
            TKC.this.sP();
        }
    };

    public TKC(EjP ejP) {
        this.sP = null;
        HiB hiB = new HiB(ejP);
        this.TKC = hiB;
        String strTKC = hiB.TKC();
        if (!TextUtils.isEmpty(strTKC) && !strTKC.startsWith("pag")) {
            strTKC = "pag_".concat(strTKC);
        }
        this.sP = new sP(this.TKC.sP(), strTKC);
    }

    public void sP() {
        EjP ejP = this.TKC;
        if (ejP == null || ejP.HiB() == null || this.TKC.vS() == null) {
            return;
        }
        this.TKC.Sj().execute(new Runnable() {
            @Override
            public void run() {
                OutputStream outputStream;
                TKC.this.HiB++;
                try {
                    if (TKC.this.EjP != null) {
                        TKC.this.EjP.Sj();
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(TKC.this.TKC.HiB()).openConnection()));
                    if (TKC.this.TKC.Jcg() != null && TKC.this.TKC.Jcg().size() > 0) {
                        for (Map.Entry<String, String> entry : TKC.this.TKC.Jcg().entrySet()) {
                            httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                        }
                    }
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
                    try {
                        outputStream = httpURLConnection.getOutputStream();
                        try {
                            outputStream.write(TKC.this.TKC.vS().toString().getBytes());
                            outputStream.close();
                            int responseCode = httpURLConnection.getResponseCode();
                            if (responseCode == 200) {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                                StringBuffer stringBuffer = new StringBuffer();
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    } else {
                                        stringBuffer.append(line);
                                    }
                                }
                                bufferedReader.close();
                                JSONObject jSONObjectSj = TKC.this.TKC.Sj(new JSONObject(stringBuffer.toString()));
                                TKC.this.sP.Sj();
                                TKC.this.sP.Sj(jSONObjectSj);
                                if (TKC.this.EjP != null) {
                                    TKC.this.EjP.sP();
                                }
                            } else if (TKC.this.EjP != null) {
                                TKC.this.EjP.Sj(responseCode, httpURLConnection.getResponseMessage());
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        outputStream = null;
                    }
                } catch (Throwable th4) {
                    Log.e("StrategyCenter", th4.getMessage() == null ? "error " : th4.getMessage());
                    if (TKC.this.EjP != null) {
                        TKC.this.EjP.Sj(-1, th4.getMessage());
                    }
                }
                TKC.this.sP.Sj("local_last_update_time", System.currentTimeMillis());
                TKC.this.Sj();
            }
        });
    }

    public void Sj(Sj sj2) {
        this.EjP = sj2;
    }

    public void Sj() {
        if (this.TKC != null) {
            sP sPVar = this.sP;
            int i10 = TimeConstants.HOUR;
            int iSj = sPVar.Sj(ClientABTestDTOKt.REQ_INTERVAL, TimeConstants.HOUR);
            long j10 = 0;
            long jSP = this.sP.sP("local_last_update_time", 0L);
            if (iSj >= 600000 && iSj <= 86400000) {
                i10 = iSj;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - jSP;
            "before  realInterval=".concat(String.valueOf(jCurrentTimeMillis));
            if (jCurrentTimeMillis >= 0) {
                long j11 = i10;
                if (jCurrentTimeMillis <= j11) {
                    j10 = j11 - jCurrentTimeMillis;
                }
            }
            "after  realInterval=".concat(String.valueOf(j10));
            this.TKC.EjP().removeCallbacks(this.vS);
            if (this.HiB > 24) {
                return;
            }
            this.TKC.EjP().postDelayed(this.vS, j10);
        }
    }

    public int Sj(String str, int i10) {
        sP sPVar = this.sP;
        return sPVar == null ? i10 : sPVar.Sj(str, i10);
    }

    public String Sj(String str, String str2) {
        sP sPVar = this.sP;
        return sPVar == null ? str2 : sPVar.Sj(str, str2);
    }

    public boolean Sj(String str, boolean z10) {
        sP sPVar = this.sP;
        return sPVar == null ? z10 : sPVar.Sj(str, z10);
    }
}
