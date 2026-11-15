package defpackage;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;

public abstract class s1e implements DialogInterface.OnClickListener {
    public static s1e b(Activity activity, Intent intent, int i) {
        return new z0e(intent, activity, i);
    }

    public static s1e c(vk5 vk5Var, Intent intent, int i) {
        return new m1e(intent, vk5Var, 2);
    }

    public abstract void a();

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                a();
            } catch (ActivityNotFoundException e) {
                Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }
}
