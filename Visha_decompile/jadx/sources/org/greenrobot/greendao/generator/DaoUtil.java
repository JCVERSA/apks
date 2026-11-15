package org.greenrobot.greendao.generator;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class DaoUtil {
    public static String capFirst(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(Character.toUpperCase(str.charAt(0)));
        sb.append(str.length() > 1 ? str.substring(1) : "");
        return sb.toString();
    }

    public static String checkConvertToJavaDoc(String str, String str2) {
        if (str == null || str.trim().startsWith("/**")) {
            return str;
        }
        return str2 + "/**\n" + str2 + " * " + str.replace("\n", "\n" + str2 + " * ") + "\n" + str2 + " */";
    }

    public static int copyAllBytes(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return i;
            }
            outputStream.write(bArr, 0, i2);
            i += i2;
        }
    }

    public static String dbName(String str) {
        StringBuilder sb = new StringBuilder(str);
        int i = 1;
        while (i < sb.length()) {
            boolean zIsUpperCase = Character.isUpperCase(sb.charAt(i - 1));
            if (Character.isUpperCase(sb.charAt(i)) && !zIsUpperCase) {
                sb.insert(i, '_');
                i++;
            }
            i++;
        }
        return sb.toString().toUpperCase();
    }

    public static String getClassnameFromFullyQualified(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf != -1 ? str.substring(iLastIndexOf + 1) : str;
    }

    public static String getPackageFromFullyQualified(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf != -1) {
            return str.substring(0, iLastIndexOf);
        }
        return null;
    }

    public static byte[] readAllBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copyAllBytes(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] readAllBytes(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return readAllBytes(fileInputStream);
        } finally {
            fileInputStream.close();
        }
    }

    public static byte[] readAllBytes(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            return readAllBytes(fileInputStream);
        } finally {
            fileInputStream.close();
        }
    }
}
