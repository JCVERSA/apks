package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzfum;
import com.hunantv.media.player.helper.BuildHelper;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

public abstract class qxh {
    public static boolean a(int i) {
        int i2 = i - 1;
        return i2 == 2 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:76:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x0124 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x0126 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x0128 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x012c  */
    /* JADX WARN: Code duplicated, block: B:82:0x012f  */
    /* JADX WARN: Code duplicated, block: B:83:0x0132  */
    /* JADX WARN: Code duplicated, block: B:84:0x0135  */
    /* JADX WARN: Code duplicated, block: B:85:0x0138  */
    /* JADX WARN: Code duplicated, block: B:86:0x013b  */
    /* JADX WARN: Code duplicated, block: B:87:0x013e  */
    public static final int b(Context context, rwh rwhVar) {
        int i;
        String str;
        String strC;
        File file = new File(new File(context.getApplicationInfo().dataDir), "lib");
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles(new h6i(Pattern.compile(".*\\.so$", 2)));
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                rwhVar.b(5017, "No .so");
            } else {
                try {
                    FileInputStream fileInputStream = new FileInputStream(fileArrListFiles[0]);
                    try {
                        byte[] bArr = new byte[20];
                        if (fileInputStream.read(bArr) == 20) {
                            byte[] bArr2 = {0, 0};
                            if (bArr[5] == 2) {
                                d(bArr, null, context, rwhVar);
                            } else {
                                bArr2[0] = bArr[19];
                                bArr2[1] = bArr[18];
                                short s = ByteBuffer.wrap(bArr2).getShort();
                                if (s == 3) {
                                    fileInputStream.close();
                                    i = 5;
                                } else if (s == 40) {
                                    fileInputStream.close();
                                    i = 3;
                                } else if (s == 62) {
                                    fileInputStream.close();
                                    i = 7;
                                } else if (s == 183) {
                                    fileInputStream.close();
                                    i = 6;
                                } else if (s != 243) {
                                    d(bArr, null, context, rwhVar);
                                } else {
                                    fileInputStream.close();
                                    i = 8;
                                }
                            }
                        }
                        fileInputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    d(null, e.toString(), context, rwhVar);
                }
                i = 1;
            }
            if (i == 1000) {
                strC = c(context, rwhVar);
                if (TextUtils.isEmpty(strC)) {
                    d(null, "Empty dev arch", context, rwhVar);
                } else if (!strC.equalsIgnoreCase("i686") || strC.equalsIgnoreCase(BuildHelper.ABI_X86)) {
                    i = 5;
                } else if (strC.equalsIgnoreCase("x86_64")) {
                    i = 7;
                } else if (strC.equalsIgnoreCase(BuildHelper.ABI_ARM64_V8A)) {
                    i = 6;
                } else if (strC.equalsIgnoreCase(BuildHelper.ABI_ARMv7a) || strC.equalsIgnoreCase("armv71")) {
                    i = 3;
                } else if (strC.equalsIgnoreCase("riscv64")) {
                    i = 8;
                } else {
                    d(null, strC, context, rwhVar);
                }
                i = 1;
            }
            if (i != 1) {
                str = "UNSUPPORTED";
            } else if (i != 3) {
                str = "ARM7";
            } else if (i != 5) {
                str = "X86";
            } else if (i != 6) {
                str = "ARM64";
            } else if (i != 7) {
                str = "X86_64";
            } else if (i != 8) {
                str = "null";
            } else {
                str = "RISCV64";
            }
            rwhVar.b(5018, str);
            return i;
        }
        rwhVar.b(5017, "No lib/");
        i = 1000;
        if (i == 1000) {
            strC = c(context, rwhVar);
            if (TextUtils.isEmpty(strC)) {
                d(null, "Empty dev arch", context, rwhVar);
            } else if (strC.equalsIgnoreCase("i686")) {
                i = 5;
            } else {
                i = 5;
            }
            i = 1;
        }
        if (i != 1) {
            str = "UNSUPPORTED";
        } else if (i != 3) {
            str = "ARM7";
        } else if (i != 5) {
            str = "X86";
        } else if (i != 6) {
            str = "ARM64";
        } else if (i != 7) {
            str = "X86_64";
        } else if (i != 8) {
            str = "null";
        } else {
            str = "RISCV64";
        }
        rwhVar.b(5018, str);
        return i;
    }

    public static final String c(Context context, rwh rwhVar) {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String strZza = zzfum.OS_ARCH.zza();
        if (!TextUtils.isEmpty(strZza) && hashSet.contains(strZza)) {
            return strZza;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null && strArr.length > 0) {
                return strArr[0];
            }
        } catch (IllegalAccessException e) {
            rwhVar.c(2024, 0L, e);
        } catch (NoSuchFieldException e2) {
            rwhVar.c(2024, 0L, e2);
        }
        String str = Build.CPU_ABI;
        return str != null ? str : Build.CPU_ABI2;
    }

    public static final void d(byte[] bArr, String str, Context context, rwh rwhVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("os.arch:");
        sb.append(zzfum.OS_ARCH.zza());
        sb.append(ProcessInfo.SPLIT_NEW_VERSION);
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:");
                sb.append(Arrays.toString(strArr));
                sb.append(ProcessInfo.SPLIT_NEW_VERSION);
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb.append("CPU_ABI:");
        sb.append(Build.CPU_ABI);
        sb.append(";CPU_ABI2:");
        sb.append(Build.CPU_ABI2);
        sb.append(ProcessInfo.SPLIT_NEW_VERSION);
        if (bArr != null) {
            sb.append("ELF:");
            sb.append(Arrays.toString(bArr));
            sb.append(ProcessInfo.SPLIT_NEW_VERSION);
        }
        if (str != null) {
            sb.append("dbg:");
            sb.append(str);
            sb.append(ProcessInfo.SPLIT_NEW_VERSION);
        }
        rwhVar.b(4007, sb.toString());
    }
}
