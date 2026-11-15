package com.transsion.clouddrive.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import defpackage.C2400if;
import defpackage.c74;
import defpackage.g1a;
import defpackage.i81;
import defpackage.ja2;
import defpackage.ly0;
import defpackage.oq5;
import defpackage.qe;
import defpackage.uk1;
import defpackage.xs7;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class DefaultAppInfoProvider implements qe {
    public static final a k = new a(null);
    public final Context a;
    public final String b;
    public final yi5 c;
    public final yi5 d;
    public final yi5 e;
    public final yi5 f;
    public final yi5 g;
    public final yi5 h;
    public final yi5 i;
    public final yi5 j;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DefaultAppInfoProvider(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, PushConstants.PROVIDER_FIELD_APP_ID);
        this.a = context;
        this.b = str;
        this.c = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                DefaultAppInfoProvider defaultAppInfoProvider = this.this$0;
                return defaultAppInfoProvider.y(defaultAppInfoProvider.p());
            }
        });
        this.d = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return this.this$0.t();
            }
        });
        this.e = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return uk1.a.a(this.this$0.s());
            }
        });
        this.f = b.a(new c74() {
            @Override
            public final String invoke() {
                return ja2.a.a();
            }
        });
        this.g = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                C2400if c2400if = C2400if.a;
                Context contextS = this.this$0.s();
                String packageName = this.this$0.s().getPackageName();
                y45.i(packageName, "getPackageName(...)");
                return c2400if.c(contextS, packageName);
            }
        });
        this.h = b.a(new c74() {
            @Override
            public final String invoke() {
                return xs7.a.a();
            }
        });
        this.i = b.a(new c74() {
            @Override
            public final String invoke() {
                return Resources.getSystem().getConfiguration().getLocales().get(0).getLanguage();
            }
        });
        this.j = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                C2400if c2400if = C2400if.a;
                String packageName = this.this$0.s().getPackageName();
                y45.i(packageName, "getPackageName(...)");
                return g1a.N((String) i81.o0(c2400if.b(packageName)), StringUtils.PROCESS_POSTFIX_DELIMITER, "", false, 4, null);
            }
        });
    }

    public final String A() {
        return (String) this.d.getValue();
    }

    @Override
    public String a() {
        return "";
    }

    @Override
    public String b() {
        return x();
    }

    @Override
    public String c() {
        return q();
    }

    @Override
    public String d() {
        return w();
    }

    @Override
    public String e() {
        return A();
    }

    @Override
    public String f() {
        return u();
    }

    @Override
    public String g() {
        return z();
    }

    @Override
    public String h() {
        String strF = AthenaAnalytics.F(this.a);
        y45.i(strF, "getAppVAID(...)");
        return strF;
    }

    @Override
    public boolean i() {
        return qe.a.a(this);
    }

    @Override
    public String j() {
        return r();
    }

    @Override
    public String k() {
        return v();
    }

    @Override
    public String l() {
        return this.b;
    }

    @Override
    public String m() {
        String strD = DeviceInfo.d();
        y45.i(strD, "getGAId(...)");
        return strD;
    }

    public final String p() {
        return this.b;
    }

    public final String q() {
        return (String) this.j.getValue();
    }

    public final String r() {
        return (String) this.g.getValue();
    }

    public final Context s() {
        return this.a;
    }

    public final String t() {
        ContentResolver contentResolver = this.a.getContentResolver();
        y45.i(contentResolver, "getContentResolver(...)");
        Uri uri = Uri.parse("content://com.hoffnung.DeviceInfoProvider");
        y45.i(uri, "parse(this)");
        String str = "";
        try {
            Cursor cursorQuery = contentResolver.query(uri, null, null, null, null);
            try {
                Cursor cursor = cursorQuery;
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("cpuid"));
                        y45.i(string, "getString(...)");
                        str = string;
                    }
                    cursor.close();
                } else {
                    oq5.a.b("DefaultAppInfoProvider", "get cpuid error,cursor is null");
                }
                zfb zfbVar = zfb.a;
                ly0.a(cursorQuery, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(cursorQuery, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            oq5.a.b("DefaultAppInfoProvider", e);
        }
        return str;
    }

    public final String u() {
        return (String) this.f.getValue();
    }

    public final String v() {
        Object value = this.i.getValue();
        y45.i(value, "getValue(...)");
        return (String) value;
    }

    public final String w() {
        return (String) this.e.getValue();
    }

    public final String x() {
        return (String) this.h.getValue();
    }

    public final String y(String str) {
        String str2 = "";
        try {
            ContentResolver contentResolver = this.a.getContentResolver();
            Uri uri = Uri.parse("content://com.hoffnung.DeviceInfoProvider2");
            y45.i(uri, "parse(this)");
            Cursor cursorQuery = contentResolver.query(uri, null, null, new String[]{str}, null);
            try {
                Cursor cursor = cursorQuery;
                if (cursor != null) {
                    if (cursor.moveToNext()) {
                        String string = cursor.getString(0);
                        y45.i(string, "getString(...)");
                        str2 = string;
                    }
                    cursor.close();
                } else {
                    oq5.a.b("DefaultAppInfoProvider", "get tpmsId error,cursor is null");
                }
                zfb zfbVar = zfb.a;
                ly0.a(cursorQuery, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(cursorQuery, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            oq5.a.b("DefaultAppInfoProvider", e);
        }
        return str2;
    }

    public final String z() {
        return (String) this.c.getValue();
    }
}
