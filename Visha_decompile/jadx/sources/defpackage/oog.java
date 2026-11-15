package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.util.Base64;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.io.ByteArrayOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public final class oog {
    public final Context a;
    public final ApplicationInfo b;
    public String e = "";
    public final int c = ((Integer) zzbd.zzc().b(cye.m9)).intValue();
    public final int d = ((Integer) zzbd.zzc().b(cye.n9)).intValue();

    public oog(Context context) {
        this.a = context;
        this.b = context.getApplicationInfo();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final JSONObject a() throws JSONException {
        String strZzq;
        String strEncodeToString;
        JSONObject jSONObject = new JSONObject();
        try {
            Context context = this.a;
            String str = this.b.packageName;
            pzh pzhVar = zzs.zza;
            jSONObject.put("name", mpc.a(context).d(str));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put("packageName", this.b.packageName);
        zzv.zzq();
        Drawable drawable = null;
        try {
            strZzq = zzs.zzq(this.a);
        } catch (RemoteException unused2) {
            strZzq = null;
        }
        jSONObject.put("adMobAppId", strZzq);
        if (this.e.isEmpty()) {
            try {
                drawable = (Drawable) mpc.a(this.a).e(this.b.packageName).second;
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            if (drawable == null) {
                strEncodeToString = "";
            } else {
                int i = this.c;
                int i2 = this.d;
                drawable.setBounds(0, 0, i, i2);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(bitmapCreateBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.e = strEncodeToString;
        }
        if (!this.e.isEmpty()) {
            jSONObject.put("icon", this.e);
            jSONObject.put("iconWidthPx", this.c);
            jSONObject.put("iconHeightPx", this.d);
        }
        return jSONObject;
    }
}
