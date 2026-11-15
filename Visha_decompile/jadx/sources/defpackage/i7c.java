package defpackage;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;

public abstract class i7c {
    public static void a(File file) throws IOException {
        File[] fileArrListFiles;
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                c(file2);
            }
        }
    }

    public static long b(File file) {
        if (!file.isDirectory()) {
            return file.length();
        }
        long jB = 0;
        for (File file2 : file.listFiles()) {
            jB += b(file2);
        }
        return jB;
    }

    public static void c(File file) throws IOException {
        if (file.isFile() && file.exists()) {
            d(file);
        } else {
            a(file);
            d(file);
        }
    }

    public static void d(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException(String.format("File %s can't be deleted", file.getAbsolutePath()));
        }
    }

    public static String e(long j) {
        StringBuffer stringBuffer = new StringBuffer();
        DecimalFormat decimalFormat = new DecimalFormat("###.00");
        if (j >= 1073741824) {
            stringBuffer.append(decimalFormat.format(j / 1.073741824E9d));
            stringBuffer.append("GB");
        } else if (j >= 1048576) {
            stringBuffer.append(decimalFormat.format(j / 1048576.0d));
            stringBuffer.append("MB");
        } else if (j >= 1024) {
            stringBuffer.append(decimalFormat.format(j / 1024.0d));
            stringBuffer.append("KB");
        } else if (j < 1024) {
            if (j <= 0) {
                stringBuffer.append("0B");
            } else {
                stringBuffer.append((int) j);
                stringBuffer.append("B");
            }
        }
        return stringBuffer.toString();
    }
}
