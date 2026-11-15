package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

public abstract class sl7 {
    public static void a(Context context, Bundle bundle, boolean z) {
        Intent intent = new Intent("intent.action.PALM_ID_CHANGE");
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("is_local", z);
        if (z) {
            LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
        } else {
            context.sendBroadcast(intent);
        }
    }
}
