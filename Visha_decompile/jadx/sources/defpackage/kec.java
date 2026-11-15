package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.push.PushManager;
import com.transsion.push.TPushListener;
import com.transsion.push.bean.PushMessage;

public abstract class kec {

    public class a implements TPushListener {
        @Override
        public void onClickException(long j, String str) {
            Log.e("Visha_tpush", "onClickException msgId=" + j + " reason=" + str);
        }

        @Override
        public void onMessageReceive(long j, String str, int i) {
            Log.i("Visha_tpush", "onMessageReceive");
        }

        @Override
        public void onNotificationShow(long j, String str) {
            Log.i("Visha_tpush", "onNotificationShow");
        }

        @Override
        public void onPushReceive(long j, PushMessage pushMessage, int i) {
            Log.i("Visha_tpush", "onPushReceive");
        }

        @Override
        public void onSdkInitSuccess(String str, String str2) {
            Log.i("Visha_tpush", "onSdkInitSuccess");
        }
    }

    public static TPushListener b() {
        return new a();
    }

    public static void c(Context context) {
        final Context applicationContext = context.getApplicationContext();
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                kec.d(applicationContext);
            }
        });
    }

    public static void d(Context context) {
        try {
            lec lecVarC = lec.c(context);
            boolean zD = lecVarC.d();
            PushManager pushManager = PushManager.getInstance();
            pushManager.registerPushListener(b());
            Log.i("Visha_tpush", "listener registered");
            pushManager.init(context, lecVarC.a(), lecVarC.b(), zD);
            Log.i("Visha_tpush", "PushManager.init called, sdkInitFinished=" + pushManager.getIsSdkInitFinished());
        } catch (Throwable th) {
            Log.e("Visha_tpush", "init failed", th);
        }
    }
}
