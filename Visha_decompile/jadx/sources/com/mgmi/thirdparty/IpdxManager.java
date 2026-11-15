package com.mgmi.thirdparty;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgadplus.netlib.a.e;
import com.mgadplus.netlib.base.FzHttpResponseObject;
import com.mgadplus.netlib.base.c;
import com.mgadplus.netlib.json.a;
import com.mgmi.e.a.d;
import com.mgmi.f.f;
import com.mgmi.platform.b;
import defpackage.g4d;
import defpackage.mpd;
import defpackage.n4d;
import java.io.Serializable;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class IpdxManager {
    private static IpdxManager g;
    public IpdxBean a;
    private Context b;
    private String c = null;
    private List<String> d = null;
    private long e = -1;
    private boolean f = false;

    public static class IpdxBean implements a, Serializable {
        public int code;
        public int exptime;
        public String geocode;
        public String id;
        public String ip;
        public String message;
    }

    public IpdxManager(Context context) {
        this.b = context;
    }

    private boolean b() {
        Context context;
        if (this.a == null) {
            return false;
        }
        if ((this.c == null || this.e == -1) && (context = this.b) != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("com_mgmi_android", 0);
            this.c = sharedPreferences.getString("mgmi_ipdx_url", "");
            this.e = sharedPreferences.getLong("mgmi_ipdx_safer_duration", -1L);
        }
        return this.c == null || this.e == -1 || (System.currentTimeMillis() / 1000) + this.e <= ((long) this.a.exptime);
    }

    public static IpdxManager a(Context context) {
        if (g == null) {
            synchronized (IpdxManager.class) {
                try {
                    if (g == null) {
                        g = new IpdxManager(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public void a(String str, List<String> list, int i) {
        this.c = str;
        this.d = list;
        long j = i;
        this.e = j;
        Context context = this.b;
        if (context != null) {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("com_mgmi_android", 0).edit();
            editorEdit.putString("mgmi_ipdx_url", str);
            editorEdit.putLong("mgmi_ipdx_safer_duration", j);
            editorEdit.commit();
        }
    }

    public void a() {
        if (!b.a().d() || this.f || b()) {
            return;
        }
        this.f = true;
        com.mgadplus.netlib.a.a aVarA = new com.mgadplus.netlib.a.a(this.c).a(5000);
        c.a aVar = c.a.HEADER;
        aVarA.a("auver", "v1", aVar);
        aVarA.a("Authentication", a(this.b, f.h()), aVar);
        e.a(this.b, aVarA, new com.mgadplus.netlib.base.b<IpdxBean>() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void a(com.mgadplus.netlib.base.e eVar) {
                int iA = eVar != null ? eVar.a() : -1;
                Exception excE = eVar.e();
                FzHttpResponseObject fzHttpResponseObject = (FzHttpResponseObject) eVar.d();
                if (excE != null || fzHttpResponseObject == null) {
                    if (excE == null) {
                        int i = iA + 901000;
                        a(i, i, "http respont code not 0 or 200:" + iA, excE, IpdxManager.this.c);
                        return;
                    }
                    if (excE instanceof SocketTimeoutException) {
                        a(901002, 901002, excE.getMessage(), excE, IpdxManager.this.c);
                        return;
                    } else if (excE instanceof SocketException) {
                        a(901002, 901002, excE.getMessage(), excE, IpdxManager.this.c);
                        return;
                    } else {
                        int i2 = iA + 901000;
                        a(i2, i2, excE.getMessage(), excE, IpdxManager.this.c);
                        return;
                    }
                }
                if (fzHttpResponseObject.getCode() == 200 || (iA == 200 && fzHttpResponseObject.getCode() == 0)) {
                    try {
                        b(a(fzHttpResponseObject));
                        return;
                    } catch (Exception unused) {
                        a(901003, fzHttpResponseObject.getCode(), "http respont ok but process data error" + fzHttpResponseObject.getCode(), excE, IpdxManager.this.c);
                        return;
                    }
                }
                if (iA != 200) {
                    a(901000 + iA, fzHttpResponseObject.getCode(), "httpStatus is not 200:" + iA, excE, IpdxManager.this.c);
                    return;
                }
                a(901000 + fzHttpResponseObject.getCode(), fzHttpResponseObject.getCode(), "http respont code not 0 or 200:" + fzHttpResponseObject.getCode(), excE, IpdxManager.this.c);
            }

            @Override
            public void b(@NonNull IpdxBean ipdxBean) {
                SourceKitLogger.a("IpdxManager", "success");
                IpdxManager.this.a(ipdxBean);
                if (ipdxBean.code == -1) {
                    IpdxManager.this.a(901004, ipdxBean.message);
                }
            }
        });
    }

    public String a(Context context, String str) {
        try {
            return n4d.j(g4d.i(mpd.F(context)) + "^" + String.valueOf(System.currentTimeMillis() / 1000), str);
        } catch (Exception unused) {
            SourceKitLogger.a("mgmi", "generateAuthenticationtoken error");
            return "";
        }
    }

    public void a(int i, String str) {
        List<String> list;
        d dVarB = com.mgmi.net.b.a().b();
        if (dVarB == null || (list = this.d) == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.d.iterator();
        while (it.hasNext()) {
            String strReplace = it.next().replace("[ERRORCODE]", String.valueOf(i));
            if (str != null) {
                strReplace = strReplace.replace("[ERRORMSG]", str);
            }
            arrayList.add(strReplace);
        }
        dVarB.a(arrayList);
    }

    public void a(IpdxBean ipdxBean) {
        if (ipdxBean != null) {
            this.a = ipdxBean;
        }
        this.f = false;
    }
}
