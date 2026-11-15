package defpackage;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.webkit.internal.AssetHelper;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public final class n4f implements n3f {
    public final Context a;

    public n4f(Context context) {
        this.a = context;
    }

    @Override
    public final void a(Object obj, Map map) {
        if (!map.containsKey("text") || TextUtils.isEmpty((CharSequence) map.get("text"))) {
            return;
        }
        zze.zza("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get("text"))));
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", (String) map.get("text"));
        if (map.containsKey("title")) {
            intent.putExtra("android.intent.extra.TITLE", (String) map.get("title"));
        }
        try {
            zzv.zzq();
            zzs.zzU(this.a, intent);
        } catch (RuntimeException e) {
            zzo.zzk("Failed to open Share Sheet", e);
            zzv.zzp().x(e, "ShareSheetGmsgHandler.onGmsg");
        }
    }
}
