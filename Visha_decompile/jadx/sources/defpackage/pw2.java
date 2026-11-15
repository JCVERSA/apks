package defpackage;

import android.content.Context;
import android.util.Log;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.hubsdk.api.media.TranAudioManager;

public abstract class pw2 {
    public static a a = null;
    public static ow2 b = null;
    public static boolean c = false;
    public static MutableLiveData d = new MutableLiveData();

    public static class a {
        public TranAudioManager a = new TranAudioManager();

        public a(Context context) {
        }

        public boolean a() {
            try {
                return this.a.getDsOn();
            } catch (Throwable th) {
                Log.e("EqVideoSetting", "getDsOn failed", th);
                return false;
            }
        }

        public void b(int i) {
            this.a.setDialogEnhancerAmount(i);
        }

        public void c(boolean z) {
            this.a.setDialogEnhancerEnabled(z);
        }
    }

    public static void a() {
        a aVar = a;
        if (aVar == null) {
            return;
        }
        try {
            aVar.c(false);
            a.b(0);
        } catch (Throwable th) {
            Log.e("EqVideoSetting", "end failed", th);
        }
    }

    public static ow2 b() {
        if (b == null) {
            ow2 ow2VarA = ow2.a();
            b = ow2VarA;
            if (ow2VarA == null) {
                b = new ow2();
                Log.e("EqVideoSetting", "getValues NULL");
            }
        }
        return b;
    }

    public static void c(Context context) {
        if (pp3.u) {
            try {
                b = b();
                a aVar = new a(context);
                a = aVar;
                boolean zA = aVar.a();
                c = zA;
                d.postValue(Boolean.valueOf(zA));
                if (c) {
                    d(b.a);
                }
            } catch (Exception e) {
                Log.e("EqVideoSetting", "EqSetting exception " + e);
            }
        }
    }

    public static void d(int i) {
        try {
            a.c(true);
            a.b(i);
            b.a = i;
        } catch (Exception e) {
            Log.i("EqVideoSetting", "set eq setBandLevel Exception:" + e.getMessage());
        }
    }

    public static void e() {
        a aVar = a;
        if (aVar == null) {
            return;
        }
        try {
            boolean zA = aVar.a();
            c = zA;
            if (zA) {
                d(b().a);
            }
        } catch (Throwable th) {
            Log.e("EqVideoSetting", "start getDsOn failed", th);
            c = false;
        }
    }
}
