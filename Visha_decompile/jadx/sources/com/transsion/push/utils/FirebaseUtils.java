package com.transsion.push.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.firebase.messaging.FirebaseMessaging;
import com.transsion.push.PushConstants;
import com.transsion.push.config.PushRepository;
import defpackage.pe7;
import defpackage.xda;
import defpackage.zv3;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class FirebaseUtils {
    public static final Handler a = new Handler(Looper.getMainLooper());
    public static final AtomicBoolean b = new AtomicBoolean(false);

    public interface a {
        void a();

        void onSuccess();
    }

    public static void d(final int i) {
        f(new Runnable() {

            public class a implements pe7 {
                public a() {
                }

                @Override
                public void onComplete(xda xdaVar) {
                    String str = xdaVar.q() ? (String) xdaVar.m() : null;
                    if (TextUtils.isEmpty(str)) {
                        FirebaseUtils.g(i);
                    } else {
                        FirebaseUtils.b.set(false);
                        PushUtils.D(str);
                    }
                }
            }

            @Override
            public void run() {
                try {
                    FirebaseMessaging.n().q().b(new a());
                } catch (Exception e) {
                    PushLogUtils.LOG.i("updateToken fail" + e);
                    FirebaseUtils.g(i);
                }
            }
        });
    }

    public static boolean e() {
        try {
            Object obj = zv3.k;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void f(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            a.post(runnable);
        }
    }

    public static void g(int i) {
        if (i >= 3) {
            PushLogUtils.LOG.i("updateToken retry exhausted after " + i + " retries");
            b.set(false);
            return;
        }
        final int i2 = i + 1;
        PushLogUtils.LOG.g("updateToken retry " + i2 + "/3");
        a.postDelayed(new Runnable() {
            @Override
            public void run() {
                FirebaseUtils.d(i2);
            }
        }, 30000L);
    }

    public static void h() {
        if (!e()) {
            PushLogUtils.LOG.g("firebase not integrated");
        } else if (b.compareAndSet(false, true)) {
            d(0);
        } else {
            PushLogUtils.LOG.g("updateToken already in progress, skip");
        }
    }

    public static void i(final a aVar) {
        if (e()) {
            f(new Runnable() {

                public class a implements pe7 {
                    public a() {
                    }

                    @Override
                    public void onComplete(xda xdaVar) {
                        if (!xdaVar.q()) {
                            a aVar = aVar;
                            if (aVar != null) {
                                aVar.a();
                                return;
                            }
                            return;
                        }
                        String str = (String) xdaVar.m();
                        if (TextUtils.isEmpty(str)) {
                            PushLogUtils.LOG.g("firebase  token is empty");
                            a aVar2 = aVar;
                            if (aVar2 != null) {
                                aVar2.a();
                                return;
                            }
                            return;
                        }
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_FCM_TOKEN, str);
                        a aVar3 = aVar;
                        if (aVar3 != null) {
                            aVar3.onSuccess();
                        }
                    }
                }

                @Override
                public void run() {
                    try {
                        FirebaseMessaging.n().q().b(new a());
                    } catch (Exception e) {
                        PushLogUtils.LOG.i(e);
                        a aVar2 = aVar;
                        if (aVar2 != null) {
                            aVar2.a();
                        }
                    }
                }
            });
            return;
        }
        PushLogUtils.LOG.g("firebase  is not integrated");
        if (aVar != null) {
            aVar.a();
        }
    }
}
