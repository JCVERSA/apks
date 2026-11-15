package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.alibaba.android.arouter.utils.Consts;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.R;
import com.mgmi.db.dao3.FileDownloadInfoDao;
import com.mgmi.db.dao3.c;
import com.mgmi.db.dao3.d;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class k7d {
    public static volatile k7d h;
    public static Context i;
    public FileDownloadInfoDao a;
    public vad b;
    public File c;
    public Map d = new HashMap();
    public Map e = new HashMap();
    public List f = new ArrayList();
    public b g;

    public class a extends a9d {
        public final String g;
        public final c h;

        public a(String str, c cVar) {
            this.g = str;
            this.h = cVar;
        }

        @Override
        public void a(v5d v5dVar) {
            if (k7d.this.g != null) {
                k7d.this.g.sendMessage(k7d.this.g.obtainMessage(2, v5dVar));
            }
            if (v5dVar.e() == null && v5dVar.d() == null) {
                k7d.this.k(v5dVar.c);
            }
        }

        @Override
        public void a(Integer... numArr) {
            if (k7d.this.g != null) {
                k7d.this.g.sendMessage(k7d.this.g.obtainMessage(1, new v5d().b(numArr[0].intValue()).c(this.g)));
            }
        }

        @Override
        public void a() {
            com.mgmi.e.b bVarA = com.mgmi.e.b.a();
            Context context = k7d.i;
            c cVar = this.h;
            bVarA.a(context, cVar.i, com.mgmi.e.c.CONVERTION_TYPE_DOWNLOAD_START, null, cVar.c);
        }
    }

    public static class b extends Handler {
        public WeakReference a;

        public b(k7d k7dVar, Looper looper) {
            super(looper);
            this.a = new WeakReference(k7dVar);
        }

        @Override
        public void handleMessage(Message message) {
            k7d k7dVar;
            v5d v5dVar;
            WeakReference weakReference = this.a;
            if (weakReference == null || (k7dVar = (k7d) weakReference.get()) == null) {
                return;
            }
            int i = message.what;
            if (i == 1) {
                v5d v5dVar2 = (v5d) message.obj;
                if (v5dVar2 != null) {
                    String strF = v5dVar2.f();
                    d6d d6dVarL = k7dVar.l(strF);
                    String strB = v5dVar2.b();
                    d6dVarL.e(false, true);
                    d6dVarL.d(strB, strF, null, null, v5dVar2.h());
                    return;
                }
                return;
            }
            if (i == 2 && (v5dVar = (v5d) message.obj) != null) {
                String strF2 = v5dVar.f();
                d6d d6dVarL2 = k7dVar.l(strF2);
                String strB2 = v5dVar.b();
                if (v5dVar.e() == null && v5dVar.d() == null) {
                    d6dVarL2.e(false, true);
                    d6dVarL2.d(strB2, strF2, null, "下载完成", 100);
                    if (!TextUtils.isEmpty(v5dVar.d)) {
                        com.mgmi.e.b.a().a(k7d.i, v5dVar.d, com.mgmi.e.c.CONVERTION_TYPE_DOWNLOAD_COMPLETE, k7dVar.n(v5dVar.e), v5dVar.e);
                    }
                    d6dVarL2.g();
                    k7dVar.m(strF2);
                    k7dVar.k(strF2);
                    return;
                }
                if (v5dVar.d() == null || v5dVar.e() != null) {
                    d6dVarL2.e(true, false);
                    d6dVarL2.d(strB2, strF2, null, "下载失败", v5dVar.h());
                } else {
                    d6dVarL2.e(false, true);
                    d6dVarL2.d(strB2, strF2, null, (String) v5dVar.d(), v5dVar.h());
                }
            }
        }
    }

    public k7d(Context context) {
        try {
            i = context.getApplicationContext();
            this.c = t3d.e();
        } catch (Exception unused) {
        }
        this.b = new vad(i4d.a().d());
        this.g = new b(this, Looper.getMainLooper());
        g(context);
    }

    public static k7d c(Context context) {
        if (h == null) {
            synchronized (k7d.class) {
                try {
                    if (h == null) {
                        h = new k7d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return h;
    }

    public String d(String str, String str2) {
        File file = this.c;
        if (file == null) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (TextUtils.isEmpty(str)) {
            str = Long.toString(jCurrentTimeMillis);
        }
        g2d g2dVarH = h(str2);
        if (g2dVarH != null && g2dVarH.f() != null && g2dVarH.f().j()) {
            String str3 = g2dVarH.f().c;
            if (!TextUtils.isEmpty(str3) && new File(str3).exists()) {
                k(str3);
                return null;
            }
        }
        Map map = this.e;
        if (map != null && map.size() > 0 && this.e.containsKey(str2)) {
            try {
                Context context = i;
                Toast.makeText(context, context.getString(R.string.mgmi_str_downloading), 0).show();
            } catch (Throwable unused) {
            }
            return str;
        }
        o(str2);
        c cVar = new c();
        cVar.i = str;
        cVar.b = str2;
        if (TextUtils.isEmpty(absolutePath)) {
            absolutePath = this.c.getAbsolutePath();
        }
        StringBuilder sb = new StringBuilder();
        String str4 = File.separator;
        if (!absolutePath.endsWith(str4)) {
            absolutePath = absolutePath.concat(str4);
        }
        sb.append(absolutePath);
        sb.append(p(str2));
        cVar.c = sb.toString();
        cVar.d = 0L;
        cVar.e = 0L;
        cVar.g = jCurrentTimeMillis;
        g2d g2dVar = new g2d(cVar);
        g2dVar.a(new r7d());
        this.d.put(str, g2dVar);
        w5d w5dVar = new w5d(new z8d(this.a), g2dVar, new a(str2, cVar));
        if (i(i)) {
            this.b.a(w5dVar, g2dVar.e());
        }
        return str;
    }

    public boolean e(String str) {
        Map map;
        g2d g2dVar;
        c cVarF;
        if (!TextUtils.isEmpty(str) && (map = this.d) != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (entry != null && (g2dVar = (g2d) entry.getValue()) != null && (cVarF = g2dVar.f()) != null && TextUtils.equals(str, cVarF.b)) {
                    if (g2dVar.e() != null) {
                        this.b.c(g2dVar.e());
                    }
                    try {
                        this.a.delete(cVarF);
                        aud.g(cVarF.c);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    it.remove();
                    return true;
                }
            }
        }
        return false;
    }

    public c f(String str) {
        Map map;
        g2d g2dVar;
        c cVarF;
        if (!TextUtils.isEmpty(str) && (map = this.d) != null) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry != null && (g2dVar = (g2d) entry.getValue()) != null && (cVarF = g2dVar.f()) != null && TextUtils.equals(str, cVarF.b)) {
                        return cVarF;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final void g(Context context) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            FileDownloadInfoDao fileDownloadInfoDaoC = d.a(context.getApplicationContext()).c();
            this.a = fileDownloadInfoDaoC;
            List<c> list = fileDownloadInfoDaoC.queryBuilder().list();
            if (list == null || list.size() <= 0) {
                return;
            }
            for (c cVar : list) {
                if (cVar != null) {
                    if (jCurrentTimeMillis - cVar.g > 259200000) {
                        aud.g(cVar.c);
                        this.a.delete(cVar);
                        SourceKitLogger.a("download1", "删除下载记录init：" + cVar.toString());
                    } else {
                        g2d g2dVar = new g2d(cVar);
                        this.d.put(cVar.i, g2dVar);
                        SourceKitLogger.a("zhengfeng", "fzDownloadMode url=" + g2dVar.f().b);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public g2d h(String str) {
        Map map;
        g2d g2dVar;
        c cVarF;
        if (!TextUtils.isEmpty(str) && (map = this.d) != null) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry != null && (g2dVar = (g2d) entry.getValue()) != null && (cVarF = g2dVar.f()) != null && TextUtils.equals(str, cVarF.b)) {
                        return g2dVar;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final boolean i(Context context) {
        return true;
    }

    public boolean j(String str) {
        for (c cVar : this.f) {
            if (cVar.b.equals(str) && cVar.j() && aud.e(cVar.c)) {
                return true;
            }
        }
        return false;
    }

    public void k(String str) {
        c cVarF = f(str);
        if (cVarF != null) {
            String str2 = cVarF.c;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            c9d.a(i, str2);
        }
    }

    public d6d l(String str) {
        if (this.e.containsKey(str)) {
            return (d6d) this.e.get(str);
        }
        int iNextInt = new Random().nextInt(10000);
        d6d d6dVar = new d6d(i, new Random().nextInt(10000));
        d6dVar.e = iNextInt;
        d6dVar.a();
        this.e.put(str, d6dVar);
        return d6dVar;
    }

    public void m(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.e.remove(str);
    }

    public String n(String str) {
        ApplicationInfo applicationInfo;
        try {
            PackageInfo packageArchiveInfo = i.getPackageManager().getPackageArchiveInfo(str, 0);
            if (packageArchiveInfo == null || (applicationInfo = packageArchiveInfo.applicationInfo) == null) {
                return null;
            }
            return applicationInfo.packageName;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void o(String str) {
        e(str);
    }

    public final String p(String str) {
        String strSubstring = str.contains("/") ? str.substring(str.lastIndexOf("/") + 1) : "";
        if (TextUtils.isEmpty(strSubstring) || !strSubstring.toLowerCase().contains(".apk")) {
            return strSubstring;
        }
        return strSubstring.substring(0, strSubstring.lastIndexOf(Consts.DOT)) + ".apk";
    }
}
