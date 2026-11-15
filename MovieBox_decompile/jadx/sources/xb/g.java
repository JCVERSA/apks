package xb;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import qb.j;

public class g {

    final String f75251a;

    private final File f75252b;

    private final File f75253c;

    private final File f75254d;

    private final File f75255e;

    private final File f75256f;

    private final File f75257g;

    public g(Context context) {
        String str;
        String strD = j.f69617a.e(context).d();
        this.f75251a = strD;
        File filesDir = context.getFilesDir();
        this.f75252b = filesDir;
        if (y()) {
            str = ".crashlytics.v3" + File.separator + x(strD);
        } else {
            str = ".com.google.firebase.crashlytics.files.v1";
        }
        File fileT = t(new File(filesDir, str));
        this.f75253c = fileT;
        this.f75254d = t(new File(fileT, "open-sessions"));
        this.f75255e = t(new File(fileT, "reports"));
        this.f75256f = t(new File(fileT, "priority-reports"));
        this.f75257g = t(new File(fileT, "native-reports"));
    }

    private void b(String str) {
        File file = new File(this.f75252b, str);
        if (file.exists() && v(file)) {
            qb.g.f().b("Deleted previous Crashlytics file system: " + file.getPath());
        }
    }

    private void c(final String str) {
        String[] list;
        if (!this.f75252b.exists() || (list = this.f75252b.list(new FilenameFilter() {
            @Override
            public final boolean accept(File file, String str2) {
                return g.s(str, file, str2);
            }
        })) == null) {
            return;
        }
        for (String str2 : list) {
            b(str2);
        }
    }

    private File p(String str) {
        return u(new File(this.f75254d, str));
    }

    public static boolean s(String str, File file, String str2) {
        return str2.startsWith(str);
    }

    private static synchronized File t(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return file;
                }
                qb.g.f().b("Unexpected non-directory file: " + file + "; deleting file and creating new directory.");
                file.delete();
            }
            if (!file.mkdirs()) {
                qb.g.f().d("Could not create Crashlytics-specific directory: " + file);
            }
            return file;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static File u(File file) {
        file.mkdirs();
        return file;
    }

    static boolean v(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                v(file2);
            }
        }
        return file.delete();
    }

    private static List w(Object[] objArr) {
        return objArr == null ? Collections.emptyList() : Arrays.asList(objArr);
    }

    static String x(String str) {
        return str.length() > 40 ? CommonUtils.z(str) : str.replaceAll("[^a-zA-Z0-9.]", "_");
    }

    private boolean y() {
        return !this.f75251a.isEmpty();
    }

    public void d() {
        b(".com.google.firebase.crashlytics");
        b(".com.google.firebase.crashlytics-ndk");
        if (y()) {
            b(".com.google.firebase.crashlytics.files.v1");
            c(".com.google.firebase.crashlytics.files.v2" + File.pathSeparator);
        }
    }

    public boolean e(String str) {
        return v(new File(this.f75254d, str));
    }

    public List f() {
        return w(this.f75254d.list());
    }

    public File g(String str) {
        return new File(this.f75253c, str);
    }

    public List h(FilenameFilter filenameFilter) {
        return w(this.f75253c.listFiles(filenameFilter));
    }

    public File i(String str) {
        return new File(this.f75257g, str);
    }

    public List j() {
        return w(this.f75257g.listFiles());
    }

    public File k(String str) {
        return u(new File(p(str), "native"));
    }

    public File l(String str) {
        return new File(this.f75256f, str);
    }

    public List m() {
        return w(this.f75256f.listFiles());
    }

    public File n(String str) {
        return new File(this.f75255e, str);
    }

    public List o() {
        return w(this.f75255e.listFiles());
    }

    public File q(String str, String str2) {
        return new File(p(str), str2);
    }

    public List r(String str, FilenameFilter filenameFilter) {
        return w(p(str).listFiles(filenameFilter));
    }
}
