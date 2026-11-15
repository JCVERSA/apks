package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.io.File;

public final class d45 {
    public static final d45 a = new d45();

    public static final void e(String str, String str2, AdsDTO adsDTO, final h24 h24Var) {
        File[] fileArrListFiles;
        y45.j(str, "$zipPath");
        y45.j(str2, "$outPutPath");
        String str3 = yu3.b(ul4.a()) + File.separator + "interactive_zip";
        if (!TextUtils.isEmpty(str3)) {
            File file = new File(str3);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length >= 50) {
                int length = fileArrListFiles.length - 25;
                for (int i = 0; i < length; i++) {
                    File file2 = fileArrListFiles[i];
                    if (file2 != null) {
                        yu3.a(file2);
                    }
                }
            }
        }
        if (wzc.b(str, str2)) {
            adsDTO.setIndexLocation(yu3.g(str2));
            Preconditions.d(new Preconditions.a() {
                @Override
                public final void onRun() {
                    d45.f(h24Var);
                }
            });
        } else {
            AthenaTracker.X(adsDTO, 2);
            Preconditions.d(new Preconditions.a() {
                @Override
                public final void onRun() {
                    d45.g(h24Var);
                }
            });
        }
    }

    public static final void f(h24 h24Var) {
        h24Var.a(true);
    }

    public static final void g(h24 h24Var) {
        h24Var.a(false);
    }

    public final void d(final AdsDTO adsDTO, final String str, final String str2, final h24 h24Var) {
        if (h24Var == null || adsDTO == null) {
            return;
        }
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                d45.e(str, str2, adsDTO, h24Var);
            }
        });
    }

    public final void h(AdsDTO adsDTO, String str, h24 h24Var) {
        y45.j(str, "zipPath");
        y45.j(h24Var, "listener");
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append(yu3.b(ul4.a()));
        String str2 = File.separator;
        sb.append(str2);
        sb.append("interactive_zip");
        sb.append(str2);
        sb.append(jCurrentTimeMillis);
        String string = sb.toString();
        if (new File(string).exists()) {
            if (!TextUtils.isEmpty(adsDTO != null ? adsDTO.getIndexLocation() : null)) {
                h24Var.a(true);
                return;
            }
        }
        d(adsDTO, str, string, h24Var);
    }
}
