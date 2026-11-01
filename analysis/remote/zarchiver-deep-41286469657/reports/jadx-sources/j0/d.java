package j0;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import h0.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.InvalidPropertiesFormatException;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.io.KitKatExtSD;
import ru.zdevs.zarchiver.io.SAF;

public final class d extends h0.f {

    public final File f1155b;

    public String f1156c;

    public d(File file) {
        super(new h("file", file.getPath()));
        this.f1155b = file;
        this.f1156c = null;
    }

    @Override
    public final h b(String str) throws IOException {
        File file = new File(this.f1155b, str);
        h hVar = new h("file", file.getAbsolutePath());
        try {
            if (file.createNewFile()) {
                return hVar;
            }
            e = null;
            try {
                SAF.k(2, hVar.f1108c);
                return hVar;
            } catch (FileNotFoundException e2) {
                if (e == null) {
                    throw e2;
                }
                throw e;
            }
        } catch (IOException e3) {
            e = e3;
        }
    }

    @Override
    public final boolean c() {
        boolean zF;
        File file = this.f1155b;
        if (file.delete()) {
            return true;
        }
        if (n0.a.f1232a) {
            zF = KitKatExtSD.f(file);
        } else {
            zF = SAF.remove(file.getAbsolutePath()) == 0;
        }
        return zF;
    }

    @Override
    public final boolean d() {
        return this.f1155b.exists();
    }

    @Override
    public final boolean f(String str) {
        return n0.e.i(a0.c.i(this.f1155b.getPath(), str));
    }

    @Override
    public final String g() {
        return this.f1155b.getAbsolutePath();
    }

    @Override
    public final String h() {
        return this.f1156c;
    }

    @Override
    public final boolean k() {
        return this.f1155b.isDirectory();
    }

    @Override
    public final boolean l() {
        return this.f1155b.isFile();
    }

    @Override
    public final boolean m() {
        try {
            return n0.d.f(this.f1155b);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public final long n() {
        return this.f1155b.lastModified();
    }

    @Override
    public final long o() {
        return this.f1155b.length();
    }

    @Override
    public final h0.f[] p() {
        File[] fileArrListFiles = this.f1155b.listFiles();
        if (fileArrListFiles == null) {
            return new h0.f[0];
        }
        h0.f[] fVarArr = new h0.f[fileArrListFiles.length];
        for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
            fVarArr[i2] = new d(fileArrListFiles[i2]);
        }
        return fVarArr;
    }

    @Override
    public final boolean q(String str) {
        boolean zD;
        File file = new File(this.f1155b, str);
        if (file.exists()) {
            return file.isDirectory();
        }
        if (file.mkdir()) {
            return true;
        }
        if (n0.a.f1232a) {
            zD = KitKatExtSD.d(file);
        } else {
            zD = SAF.mkdir(file.getAbsolutePath()) == 0;
        }
        return zD;
    }

    @Override
    public final boolean s(String str) {
        int iMkdirs;
        File file = this.f1155b;
        if (str != null) {
            file = new File(file, str);
        }
        if (file.exists()) {
            return file.isDirectory();
        }
        if (file.mkdirs()) {
            return true;
        }
        if (n0.a.f1232a) {
            iMkdirs = KitKatExtSD.d(file) ? 0 : -1;
        } else {
            iMkdirs = SAF.mkdirs(file.getAbsolutePath(), 0);
        }
        if (iMkdirs == 0) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1156c = Os.strerror(-iMkdirs);
        }
        return false;
    }

    @Override
    public final boolean t(h hVar) {
        h hVar2 = this.f1097a;
        String str = hVar.f1108c;
        File file = this.f1155b;
        if (file.renameTo(new File(str, file.getName()))) {
            return true;
        }
        try {
            return SAF.u(a0.c.A(hVar2.f1108c), hVar2.e(), hVar.f1108c);
        } catch (IOException e2) {
            this.f1156c = e2.getMessage();
            return false;
        }
    }

    @Override
    public final ParcelFileDescriptor v(int i2) {
        return ParcelFileDescriptor.open(this.f1155b, i2);
    }

    @Override
    public final InputStream w() {
        return new FileInputStream(this.f1155b);
    }

    @Override
    public final OutputStream x(long j2) throws FileNotFoundException {
        OutputStream outputStreamE;
        File file = this.f1155b;
        try {
            return new FileOutputStream(file);
        } catch (FileNotFoundException e2) {
            try {
                String absolutePath = file.getAbsolutePath();
                outputStreamE = n0.a.f1232a ? KitKatExtSD.e(absolutePath) : SAF.v(absolutePath, false);
            } catch (InvalidPropertiesFormatException unused) {
                outputStreamE = null;
            }
            if (outputStreamE != null) {
                return outputStreamE;
            }
            throw e2;
        }
    }

    @Override
    public final boolean y(String str) {
        File file = this.f1155b;
        File file2 = new File(file.getParent(), str);
        if (file2.exists()) {
            return false;
        }
        if (file.renameTo(file2)) {
            return true;
        }
        h hVar = this.f1097a;
        return SAF.x(a0.c.A(hVar.f1108c), hVar.e(), str);
    }

    @Override
    public final boolean z(long j2, OutputStream outputStream) {
        if (!this.f1155b.setLastModified(j2)) {
            int iZ = a0.c.z(outputStream);
            if (iZ > 0) {
                if (((C2JBridge.f1613c || C2JBridge.e()) ? C2JBridge.cSetMTime(iZ, (int) (j2 / 1000)) : -1) == 0) {
                }
            }
            return false;
        }
        return true;
    }

    public d(h hVar) {
        super(hVar);
        this.f1155b = new File(hVar.f1108c);
    }
}
