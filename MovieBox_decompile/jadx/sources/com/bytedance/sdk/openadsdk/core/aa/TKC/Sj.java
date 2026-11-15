package com.bytedance.sdk.openadsdk.core.aa.TKC;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.HiB;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.component.utils.LD;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.sU.Sj.EjP;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.vungle.ads.internal.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class Sj {
    private static volatile Sj Sj;
    private String sP;
    private final Map<sU, sP> TKC = new ConcurrentHashMap();
    private final Map<String, JSONObject> EjP = new ConcurrentHashMap();
    private final AtomicBoolean HiB = new AtomicBoolean(false);
    private final Set<String> vS = Collections.synchronizedSet(new HashSet());
    private final ConcurrentHashMap<String, com.bytedance.sdk.component.Jcg.sP.Sj> Jcg = new ConcurrentHashMap<>();
    private final Map<String, String> Dq = new ConcurrentHashMap();

    public interface InterfaceC0253Sj {
    }

    private static class sP {
        long EjP;
        long Sj;
        long TKC;
        long sP;

        private sP() {
        }

        public sP EjP(long j10) {
            this.EjP = j10;
            return this;
        }

        public long Sj() {
            return this.sP - this.Sj;
        }

        public sP TKC(long j10) {
            this.TKC = j10;
            return this;
        }

        public long sP() {
            return this.EjP - this.TKC;
        }

        public sP Sj(long j10) {
            this.Sj = j10;
            return this;
        }

        public sP sP(long j10) {
            this.sP = j10;
            return this;
        }
    }

    private Sj() {
    }

    public File EjP(File file) {
        File file2 = new File(file, "tt_open_ad_sdk_check_res.dat");
        return HiB(file2) ? file2 : new File(file, "tt_open_ad_sdk_check_res.dat");
    }

    private boolean HiB(File file) {
        return file != null && file.exists() && file.isFile() && file.canRead();
    }

    public static void TKC(File file) {
        try {
            if (!file.exists() || file.setLastModified(System.currentTimeMillis())) {
                return;
            }
            file.renameTo(file);
            file.lastModified();
        } catch (Throwable unused) {
        }
    }

    public void sP() {
        if (this.HiB.get()) {
            return;
        }
        JcM.Sj(new Dq("PlayableCache_init") {
            @Override
            public void run() {
                File[] fileArrListFiles;
                try {
                    String strEjP = Sj.this.EjP();
                    if (!TextUtils.isEmpty(strEjP)) {
                        File file = new File(strEjP);
                        if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                            for (File file2 : fileArrListFiles) {
                                if (file2 != null) {
                                    try {
                                        File fileSj = Sj.Sj(file2);
                                        if (fileSj != null && fileSj.exists()) {
                                            Sj.this.Dq.put(file2.getName(), fileSj.getAbsolutePath());
                                        }
                                        Sj.this.Sj(Sj.this.EjP(fileSj), true);
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable unused2) {
                }
                com.bytedance.sdk.openadsdk.sU.Sj.TKC.Sj().Sj(Sj.this.Dq);
                Sj.this.HiB.set(true);
            }
        });
    }

    private String HiB() {
        if (TextUtils.isEmpty(this.sP)) {
            try {
                File file = new File(dNu.Sj().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.sP = file.getAbsolutePath();
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("PlayableCache", "init root path error: ".concat(String.valueOf(th2)));
            }
        }
        return this.sP;
    }

    public static void sP(File file) {
        TKC(file);
        try {
            uA.sP().uvD().Sj(file);
        } catch (Throwable unused) {
        }
    }

    public String EjP() {
        File file = new File(HiB(), "games");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static Sj Sj() {
        if (Sj == null) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null) {
                        Sj = new Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public void sP(sU sUVar) {
        if (sUVar == null || sUVar.UHs() == null || TextUtils.isEmpty(sUVar.UHs().f()) || !com.bytedance.sdk.openadsdk.dx.Sj.Sj("can_cancel_playable", false)) {
            return;
        }
        com.bytedance.sdk.component.Jcg.sP.Sj sj2 = this.Jcg.get(sUVar.UHs().f());
        if (sj2 != null) {
            sj2.sP();
        }
    }

    public Map<String, String> TKC() {
        return this.Dq;
    }

    public boolean Sj(sU sUVar) {
        if (this.HiB.get() && sUVar != null && sUVar.UHs() != null && sUVar.UHs().f() != null) {
            try {
                if (!TextUtils.isEmpty(this.Dq.get(HiB.Sj(sUVar.UHs().f())))) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public JSONObject Sj(File file, boolean z10) {
        byte[] bArrEjP;
        String strSP;
        try {
            if (!HiB(file) || (bArrEjP = Jcg.EjP(file)) == null || bArrEjP.length <= 0) {
                return null;
            }
            if (TextUtils.equals(file.getName(), "tt_open_ad_sdk_check_res.dat")) {
                strSP = com.bytedance.sdk.component.utils.Sj.TKC(new String(bArrEjP));
            } else {
                strSP = com.bytedance.sdk.component.EjP.Sj.sP(new String(bArrEjP), com.bytedance.sdk.openadsdk.core.Sj.sP());
            }
            if (TextUtils.isEmpty(strSP)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strSP);
            if (z10 && jSONObject.length() > 0) {
                this.EjP.put(file.getParentFile().getName(), jSONObject);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public WebResourceResponse Sj(String str, String str2, String str3) {
        String mimeTypeFromExtension;
        File fileSj;
        try {
            WebResourceResponse webResourceResponseSj = com.bytedance.sdk.openadsdk.sU.Sj.TKC.Sj().Sj(str3);
            if (webResourceResponseSj != null) {
                return webResourceResponseSj;
            }
            if (this.HiB.get() && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                try {
                    if ((str3.startsWith("http://") || str3.startsWith("https://")) && str3.contains(UrlUtils.QUESTION_MARK)) {
                        str3 = str3.split("\\?")[0];
                        if (str3.endsWith("/")) {
                            str3 = str3.substring(0, str3.length() - 1);
                        }
                    }
                    mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str3));
                } catch (Throwable unused) {
                    mimeTypeFromExtension = null;
                }
                if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                    return null;
                }
                String strSj = HiB.Sj(str);
                if (TextUtils.isEmpty(strSj)) {
                    return null;
                }
                String str4 = this.Dq.get(strSj);
                if (!TextUtils.isEmpty(str4)) {
                    fileSj = new File(str4);
                } else {
                    fileSj = Sj(new File(EjP(), strSj));
                    if (fileSj != null && fileSj.exists()) {
                        this.Dq.put(strSj, fileSj.getAbsolutePath());
                    }
                }
                if (fileSj != null && fileSj.exists()) {
                    String strSj2 = Sj(str2);
                    if (TextUtils.isEmpty(strSj2)) {
                        return null;
                    }
                    String strReplace = str3.replace(strSj2, "");
                    if (!TextUtils.isEmpty(strReplace) && !strReplace.startsWith("https://") && !strReplace.startsWith("http://")) {
                        File file = new File(fileSj, strReplace);
                        if (file.exists() && Sj(strSj, strReplace, file) && file.getCanonicalPath().startsWith(fileSj.getCanonicalPath())) {
                            return new WebResourceResponse(mimeTypeFromExtension, "utf-8", new FileInputStream(file));
                        }
                    }
                }
            }
            return null;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("PlayableCache", "playable intercept error: ", th2);
        }
        return null;
    }

    public static File Sj(File file) {
        File[] fileArrListFiles;
        if (file != null && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length != 0) {
            for (File file2 : fileArrListFiles) {
                if (file2 != null && file2.isFile() && b.AD_INDEX_FILE_NAME.equals(file2.getName())) {
                    return file;
                }
            }
            for (File file3 : fileArrListFiles) {
                if (file3 != null && file3.isDirectory()) {
                    return Sj(file3);
                }
            }
        }
        return null;
    }

    private String Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split("\\?");
        if (strArrSplit != null && strArrSplit.length == 2) {
            String str2 = strArrSplit[0];
            if (str2 != null && str2.endsWith("/")) {
                str = str.substring(0, strArrSplit.length - 1);
            }
            String str3 = strArrSplit[0];
            if (str3 != null && str3.endsWith(b.AD_INDEX_FILE_NAME)) {
                str = strArrSplit[0];
            }
        }
        return str.replace(b.AD_INDEX_FILE_NAME, "");
    }

    private boolean Sj(String str, String str2, File file) {
        if (file != null && file.exists()) {
            JSONObject jSONObject = this.EjP.get(str);
            if (jSONObject == null) {
                return true;
            }
            String strOptString = jSONObject.optString(str2);
            if (strOptString != null && strOptString.equalsIgnoreCase(HiB.Sj(file))) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"[ByDesign4.2]BadDomainNameVerifier"})
    public void Sj(final sU sUVar, final InterfaceC0253Sj interfaceC0253Sj) {
        File file;
        if (EjP.Sj().sP() && sUVar != null && uP.vS(sUVar) && sUVar.xD() != null && !TextUtils.isEmpty(sUVar.xD().getBidAdm())) {
            com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar, -705, "server bidding pre render");
            Sj(interfaceC0253Sj, false);
            return;
        }
        if (sUVar != null && sUVar.UHs() != null && !TextUtils.isEmpty(sUVar.UHs().f())) {
            final String strF = sUVar.UHs().f();
            if (this.vS.contains(strF)) {
                return;
            }
            this.TKC.put(sUVar, new sP().Sj(System.currentTimeMillis()));
            com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar);
            String strSj = HiB.Sj(strF);
            final File file2 = new File(EjP(), strSj);
            String str = this.Dq.get(strSj);
            if (TextUtils.isEmpty(str)) {
                file = Sj(file2);
                if (file != null && file.exists()) {
                    this.Dq.put(strSj, file.getAbsolutePath());
                }
            } else {
                file = new File(str);
            }
            if (file != null && file.exists()) {
                com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar, -702, (String) null);
                TKC(file2);
                this.TKC.remove(sUVar);
                Sj(interfaceC0253Sj, true);
                return;
            }
            try {
                Jcg.TKC(file2);
            } catch (Throwable unused) {
            }
            this.vS.add(strF);
            File file3 = new File(HiB(), strSj + ".zip");
            com.bytedance.sdk.component.Jcg.sP.Sj sjEjP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().EjP();
            this.Jcg.put(strF, sjEjP);
            sjEjP.sP(strF);
            sjEjP.Sj(file3.getParent(), file3.getName());
            sjEjP.Sj(7);
            sjEjP.Sj("playable_download");
            sjEjP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() {
                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, final com.bytedance.sdk.component.Jcg.sP sPVar) {
                    Sj.this.vS.remove(strF);
                    Sj.this.Jcg.remove(strF);
                    final sP sPVar2 = (sP) Sj.this.TKC.remove(sUVar);
                    if (sPVar2 != null) {
                        sPVar2.sP(System.currentTimeMillis());
                    }
                    if (sPVar.vS() && sPVar.HiB() != null && sPVar.HiB().exists()) {
                        JcM.sP(new Dq("downloadZip") {
                            @Override
                            public void run() {
                                boolean z10;
                                long jSj;
                                long jSP;
                                try {
                                    sP sPVar3 = sPVar2;
                                    if (sPVar3 != null) {
                                        sPVar3.TKC(System.currentTimeMillis());
                                    }
                                    LD.Sj(sPVar.HiB().getAbsolutePath(), file2.getAbsolutePath());
                                    sP sPVar4 = sPVar2;
                                    if (sPVar4 != null) {
                                        sPVar4.EjP(System.currentTimeMillis());
                                    }
                                    sP sPVar5 = sPVar2;
                                    if (sPVar5 != null) {
                                        jSj = sPVar5.Sj();
                                        jSP = sPVar2.sP();
                                    } else {
                                        jSj = 0;
                                        jSP = 0;
                                    }
                                    com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar, jSj, jSP);
                                    Sj.sP(file2);
                                    z10 = true;
                                    try {
                                        File fileSj = Sj.Sj(file2);
                                        if (fileSj != null && fileSj.exists()) {
                                            Sj.this.Dq.put(file2.getName(), fileSj.getAbsolutePath());
                                        }
                                        Sj.this.Sj(Sj.this.EjP(fileSj), true);
                                    } catch (Throwable unused2) {
                                    }
                                } catch (Throwable th2) {
                                    com.bytedance.sdk.component.utils.sU.Sj("PlayableCache", "unzip error: ", th2);
                                    com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar, -704, th2.getMessage());
                                    z10 = false;
                                }
                                try {
                                    sPVar.HiB().delete();
                                } catch (Throwable unused3) {
                                }
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                Sj.this.Sj(interfaceC0253Sj, z10);
                            }
                        });
                    } else {
                        com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar, sPVar.Sj() != 0 ? sPVar.Sj() : -700, (String) null);
                        Sj.this.Sj(interfaceC0253Sj, false);
                    }
                }

                @Override
                public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                    Sj.this.vS.remove(strF);
                    Sj.this.Jcg.remove(strF);
                    Sj.this.TKC.remove(sUVar);
                    com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar, -700, iOException.getMessage());
                    Sj.this.Sj(interfaceC0253Sj, false);
                }
            });
            return;
        }
        com.bytedance.sdk.openadsdk.core.aa.TKC.sP.Sj(sUVar, -701, (String) null);
        Sj(interfaceC0253Sj, false);
    }

    public void Sj(final InterfaceC0253Sj interfaceC0253Sj, final boolean z10) {
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
            }
        });
    }
}
