package defpackage;

import android.util.Log;
import java.io.File;

public class yn8 extends hw2 {
    public File b;

    public yn8(hw2 hw2Var, File file) {
        super(hw2Var);
        this.b = file;
    }

    public static boolean f(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zF = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zF &= f(file2);
                }
                if (!file2.delete()) {
                    Log.w("DocumentFile", "Failed to delete " + file2);
                    zF = false;
                }
            }
        }
        return zF;
    }

    @Override
    public boolean a() {
        return this.b.canWrite();
    }

    @Override
    public boolean b() {
        f(this.b);
        return this.b.delete();
    }

    @Override
    public boolean c() {
        return this.b.exists();
    }

    @Override
    public boolean e(String str) {
        File file = new File(this.b.getParentFile(), str);
        if (!this.b.renameTo(file)) {
            return false;
        }
        this.b = file;
        return true;
    }
}
