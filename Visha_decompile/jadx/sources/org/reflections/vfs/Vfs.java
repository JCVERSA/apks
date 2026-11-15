package org.reflections.vfs;

import defpackage.er8;
import defpackage.qq5;
import defpackage.rx0;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.JarURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.jar.JarFile;
import org.reflections.ReflectionsException;

public abstract class Vfs {
    public static List a = new ArrayList(Arrays.asList(DefaultUrlTypes.values()));

    public enum DefaultUrlTypes implements c {
        jarFile {
            @Override
            public b createDir(URL url) throws Exception {
                return new d(new JarFile(Vfs.d(url)));
            }

            @Override
            public boolean matches(URL url) {
                return url.getProtocol().equals("file") && Vfs.e(url);
            }
        },
        jarUrl {
            @Override
            public b createDir(URL url) throws Exception {
                try {
                    URLConnection uRLConnectionOpenConnection = url.openConnection();
                    if (uRLConnectionOpenConnection instanceof JarURLConnection) {
                        uRLConnectionOpenConnection.setUseCaches(false);
                        return new d(((JarURLConnection) uRLConnectionOpenConnection).getJarFile());
                    }
                } catch (Throwable unused) {
                }
                File fileD = Vfs.d(url);
                if (fileD != null) {
                    return new d(new JarFile(fileD));
                }
                return null;
            }

            @Override
            public boolean matches(URL url) {
                return "jar".equals(url.getProtocol()) || "zip".equals(url.getProtocol()) || "wsjar".equals(url.getProtocol());
            }
        },
        directory {
            @Override
            public b createDir(URL url) throws Exception {
                return new org.reflections.vfs.b(Vfs.d(url));
            }

            @Override
            public boolean matches(URL url) {
                File fileD;
                return url.getProtocol().equals("file") && !Vfs.e(url) && (fileD = Vfs.d(url)) != null && fileD.isDirectory();
            }
        },
        jboss_vfs {
            @Override
            public b createDir(URL url) throws Exception {
                Object content = url.openConnection().getContent();
                Class<?> clsLoadClass = rx0.a().loadClass("org.jboss.vfs.VirtualFile");
                File file = (File) clsLoadClass.getMethod("getPhysicalFile", null).invoke(content, null);
                File file2 = new File(file.getParentFile(), (String) clsLoadClass.getMethod("getName", null).invoke(content, null));
                if (file2.exists() && file2.canRead()) {
                    file = file2;
                }
                return file.isDirectory() ? new org.reflections.vfs.b(file) : new d(new JarFile(file));
            }

            @Override
            public boolean matches(URL url) {
                return url.getProtocol().equals("vfs");
            }
        },
        jboss_vfsfile {
            @Override
            public b createDir(URL url) throws Exception {
                return new org.reflections.vfs.c().createDir(url);
            }

            @Override
            public boolean matches(URL url) throws Exception {
                return "vfszip".equals(url.getProtocol()) || "vfsfile".equals(url.getProtocol());
            }
        },
        bundle {
            @Override
            public b createDir(URL url) throws Exception {
                return Vfs.b((URL) rx0.a().loadClass("org.eclipse.core.runtime.FileLocator").getMethod("resolve", URL.class).invoke(null, url));
            }

            @Override
            public boolean matches(URL url) throws Exception {
                return url.getProtocol().startsWith("bundle");
            }
        },
        jarInputStream {
            @Override
            public b createDir(URL url) throws Exception {
                return new org.reflections.vfs.a(url);
            }

            @Override
            public boolean matches(URL url) throws Exception {
                return url.toExternalForm().contains(".jar");
            }
        };

        @Override
        public abstract b createDir(URL url) throws Exception;

        @Override
        public abstract boolean matches(URL url) throws Exception;
    }

    public interface b {
    }

    public interface c {
        b createDir(URL url);

        boolean matches(URL url);
    }

    public static b b(URL url) {
        return c(url, a);
    }

    public static b c(URL url, List list) {
        b bVarCreateDir;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            try {
                if (cVar.matches(url) && (bVarCreateDir = cVar.createDir(url)) != null) {
                    return bVarCreateDir;
                }
            } catch (Throwable th) {
                qq5 qq5Var = er8.a;
                if (qq5Var != null) {
                    qq5Var.warn("could not create Dir using " + cVar + " from url " + url.toExternalForm() + ". skipping.", th);
                }
            }
        }
        throw new ReflectionsException("could not create Vfs.Dir from url, no matching UrlType was found [" + url.toExternalForm() + "]\neither use fromURL(final URL url, final List<UrlType> urlTypes) or use the static setDefaultURLTypes(final List<UrlType> urlTypes) or addDefaultURLTypes(UrlType urlType) with your specialized UrlType.");
    }

    public static File d(URL url) {
        try {
            File file = new File(url.toURI().getSchemeSpecificPart());
            if (file.exists()) {
                return file;
            }
        } catch (URISyntaxException unused) {
        }
        try {
            String strDecode = URLDecoder.decode(url.getPath(), "UTF-8");
            if (strDecode.contains(".jar!")) {
                strDecode = strDecode.substring(0, strDecode.lastIndexOf(".jar!") + 4);
            }
            File file2 = new File(strDecode);
            if (file2.exists()) {
                return file2;
            }
        } catch (UnsupportedEncodingException unused2) {
        }
        try {
            String externalForm = url.toExternalForm();
            if (externalForm.startsWith("jar:")) {
                externalForm = externalForm.substring(4);
            }
            if (externalForm.startsWith("wsjar:")) {
                externalForm = externalForm.substring(6);
            }
            if (externalForm.startsWith("file:")) {
                externalForm = externalForm.substring(5);
            }
            if (externalForm.contains(".jar!")) {
                externalForm = externalForm.substring(0, externalForm.indexOf(".jar!") + 4);
            }
            if (externalForm.contains(".war!")) {
                externalForm = externalForm.substring(0, externalForm.indexOf(".war!") + 4);
            }
            File file3 = new File(externalForm);
            if (file3.exists()) {
                return file3;
            }
            File file4 = new File(externalForm.replace("%20", " "));
            if (file4.exists()) {
                return file4;
            }
            return null;
        } catch (Exception unused3) {
            return null;
        }
    }

    public static boolean e(URL url) {
        return url.toExternalForm().matches(".*\\.jar(\\!.*|$)");
    }
}
