package com.bytedance.sdk.openadsdk.core.EjP;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.HiB;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.core.aa.TKC.TKC;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.multipro.sP;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj {
    private final List<String> Sj = new CopyOnWriteArrayList();
    private final TKC sP = new TKC(5, 5, true);
    private final ConcurrentHashMap<String, Long> TKC = new ConcurrentHashMap<>();

    private static class C0235Sj {
        private static final Sj Sj = new Sj();
    }

    private boolean TKC(String str) {
        return !this.Sj.contains(str);
    }

    public File sP(String str) {
        String str2;
        String strSj = HiB.Sj(str);
        if (strSj == null) {
            return null;
        }
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (sP.TKC()) {
            str2 = name + "/music/";
        } else {
            str2 = name + "//music/";
        }
        return Jcg.Sj(dNu.Sj(), sP.TKC(), str2, strSj);
    }

    public void TKC() {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("music_preload_start", false, new com.bytedance.sdk.openadsdk.Zq.sP() {
            @Override
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                EjP ejPSj = EjP.sP().Sj("music_preload_start");
                ejPSj.Sj();
                return ejPSj;
            }
        });
    }

    public static Sj Sj() {
        return C0235Sj.Sj;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        List<sU> listEjP = sj2.EjP();
        if (listEjP == null || listEjP.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < listEjP.size(); i10++) {
            sU sUVar = listEjP.get(i10);
            if (sUVar != null) {
                Sj(sUVar);
            }
        }
    }

    public InputStream Sj(String str) {
        File fileSP = sP(str);
        if (fileSP != null && Sj(fileSP)) {
            try {
                return new FileInputStream(fileSP);
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.sU.sP("MusicCacheManager", e10.getMessage());
            }
        }
        return null;
    }

    public void sP() {
        File fileSj = Sj(dNu.Sj(), sP.TKC());
        fileSj.getAbsolutePath();
        try {
            this.sP.Sj(fileSj);
        } catch (IOException e10) {
            com.bytedance.sdk.component.utils.sU.Sj("MusicCacheManager", "trimFileCache fail", e10);
        }
    }

    private void Sj(sU sUVar) {
        sU.Sj sjXhi;
        String strYm;
        if (sUVar == null || (sjXhi = sUVar.xhi()) == null || (strYm = sjXhi.Ym()) == null || !strYm.contains("music_url")) {
            return;
        }
        TKC();
        String strEjP = sjXhi.EjP();
        if (TextUtils.isEmpty(strEjP)) {
            try {
                new JSONObject().put("result", 0);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.sP("MusicCacheManager", e10.getMessage());
            }
            Sj(0, -1L, 10001, "music url string is null");
            return;
        }
        File fileSP = sP(strEjP);
        if (fileSP == null) {
            return;
        }
        fileSP.getPath();
        if (Sj(fileSP)) {
            Sj(2, -1L, -1, null);
        } else {
            Sj(sUVar, strEjP, fileSP);
        }
    }

    private boolean Sj(File file) {
        return file.exists() && file.length() != 0;
    }

    private void Sj(sU sUVar, String str, File file) {
        if (TKC(str)) {
            this.TKC.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
            com.bytedance.sdk.component.Jcg.sP.Sj sjEjP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().EjP();
            sjEjP.sP(str);
            sjEjP.Sj(file.getParent(), file.getName());
            sjEjP.TKC(str);
            this.Sj.add(str);
            sjEjP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                    sPVar.TKC();
                    sPVar.Sj();
                    String strTKC = tkc.TKC();
                    Long l10 = (Long) Sj.this.TKC.get(strTKC);
                    if (sPVar.vS() && sPVar.HiB() != null && sPVar.HiB().exists()) {
                        sPVar.HiB();
                        if (l10 != null) {
                            Sj.this.TKC.remove(strTKC);
                            Sj.this.Sj(1, SystemClock.elapsedRealtime() - l10.longValue(), -1, null);
                        }
                        try {
                            Jcg.sP(sPVar.HiB());
                        } catch (IOException e10) {
                            com.bytedance.sdk.component.utils.sU.sP("MusicCacheManager", e10.getMessage());
                        }
                    }
                    if (sPVar.vS() || l10 == null) {
                        return;
                    }
                    Sj.this.Sj(0, SystemClock.elapsedRealtime() - l10.longValue(), -2, "http response status code isn't 200");
                }

                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    Long l10 = (Long) Sj.this.TKC.get(tkc.TKC());
                    if (l10 != null) {
                        Sj.this.Sj(0, SystemClock.elapsedRealtime() - l10.longValue(), -2, "http response status code isn't 200");
                    }
                }
            });
        }
    }

    private File Sj(Context context, boolean z10) {
        String str;
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (sP.TKC()) {
            str = name + "/music";
        } else {
            str = name + "//music";
        }
        return Jcg.Sj(context, z10, str);
    }

    public void Sj(final int i10, final long j10, final int i11, final String str) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("music_preload_finish", false, new com.bytedance.sdk.openadsdk.Zq.sP() {
            @Override
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", i10);
                long j11 = j10;
                if (j11 != -1) {
                    jSONObject.put("load_duration", j11);
                }
                EjP ejPSP = EjP.sP().Sj("music_preload_finish").sP(jSONObject.toString());
                if (!TextUtils.isEmpty(str)) {
                    ejPSP.sP(i11);
                    ejPSP.vS(str);
                }
                ejPSP.Sj();
                return ejPSP;
            }
        });
    }

    public void Sj(final boolean z10) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("music_cache", false, new com.bytedance.sdk.openadsdk.Zq.sP() {
            @Override
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", z10);
                EjP ejPSP = EjP.sP().Sj("music_cache").sP(jSONObject.toString());
                ejPSP.Sj();
                return ejPSP;
            }
        });
    }
}
