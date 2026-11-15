package com.mgtv.downloader;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.util.n;
import com.hunantv.media.drm.IDrmManager;
import com.mgtv.downloader.database.DownloadInfoDao;
import com.mgtv.downloader.database.d;
import com.mgtv.downloader.dir.DownloadDirInfo;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.downloader.util.ConfigJson;
import com.mgtv.downloader.util.e;
import com.mgtv.ssp.downloadsdk.DownloadErrCode;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.QueryBuilder;
import org.json.JSONException;
import org.json.JSONObject;

public class a {
    private static a a;
    private com.mgtv.downloader.b.a b;
    private com.mgtv.downloader.util.b c;
    private com.mgtv.downloader.b.b d;
    private String f;
    private String e = "";
    private String g = IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES;
    private String h = "";

    public final class C0179a implements com.mgtv.downloader.a.b {
        private C0179a() {
        }

        @Override
        public void a(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
            Log.d("DownloadSDK_1.8.0", "DownloadHWListener onDownloadProgress taskID=" + i + " extInfo=" + str);
            if (a.this.b != null) {
                a.this.b.a(aVar.r(), aVar);
            }
        }

        @Override
        public void b(int i, com.mgtv.downloader.net.entity.a aVar) {
            Log.d("DownloadSDK_1.8.0", "DownloadHWListener onPlayError taskID=" + i + " Status=" + aVar.f());
            if (a.this.b != null) {
                a.this.b.b(aVar.r(), aVar);
            }
        }

        @Override
        public void c(int i, com.mgtv.downloader.net.entity.a aVar) {
        }

        @Override
        public void d(int i, com.mgtv.downloader.net.entity.a aVar) {
        }

        @Override
        public void c(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
        }

        @Override
        public void d(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
        }

        @Override
        public void a(int i, com.mgtv.downloader.net.entity.a aVar, int i2, String str) {
            Log.d("DownloadSDK_1.8.0", "DownloadHWListener onDownloadError taskID=" + i + " errorCode=" + i2 + " msg=" + str + " hwErrorCode=" + a.this.b(i2, str));
            a.this.h = str;
            if (a.this.b != null) {
                a.this.b.a(aVar.r(), aVar, a.this.b(i2, str));
            }
        }

        @Override
        public void b(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
            Log.d("DownloadSDK_1.8.0", "DownloadHWListener onDownloadSlow taskID=" + i);
            if (a.this.b != null) {
                a.this.b.a(aVar.r(), aVar, str);
            }
        }

        @Override
        public void a(int i, com.mgtv.downloader.net.entity.a aVar) {
            Log.d("DownloadSDK_1.8.0", "DownloadHWListener onDownloadFinish taskID=" + i + " Status=" + aVar.f());
            if (a.this.b != null) {
                a.this.b.b(aVar.r(), aVar);
            }
        }
    }

    private void a(Context context) {
    }

