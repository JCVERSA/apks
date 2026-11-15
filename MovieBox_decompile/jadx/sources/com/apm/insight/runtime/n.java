package com.apm.insight.runtime;

import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.json.JSONArray;

public final class n {

    private static File f19211a;

    public static class a {

        public String f19212a;

        private String f19213b;

        private long f19214c;

        a(String str) {
            String[] strArrSplit = str.split("\\s+");
            if (strArrSplit.length != 3) {
                com.apm.insight.c.a();
                j.a(new RuntimeException("err ProcessTrack line:".concat(str)), "NPTH_CATCH");
                return;
            }
            this.f19213b = strArrSplit[0];
            this.f19212a = strArrSplit[1];
            try {
                this.f19214c = Long.parseLong(strArrSplit[2]);
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(new RuntimeException("err ProcessTrack line:".concat(str), th2), "NPTH_CATCH");
            }
        }
    }

    public static File a(long j10) {
        return new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/ProcessTrack/" + ((j10 - (j10 % 86400000)) / 86400000));
    }

    @NonNull
    public static HashMap<String, a> a(long j10, String str) throws Throwable {
        File file = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/ProcessTrack/" + ((j10 - (j10 % 86400000)) / 86400000));
        String[] list = file.list();
        HashMap<String, a> map = new HashMap<>();
        if (list != null) {
            for (String str2 : list) {
                File file2 = new File(file, str2);
                long length = file2.length();
                try {
                    JSONArray jSONArrayA = com.apm.insight.l.f.a(file2, length > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED ? length - PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED : 0L);
                    for (int length2 = jSONArrayA.length() - 1; length2 >= 0; length2--) {
                        String strOptString = jSONArrayA.optString(length2);
                        if (!TextUtils.isEmpty(strOptString) && strOptString.startsWith(str)) {
                            map.put(str2.replace('_', ':').replace(".txt", ""), new a(strOptString));
                            break;
                        }
                    }
                } catch (IOException unused) {
                }
            }
        }
        return map;
    }

    public static void a(String str, String str2) {
        File file;
        try {
            if (f19211a == null) {
                com.apm.insight.e.g();
                String strB = com.apm.insight.l.a.b();
                if (strB == null) {
                    file = null;
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    f19211a = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/ProcessTrack/" + ((jCurrentTimeMillis - (jCurrentTimeMillis % 86400000)) / 86400000) + '/' + strB.replace(':', '_') + ".txt");
                    file = f19211a;
                }
            } else {
                file = f19211a;
            }
            if (file != null) {
                com.apm.insight.l.f.a(file, str + ' ' + str2 + ' ' + System.currentTimeMillis() + '\n', true);
            }
        } catch (Throwable unused) {
        }
    }
}
