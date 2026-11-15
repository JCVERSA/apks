package com.hoffnung.tpms_sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class TPMSDelegator {
    public static TPMSDelegator h;
    public Context a;
    public com.hoffnung.a.b b;
    public Handler c;
    public HandlerThread d;
    public Intent e;
    public List f;
    public ServiceConnection g = new ServiceConnection() {
        @Override
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            TPMSDelegator.this.b = com.hoffnung.a.b.a.a(iBinder);
            TPMSDelegator.this.c.post(new Runnable() {
                @Override
                public final void run() {
                    while (TPMSDelegator.this.f.size() > 0) {
                        Runnable runnable = (Runnable) TPMSDelegator.this.f.get(0);
                        runnable.run();
                        TPMSDelegator.this.f.remove(runnable);
                    }
                    TPMSDelegator.this.b = null;
                    TPMSDelegator.this.a.unbindService(TPMSDelegator.this.g);
                }
            });
        }

        @Override
        public final void onServiceDisconnected(ComponentName componentName) {
            TPMSDelegator.this.b = null;
        }
    };

    final class AnonymousClass11 implements Runnable {
        final a a;

        public AnonymousClass11(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass13 implements Runnable {
        final int a;
        final String b;
        final String c;
        final a d;

        public AnonymousClass13(int i, String str, String str2, a aVar) {
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = aVar;
        }

        @Override
        public final void run() {
            try {
                TPMSDelegator.this.b.a(this.a, this.b, this.c, new com.hoffnung.a.a.AbstractBinderC0122a() {
                    @Override
                    public final void a() {
                        AnonymousClass13.this.d.onSuccess();
                    }

                    @Override
                    public final void a(int i) {
                        AnonymousClass13.this.d.a(i);
                    }

                    @Override
                    public final void a(List<String> list) {
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    final class AnonymousClass14 implements Runnable {
        final b a;

        public AnonymousClass14(b bVar) {
        }

        @Override
        public final void run() {
            throw null;
        }
    }

    final class AnonymousClass15 implements Runnable {
        final int a;
        final b b;

        public AnonymousClass15(int i, b bVar) {
            this.a = i;
        }

        @Override
        public final void run() {
            try {
                TPMSDelegator.this.b.a(TPMSDelegator.this.a.getPackageName(), this.a, new com.hoffnung.a.a.AbstractBinderC0122a() {
                    @Override
                    public final void a() {
                    }

                    @Override
                    public final void a(int i) {
                        AnonymousClass15.this.getClass();
                        throw null;
                    }

                    @Override
                    public final void a(List<String> list) {
                        AnonymousClass15.this.getClass();
                        throw null;
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    final class AnonymousClass16 implements Runnable {
        final a a;

        public AnonymousClass16(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass17 implements Runnable {
        final String a;
        final a b;

        public AnonymousClass17(String str, a aVar) {
            this.a = str;
            this.b = aVar;
        }

        @Override
        public final void run() {
            StringBuilder sb;
            int iA = -101;
            try {
                iA = TPMSDelegator.this.b.a(TPMSDelegator.this.a.getPackageName(), this.a);
            } catch (RemoteException e) {
                e = e;
                sb = new StringBuilder("RemoteException happend when subscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            } catch (Exception e2) {
                e = e2;
                sb = new StringBuilder("Exception happend when subscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            }
            a aVar = this.b;
            if (iA == 1) {
                aVar.onSuccess();
            } else {
                aVar.a(iA);
            }
        }
    }

    final class AnonymousClass18 implements Runnable {
        final a a;

        public AnonymousClass18(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass19 implements Runnable {
        final a a;

        public AnonymousClass19(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass2 implements Runnable {
        final a a;

        public AnonymousClass2(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass20 implements Runnable {
        final a a;

        public AnonymousClass20(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass21 implements Runnable {
        final a a;

        public AnonymousClass21(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass22 implements Runnable {
        final a a;

        public AnonymousClass22(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    final class AnonymousClass3 implements Runnable {
        final a a;

        public AnonymousClass3(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    public class AnonymousClass4 implements Runnable {
        final a a;

        public AnonymousClass4(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    public class AnonymousClass5 implements Runnable {
        final String a;
        final String b;
        final String c;
        final a d;

        public AnonymousClass5(String str, String str2, String str3, a aVar) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = aVar;
        }

        @Override
        public final void run() {
            StringBuilder sb;
            int iA = -101;
            try {
                iA = TPMSDelegator.this.b.a(this.a, this.b, this.c);
            } catch (RemoteException e) {
                e = e;
                sb = new StringBuilder("RemoteException happend when subscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            } catch (Exception e2) {
                e = e2;
                sb = new StringBuilder("Exception happend when subscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            }
            a aVar = this.d;
            if (iA == 1) {
                aVar.onSuccess();
            } else {
                aVar.a(iA);
            }
        }
    }

    public class AnonymousClass6 implements Runnable {
        final String a;
        final a b;

        public AnonymousClass6(String str, a aVar) {
            this.a = str;
            this.b = aVar;
        }

        @Override
        public final void run() {
            StringBuilder sb;
            int iA = -101;
            try {
                iA = TPMSDelegator.this.b.a(TPMSDelegator.this.a.getPackageName(), this.a);
            } catch (RemoteException e) {
                e = e;
                sb = new StringBuilder("RemoteException happend when subscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            } catch (Exception e2) {
                e = e2;
                sb = new StringBuilder("Exception happend when subscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            }
            a aVar = this.b;
            if (iA == 1) {
                aVar.onSuccess();
            } else {
                aVar.a(iA);
            }
        }
    }

    final class AnonymousClass7 implements Runnable {
        final String a;
        final a b;

        public AnonymousClass7(String str, a aVar) {
            this.a = str;
            this.b = aVar;
        }

        @Override
        public final void run() {
            StringBuilder sb;
            int iB = -101;
            try {
                iB = TPMSDelegator.this.b.b(TPMSDelegator.this.a.getPackageName(), this.a);
            } catch (RemoteException e) {
                e = e;
                sb = new StringBuilder("RemoteException happend when unsubscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            } catch (Exception e2) {
                e = e2;
                sb = new StringBuilder("Exception happend when unsubscribeEvent,");
                sb.append(e.getMessage());
                Log.i("TPMSDelegator", sb.toString());
            }
            a aVar = this.b;
            if (iB == 1) {
                aVar.onSuccess();
            } else {
                aVar.a(iB);
            }
        }
    }

    final class AnonymousClass8 implements Runnable {
        final a a;

        public AnonymousClass8(a aVar) {
            this.a = aVar;
        }

        @Override
        public final void run() {
            this.a.a(-4);
        }
    }

    public interface a {
        void a(int i);

        void onSuccess();
    }

    public interface b {
    }

    public TPMSDelegator(Context context) {
        this.a = context;
        Intent intent = new Intent();
        this.e = intent;
        intent.setClassName("com.hoffnung", "com.hoffnung.external.ExternalService");
        HandlerThread handlerThread = new HandlerThread("TPMSDelegator");
        this.d = handlerThread;
        handlerThread.start();
        this.c = new Handler(this.d.getLooper());
        this.f = new ArrayList();
        Log.i("TPMSDelegator", "TPMS SDK version = 1.0.3");
    }

    public static TPMSDelegator i() {
        return h;
    }

    public static void j(Context context) {
        h = new TPMSDelegator(context);
    }

    public final void c(final Runnable runnable) {
        this.c.post(new Runnable() {
            @Override
            public final void run() {
                TPMSDelegator.this.f.add(runnable);
                if (TPMSDelegator.this.b != null || TPMSDelegator.this.a.bindService(TPMSDelegator.this.e, TPMSDelegator.this.g, 1)) {
                    return;
                }
                while (TPMSDelegator.this.f.size() > 0) {
                    Runnable runnable2 = (Runnable) TPMSDelegator.this.f.get(0);
                    runnable2.run();
                    TPMSDelegator.this.f.remove(runnable2);
                }
            }
        });
    }

    public void k(final int i, final String str, final String str2, final a aVar) {
        if (i == 2 || i == 1 || i == 0) {
            c(new Runnable() {
                @Override
                public final void run() {
                    StringBuilder sb;
                    int iA = -101;
                    try {
                        iA = TPMSDelegator.this.b.a(i, str, str2);
                    } catch (RemoteException e) {
                        e = e;
                        sb = new StringBuilder("RemoteException happend when synchronizeSetting, ");
                        sb.append(e.getMessage());
                        Log.i("TPMSDelegator", sb.toString());
                    } catch (Exception e2) {
                        e = e2;
                        sb = new StringBuilder("Exception happend when synchronizeSetting, ");
                        sb.append(e.getMessage());
                        Log.i("TPMSDelegator", sb.toString());
                    }
                    a aVar2 = aVar;
                    if (iA == 1) {
                        aVar2.onSuccess();
                    } else {
                        aVar2.a(iA);
                    }
                }
            });
        } else {
            this.c.post(new Runnable() {
                @Override
                public final void run() {
                    aVar.a(-4);
                }
            });
        }
    }
}
