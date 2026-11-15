package defpackage;

import android.content.Context;
import android.util.Log;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.log.strategy.DefaultFileStrategy;
import com.transsion.log.upload.SendUbtRunnable;
import com.transsion.log.upload.net.RequestManager;
import com.transsion.log.upload.record.UploadRecordUtil;
import com.transsion.log.util.UBTLogLevel;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.StringSubstitutor;
import org.mozilla.javascript.ES6Iterator;

public abstract class vdb {
    public static Context b;
    public static boolean d;
    public static boolean e;
    public static final a a = new a(null);
    public static final yi5 c = b.a(new c74() {
        @Override
        public final Object invoke() {
            return vdb.m();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void q() {
            try {
                Map mapE = UploadRecordUtil.a.e(vdb.a.h());
                if (mapE == null) {
                    fq5.b("");
                    return;
                }
                for (Map.Entry entry : mapE.entrySet()) {
                    String str = (String) entry.getValue();
                    if (str == null) {
                        str = "";
                    }
                    File file = new File(str);
                    fq5.b((String) entry.getValue());
                    if (file.exists()) {
                        yb9 yb9Var = new yb9();
                        SendUbtRunnable sendUbtRunnable = new SendUbtRunnable();
                        yb9Var.d = sendUbtRunnable;
                        yb9Var.f = (String) entry.getKey();
                        yb9Var.c = (String) entry.getValue();
                        yb9Var.b = ykb.b(System.currentTimeMillis());
                        sendUbtRunnable.setSendAction(yb9Var);
                        sendUbtRunnable.run();
                    }
                }
            } catch (Exception e) {
                Log.e("UBT", "restoreUpload error: " + e.getMessage());
            }
        }

        public static final void t(String str, ec9 ec9Var) {
            try {
                gq5.g().b();
                a aVar = vdb.a;
                List listG = aVar.g(Long.valueOf(System.currentTimeMillis()));
                if (listG != null) {
                    yb9 yb9Var = new yb9();
                    SendUbtRunnable sendUbtRunnable = new SendUbtRunnable();
                    yb9Var.d = sendUbtRunnable;
                    yb9Var.f = str;
                    yb9Var.e = listG;
                    yb9Var.b = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis()));
                    fq5.a(yb9Var);
                    UploadRecordUtil.a.i(aVar.h(), str, yb9Var.c);
                    sendUbtRunnable.setSendAction(yb9Var);
                    sendUbtRunnable.setSendLogCallback(ec9Var);
                    sendUbtRunnable.run();
                }
            } catch (Exception e) {
                Log.e("UBT", "uploadByDefaultStrategy error: " + e.getMessage());
            }
        }

        public final void c(String str, String str2) {
            y45.j(str, "key");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            d(str, str2, false);
        }

        public final void d(String str, String str2, boolean z) {
            if (z) {
                n(ykb.c(System.currentTimeMillis()), str, str2, UBTLogLevel.ACTION);
            } else {
                o(Long.valueOf(System.currentTimeMillis()), str, str2, UBTLogLevel.ACTION);
            }
        }

        public final void e(String str, String str2) {
            f(str, str2, false);
        }

        public final void f(String str, String str2, boolean z) {
            if (z) {
                n(ykb.c(System.currentTimeMillis()), str, str2, UBTLogLevel.ERROR);
            } else {
                o(Long.valueOf(System.currentTimeMillis()), str, str2, UBTLogLevel.ERROR);
            }
        }

        public final List g(Long l) {
            List listC = fq5.c();
            sr3 sr3VarD = fq5.d();
            if (sr3VarD != null) {
                return sr3VarD.a(listC, l);
            }
            return null;
        }

        public final Context h() {
            return vdb.b;
        }

        public final ExecutorService i() {
            return (ExecutorService) vdb.c.getValue();
        }

        public final void j(String str, String str2) {
            k(str, str2, false);
        }

        public final void k(String str, String str2, boolean z) {
            if (z) {
                n(ykb.c(System.currentTimeMillis()), str, str2, UBTLogLevel.NORMAL);
            } else {
                o(Long.valueOf(System.currentTimeMillis()), str, str2, UBTLogLevel.NORMAL);
            }
        }

        public final void l(wdb wdbVar) {
            if (wdbVar != null) {
                a aVar = vdb.a;
                Context contextM = wdbVar.m();
                aVar.r(contextM != null ? contextM.getApplicationContext() : null);
                if (wdbVar.h == null) {
                    DefaultFileStrategy defaultFileStrategy = new DefaultFileStrategy(wdbVar.o());
                    wdbVar.h = defaultFileStrategy;
                    Long l = wdbVar.l();
                    defaultFileStrategy.f(l != null ? l.longValue() : 0L);
                }
                RequestManager requestManager = RequestManager.a;
                String strK = wdbVar.k();
                if (strK == null) {
                    strK = "";
                }
                requestManager.e(strK);
                fq5.e(wdbVar);
                vdb.d = true;
                if (!wdbVar.n().booleanValue() || vdb.e) {
                    fq5.b("");
                } else {
                    aVar.p();
                    vdb.e = true;
                }
            }
        }

        public final void m(String str) {
            y45.j(str, SerializableCookie.HOST);
            RequestManager.a.d(str);
        }

        /* JADX WARN: Code duplicated, block: B:8:0x002e  */
        /* JADX WARN: Instruction removed from duplicated block: B:8:0x002e, please report this as an issue */
        public final void n(String str, String str2, String str3, UBTLogLevel uBTLogLevel) {
            String str4;
            if (str2 == null || str3 == null) {
                str4 = "";
            } else if (str != null) {
                str4 = "{t:" + str + StringUtils.COMMA + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3 + StringSubstitutor.DEFAULT_VAR_END;
                if (str4 == null) {
                    str4 = "{" + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3 + StringSubstitutor.DEFAULT_VAR_END;
                }
            } else {
                str4 = "{" + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3 + StringSubstitutor.DEFAULT_VAR_END;
            }
            fq5.g(str4, uBTLogLevel.ordinal());
        }

        /* JADX WARN: Code duplicated, block: B:8:0x002e  */
        /* JADX WARN: Instruction removed from duplicated block: B:8:0x002e, please report this as an issue */
        public final void o(Long l, String str, String str2, UBTLogLevel uBTLogLevel) {
            String str3;
            if (str == null || str2 == null) {
                str3 = "";
            } else if (l != null) {
                str3 = "{t:" + l + StringUtils.COMMA + str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2 + StringSubstitutor.DEFAULT_VAR_END;
                if (str3 == null) {
                    str3 = "{" + str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2 + StringSubstitutor.DEFAULT_VAR_END;
                }
            } else {
                str3 = "{" + str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2 + StringSubstitutor.DEFAULT_VAR_END;
            }
            fq5.g(str3, uBTLogLevel.ordinal());
        }

        public final void p() {
            i().execute(new Runnable() {
                @Override
                public final void run() {
                    vdb.a.q();
                }
            });
        }

        public final void r(Context context) {
            vdb.b = context;
        }

        public final void s(final ec9 ec9Var, final String str) {
            y45.j(str, "feedbackId");
            i().execute(new Runnable(str, ec9Var) {
                public final String b;

                @Override
                public final void run() {
                    vdb.a.t(this.b, null);
                }
            });
        }

        public a() {
        }
    }

    public static final void g(String str, String str2) {
        a.c(str, str2);
    }

    public static final void h(String str, String str2) {
        a.e(str, str2);
    }

    public static final List i(Long l) {
        return a.g(l);
    }

    public static final void j(String str, String str2) {
        a.j(str, str2);
    }

    public static final void k(wdb wdbVar) {
        a.l(wdbVar);
    }

    public static final void l(String str) {
        a.m(str);
    }

    public static final ExecutorService m() {
        return Executors.newCachedThreadPool();
    }

    public static final void n(ec9 ec9Var, String str) {
        a.s(ec9Var, str);
    }
}
