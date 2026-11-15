package org.apache.tools.ant.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.Random;
import java.util.Stack;
import java.util.StringTokenizer;
import org.apache.tools.ant.BuildException;

public class d {

    private static final d f68397d = new d();

    private static Random f68398e = new Random(System.currentTimeMillis() + Runtime.getRuntime().freeMemory());

    private static final boolean f68399f = lz.a.a("netware");

    private static final boolean f68400g = lz.a.a("dos");

    private static final boolean f68401h = lz.a.a("win9x");

    private static final boolean f68402i = lz.a.a("windows");

    static Class f68403j;

    private Object f68404a = new Object();

    private String f68405b = null;

    private String f68406c = null;

    protected d() {
    }

    static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static void b(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void c(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void d(Reader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void e(Writer writer) {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void g(File file) {
        if (file != null) {
            file.delete();
        }
    }

    public static d k() {
        return f68397d;
    }

    public static boolean l(String str) {
        int iIndexOf;
        int length = str.length();
        if (length == 0) {
            return false;
        }
        char c10 = File.separatorChar;
        String strReplace = str.replace('/', c10).replace('\\', c10);
        char cCharAt = strReplace.charAt(0);
        boolean z10 = f68400g;
        if (!z10 && !f68399f) {
            return cCharAt == c10;
        }
        if (cCharAt == c10) {
            return z10 && length > 4 && strReplace.charAt(1) == c10 && (iIndexOf = strReplace.indexOf(c10, 2)) > 2 && iIndexOf + 1 < length;
        }
        int iIndexOf2 = strReplace.indexOf(58);
        return (Character.isLetter(cCharAt) && iIndexOf2 == 1 && strReplace.length() > 2 && strReplace.charAt(2) == c10) || (f68399f && iIndexOf2 > 0);
    }

    public static boolean m(String str) {
        if ((!f68400g && !f68399f) || str.length() == 0) {
            return false;
        }
        char c10 = File.separatorChar;
        String strReplace = str.replace('/', c10).replace('\\', c10);
        char cCharAt = strReplace.charAt(0);
        int length = strReplace.length();
        if (cCharAt != c10 || (length != 1 && strReplace.charAt(1) == c10)) {
            if (!Character.isLetter(cCharAt) || length <= 1 || strReplace.indexOf(58) != 1) {
                return false;
            }
            if (length != 2 && strReplace.charAt(2) == c10) {
                return false;
            }
        }
        return true;
    }

    public File f(String str, String str2, File file, boolean z10, boolean z11) {
        File fileCreateTempFile;
        File file2;
        String property = file == null ? System.getProperty("java.io.tmpdir") : file.getPath();
        if (z11) {
            try {
                fileCreateTempFile = File.createTempFile(str, str2, new File(property));
            } catch (IOException e10) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Could not create tempfile in ");
                stringBuffer.append(property);
                throw new BuildException(stringBuffer.toString(), e10);
            }
        } else {
            DecimalFormat decimalFormat = new DecimalFormat("#####");
            synchronized (f68398e) {
                do {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(str);
                    stringBuffer2.append(decimalFormat.format(Math.abs(f68398e.nextInt())));
                    stringBuffer2.append(str2);
                    file2 = new File(property, stringBuffer2.toString());
                } while (file2.exists());
            }
            fileCreateTempFile = file2;
        }
        if (z10) {
            fileCreateTempFile.deleteOnExit();
        }
        return fileCreateTempFile;
    }

    public String[] h(String str) {
        String strSubstring;
        String strSubstring2;
        char c10 = File.separatorChar;
        String strReplace = str.replace('/', c10).replace('\\', c10);
        if (!l(strReplace)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strReplace);
            stringBuffer.append(" is not an absolute path");
            throw new BuildException(stringBuffer.toString());
        }
        int iIndexOf = strReplace.indexOf(58);
        if (iIndexOf > 0 && (f68400g || f68399f)) {
            int i10 = iIndexOf + 1;
            String strSubstring3 = strReplace.substring(0, i10);
            char[] charArray = strReplace.toCharArray();
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(strSubstring3);
            stringBuffer2.append(c10);
            strSubstring = stringBuffer2.toString();
            if (charArray[i10] == c10) {
                i10 = iIndexOf + 2;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            while (i10 < charArray.length) {
                char c11 = charArray[i10];
                if (c11 != c10 || charArray[i10 - 1] != c10) {
                    stringBuffer3.append(c11);
                }
                i10++;
            }
            strSubstring2 = stringBuffer3.toString();
        } else if (strReplace.length() <= 1 || strReplace.charAt(1) != c10) {
            strSubstring = File.separator;
            strSubstring2 = strReplace.substring(1);
        } else {
            int iIndexOf2 = strReplace.indexOf(c10, strReplace.indexOf(c10, 2) + 1);
            strSubstring = iIndexOf2 > 2 ? strReplace.substring(0, iIndexOf2 + 1) : strReplace;
            strSubstring2 = strReplace.substring(strSubstring.length());
        }
        return new String[]{strSubstring, strSubstring2};
    }

    public String i(String str) {
        synchronized (this.f68404a) {
            try {
                if (str.equals(this.f68405b)) {
                    return this.f68406c;
                }
                String strC = kz.b.c(str);
                if (l(strC)) {
                    strC = o(strC).getAbsolutePath();
                }
                this.f68405b = str;
                this.f68406c = strC;
                return strC;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public URL j(File file) {
        return new URL(r(file.getAbsolutePath()));
    }

    public boolean n(File file, File file2) {
        String absolutePath = o(file.getAbsolutePath()).getAbsolutePath();
        String absolutePath2 = o(file2.getAbsolutePath()).getAbsolutePath();
        if (absolutePath.equals(absolutePath2)) {
            return true;
        }
        String str = File.separator;
        if (!absolutePath.endsWith(str)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(absolutePath);
            stringBuffer.append(str);
            absolutePath = stringBuffer.toString();
        }
        return absolutePath2.startsWith(absolutePath);
    }

    public File o(String str) {
        Stack stack = new Stack();
        String[] strArrH = h(str);
        stack.push(strArrH[0]);
        StringTokenizer stringTokenizer = new StringTokenizer(strArrH[1], File.separator);
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!".".equals(strNextToken)) {
                if (!"..".equals(strNextToken)) {
                    stack.push(strNextToken);
                } else {
                    if (stack.size() < 2) {
                        return new File(str);
                    }
                    stack.pop();
                }
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < stack.size(); i10++) {
            if (i10 > 1) {
                stringBuffer.append(File.separatorChar);
            }
            stringBuffer.append(stack.elementAt(i10));
        }
        return new File(stringBuffer.toString());
    }

    public String p(File file, File file2) {
        String absolutePath = o(file.getAbsolutePath()).getAbsolutePath();
        String absolutePath2 = o(file2.getAbsolutePath()).getAbsolutePath();
        if (absolutePath.equals(absolutePath2)) {
            return "";
        }
        String str = File.separator;
        if (!absolutePath.endsWith(str)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(absolutePath);
            stringBuffer.append(str);
            absolutePath = stringBuffer.toString();
        }
        return absolutePath2.startsWith(absolutePath) ? absolutePath2.substring(absolutePath.length()) : absolutePath2;
    }

    public File q(File file, String str) {
        if (!l(str)) {
            char c10 = File.separatorChar;
            String strReplace = str.replace('/', c10).replace('\\', c10);
            if (m(strReplace)) {
                String property = System.getProperty("user.dir");
                if (strReplace.charAt(0) == c10 && property.charAt(0) == c10) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(h(property)[0]);
                    stringBuffer.append(strReplace.substring(1));
                    strReplace = stringBuffer.toString();
                }
                file = null;
            }
            str = new File(file, strReplace).getAbsolutePath();
        }
        return o(str);
    }

    public String r(String str) {
        Class<?> cls;
        try {
            cls = Class.forName("java.net.URI");
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                File absoluteFile = new File(str).getAbsoluteFile();
                Class clsA = f68403j;
                if (clsA == null) {
                    clsA = a("java.io.File");
                    f68403j = clsA;
                }
                return (String) cls.getMethod("toASCIIString", null).invoke(clsA.getMethod("toURI", null).invoke(absoluteFile, null), null);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        boolean zIsDirectory = new File(str).isDirectory();
        StringBuffer stringBuffer = new StringBuffer("file:");
        String path = q(null, str).getPath();
        stringBuffer.append("//");
        if (!path.startsWith(File.separator)) {
            stringBuffer.append("/");
        }
        String strReplace = path.replace('\\', '/');
        try {
            stringBuffer.append(kz.b.b(strReplace));
            if (zIsDirectory && !strReplace.endsWith("/")) {
                stringBuffer.append('/');
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e11) {
            throw new BuildException(e11);
        }
    }
}
