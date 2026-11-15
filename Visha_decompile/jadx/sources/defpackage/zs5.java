package defpackage;

import android.os.Build;
import com.airbnb.lottie.LottieFeatureFlag;
import java.util.HashSet;

public class zs5 {
    public final HashSet a = new HashSet();

    public boolean a(LottieFeatureFlag lottieFeatureFlag, boolean z) {
        if (!z) {
            return this.a.remove(lottieFeatureFlag);
        }
        if (Build.VERSION.SDK_INT >= lottieFeatureFlag.minRequiredSdkVersion) {
            return this.a.add(lottieFeatureFlag);
        }
        mq5.c(String.format("%s is not supported pre SDK %d", lottieFeatureFlag.name(), Integer.valueOf(lottieFeatureFlag.minRequiredSdkVersion)));
        return false;
    }

    public boolean b(LottieFeatureFlag lottieFeatureFlag) {
        return this.a.contains(lottieFeatureFlag);
    }
}
