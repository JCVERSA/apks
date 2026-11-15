package defpackage;

import android.util.Log;
import com.blankj.utilcode.util.h;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public abstract class kq3 {
    public static int a = 524288;

    public interface a {
        void a(double d);
    }

    public static byte[] a(File file) {
        return b(file, null);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[Catch: FileNotFoundException -> 0x0063, SYNTHETIC, TRY_LEAVE, TryCatch #4 {FileNotFoundException -> 0x0063, blocks: (B:5:0x0008, B:28:0x005f, B:24:0x0057, B:56:0x0092, B:55:0x008f, B:50:0x0085, B:45:0x007c, B:40:0x0072, B:21:0x0052, B:47:0x0080, B:37:0x006d, B:52:0x008a, B:25:0x005a, B:42:0x0077), top: B:63:0x0008, inners: #1, #3, #5, #7, #8, #10 }] */
    public static byte[] b(File file, a aVar) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        if (!h.x(file)) {
            return null;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), a);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        byte[] bArr = new byte[a];
                        if (aVar != null) {
                            double dAvailable = bufferedInputStream.available();
                            aVar.a(0.0d);
                            int i = 0;
                            while (true) {
                                int i2 = bufferedInputStream.read(bArr, 0, a);
                                if (i2 == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i2);
                                i += i2;
                                aVar.a(((double) i) / dAvailable);
                            }
                        } else {
                            while (true) {
                                int i3 = bufferedInputStream.read(bArr, 0, a);
                                if (i3 == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i3);
                            }
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        return byteArray;
                    } catch (IOException e3) {
                        e = e3;
                        e.printStackTrace();
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    if (byteArrayOutputStream != null) {
                        throw th;
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e7) {
                        e7.printStackTrace();
                        throw th;
                    }
                }
            } catch (IOException e8) {
                e = e8;
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
                bufferedInputStream.close();
                if (byteArrayOutputStream != null) {
                    throw th;
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (FileNotFoundException e9) {
            e9.printStackTrace();
            return null;
        }
    }

    public static String c(File file, String str) {
        byte[] bArrA = a(file);
        if (bArrA == null) {
            return null;
        }
        if (h.D(str)) {
            return new String(bArrA);
        }
        try {
            return new String(bArrA, str);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String d(String str) {
        return c(h.m(str), null);
    }

    public static boolean e(File file, InputStream inputStream, boolean z, a aVar) throws Throwable {
        if (inputStream == null || !h.d(file)) {
            Log.e("FileIOUtils", "create file <" + file + "> failed.");
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file, z), a);
            try {
                try {
                    try {
                        if (aVar == null) {
                            byte[] bArr = new byte[a];
                            while (true) {
                                int i = inputStream.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                bufferedOutputStream2.write(bArr, 0, i);
                            }
                            inputStream.close();
                            bufferedOutputStream2.close();
                            return true;
                        }
                        double dAvailable = inputStream.available();
                        aVar.a(0.0d);
                        byte[] bArr2 = new byte[a];
                        int i2 = 0;
                        while (true) {
                            int i3 = inputStream.read(bArr2);
                            if (i3 == -1) {
                                break;
                            }
                            bufferedOutputStream2.write(bArr2, 0, i3);
                            i2 += i3;
                            aVar.a(((double) i2) / dAvailable);
                        }
                        inputStream.close();
                        bufferedOutputStream2.close();
                        return true;
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    bufferedOutputStream2.close();
                    return true;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return true;
                }
            } catch (IOException e3) {
                e = e3;
                bufferedOutputStream = bufferedOutputStream2;
                e.printStackTrace();
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                if (bufferedOutputStream != null) {
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                return false;
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = bufferedOutputStream2;
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
                if (bufferedOutputStream == null) {
                    throw th;
                }
                try {
                    bufferedOutputStream.close();
                    throw th;
                } catch (IOException e7) {
                    e7.printStackTrace();
                    throw th;
                }
            }
        } catch (IOException e8) {
            e = e8;
        }
    }

    public static boolean f(String str, InputStream inputStream) {
        return e(h.m(str), inputStream, false, null);
    }

    public static boolean g(File file, String str, boolean z) throws Throwable {
        if (file == null || str == null) {
            return false;
        }
        if (!h.d(file)) {
            Log.e("FileIOUtils", "create file <" + file + "> failed.");
            return false;
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file, z));
                try {
                    bufferedWriter2.write(str);
                    try {
                        bufferedWriter2.close();
                        return true;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return true;
                    }
                } catch (IOException e2) {
                    e = e2;
                    bufferedWriter = bufferedWriter2;
                    e.printStackTrace();
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean h(String str, String str2, boolean z) {
        return g(h.m(str), str2, z);
    }
}
