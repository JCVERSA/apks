package com.transsion.push.utils;

import android.text.TextUtils;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.transsion.push.PushConstants;
import com.transsion.push.config.PushRepository;

public final class FirebaseUtils {

    class a implements OnCompleteListener {
        a() {
        }

        @Override
        public void onComplete(Task task) {
            if (task.isSuccessful()) {
                String str = (String) task.getResult();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                PushUtils.B(str);
            }
        }
    }

    public interface b {
        void onFail();

        void onSuccess();
    }

    public static boolean b() {
        try {
            int i10 = com.google.firebase.f.f31020m;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void c() {
        if (!b()) {
            PushLogUtils.LOG.g("firebase not integrated");
            return;
        }
        try {
            FirebaseMessaging.p().s().addOnCompleteListener(new a());
        } catch (Exception e10) {
            PushLogUtils.LOG.i("updateToken fail" + e10);
        }
    }

    public static void d(final b bVar) {
        ThreadManager.executeInBackground(new Runnable() {

            class a implements OnCompleteListener {
                a() {
                }

                @Override
                public void onComplete(Task task) {
                    if (task.isSuccessful()) {
                        String str = (String) task.getResult();
                        if (TextUtils.isEmpty(str)) {
                            PushLogUtils.LOG.g("firebase  token is empty");
                            b bVar = bVar;
                            if (bVar != null) {
                                bVar.onFail();
                                return;
                            }
                            return;
                        }
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_FCM_TOKEN, str);
                        b bVar2 = bVar;
                        if (bVar2 != null) {
                            bVar2.onSuccess();
                        }
                    }
                }
            }

            @Override
            public void run() {
                if (!FirebaseUtils.b()) {
                    PushLogUtils.LOG.g("firebase  is not integrated");
                    return;
                }
                try {
                    FirebaseMessaging.p().s().addOnCompleteListener(new a());
                } catch (Exception e10) {
                    PushLogUtils.LOG.i(e10);
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onFail();
                    }
                }
            }
        });
    }
}
