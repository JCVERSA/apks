package mgtv.qt;

import android.content.Context;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import defpackage.hld;
import defpackage.q6d;
import defpackage.y4d;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import org.json.JSONObject;

final class g implements Runnable {
    private Context a;
    private String b;
    private String c;
    private String d;
    private JSONObject e = null;
    private String f;

    public g(Context context, String str, String str2, String str3, String str4) {
        this.a = context;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.f = str4;
    }

    @Override
    public final void run() {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(y4d.p(this.a));
            arrayList.add(this.b);
            arrayList.add(this.c);
            if (y4d.i(this.d)) {
                arrayList.add("1");
            } else {
                arrayList.add(this.d);
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("nt", hld.k(this.a));
            jSONObject.put(CommonUrlParts.HUAWEI_OAID, hld.n(this.a));
            jSONObject.put(CmcdConfiguration.KEY_CONTENT_ID, c.h);
            String strR = y4d.r();
            String packageName = this.a.getPackageName();
            if (y4d.i(strR)) {
                strR = packageName;
            }
            jSONObject.put("akey", strR);
            arrayList.add(jSONObject.toString());
            arrayList.add("20250401");
            arrayList.add(String.valueOf(System.currentTimeMillis() / 1000));
            arrayList.add(this.f);
            arrayList.add(Build.BRAND);
            arrayList.add(Build.MODEL);
            arrayList.add(Build.VERSION.RELEASE);
            e.k(this.a, y4d.x(ExifInterface.LONGITUDE_EAST), arrayList);
            c.f("Save Event Success: " + strR + " " + this.b + " " + this.c);
            new q6d(this.a);
            q6d.b(this.a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
