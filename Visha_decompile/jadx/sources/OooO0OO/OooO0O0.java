package OooO0OO;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.account.XNManager;
import defpackage.nj7;
import defpackage.oj7;
import defpackage.qj7;
import defpackage.vj7;
import defpackage.xj7;

public class OooO0O0 {
    public static volatile OooO0O0 e;
    public final Context a;
    public PalmAuthParam b;
    public volatile boolean c = false;
    public final Object d = new Object();

    public class RunnableC0000OooO0O0 implements Runnable {
        public final PalmID.a OooO00o;

        public RunnableC0000OooO0O0(PalmID.a aVar) {
            this.OooO00o = aVar;
        }

        @Override
        public void run() {
            XNManager.g().k(OooO0O0.this.a, null, this.OooO00o);
        }
    }

    public class OooO0OO implements Runnable {
        public final nj7 OooO00o;

        public OooO0OO(nj7 nj7Var) {
            this.OooO00o = nj7Var;
        }

        @Override
        public void run() {
            try {
                String str = this.OooO00o.b;
                if (TextUtils.isEmpty(str) || !XNManager.g().k(OooO0O0.this.a, str, null)) {
                    vj7.a.g("TUDC convert failed");
                    this.OooO00o.b(OooO0O0.this.a);
                } else {
                    vj7.a.g("TUDC convert success");
                    this.OooO00o.b(OooO0O0.this.a);
                }
                synchronized (OooO0O0.this.d) {
                    OooO0O0.this.c = false;
                }
            } catch (Throwable th) {
                synchronized (OooO0O0.this.d) {
                    OooO0O0.this.c = false;
                    throw th;
                }
            }
        }
    }

    public class a implements PalmID.a {
        public final PalmID.a a;

        public a(PalmID.a aVar) {
            this.a = aVar;
        }

        @Override
        public void a(int i, String str) {
            synchronized (OooO0O0.this.d) {
                OooO0O0.this.c = false;
            }
            PalmID.a aVar = this.a;
            if (aVar != null) {
                aVar.a(i, str);
            }
        }

        @Override
        public void onSuccess(Object obj) {
            String str = (String) obj;
            synchronized (OooO0O0.this.d) {
                OooO0O0.this.c = false;
            }
            PalmID.a aVar = this.a;
            if (aVar != null) {
                aVar.onSuccess(str);
            }
        }
    }

    public OooO0O0(Context context) {
        this.a = context.getApplicationContext();
    }

    public static OooO0O0 a(Context context) {
        if (e == null) {
            synchronized (OooO0O0.class) {
                try {
                    if (e == null) {
                        e = new OooO0O0(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:44:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    public final void b(PalmID.a aVar) {
        try {
            PalmAuthParam palmAuthParam = this.b;
            if (palmAuthParam == null || !palmAuthParam.hasTudc()) {
                synchronized (this.d) {
                    this.c = false;
                }
                if (aVar != null) {
                    aVar.a(40105, "Not logged in");
                    return;
                }
                return;
            }
            nj7 nj7VarA = nj7.a(this.b.getTudcSpName());
            if (nj7VarA.c(this.a)) {
                xj7.a().execute(new OooO0OO(nj7VarA));
                return;
            }
            synchronized (this.d) {
                this.c = false;
            }
            if (aVar != null) {
                aVar.a(40105, "TUDC not logged in");
                return;
            }
            return;
        } catch (Exception e2) {
            synchronized (this.d) {
                this.c = false;
                oj7.a(e2, qj7.a("handleTudcConversion error: "), vj7.a);
                if (aVar != null) {
                    StringBuilder sbA = qj7.a("TUDC conversion failed: ");
                    sbA.append(e2.getMessage());
                    aVar.a(40102, sbA.toString());
                }
            }
        }
        synchronized (this.d) {
            this.c = false;
            oj7.a(e2, qj7.a("handleTudcConversion error: "), vj7.a);
            if (aVar != null) {
                StringBuilder sbA2 = qj7.a("TUDC conversion failed: ");
                sbA2.append(e2.getMessage());
                aVar.a(40102, sbA2.toString());
            }
        }
    }

    public void c(PalmID.a aVar, boolean z) {
        try {
            if (!vj7.h(this.a)) {
                vj7.a.g("refreshIfNeed network unavailable");
                if (aVar != null) {
                    aVar.a(40103, "network unavailable");
                    return;
                }
                return;
            }
            synchronized (this.d) {
                try {
                    if (this.c) {
                        vj7.a.g("Token refresh already in progress, skipping...");
                        if (aVar != null) {
                            aVar.a(40107, "Token refresh in progress");
                        }
                        return;
                    }
                    this.c = true;
                    boolean zJ = XNManager.g().j(this.a);
                    vj7.a.g("refreshIfNeed isLogged = " + zJ + " isSync = " + z);
                    if (!zJ) {
                        b(aVar);
                        return;
                    }
                    a aVar2 = new a(aVar);
                    if (z) {
                        XNManager.g().k(this.a, null, aVar2);
                    } else {
                        xj7.a().execute(new RunnableC0000OooO0O0(aVar2));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            synchronized (this.d) {
                this.c = false;
                ObjectLogUtils objectLogUtils = vj7.a;
                StringBuilder sbA = qj7.a("refreshIfNeed error: ");
                sbA.append(Log.getStackTraceString(e2));
                objectLogUtils.i(sbA.toString());
                if (aVar != null) {
                    StringBuilder sbA2 = qj7.a("Token refresh failed: ");
                    sbA2.append(e2.getMessage());
                    aVar.a(40102, sbA2.toString());
                }
            }
        }
    }
}
