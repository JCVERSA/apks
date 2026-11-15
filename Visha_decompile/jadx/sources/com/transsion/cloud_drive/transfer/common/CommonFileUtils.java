package com.transsion.cloud_drive.transfer.common;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.e74;
import defpackage.hi;
import defpackage.j1a;
import defpackage.y45;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;

public final class CommonFileUtils {
    public static final CommonFileUtils a = new CommonFileUtils();

    public final String a(byte[] bArr) {
        String strR0 = hi.r0(bArr, "", null, null, 0, null, new e74() {
            public final CharSequence invoke(byte b) {
                String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                y45.i(str, "format(...)");
                return str;
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).byteValue());
            }
        }, 30, null);
        Locale locale = Locale.getDefault();
        y45.i(locale, "getDefault(...)");
        String upperCase = strR0.toUpperCase(locale);
        y45.i(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public final boolean b(String str, String str2) {
        return new File(str, str2).exists();
    }

    public final String c(String str) throws Throwable {
        y45.j(str, "path");
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[1024];
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                    int i = fileInputStream2.read(bArr);
                    if (i > 0) {
                        messageDigest.update(bArr, 0, i);
                    }
                    byte[] bArrDigest = messageDigest.digest();
                    y45.i(bArrDigest, "digest(...)");
                    String strA = a(bArrDigest);
                    try {
                        fileInputStream2.close();
                    } catch (Exception unused) {
                    }
                    return strA;
                } catch (Exception e) {
                    e = e;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    if (fileInputStream == null) {
                        return "";
                    }
                    try {
                        fileInputStream.close();
                        return "";
                    } catch (Exception unused2) {
                        return "";
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String d(String str) throws Throwable {
        y45.j(str, "path");
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[102400];
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                    int i = 0;
                    while (i != -1) {
                        i = fileInputStream2.read(bArr);
                        if (i > 0) {
                            messageDigest.update(bArr, 0, i);
                        }
                    }
                    byte[] bArrDigest = messageDigest.digest();
                    y45.g(bArrDigest);
                    String strA = a(bArrDigest);
                    try {
                        fileInputStream2.close();
                    } catch (Exception unused) {
                    }
                    return strA;
                } catch (Exception e) {
                    e = e;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    if (fileInputStream == null) {
                        return "";
                    }
                    try {
                        fileInputStream.close();
                        return "";
                    } catch (Exception unused2) {
                        return "";
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String[] e(String str) {
        String strSubstring;
        int iS0 = j1a.s0(str, Consts.DOT, 0, false, 6, null);
        if (iS0 == -1) {
            strSubstring = "";
        } else {
            String strSubstring2 = str.substring(0, iS0);
            y45.i(strSubstring2, "substring(...)");
            strSubstring = str.substring(iS0, str.length());
            y45.i(strSubstring, "substring(...)");
            str = strSubstring2;
        }
        return new String[]{str, strSubstring};
    }

    public final String f(int i, String str) {
        y45.j(str, "sourceName");
        if (str.length() <= i) {
            return str;
        }
        int i2 = i / 2;
        String strSubstring = str.substring(0, i2 - 3);
        y45.i(strSubstring, "substring(...)");
        String strSubstring2 = str.substring(str.length() - i2);
        y45.i(strSubstring2, "substring(...)");
        return strSubstring + "..." + strSubstring2;
    }

    public final String g(String str, String str2) {
        y45.j(str, "parent");
        y45.j(str2, "sourceName");
        if (!b(str, str2)) {
            return str2;
        }
        String[] strArrE = e(str2);
        String str3 = strArrE[0];
        String str4 = strArrE[1];
        for (int i = 1; i < 9999; i++) {
            String str5 = str3 + ("(" + i + ")") + str4;
            if (!b(str, str5)) {
                return str5;
            }
        }
        return str2 + "_" + System.currentTimeMillis();
    }
}
