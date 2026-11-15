package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import java.util.concurrent.Executor;

public class sv3 {
    public BiometricPrompt a;
    public BiometricPrompt.PromptInfo b;
    public final Executor c;
    public final b d;
    public final int e;
    public final int f;

    public class a extends BiometricPrompt.AuthenticationCallback {
        public a() {
        }

        @Override
        public void onAuthenticationError(int i, CharSequence charSequence) {
            super.onAuthenticationError(i, charSequence);
            sv3.this.d.d(sv3.this.e, sv3.this.f);
        }

        @Override
        public void onAuthenticationFailed() {
            super.onAuthenticationFailed();
            sv3.this.d.b(sv3.this.e, sv3.this.f);
        }

        @Override
        public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
            super.onAuthenticationSucceeded(authenticationResult);
            sv3.this.d.c(sv3.this.e, sv3.this.f);
        }
    }

    public interface b {
        void a(int i, int i2);

        void b(int i, int i2);

        void c(int i, int i2);

        void d(int i, int i2);
    }

    public sv3(Context context, b bVar, int i, int i2) {
        this.d = bVar;
        this.e = i;
        this.f = i2;
        this.c = ContextCompat.getMainExecutor(context);
    }

    public static void d(Context context) {
        if (context == null) {
            return;
        }
        boolean zE = e(context);
        boolean z = zE && uv3.c(context);
        Log.d("FigerprintNewUtils", "isDeviceSecure:" + zE + ", isEnabled:" + z);
        uv3.h(context, "fingerprintEnabled", z);
    }

    public static boolean e(Context context) {
        return BiometricManager.from(context).canAuthenticate(255) == 0;
    }

    public static String f(Context context) {
        int iCanAuthenticate = BiometricManager.from(context).canAuthenticate();
        if (iCanAuthenticate == 0) {
            Log.i("isDeviceSecureString", "此设备录入指纹");
            return "此设备录入指纹";
        }
        if (iCanAuthenticate == 1) {
            Log.i("isDeviceSecureString", "生物识别硬件当前不可用");
            return "生物识别硬件当前不可用";
        }
        if (iCanAuthenticate == 11) {
            Log.i("isDeviceSecureString", "你还没有设置任何生物识别特征");
            return "你还没有设置任何生物识别特征";
        }
        if (iCanAuthenticate != 12) {
            Log.i("isDeviceSecureString", "无法使用生物识别");
            return "无法使用生物识别";
        }
        Log.i("isDeviceSecureString", "此设备不支持生物识别");
        return "此设备不支持生物识别";
    }

    public void g(Context context, int i, int i2, int i3) {
        Resources resources = context.getResources();
        String string = resources.getString(i);
        String string2 = resources.getString(i2);
        String string3 = i3 == 0 ? " " : resources.getString(i3);
        if (!e(context)) {
            f(context);
            this.d.a(this.e, this.f);
            return;
        }
        f(context);
        this.a = new BiometricPrompt((FragmentActivity) context, this.c, new a());
        BiometricPrompt.PromptInfo promptInfoBuild = new BiometricPrompt.PromptInfo.Builder().setTitle(string).setDescription(string2).setNegativeButtonText(string3).build();
        this.b = promptInfoBuild;
        this.a.authenticate(promptInfoBuild);
    }
}
