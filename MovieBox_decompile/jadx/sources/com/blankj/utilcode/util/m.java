package com.blankj.utilcode.util;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class m {

    private static int f19475a = 524288;

    public interface a {
        void onProgressUpdate(double d10);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[Catch: FileNotFoundException -> 0x0063, SYNTHETIC, TRY_LEAVE, TryCatch #4 {FileNotFoundException -> 0x0063, blocks: (B:5:0x0008, B:28:0x005f, B:24:0x0057, B:56:0x0092, B:55:0x008f, B:50:0x0085, B:45:0x007c, B:40:0x0072, B:21:0x0052, B:47:0x0080, B:37:0x006d, B:52:0x008a, B:25:0x005a, B:42:0x0077), top: B:63:0x0008, inners: #1, #3, #5, #7, #8, #10 }] */
    public static byte[] a(File file, a aVar) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        if (!e0.y(file)) {
            return null;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), f19475a);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        byte[] bArr = new byte[f19475a];
                        if (aVar != null) {
                            double dAvailable = bufferedInputStream.available();
                            aVar.onProgressUpdate(0.0d);
                            int i10 = 0;
                            while (true) {
                                int i11 = bufferedInputStream.read(bArr, 0, f19475a);
                                if (i11 == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i11);
                                i10 += i11;
                                aVar.onProgressUpdate(((double) i10) / dAvailable);
                            }
                        } else {
                            while (true) {
                                int i12 = bufferedInputStream.read(bArr, 0, f19475a);
                                if (i12 == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i12);
                            }
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        return byteArray;
                    } catch (IOException e12) {
                        e = e12;
                        e.printStackTrace();
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e14) {
                                e14.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e15) {
                        e15.printStackTrace();
                    }
                    if (byteArrayOutputStream != null) {
                        throw th;
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e16) {
                        e16.printStackTrace();
                        throw th;
                    }
                }
            } catch (IOException e17) {
                e = e17;
                byteArrayOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
                bufferedInputStream.close();
                if (byteArrayOutputStream != null) {
                    throw th;
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (FileNotFoundException e18) {
            e18.printStackTrace();
            return null;
        }
    }

    public static byte[] b(String str) {
        return a(e0.l(str), null);
    }
}
