package qb;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;

public class f {

    private final Context f69609a;

    private b f69610b = null;

    private class b {

        private final String f69611a;

        private final String f69612b;

        private b() {
            int iP = CommonUtils.p(f.this.f69609a, "com.google.firebase.crashlytics.unity_version", "string");
            if (iP == 0) {
                if (!f.this.c("flutter_assets/NOTICES.Z")) {
                    this.f69611a = null;
                    this.f69612b = null;
                    return;
                } else {
                    this.f69611a = "Flutter";
                    this.f69612b = null;
                    g.f().i("Development platform is: Flutter");
                    return;
                }
            }
            this.f69611a = "Unity";
            String string = f.this.f69609a.getResources().getString(iP);
            this.f69612b = string;
            g.f().i("Unity Editor version is: " + string);
        }
    }

    public f(Context context) {
        this.f69609a = context;
    }

    public boolean c(String str) {
        if (this.f69609a.getAssets() == null) {
            return false;
        }
        try {
            InputStream inputStreamOpen = this.f69609a.getAssets().open(str);
            if (inputStreamOpen == null) {
                return true;
            }
            inputStreamOpen.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private b f() {
        if (this.f69610b == null) {
            this.f69610b = new b();
        }
        return this.f69610b;
    }

    public static boolean g(Context context) {
        return CommonUtils.p(context, "com.google.firebase.crashlytics.unity_version", "string") != 0;
    }

    public String d() {
        return f().f69611a;
    }

    public String e() {
        return f().f69612b;
    }
}
