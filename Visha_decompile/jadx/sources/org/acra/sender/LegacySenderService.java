package org.acra.sender;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c;
import defpackage.jc9;
import defpackage.ov4;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;
import org.acra.sender.LegacySenderService;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lorg/acra/sender/LegacySenderService;", "Landroid/app/Service;", MethodDecl.initName, "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "b", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LegacySenderService extends Service {
    public static final void b(LegacySenderService legacySenderService, CoreConfiguration coreConfiguration, Intent intent) {
        y45.j(legacySenderService, "this$0");
        y45.j(intent, "$intent");
        jc9 jc9Var = new jc9(legacySenderService, coreConfiguration);
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        jc9Var.c(false, extras);
        legacySenderService.stopSelf();
    }

    @Override
    public IBinder onBind(Intent intent) {
        y45.j(intent, "intent");
        return null;
    }

    @Override
    public int onStartCommand(final Intent intent, int flags, int startId) {
        y45.j(intent, "intent");
        if (!intent.hasExtra("acraConfig")) {
            if (!c.b) {
                return 3;
            }
            c.d.d(c.c, "SenderService was started but no valid intent was delivered, will now quit");
            return 3;
        }
        final CoreConfiguration coreConfiguration = (CoreConfiguration) ov4.a.b(CoreConfiguration.class, intent.getStringExtra("acraConfig"));
        if (coreConfiguration == null) {
            return 3;
        }
        new Thread(new Runnable() {
            @Override
            public final void run() {
                LegacySenderService.b(this.b, coreConfiguration, intent);
            }
        }).start();
        return 3;
    }
}
