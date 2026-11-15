package com.bytedance.sdk.component.Jcg.sP;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Jcg;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.uvD;
import com.bytedance.sdk.component.sP.Sj.vS;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class sP extends TKC {
    public static final com.bytedance.sdk.component.sP.Sj.Sj Sj = new com.bytedance.sdk.component.sP.Sj.Sj.C0206Sj().Sj().sP();
    public static final com.bytedance.sdk.component.sP.Sj.Sj sP = new com.bytedance.sdk.component.sP.Sj.Sj.C0206Sj().sP();
    private com.bytedance.sdk.component.sP.Sj.Sj TEQ;
    private boolean Ym;

    private Map<String, String> f20249aa;

    public sP(Ym ym2) {
        super(ym2);
        this.TEQ = Sj;
        this.Ym = false;
        this.f20249aa = new HashMap();
    }

    public void Sj(boolean z10) {
        this.Ym = z10;
    }

    public void Sj(final com.bytedance.sdk.component.Jcg.Sj.Sj sj2) {
        try {
            Fmk.Sj sj3 = new Fmk.Sj();
            if (this.Ym) {
                sj3.sP(this.Dq);
            } else {
                Jcg.Sj sj4 = new Jcg.Sj();
                Uri uri = Uri.parse(this.Dq);
                sj4.Sj(uri.getScheme());
                sj4.sP(uri.getHost());
                String encodedPath = uri.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    sj4.TKC(encodedPath);
                }
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.f20249aa.put(str, uri.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.f20249aa.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String strEncode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        sj4.Sj(strEncode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                sj3.Sj(sj4.sP());
            }
            Sj(sj3);
            sj3.Sj(this.TEQ);
            sj3.Sj((Object) TKC());
            if (!TextUtils.isEmpty(this.HiB)) {
                sj3.Sj(this.HiB);
            }
            int i10 = this.vS;
            if (i10 > 0) {
                sj3.Sj(i10);
            }
            this.TKC.Sj(sj3.Sj().sP()).Sj(new com.bytedance.sdk.component.sP.Sj.TKC() {
                @Override
                public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar, IOException iOException) {
                    com.bytedance.sdk.component.Jcg.Sj.Sj sj5 = sj2;
                    if (sj5 != null) {
                        sj5.Sj(sP.this, iOException);
                    }
                }

                @Override
                public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar, Zq zq2) throws IOException {
                    String strSP;
                    if (sj2 != null) {
                        HashMap map = new HashMap();
                        if (zq2 != null) {
                            vS vSVarJcg = zq2.Jcg();
                            if (vSVarJcg != null) {
                                for (int i11 = 0; i11 < vSVarJcg.Sj(); i11++) {
                                    map.put(vSVarJcg.Sj(i11), vSVarJcg.sP(i11));
                                }
                            }
                            uvD uvdVS = zq2.vS();
                            if (uvdVS == null) {
                                strSP = "";
                            } else {
                                strSP = uvdVS.sP();
                            }
                            sj2.Sj(sP.this, new com.bytedance.sdk.component.Jcg.sP(zq2.EjP(), zq2.TKC(), zq2.HiB(), map, strSP, zq2.sP(), zq2.Sj()));
                        }
                    }
                }
            });
        } catch (Throwable th2) {
            if (sj2 != null) {
                sj2.Sj(this, new IOException(th2.getMessage()));
            }
        }
    }

    public com.bytedance.sdk.component.Jcg.sP Sj() {
        try {
            Fmk.Sj sj2 = new Fmk.Sj();
            if (this.Ym) {
                sj2.sP(this.Dq);
            } else {
                Jcg.Sj sj3 = new Jcg.Sj();
                Uri uri = Uri.parse(this.Dq);
                sj3.Sj(uri.getScheme());
                sj3.sP(uri.getHost());
                String encodedPath = uri.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    sj3.TKC(encodedPath);
                }
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.f20249aa.put(str, uri.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.f20249aa.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String strEncode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        sj3.Sj(strEncode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                sj2.Sj(sj3.sP());
            }
            Sj(sj2);
            sj2.Sj(this.TEQ);
            sj2.Sj((Object) TKC());
            Zq zqSP = this.TKC.Sj(sj2.Sj().sP()).sP();
            if (zqSP == null) {
                return null;
            }
            HashMap map = new HashMap();
            vS vSVarJcg = zqSP.Jcg();
            if (vSVarJcg != null) {
                for (int i10 = 0; i10 < vSVarJcg.Sj(); i10++) {
                    map.put(vSVarJcg.Sj(i10), vSVarJcg.sP(i10));
                }
            }
            uvD uvdVS = zqSP.vS();
            return new com.bytedance.sdk.component.Jcg.sP(zqSP.EjP(), zqSP.TKC(), zqSP.HiB(), map, uvdVS != null ? uvdVS.sP() : "", zqSP.sP(), zqSP.Sj());
        } catch (Throwable unused) {
            return null;
        }
    }
}
