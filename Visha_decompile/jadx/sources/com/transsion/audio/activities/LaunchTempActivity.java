package com.transsion.audio.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import com.transsion.audio.activities.LaunchTempActivity;
import com.transsion.audio.utils.FindNewAudioNotificationHelper;
import com.transsion.playercommon.router.RouterUtils;
import defpackage.h27;
import defpackage.o18;
import defpackage.t08;
import defpackage.t81;
import java.lang.ref.WeakReference;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \t2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/transsion/audio/activities/LaunchTempActivity;", "Landroidx/appcompat/app/AppCompatActivity;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "N", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LaunchTempActivity extends AppCompatActivity {
    public static final String O = LaunchTempActivity.class.getSimpleName();

    public static final void u(Boolean bool) {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        Activity activity;
        super.onCreate(savedInstanceState);
        t81.a(this);
        Intent intent = getIntent();
        if (intent != null) {
            int intExtra = intent.getIntExtra("requestCode", -1);
            if (intExtra == 30002) {
                int intExtra2 = intent.getIntExtra("type", 0);
                Log.i(O, "clickNotification, type: " + intExtra2);
                h27.c().e(1148, new Object[0]);
                FindNewAudioNotificationHelper.l(intExtra2);
            } else if (intExtra == 30003) {
                ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() {
                    @Override
                    public final void onActivityResult(Object obj) {
                        LaunchTempActivity.u((Boolean) obj);
                    }
                });
                if (Build.VERSION.SDK_INT >= 33) {
                    if (t08.i(this)) {
                        Log.v(O, "has NotificationPermission");
                    } else {
                        Log.v(O, "not NotificationPermission, request permission");
                        activityResultLauncherRegisterForActivityResult.launch("android.permission.POST_NOTIFICATIONS");
                    }
                }
            } else if (intExtra == 30005) {
                WeakReference weakReference = o18.f;
                if (weakReference != null && (activity = (Activity) weakReference.get()) != null) {
                    activity.finish();
                }
                Intent intent2 = new Intent("com.transsion.magicmovie.video_player_main_activity");
                intent2.setPackage(getPackageName());
                intent2.putExtra("duplicate", false);
                intent2.putExtra(RouterUtils.FROM_ROUTER, true);
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putInt(RouterUtils.ROUTER_DATA_BOTTOM_POSITION, 1);
                persistableBundle.putInt(RouterUtils.ROUTER_DATA_TOP_POSITION, 0);
                intent2.putExtra(RouterUtils.ROUTER_DATA, persistableBundle);
                startActivity(intent2);
            }
        }
        finish();
    }
}
