package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import kotlin.io.FileAlreadyExistsException;
import kotlin.io.FileSystemException;
import kotlin.io.NoSuchFileException;

public abstract class fv3 extends ev3 {
    public static final File i(File file, File file2, boolean z, int i) throws FileSystemException {
        y45.j(file, "<this>");
        y45.j(file2, TypedValues.AttributesType.S_TARGET);
        if (!file.exists()) {
            throw new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null);
        }
        if (file2.exists()) {
            if (!z) {
                throw new FileAlreadyExistsException(file, file2, "The destination file already exists.");
            }
            if (!file2.delete()) {
                throw new FileAlreadyExistsException(file, file2, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (!file.isDirectory()) {
            File parentFile = file2.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    oo0.a(fileInputStream, fileOutputStream, i);
                    ly0.a(fileOutputStream, null);
                    ly0.a(fileInputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    ly0.a(fileInputStream, th3);
                    throw th4;
                }
            }
        } else if (!file2.mkdirs()) {
            throw new FileSystemException(file, file2, "Failed to create target directory.");
        }
        return file2;
    }

    public static File j(File file, File file2, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 8192;
        }
        return i(file, file2, z, i);
    }

    public static String k(File file) {
        y45.j(file, "<this>");
        String name = file.getName();
        y45.i(name, "getName(...)");
        return j1a.Y0(name, '.', "");
    }
}
