package com.avery.subtitle;

import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.just.agentweb.DefaultWebClient;
import defpackage.e44;
import defpackage.gf;
import defpackage.p44;
import defpackage.q44;
import defpackage.zna;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URL;

public abstract class SubtitleLoader {
    public static LocalTask a;

    public static class LocalTask implements Runnable {
        a mCallback;
        String mPath;

        public LocalTask(String str, a aVar) {
            this.mPath = str;
            this.mCallback = aVar;
        }

        @Override
        public void run() {
            try {
                final zna znaVarD = SubtitleLoader.d(this.mPath);
                if (this.mCallback != null) {
                    gf.h().execute(new Runnable() {
                        @Override
                        public void run() {
                            LocalTask.this.mCallback.b(znaVarD);
                        }
                    });
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (this.mCallback != null) {
                    gf.h().execute(new Runnable() {
                        @Override
                        public void run() {
                            LocalTask.this.mCallback.a(e);
                        }
                    });
                }
            }
        }
    }

    public interface a {
        void a(Exception exc);

        void b(zna znaVar);
    }

    public static zna c(InputStream inputStream, String str) {
        String strSubstring = str.substring(str.lastIndexOf("/") + 1);
        String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(Consts.DOT));
        Log.d("SubtitleLoader", "parse: name = " + strSubstring + ", ext = " + strSubstring2);
        if (".srt".equalsIgnoreCase(strSubstring2)) {
            return new p44().a(str, inputStream);
        }
        if (".ass".equalsIgnoreCase(strSubstring2)) {
            return new e44().b(strSubstring, inputStream);
        }
        if (!".stl".equalsIgnoreCase(strSubstring2) && !".ttml".equalsIgnoreCase(strSubstring2)) {
            return new p44().a(strSubstring, inputStream);
        }
        return new q44().b(strSubstring, inputStream);
    }

    public static zna d(String str) {
        Log.d("SubtitleLoader", "parseLocal: localSubtitlePath = " + str);
        File file = new File(str);
        return c(new FileInputStream(file), file.getPath());
    }

    public static void e(String str, a aVar) {
        if (a != null) {
            gf.g().e(a);
            a = null;
        }
        a = new LocalTask(str, aVar);
        gf.f().execute(a);
    }

    public static zna f(String str) {
        Log.d("SubtitleLoader", "parseRemote: remoteSubtitlePath = " + str);
        URL url = new URL(str);
        return c(url.openStream(), url.getPath());
    }

    public static void g(final String str, final a aVar) {
        gf.f().execute(new Runnable() {
            @Override
            public void run() {
                try {
                    final zna znaVarF = SubtitleLoader.f(str);
                    if (aVar != null) {
                        gf.h().execute(new Runnable() {
                            @Override
                            public void run() {
                                aVar.b(znaVarF);
                            }
                        });
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (aVar != null) {
                        gf.h().execute(new Runnable() {
                            @Override
                            public void run() {
                                aVar.a(e);
                            }
                        });
                    }
                }
            }
        });
    }

    public static void h(String str, a aVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.startsWith(DefaultWebClient.HTTP_SCHEME) || str.startsWith("https://")) {
            g(str, aVar);
        } else {
            e(str, aVar);
        }
    }
}
