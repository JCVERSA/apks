package defpackage;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public final class t9f extends aaf {
    public final Map c;
    public final Context d;

    public t9f(ejf ejfVar, Map map) {
        super(ejfVar, "storePicture");
        this.c = map;
        this.d = ejfVar.zzi();
    }

    public final void i() {
        Context context = this.d;
        if (context == null) {
            c("Activity context is not available");
            return;
        }
        zzv.zzq();
        if (!new hxe(context).c()) {
            c("Feature is not supported by the device.");
            return;
        }
        String str = (String) this.c.get("iurl");
        if (TextUtils.isEmpty(str)) {
            c("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            c("Invalid image url: ".concat(String.valueOf(str)));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        zzv.zzq();
        if (TextUtils.isEmpty(lastPathSegment) || !lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
            c("Image type not recognized: ".concat(String.valueOf(lastPathSegment)));
            return;
        }
        Resources resourcesF = zzv.zzp().f();
        zzv.zzq();
        AlertDialog.Builder builderZzL = zzs.zzL(context);
        builderZzL.setTitle(resourcesF != null ? resourcesF.getString(R.string.s1) : "Save image");
        builderZzL.setMessage(resourcesF != null ? resourcesF.getString(R.string.s2) : "Allow Ad to store image in Picture gallery?");
        builderZzL.setPositiveButton(resourcesF != null ? resourcesF.getString(R.string.s3) : "Accept", new r9f(this, str, lastPathSegment));
        builderZzL.setNegativeButton(resourcesF != null ? resourcesF.getString(R.string.s4) : "Decline", new s9f(this));
        builderZzL.create().show();
    }
}
