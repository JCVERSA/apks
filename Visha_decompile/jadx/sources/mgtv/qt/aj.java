package mgtv.qt;

import android.app.Application;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.m4d;
import defpackage.sjd;
import defpackage.y4d;
import java.io.File;
import org.json.JSONObject;

final class aj implements Runnable {
    private Application a;

    public aj(Application application) {
        this.a = application;
    }

    @Override
    public final void run() {
        JSONObject jSONObjectT;
        Application application = this.a;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(application.getFilesDir().getAbsolutePath());
            String str = File.separator;
            sb.append(str);
            sb.append(".qmt");
            sb.append(str);
            sb.append("config");
            sb.append(str);
            String str2 = sb.toString() + "config";
            File file = new File(str2);
            File file2 = new File(str2 + ".gz");
            if (!file.exists() || !file.isFile()) {
                sjd.c(application, "cfgver", "");
                e.h(application, file2);
            } else if (Math.abs((System.currentTimeMillis() / 1000) - (file.lastModified() / 1000)) > m4d.a.optInt("cfgitl", 28800)) {
                e.h(application, file2);
            }
            if (!file.exists() || file.isDirectory()) {
                return;
            }
            try {
                String strTrim = i.e(file).trim();
                if (y4d.i(strTrim) || (jSONObjectT = y4d.t(strTrim)) == null) {
                    return;
                }
                String strOptString = jSONObjectT.optString("version", "");
                m4d.b = strOptString;
                sjd.c(application, "cfgver", strOptString);
                JSONObject jSONObjectOptJSONObject = jSONObjectT.optJSONObject(TtmlNode.RUBY_BASE);
                if (jSONObjectOptJSONObject != null) {
                    m4d.a = jSONObjectOptJSONObject;
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
            th.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
