package ui;

import android.os.Environment;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.mb.config.manager.ConfigBean;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

public final class b {

    public static final a f73084a = new a(null);

    private static final String f73085b;

    private static final String f73086c;

    private static final String f73087d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return b.f73087d;
        }

        public final String b() {
            return b.f73085b;
        }

        public final File c() {
            File externalFilesDir = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            return externalFilesDir == null ? Utils.a().getFilesDir() : externalFilesDir;
        }

        public final int d() {
            Integer numV;
            ConfigBean configBeanC = cm.f.f17019c.a().c("download_buffer_size", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value == null || value.length() == 0 || (numV = StringsKt.v(value)) == null) {
                return 8192;
            }
            return numV.intValue();
        }

        public final String e() {
            File externalFilesDir = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            if (externalFilesDir == null && (externalFilesDir = Utils.a().getFilesDir()) == null) {
                externalFilesDir = Utils.a().getCacheDir();
            }
            return externalFilesDir.getAbsolutePath() + File.separatorChar + DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D;
        }

        public final String f() {
            return b.f73086c;
        }

        private a() {
        }
    }

    static {
        String str = Environment.DIRECTORY_DCIM;
        String str2 = File.separator;
        f73085b = str + str2 + "MovieBox";
        f73086c = Environment.DIRECTORY_DOWNLOADS + str2 + "MovieBox";
        f73087d = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separatorChar + Environment.DIRECTORY_DCIM + str2 + "MovieBox";
    }
}
