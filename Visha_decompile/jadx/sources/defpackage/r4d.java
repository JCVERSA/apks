package defpackage;

import android.util.Base64;
import android.util.Log;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.ehanat;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public abstract class r4d {
    /* JADX WARN: Code duplicated, block: B:74:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:? A[SYNTHETIC] */
    public static String a(File file, byte[] bArr) throws Throwable {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        Exception e;
        if (!file.exists() || !file.isFile()) {
            return "";
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr2 = new byte[1024];
                        while (true) {
                            int i = fileInputStream2.read(bArr2);
                            if (i == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr2, 0, i);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        if (byteArray.length == 0) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException e2) {
                                c4d.d(e2.getMessage());
                            }
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e3) {
                                c4d.d(e3.getMessage());
                            }
                            return "";
                        }
                        String str = new String(f(bArr, byteArray));
                        try {
                            fileInputStream2.close();
                        } catch (IOException e4) {
                            c4d.d(e4.getMessage());
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e5) {
                            c4d.d(e5.getMessage());
                        }
                        return str;
                    } catch (Exception e6) {
                        e = e6;
                        c4d.d(Log.getStackTraceString(e));
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e7) {
                                c4d.d(e7.getMessage());
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            throw th;
                        }
                        try {
                            byteArrayOutputStream.close();
                            throw th;
                        } catch (IOException e8) {
                            c4d.d(e8.getMessage());
                            throw th;
                        }
                    }
                } catch (Exception e9) {
                    e = e9;
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        } catch (Exception e10) {
            e = e10;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            if (byteArrayOutputStream != null) {
                throw th;
            }
            byteArrayOutputStream.close();
            throw th;
        }
    }

    public static String b(String str, byte[] bArr) {
        try {
            if (bArr != null) {
                return new String(Base64.encode(e(bArr, str), 2));
            }
            c4d.d("encryptEventData password is null");
            return null;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public static String c(String str, byte[] bArr, int i) {
        try {
            if (bArr != null) {
                return new String(f(bArr, Base64.decode(str, 2)));
            }
            c4d.d("decryptEventData password is null");
            return null;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public static void d(File file, String str, byte[] bArr) {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                byte[] bArrE = e(bArr, str);
                if (bArrE == null || bArrE.length == 0) {
                    throw new Exception("encode failed p = " + anehat.c(bArr) + ", m = " + str.length());
                }
                if (!file.exists() && !file.createNewFile()) {
                    throw new IOException("createNewFile failed");
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                FileOutputStream fileOutputStream3 = fileOutputStream2;
                fileOutputStream3.write(bArrE);
                fileOutputStream3.flush();
                try {
                    fileOutputStream3.close();
                } catch (IOException unused) {
                }
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    public static byte[] e(byte[] bArr, String str) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
        cipher.init(1, secretKeySpec, new IvParameterSpec(ehanat.o));
        try {
            return cipher.doFinal(str.getBytes("UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    public static byte[] f(byte[] bArr, byte[] bArr2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
        cipher.init(2, secretKeySpec, new IvParameterSpec(ehanat.o));
        try {
            return cipher.doFinal(bArr2);
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            throw e;
        }
    }
}
