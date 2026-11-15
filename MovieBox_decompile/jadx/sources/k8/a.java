package k8;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;

public class a extends b {

    private String f63802a;

    private File f63803b;

    private BufferedWriter f63804c;

    @Override
    public void a(String str) {
        try {
            this.f63804c.write(str);
            this.f63804c.newLine();
            this.f63804c.flush();
        } catch (Exception e10) {
            d8.b.e().g("append log failed: " + e10.getMessage());
        }
    }

    @Override
    public boolean b() {
        BufferedWriter bufferedWriter = this.f63804c;
        if (bufferedWriter != null) {
            try {
                bufferedWriter.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.f63804c = null;
        this.f63802a = null;
        this.f63803b = null;
        return true;
    }

    @Override
    public File c() {
        return this.f63803b;
    }

    @Override
    public String d() {
        return this.f63802a;
    }

    @Override
    public boolean e() {
        return this.f63804c != null && this.f63803b.exists();
    }

    @Override
    public boolean f(File file) {
        boolean z10;
        this.f63802a = file.getName();
        this.f63803b = file;
        if (file.exists()) {
            z10 = false;
        } else {
            try {
                File parentFile = this.f63803b.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.f63803b.createNewFile();
                z10 = true;
            } catch (Exception e10) {
                e10.printStackTrace();
                b();
                return false;
            }
        }
        try {
            this.f63804c = new BufferedWriter(new FileWriter(this.f63803b, true));
            if (z10) {
                g(this.f63803b);
            }
            return true;
        } catch (Exception e11) {
            e11.printStackTrace();
            b();
            return false;
        }
    }

    public void g(File file) {
    }
}