    private void f() {
        List<com.mgtv.downloader.database.c> list;
        try {
            QueryBuilder<com.mgtv.downloader.database.c> queryBuilder = d.a(this.d.a()).a().queryBuilder();
            Property property = DownloadInfoDao.Properties.j;
            list = queryBuilder.orderAsc(property).list();
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("initDownloadList [Database] Read Count: ");
                sb.append(list == null ? "(NULL)" : String.valueOf(list.size()));
                sb.append("  DownloadInfoDao.Properties.OperateTime=");
                sb.append(property.toString());
                com.mgtv.downloader.util.c.a(sb.toString());
                if (list == null || list.size() <= 0) {
                    "".concat("/data/data/").concat(this.d.a().getPackageName()).concat("/databases/DOWNLOAD_INFO");
                    if (new File("").exists()) {
                        com.mgtv.downloader.util.c.a("initDownloadList fileDBPath is true = ");
                    } else {
                        com.mgtv.downloader.util.c.a("initDownloadList fileDBPath is false = ");
                    }
                }
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
                com.mgtv.downloader.util.c.b("DownloadSDK_1.8.0=" + e.getMessage());
            }
        } catch (Exception e2) {
            e = e2;
            list = null;
        }
        if (list == null || list.isEmpty()) {
            com.mgtv.downloader.util.c.a("initDownloadList is Error downloadInfoList != null && !downloadInfoList.isEmpty()");
            return;
        }
        for (com.mgtv.downloader.database.c cVar : list) {
            if (cVar != null) {
                Integer numI = cVar.i();
                int iIntValue = numI == null ? 0 : numI.intValue();
                int i = 10;
                if (1 == iIntValue || 5 == iIntValue || 6 == iIntValue || 2 == iIntValue) {
                    cVar.a((Integer) 2);
                } else if (4 == iIntValue) {
                    i = 11;
                }
                b.a().a(cVar, i, "initDownloadList", new C0179a());
            }
        }
    }

    public com.mgtv.downloader.b.b b() {
        return this.d;
    }

    public void c() {
        b.a().d();
    }

    public String d() {
        return com.hunantv.imgo.util.b.e();
    }

    public boolean e() {
        return true;
    }

    private int d(String str) {
        Integer num = 1;
        if (TextUtils.isEmpty(str)) {
            return 1;
        }
        if (c(str)) {
            switch (Integer.parseInt(str)) {
                case 2:
                    num = 2;
                    break;
                case 3:
                    num = 3;
                    break;
                case 4:
                    num = 4;
                    break;
                case 5:
                    num = 9;
                    break;
                case 6:
                    num = 9;
                    break;
            }
        }
        return num.intValue();
    }

    public void b(List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            int iIntValue = b.a().b(list.get(i)).intValue();
            if (iIntValue > 0) {
                b.a().c(iIntValue);
            }
        }
    }

    public boolean c(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("\\d+");
    }

    public static synchronized a a() {
        try {
            if (a == null) {
                a = new a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public String b(int i) {
        if (this.c == null) {
            return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
        }
        if (i == 0) {
            return "" + this.c.h;
        }
        if (i == 1) {
            return "" + this.c.h;
        }
        if (i == 2) {
            return this.f;
        }
        if (i == 3) {
            return this.e;
        }
        return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
    }

    public void a(com.mgtv.downloader.b.b bVar) {
        this.d = bVar;
    }

    public String a(com.mgtv.downloader.b.b bVar, com.mgtv.downloader.b.a aVar) {
        String str;
        a(bVar);
        BaseApplication.setContext(this.d.a());
        com.hunantv.imgo.util.b.e(this.d.b());
        com.hunantv.imgo.util.b.f(this.d.c());
        if (TextUtils.isEmpty(this.d.b())) {
            com.hunantv.imgo.util.b.e("a1007");
        }
        if (TextUtils.isEmpty(this.d.c())) {
            com.hunantv.imgo.util.b.f("e9+pDLfC@W");
        }
        if (!TextUtils.isEmpty(this.d.f())) {
            this.g = b().f();
        }
        if (this.c == null) {
            this.c = new com.mgtv.downloader.util.b();
        }
        com.mgtv.downloader.util.b bVar2 = this.c;
        bVar2.d = "http://mobile.api.hunantv.com/v11/video/downloadUrl";
        bVar2.c = "http://mobile.api.hunantv.com/v10/video/downloadUrl";
        bVar2.i = 3;
        bVar2.h = 0;
        if (TextUtils.isEmpty(this.d.e())) {
            this.c.e = "{\"data\":{\"cdn\":{\"playertimeout\":45,\"timeout\":30},\"cdnModule\":{\"hlsconfig\":0,\"useMGHttpDns\":0,\"videoDownloadType\":1,\"offlineMaxHttpSpeedKB\":" + this.c.h + "}}}";
        } else {
            this.c.j = a(this.d.e(), ConfigJson.class).data.cdnModule.videoDownloadType;
        }
        int iA = a(this.c);
        if (iA >= 0) {
            str = this.g + "0000";
        } else {
            str = this.g + "8099-" + iA;
        }
        if (aVar != null) {
            this.b = aVar;
        }
        a(this.d.a());
        f();
        return str;
    }

    public String b(String str) {
        if (str == null) {
            return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
        }
        Integer numB = b.a().b(str);
        if (numB.intValue() >= 0) {
            return b.a().a(numB.intValue());
        }
        return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
    }

    public String b(int i, String str) {
        String str2 = this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.equals(str, "10007") && !TextUtils.equals(str, "10100")) {
                if (TextUtils.equals(str, "10022")) {
                    return this.g + "6004-" + str;
                }
                if (i != 10) {
                    return str2;
                }
                return this.g + "6009-" + i;
            }
            return this.g + "6008-" + str;
        }
        if (i == 3) {
            return this.g + "6202-" + i;
        }
        if (i == 20) {
            return this.g + "6008-" + i;
        }
        if (i == 7) {
            return this.g + "8099-" + i;
        }
        if (i == 4) {
            return this.g + "6299-" + i;
        }
        if (i == 301504) {
            return this.g + "6203-" + i;
        }
        if (i == 1) {
            return this.g + "6201-" + i;
        }
        if (i == 5) {
            return this.g + "6204-" + i;
        }
        if (i == 6) {
            return this.g + "6205-" + i;
        }
        if (i != 10) {
            return str2;
        }
        return this.g + "6009-" + i;
    }

    private int a(com.mgtv.downloader.util.b bVar) {
        return b.a().a(this.d.a(), bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [com.mgtv.downloader.database.c] */
    /* JADX WARN: Type inference failed for: r12v12, types: [com.mgtv.downloader.database.c] */
    /* JADX WARN: Type inference failed for: r13v19, types: [com.mgtv.downloader.database.c] */
    /* JADX WARN: Type inference failed for: r19v0, types: [com.mgtv.downloader.a] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v103 */
    /* JADX WARN: Type inference failed for: r4v105, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v127, types: [com.mgtv.downloader.b] */
    /* JADX WARN: Type inference failed for: r4v149, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v165 */
    /* JADX WARN: Type inference failed for: r4v166 */
    /* JADX WARN: Type inference failed for: r4v167 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v24, types: [com.mgtv.downloader.b] */
    /* JADX WARN: Type inference failed for: r4v46, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v52, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v74, types: [com.mgtv.downloader.b] */
    /* JADX WARN: Type inference failed for: r4v97, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v27, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v53 */
    /* JADX WARN: Type inference failed for: r5v55, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v84 */
    /* JADX WARN: Type inference failed for: r5v85 */
    /* JADX WARN: Type inference failed for: r5v86 */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.String] */
    public synchronized void a(String str, String str2, String str3, com.mgtv.downloader.b.c cVar) {
        StringBuilder sb;
        String str4;
        StringBuilder sb2;
        String str5;
        StringBuilder sb3;
        String str6;
        String str7;
        StringBuilder sb4;
        String str8;
        ?? r2 = str3;
        synchronized (this) {
            try {
                this.h = "";
                ?? string = "";
                ?? string2 = "";
                ?? string3 = "";
                String string4 = "";
                String string5 = "";
                String string6 = "";
                String string7 = "";
                String string8 = "";
                try {
                    try {
                        string8 = new JSONObject(str).getString("videoId");
                        JSONObject jSONObject = new JSONObject(str2);
                        string = jSONObject.getString("PATH");
                        string2 = jSONObject.getString("DEFINITION");
                        string3 = jSONObject.getString("PRIORITY");
                        string4 = jSONObject.getString("LIMIT_SPEED");
                        string5 = jSONObject.getString("AT");
                        string6 = jSONObject.getString("OPENID");
                        string7 = jSONObject.getString("CONTENTID");
                        ?? cVar2 = new com.mgtv.downloader.database.c();
                        cVar2.M = string7;
                        cVar2.b = string8;
                        if (TextUtils.isEmpty(string2)) {
                            cVar2.w = Integer.valueOf(d(this.f));
                        } else {
                            cVar2.w = Integer.valueOf(d(string2));
                        }
                        cVar2.G = Integer.valueOf(this.c.j);
                        if (TextUtils.isEmpty(string)) {
                            cVar2.f = this.e;
                        } else {
                            cVar2.f = string;
                        }
                        DownloadDirInfo downloadDirInfoE = com.mgtv.downloader.dir.a.c().e();
                        if (!TextUtils.isEmpty(cVar2.f)) {
                            downloadDirInfoE.path = cVar2.f;
                            com.mgtv.downloader.dir.a.c().a(downloadDirInfoE);
                            n.a("DownloadSDK_1.8.0", "curDir : " + downloadDirInfoE);
                        }
                        String strConcat = downloadDirInfoE.path;
                        String str9 = File.separator;
                        if (!strConcat.endsWith(str9)) {
                            strConcat = strConcat.concat(str9);
                        }
                        if (cVar2.G().intValue() == 0) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append(strConcat);
                            sb5.append(e.b(string8 + string2));
                            sb5.append(".mtv");
                            cVar2.e(sb5.toString());
                        } else {
                            cVar2.e(strConcat);
                        }
                        cVar2.a(2);
                        cVar2.e(1);
                        cVar2.c(string8);
                        cVar2.f(0);
                        cVar2.c(0L);
                        cVar2.b(0);
                        cVar2.c(0);
                        cVar2.b(0L);
                        cVar2.C(r2);
                        cVar2.z(string3);
                        cVar2.A(string4);
                        cVar2.B(string5);
                        cVar2.H(string6);
                        cVar2.D(this.d.b());
                        cVar2.E(this.d.c());
                        cVar2.G(this.d.d());
                        cVar2.n = "http://disp.titan.mgtv.com;http://disp1.titan.mgtv.com;http://123.59.21.240;";
                        ?? A = b.a();
                        C0179a c0179a = new C0179a();
                        string3 = 10;
                        int iA = A.a(cVar2, 10, r2, c0179a);
                        r2 = iA;
                        string = A;
                        string2 = c0179a;
                        if (cVar != null) {
                            if (iA >= 0) {
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append(this.g);
                                sb6.append("0000");
                                sb4 = sb6;
                            } else {
                                StringBuilder sb7 = new StringBuilder();
                                sb7.append(this.g);
                                sb7.append("8099-");
                                sb7.append(iA);
                                sb4 = sb7;
                            }
                            String string9 = sb4.toString();
                            if (!TextUtils.isEmpty(this.h)) {
                                if (!TextUtils.equals(this.h, "10007") && !TextUtils.equals(this.h, "10100")) {
                                    if (TextUtils.equals(this.h, "10022")) {
                                        str8 = this.g + "6004-" + this.h;
                                    } else if (TextUtils.equals(this.h, "10")) {
                                        str8 = this.g + "6009-" + this.h;
                                    } else {
                                        str8 = this.g + "8099-" + this.h;
                                    }
                                } else {
                                    str8 = this.g + "6008-" + this.h;
                                }
                                StringBuilder sb8 = new StringBuilder();
                                sb8.append("if taskID: ");
                                sb8.append(iA);
                                sb8.append(", errorCode ");
                                sb8.append(str8);
                                sb8.append(" createCode ");
                                sb8.append(this.h);
                                String string10 = sb8.toString();
                                com.mgtv.downloader.util.c.a(string10);
                                str7 = string10;
                                str6 = str8;
                                sb3 = sb8;
                                str5 = "if taskID: ";
                            } else {
                                StringBuilder sb9 = new StringBuilder();
                                sb9.append("else taskID: ");
                                sb9.append(iA);
                                sb9.append(", errorCode ");
                                sb9.append(string9);
                                sb9.append(" createCode ");
                                sb9.append(this.h);
                                String string11 = sb9.toString();
                                com.mgtv.downloader.util.c.a(string11);
                                str7 = string11;
                                str6 = string9;
                                sb3 = sb9;
                                str5 = "else taskID: ";
                            }
                            cVar.a(string7, str6);
                            r2 = str7;
                            string = str6;
                            string2 = sb3;
                            string3 = str5;
                        }
                    } catch (Throwable th) {
                        ?? cVar3 = new com.mgtv.downloader.database.c();
                        cVar3.M = string7;
                        cVar3.b = string8;
                        if (TextUtils.isEmpty(string2)) {
                            cVar3.w = Integer.valueOf(d(this.f));
                        } else {
                            cVar3.w = Integer.valueOf(d(string2));
                        }
                        cVar3.G = Integer.valueOf(this.c.j);
                        if (TextUtils.isEmpty(string)) {
                            cVar3.f = this.e;
                        } else {
                            cVar3.f = string;
                        }
                        DownloadDirInfo downloadDirInfoE2 = com.mgtv.downloader.dir.a.c().e();
                        if (!TextUtils.isEmpty(cVar3.f)) {
                            downloadDirInfoE2.path = cVar3.f;
                            com.mgtv.downloader.dir.a.c().a(downloadDirInfoE2);
                            n.a("DownloadSDK_1.8.0", "curDir : " + downloadDirInfoE2);
                        }
                        String strConcat2 = downloadDirInfoE2.path;
                        String str10 = File.separator;
                        if (!strConcat2.endsWith(str10)) {
                            strConcat2 = strConcat2.concat(str10);
                        }
                        if (cVar3.G().intValue() == 0) {
                            StringBuilder sb10 = new StringBuilder();
                            sb10.append(strConcat2);
                            sb10.append(e.b(string8 + string2));
                            sb10.append(".mtv");
                            cVar3.e(sb10.toString());
                        } else {
                            cVar3.e(strConcat2);
                        }
                        cVar3.a(2);
                        cVar3.e(1);
                        cVar3.c(string8);
                        cVar3.f(0);
                        cVar3.c(0L);
                        cVar3.b(0);
                        cVar3.c(0);
                        cVar3.b(0L);
                        cVar3.C(r2);
                        cVar3.z(string3);
                        cVar3.A(string4);
                        cVar3.B(string5);
                        cVar3.H(string6);
                        cVar3.D(this.d.b());
                        cVar3.E(this.d.c());
                        cVar3.G(this.d.d());
                        cVar3.n = "http://disp.titan.mgtv.com;http://disp1.titan.mgtv.com;http://123.59.21.240;";
                        int iA2 = b.a().a(cVar3, 10, r2, new C0179a());
                        if (cVar != null) {
                            if (iA2 >= 0) {
                                sb2 = new StringBuilder();
                                sb2.append(this.g);
                                sb2.append("0000");
                            } else {
                                sb2 = new StringBuilder();
                                sb2.append(this.g);
                                sb2.append("8099-");
                                sb2.append(iA2);
                            }
                            String string12 = sb2.toString();
                            if (!TextUtils.isEmpty(this.h)) {
                                if (!TextUtils.equals(this.h, "10007") && !TextUtils.equals(this.h, "10100")) {
                                    if (!TextUtils.equals(this.h, "10022")) {
                                        if (TextUtils.equals(this.h, "10")) {
                                            string12 = this.g + "6009-" + this.h;
                                        } else {
                                            string12 = this.g + "8099-" + this.h;
                                        }
                                    } else {
                                        string12 = this.g + "6004-" + this.h;
                                    }
                                } else {
                                    string12 = this.g + "6008-" + this.h;
                                }
                                com.mgtv.downloader.util.c.a("if taskID: " + iA2 + ", errorCode " + string12 + " createCode " + this.h);
                            } else {
                                com.mgtv.downloader.util.c.a("else taskID: " + iA2 + ", errorCode " + string12 + " createCode " + this.h);
                            }
                            cVar.a(string7, string12);
                            throw th;
                        }
                        throw r12;
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                    ?? cVar4 = new com.mgtv.downloader.database.c();
                    cVar4.M = "";
                    cVar4.b = string8;
                    if (TextUtils.isEmpty(string2)) {
                        cVar4.w = Integer.valueOf(d(this.f));
                    } else {
                        cVar4.w = Integer.valueOf(d(string2));
                    }
                    cVar4.G = Integer.valueOf(this.c.j);
                    if (TextUtils.isEmpty(string)) {
                        cVar4.f = this.e;
                    } else {
                        cVar4.f = string;
                    }
                    DownloadDirInfo downloadDirInfoE3 = com.mgtv.downloader.dir.a.c().e();
                    if (!TextUtils.isEmpty(cVar4.f)) {
                        downloadDirInfoE3.path = cVar4.f;
                        com.mgtv.downloader.dir.a.c().a(downloadDirInfoE3);
                        n.a("DownloadSDK_1.8.0", "curDir : " + downloadDirInfoE3);
                    }
                    String strConcat3 = downloadDirInfoE3.path;
                    String str11 = File.separator;
                    if (!strConcat3.endsWith(str11)) {
                        strConcat3 = strConcat3.concat(str11);
                    }
                    if (cVar4.G().intValue() == 0) {
                        StringBuilder sb11 = new StringBuilder();
                        sb11.append(strConcat3);
                        sb11.append(e.b(string8 + string2));
                        sb11.append(".mtv");
                        cVar4.e(sb11.toString());
                    } else {
                        cVar4.e(strConcat3);
                    }
                    cVar4.a(2);
                    cVar4.e(1);
                    cVar4.c(string8);
                    cVar4.f(0);
                    cVar4.c(0L);
                    cVar4.b(0);
                    cVar4.c(0);
                    cVar4.b(0L);
                    cVar4.C(r2);
                    cVar4.z(string3);
                    cVar4.A(string4);
                    cVar4.B(string5);
                    cVar4.H(string6);
                    cVar4.D(this.d.b());
                    cVar4.E(this.d.c());
                    cVar4.G(this.d.d());
                    cVar4.n = "http://disp.titan.mgtv.com;http://disp1.titan.mgtv.com;http://123.59.21.240;";
                    ?? A2 = b.a();
                    C0179a c0179a2 = new C0179a();
                    string3 = 10;
                    int iA3 = A2.a(cVar4, 10, r2, c0179a2);
                    r2 = iA3;
                    string = A2;
                    string2 = c0179a2;
                    if (cVar != null) {
                        if (iA3 >= 0) {
                            StringBuilder sb12 = new StringBuilder();
                            sb12.append(this.g);
                            sb12.append("0000");
                            sb = sb12;
                        } else {
                            StringBuilder sb13 = new StringBuilder();
                            sb13.append(this.g);
                            sb13.append("8099-");
                            sb13.append(iA3);
                            sb = sb13;
                        }
                        String string13 = sb.toString();
                        if (!TextUtils.isEmpty(this.h)) {
                            if (!TextUtils.equals(this.h, "10007") && !TextUtils.equals(this.h, "10100")) {
                                if (TextUtils.equals(this.h, "10022")) {
                                    str4 = this.g + "6004-" + this.h;
                                } else if (TextUtils.equals(this.h, "10")) {
                                    str4 = this.g + "6009-" + this.h;
                                } else {
                                    str4 = this.g + "8099-" + this.h;
                                }
                            } else {
                                str4 = this.g + "6008-" + this.h;
                            }
                            StringBuilder sb14 = new StringBuilder();
                            sb14.append("if taskID: ");
                            sb14.append(iA3);
                            sb14.append(", errorCode ");
                            sb14.append(str4);
                            sb14.append(" createCode ");
                            sb14.append(this.h);
                            String string14 = sb14.toString();
                            com.mgtv.downloader.util.c.a(string14);
                            str7 = string14;
                            str6 = str4;
                            sb3 = sb14;
                            str5 = "if taskID: ";
                        } else {
                            StringBuilder sb15 = new StringBuilder();
                            sb15.append("else taskID: ");
                            sb15.append(iA3);
                            sb15.append(", errorCode ");
                            sb15.append(string13);
                            sb15.append(" createCode ");
                            sb15.append(this.h);
                            String string15 = sb15.toString();
                            com.mgtv.downloader.util.c.a(string15);
                            str7 = string15;
                            str6 = string13;
                            sb3 = sb15;
                            str5 = "else taskID: ";
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            int iIntValue = b.a().b(list.get(i)).intValue();
            if (iIntValue > 0) {
                b.a().b(iIntValue);
            }
        }
    }

    public void a(List<String> list, String str) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            int iIntValue = b.a().b(list.get(i)).intValue();
            if (iIntValue > 0) {
                b.a().a(iIntValue, str, true);
            }
        }
    }

    public List<com.mgtv.downloader.net.entity.a> a(int i) {
        ArrayList arrayList = new ArrayList();
        synchronized (b.b()) {
            try {
                for (com.mgtv.downloader.a.a aVar : b.b()) {
                    if (aVar != null) {
                        if (i == 0) {
                            arrayList.add(aVar.b());
                        } else if (i == 2 && 4 == aVar.b().i.intValue()) {
                            arrayList.add(aVar.b());
                        } else {
                            arrayList.add(aVar.b());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public com.mgtv.downloader.net.entity.a a(String str) {
        synchronized (b.b()) {
            try {
                for (com.mgtv.downloader.a.a aVar : b.b()) {
                    if (aVar != null && str.equals(aVar.b().r())) {
                        return aVar.b();
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String a(int i, String str) {
        com.mgtv.downloader.util.c.a("[DownloadHWManager] setConfig param:" + i + "  optVal:" + str);
        if (TextUtils.isEmpty(str)) {
            return this.g + "0000";
        }
        if (this.c == null) {
            this.c = new com.mgtv.downloader.util.b();
        }
        com.mgtv.downloader.util.b bVar = this.c;
        bVar.d = "http://mobile.api.hunantv.com/v11/video/downloadUrl";
        bVar.c = "http://mobile.api.hunantv.com/v10/video/downloadUrl";
        if (i == 0) {
            if (TextUtils.isEmpty(str)) {
                this.c.i = 1;
            } else {
                this.c.i = Integer.parseInt(str);
            }
        }
        if (i == 1) {
            if (TextUtils.isEmpty(str)) {
                this.c.h = 0;
            } else {
                this.c.h = Integer.parseInt(str);
            }
        }
        if (i == 2) {
            this.f = str;
        }
        if (i == 3) {
            this.e = str;
            com.mgtv.downloader.dir.a.c().a(this.e);
            b.a().c();
        }
        if (i == 6) {
            this.c.e = str;
            if (!TextUtils.isEmpty(str)) {
                this.c.j = a(str, ConfigJson.class).data.cdnModule.videoDownloadType;
            } else {
                this.c.e = "{\"data\":{\"cdn\":{\"playertimeout\":45,\"timeout\":30},\"cdnModule\":{\"hlsconfig\":1,\"useMGHttpDns\":0,\"videoDownloadType\":1,\"offlineMaxHttpSpeedKB\":" + this.c.h + "}}}";
            }
        }
        a(this.c);
        if (i == 5) {
            a(Integer.parseInt(str), 0);
        }
        return this.g + "0000";
    }

    public String a(String str, int i, String str2) {
        if (str == null) {
            return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
        }
        synchronized (b.b()) {
            try {
                for (com.mgtv.downloader.a.a aVar : b.b()) {
                    if (aVar != null && 10 == aVar.d() && str.equals(aVar.b().r())) {
                        if (i == 0) {
                            aVar.b().o(str2);
                        } else if (i == 1) {
                            aVar.b().b(Integer.valueOf(Integer.parseInt(str2)));
                        } else if (i == 2) {
                            aVar.b().n(str2);
                        }
                        return this.g + "0000";
                    }
                }
                return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String a(String str, int i) {
        if (str == null) {
            return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
        }
        synchronized (b.b()) {
            try {
                for (com.mgtv.downloader.a.a aVar : b.b()) {
                    if (aVar != null && 10 == aVar.d() && str.equals(aVar.b().r())) {
                        if (i == 0) {
                            return "" + aVar.b().q();
                        }
                        if (i == 1) {
                            return "" + aVar.b().g();
                        }
                        if (i == 2) {
                            return aVar.b().p();
                        }
                        return this.g + "0000";
                    }
                }
                return this.g + DownloadErrCode.DOWNLOAD_DEFAULT_ERR;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i, int i2) {
        HashMap map = new HashMap();
        map.put(DownloadFacadeEnum.EXPRESS_DOWNLOAD, Integer.valueOf(i));
        map.put(DownloadFacadeEnum.USER_TRIAL_TIME, Integer.valueOf(i2));
        b.a().a(map);
    }

    public ConfigJson a(String str, Class cls) {
        return (ConfigJson) new Gson().fromJson(str, cls);
    }
}
