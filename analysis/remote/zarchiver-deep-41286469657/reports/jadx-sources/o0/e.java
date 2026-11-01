package o0;

import android.os.RemoteException;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

public final class e extends o0.a {

    public static byte f1306k;

    public static a f1307l;

    public class a implements z.a.g {
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0016  */
    /* JADX WARN: Code duplicated, block: B:44:0x0069  */
    public e() {
        byte b2;
        byte b3;
        try {
            if (z.a.f2310c) {
                b2 = 0;
            } else {
                try {
                    k.c cVar = z.a.f2309b;
                    if (cVar == null) {
                        throw new IllegalStateException("binder haven't been received");
                    }
                    boolean zE = cVar.e();
                    z.a.f2310c = zE;
                    if (zE) {
                        b2 = 0;
                    } else {
                        b2 = -1;
                    }
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            }
            if (b2 != 0) {
                if (ZArchiver.z() != null) {
                    if (f1307l == null) {
                        f1307l = new a();
                    }
                    try {
                        k.c cVar2 = z.a.f2309b;
                        if (cVar2 == null) {
                            throw new IllegalStateException("binder haven't been received");
                        }
                        cVar2.d();
                        z.a.a(f1307l);
                        try {
                            synchronized (f1307l) {
                                try {
                                    f1307l.wait(600000L);
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } catch (Exception unused) {
                        }
                    } catch (RemoteException e3) {
                        throw new RuntimeException(e3);
                    }
                }
                if (!z.a.f2310c) {
                    try {
                        k.c cVar3 = z.a.f2309b;
                        if (cVar3 == null) {
                            throw new IllegalStateException("binder haven't been received");
                        }
                        boolean zE2 = cVar3.e();
                        z.a.f2310c = zE2;
                        b3 = zE2 ? (byte) 0 : (byte) -1;
                    } catch (RemoteException e4) {
                        throw new RuntimeException(e4);
                    }
                }
                if (b3 != 0) {
                    this.f1296j = 1;
                    return;
                }
            }
            try {
                String[] strArr = {"sh"};
                try {
                    k.c cVar4 = z.a.f2309b;
                    if (cVar4 == null) {
                        throw new IllegalStateException("binder haven't been received");
                    }
                    e(new z.c(cVar4.h(strArr)));
                } catch (RemoteException e5) {
                    throw new RuntimeException(e5);
                }
            } catch (Exception unused2) {
            }
        } catch (Exception unused3) {
            this.f1296j = 2;
        }
    }

    @Override
    public final int d() {
        return ZApp.f1438g ? 3 : 2;
    }
}
