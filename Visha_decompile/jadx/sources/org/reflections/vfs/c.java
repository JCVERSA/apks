package org.reflections.vfs;

import defpackage.er8;
import defpackage.qq5;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.function.Predicate;
import java.util.jar.JarFile;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.reflections.ReflectionsException;
import org.reflections.vfs.c;

public class c implements Vfs.c {
    public static final String[] e = {".ear/", ".jar/", ".war/", ".sar/", ".har/", ".par/"};
    public final String b = "vfszip";
    public final String c = "vfsfile";
    public Predicate d = new Predicate() {
        @Override
        public final boolean test(Object obj) {
            return c.d((File) obj);
        }
    };

    public static boolean d(File file) {
        return file.exists() && file.isFile();
    }

    public URL b(URL url) {
        if ("vfszip".equals(url.getProtocol())) {
            return f(url.getPath(), this.d);
        }
        return "vfsfile".equals(url.getProtocol()) ? new URL(url.toString().replace("vfsfile", "file")) : url;
    }

    public int c(String str, int i) {
        Matcher matcher = Pattern.compile("\\.[ejprw]ar/").matcher(str);
        if (matcher.find(i)) {
            return matcher.end();
        }
        return -1;
    }

    @Override
    public Vfs.b createDir(URL url) {
        try {
            return new d(new JarFile(b(url).getFile()));
        } catch (Exception e2) {
            try {
                return new d(new JarFile(url.getFile()));
            } catch (IOException e3) {
                qq5 qq5Var = er8.a;
                if (qq5Var == null) {
                    return null;
                }
                qq5Var.warn("Could not get URL", (Throwable) e2);
                er8.a.warn("Could not get URL", (Throwable) e3);
                return null;
            }
        }
    }

    public URL e(String str, int i) {
        String strSubstring = str.substring(0, i - 1);
        String strSubstring2 = str.substring(i);
        int i2 = 1;
        for (String str2 : e) {
            while (strSubstring2.contains(str2)) {
                strSubstring2 = strSubstring2.replace(str2, str2.substring(0, 4) + "!");
                i2++;
            }
        }
        String str3 = "";
        for (int i3 = 0; i3 < i2; i3++) {
            str3 = str3 + "zip:";
        }
        if (strSubstring2.trim().length() == 0) {
            return new URL(str3 + "/" + strSubstring);
        }
        return new URL(str3 + "/" + strSubstring + "!" + strSubstring2);
    }

    public URL f(String str, Predicate predicate) {
        int iC = 0;
        while (iC != -1) {
            iC = c(str, iC);
            if (iC > 0 && predicate.test(new File(str.substring(0, iC - 1)))) {
                return e(str, iC);
            }
        }
        throw new ReflectionsException("Unable to identify the real zip file in path '" + str + "'.");
    }

    @Override
    public boolean matches(URL url) {
        return "vfszip".equals(url.getProtocol()) || "vfsfile".equals(url.getProtocol());
    }
}
