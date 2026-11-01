package a0;

import java.io.File;

public final class g0 extends w0.c {

    public final String f45e;

    public final int f46f;

    public g0(int i2, String str) {
        this.f45e = str;
        this.f46f = i2;
    }

    @Override
    public final w0.a.b f() {
        String str = this.f45e;
        int i2 = this.f46f;
        if (i2 != 0) {
            if (i2 != 1) {
                return null;
            }
            new File(str).setLastModified(System.currentTimeMillis());
            return null;
        }
        File file = new File(str + ".hash");
        if (!file.exists() || !file.delete()) {
            return null;
        }
        File file2 = new File(str);
        if (file2.delete()) {
            return null;
        }
        file2.getAbsolutePath();
        return null;
    }

    @Override
    public final int j() {
        return 1002;
    }
}
