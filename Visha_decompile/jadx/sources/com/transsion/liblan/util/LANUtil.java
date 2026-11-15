package com.transsion.liblan.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import com.hunantv.media.player.helper.BuildHelper;
import com.transsion.socket.pkgdata.SocketData;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;

public class LANUtil {
    private static final int ELF_HEADER_SIZE = 52;
    private static final int EM_386 = 3;
    private static final int EM_AARCH64 = 183;
    private static final int EM_ARM = 40;
    private static final int EM_MIPS = 8;
    private static final int EM_X86_64 = 62;
    private static final int SECTION_HEADER_SIZE = 40;
    private static final int SHT_ARM_ATTRIBUTES = 1879048195;
    public static final String TAG = "LAN/LibLAN/Util";
    private static final String URI_AUTHORIZED_CHARS = "'()*";
    private static String errorMsg = null;
    private static boolean isCompatible = false;
    private static final String[] CPU_archs = {"*Pre-v4", "*v4", "*v4T", "v5T", "v5TE", "v5TEJ", "v6", "v6KZ", "v6T2", "v6K", "v7", "*v6-M", "*v6S-M", "*v7E-M", "*v8"};
    private static MachineSpecs machineSpecs = null;

    public static class ElfData {
        String att_arch;
        boolean att_fpu;
        int e_machine;
        int e_shnum;
        int e_shoff;
        boolean is64bits;
        ByteOrder order;
        int sh_offset;
        int sh_size;

        private ElfData() {
        }
    }

    public static class MachineSpecs {
        public float bogoMIPS;
        public float frequency;
        public boolean hasArmV6;
        public boolean hasArmV7;
        public boolean hasFpu;
        public boolean hasMips;
        public boolean hasNeon;
        public boolean hasX86;
        public boolean is64bits;
        public int processors;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003c  */
    public static Uri UriFromMrl(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder(charArray.length * 2);
        int i = 0;
        while (i < charArray.length) {
            char c = charArray[i];
            if (c != '%' || charArray.length - i < 3) {
                sb.append(c);
            } else {
                try {
                    int i2 = Integer.parseInt(new String(charArray, i + 1, 2), 16);
                    if (URI_AUTHORIZED_CHARS.indexOf(i2) != -1) {
                        sb.append((char) i2);
                        i += 2;
                    } else {
                        sb.append(c);
                    }
                } catch (NumberFormatException unused) {
                }
            }
            i++;
        }
        return Uri.parse(sb.toString());
    }

    private static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String encodeLANString(@NonNull String str) {
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder(charArray.length * 2);
        for (char c : charArray) {
            if (URI_AUTHORIZED_CHARS.indexOf(c) != -1) {
                sb.append("%");
                sb.append(Integer.toHexString(c));
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static String encodeLANUri(@NonNull Uri uri) {
        return encodeLANString(uri.toString());
    }

    public static String[] getABIList() {
        return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    @TargetApi(21)
    public static String[] getABIList21() {
        String[] strArr = Build.SUPPORTED_ABIS;
        return (strArr == null || strArr.length == 0) ? getABIList() : strArr;
    }

    public static String getErrorMsg() {
        return errorMsg;
    }

    public static MachineSpecs getMachineSpecs() {
        return machineSpecs;
    }

    private static String getString(ByteBuffer byteBuffer) {
        char c;
        StringBuilder sb = new StringBuilder(byteBuffer.limit());
        while (byteBuffer.remaining() > 0 && (c = (char) byteBuffer.get()) != 0) {
            sb.append(c);
        }
        return sb.toString();
    }

    private static int getUleb128(ByteBuffer byteBuffer) {
        byte b;
        int i = 0;
        do {
            b = byteBuffer.get();
            i = (i << 7) | (b & 127);
        } while ((b & SocketData.CLAZZ_TYPE_END_SOCKET) > 0);
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0190  */
    /* JADX WARN: Code duplicated, block: B:109:0x019a A[Catch: all -> 0x0157, IOException -> 0x01c4, TryCatch #10 {IOException -> 0x01c4, all -> 0x0157, blocks: (B:65:0x0102, B:67:0x0108, B:95:0x0167, B:97:0x016f, B:100:0x0178, B:102:0x0180, B:104:0x0188, B:107:0x0192, B:109:0x019a, B:112:0x01a1, B:114:0x01af, B:116:0x01b6, B:70:0x0113, B:73:0x011c, B:76:0x0126, B:79:0x0130, B:82:0x0139, B:85:0x0144, B:87:0x014c, B:92:0x015d), top: B:217:0x0102 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:131:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:134:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:140:0x0214  */
    /* JADX WARN: Code duplicated, block: B:142:0x0217 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:147:0x022a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:148:0x022c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:158:0x0253  */
    /* JADX WARN: Code duplicated, block: B:162:0x0267  */
    /* JADX WARN: Code duplicated, block: B:164:0x026c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:166:0x0275  */
    /* JADX WARN: Code duplicated, block: B:175:0x0294 A[Catch: all -> 0x029c, NumberFormatException -> 0x02ba, IOException -> 0x02da, TRY_LEAVE, TryCatch #15 {all -> 0x029c, blocks: (B:173:0x028e, B:175:0x0294, B:189:0x02ba, B:191:0x02da), top: B:209:0x0282 }] */
    /* JADX WARN: Code duplicated, block: B:179:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:227:0x01c4 A[EDGE_INSN: B:227:0x01c4->B:118:0x01c4 BREAK  A[LOOP:1: B:64:0x0100->B:200:0x0100, LOOP_LABEL: LOOP:1: B:64:0x0100->B:200:0x0100], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0108 A[Catch: all -> 0x0157, IOException -> 0x01c4, TryCatch #10 {IOException -> 0x01c4, all -> 0x0157, blocks: (B:65:0x0102, B:67:0x0108, B:95:0x0167, B:97:0x016f, B:100:0x0178, B:102:0x0180, B:104:0x0188, B:107:0x0192, B:109:0x019a, B:112:0x01a1, B:114:0x01af, B:116:0x01b6, B:70:0x0113, B:73:0x011c, B:76:0x0126, B:79:0x0130, B:82:0x0139, B:85:0x0144, B:87:0x014c, B:92:0x015d), top: B:217:0x0102 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0110  */
    /* JADX WARN: Code duplicated, block: B:75:0x0124  */
    /* JADX WARN: Code duplicated, block: B:76:0x0126 A[Catch: all -> 0x0157, IOException -> 0x01c4, TryCatch #10 {IOException -> 0x01c4, all -> 0x0157, blocks: (B:65:0x0102, B:67:0x0108, B:95:0x0167, B:97:0x016f, B:100:0x0178, B:102:0x0180, B:104:0x0188, B:107:0x0192, B:109:0x019a, B:112:0x01a1, B:114:0x01af, B:116:0x01b6, B:70:0x0113, B:73:0x011c, B:76:0x0126, B:79:0x0130, B:82:0x0139, B:85:0x0144, B:87:0x014c, B:92:0x015d), top: B:217:0x0102 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x012e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0141  */
    /* JADX WARN: Code duplicated, block: B:85:0x0144 A[Catch: all -> 0x0157, IOException -> 0x01c4, TryCatch #10 {IOException -> 0x01c4, all -> 0x0157, blocks: (B:65:0x0102, B:67:0x0108, B:95:0x0167, B:97:0x016f, B:100:0x0178, B:102:0x0180, B:104:0x0188, B:107:0x0192, B:109:0x019a, B:112:0x01a1, B:114:0x01af, B:116:0x01b6, B:70:0x0113, B:73:0x011c, B:76:0x0126, B:79:0x0130, B:82:0x0139, B:85:0x0144, B:87:0x014c, B:92:0x015d), top: B:217:0x0102 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x015d A[Catch: all -> 0x0157, IOException -> 0x01c4, TryCatch #10 {IOException -> 0x01c4, all -> 0x0157, blocks: (B:65:0x0102, B:67:0x0108, B:95:0x0167, B:97:0x016f, B:100:0x0178, B:102:0x0180, B:104:0x0188, B:107:0x0192, B:109:0x019a, B:112:0x01a1, B:114:0x01af, B:116:0x01b6, B:70:0x0113, B:73:0x011c, B:76:0x0126, B:79:0x0130, B:82:0x0139, B:85:0x0144, B:87:0x014c, B:92:0x015d), top: B:217:0x0102 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0165  */
    /* JADX WARN: Code duplicated, block: B:99:0x0177  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static boolean hasCompatibleCPU(Context context) throws Throwable {
        String str;
        ElfData lib;
        ?? r12;
        boolean z;
        boolean z2;
        boolean z3;
        Throwable th;
        FileReader fileReader;
        FileReader fileReader2;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        boolean z7;
        float f;
        int i2;
        boolean z8;
        ?? r3;
        ?? r10;
        FileReader fileReader3;
        BufferedReader bufferedReader3;
        FileReader fileReader4;
        float f2;
        String line;
        boolean z9;
        String str2;
        String line2;
        if (errorMsg != null || isCompatible) {
            return isCompatible;
        }
        String[] aBIList21 = getABIList21();
        int length = aBIList21.length;
        int i3 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        while (true) {
            str = BuildHelper.ABI_X86;
            if (i3 >= length) {
                break;
            }
            String str3 = aBIList21[i3];
            if (BuildHelper.ABI_X86.equals(str3)) {
                z13 = true;
            } else {
                if ("x86_64".equals(str3)) {
                    z13 = true;
                } else if (BuildHelper.ABI_ARMv7a.equals(str3)) {
                    z11 = true;
                    z12 = true;
                } else if (BuildHelper.ABI_ARM.equals(str3)) {
                    z11 = true;
                } else if (BuildHelper.ABI_ARM64_V8A.equals(str3)) {
                    z10 = true;
                    z11 = true;
                    z12 = true;
                }
                z14 = true;
            }
            i3++;
        }
        File fileSearchLibrary = searchLibrary(context.getApplicationInfo());
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                if (fileSearchLibrary != null) {
                                    lib = readLib(fileSearchLibrary);
                                    if (lib != null) {
                                        int i4 = lib.e_machine;
                                        z = i4 == 3 || i4 == 62;
                                        z2 = i4 == 40 || i4 == 183;
                                        boolean z15 = i4 == 8;
                                        z3 = lib.is64bits;
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("ELF ABI = ");
                                        if (z2) {
                                            str = "arm";
                                        } else if (!z) {
                                            str = "mips";
                                        }
                                        sb.append(str);
                                        sb.append(", ");
                                        sb.append(z3 ? "64bits" : "32bits");
                                        Log.i(TAG, sb.toString());
                                        Log.i(TAG, "ELF arch = " + lib.att_arch);
                                        Log.i(TAG, "ELF fpu = " + lib.att_fpu);
                                        r12 = z15;
                                    }
                                    fileReader2 = new FileReader("/proc/cpuinfo");
                                    bufferedReader2 = new BufferedReader(fileReader2);
                                    z4 = false;
                                    z5 = false;
                                    i = 0;
                                    z6 = false;
                                    z7 = false;
                                    loop1: while (true) {
                                        f = -1.0f;
                                        while (true) {
                                            try {
                                                line2 = bufferedReader2.readLine();
                                                if (line2 != null) {
                                                    break loop1;
                                                }
                                                if (!line2.contains("AArch64") || line2.contains("ARMv7")) {
                                                    z11 = true;
                                                    z12 = true;
                                                } else if (line2.contains("ARMv6")) {
                                                    z11 = true;
                                                } else if (!line2.contains("clflush size") || line2.contains("GenuineIntel")) {
                                                    z13 = true;
                                                } else if (line2.contains("placeholder")) {
                                                    z4 = true;
                                                } else if (!line2.contains("CPU implementer") && line2.contains("0x69")) {
                                                    z5 = true;
                                                } else if (line2.contains("microsecond timers")) {
                                                    z6 = true;
                                                }
                                                if (line2.contains("neon") || line2.contains("asimd")) {
                                                    z10 = true;
                                                }
                                                if (line2.contains("vfp") || (line2.contains("Features") && line2.contains("fp"))) {
                                                    z7 = true;
                                                }
                                                if (line2.startsWith("processor")) {
                                                    i++;
                                                }
                                                if (f >= 0.0f && line2.toLowerCase(Locale.ENGLISH).contains("bogomips")) {
                                                    try {
                                                        f = Float.parseFloat(line2.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim());
                                                    } catch (NumberFormatException unused) {
                                                    }
                                                }
                                            } catch (IOException unused2) {
                                            } catch (Throwable th2) {
                                                th = th2;
                                                fileReader = fileReader2;
                                                bufferedReader = bufferedReader2;
                                                close(bufferedReader);
                                                close(fileReader);
                                                throw th;
                                            }
                                        }
                                    }
                                    close(bufferedReader2);
                                    close(fileReader2);
                                    boolean z16 = z6;
                                    boolean z17 = z7;
                                    float f3 = f;
                                    if (i == 0) {
                                        i2 = 1;
                                    } else {
                                        i2 = i;
                                    }
                                    z8 = true;
                                    isCompatible = true;
                                    if (lib != null) {
                                        if (z || z13) {
                                            z9 = false;
                                            if (z2 && !z11) {
                                                errorMsg = "ARM build on non ARM device";
                                                isCompatible = false;
                                            }
                                        } else if (z4 && z5) {
                                            Log.d(TAG, "Emulated armv7 detected, trying to launch x86 libraries");
                                            z9 = false;
                                        } else {
                                            errorMsg = "x86 build on non-x86 device";
                                            z9 = false;
                                            isCompatible = false;
                                        }
                                        if (r12 == 0 && !z16) {
                                            errorMsg = "MIPS build on non-MIPS device";
                                            isCompatible = z9;
                                        } else if (z2 && z16) {
                                            errorMsg = "ARM build on MIPS device";
                                            isCompatible = z9;
                                        }
                                        if (lib.e_machine == 40 && lib.att_arch.startsWith("v7") && !z12) {
                                            errorMsg = "ARMv7 build on non-ARMv7 device";
                                            isCompatible = false;
                                        }
                                        r12 = 40;
                                        if (lib.e_machine == 40) {
                                            str2 = "v6";
                                            if (lib.att_arch.startsWith("v6") || z11) {
                                                z8 = false;
                                                z8 = false;
                                                z8 = false;
                                                r12 = str2;
                                                r12 = str2;
                                                if (lib.att_fpu && !z17) {
                                                    errorMsg = "FPU-enabled build on non-FPU device";
                                                    isCompatible = false;
                                                }
                                            } else {
                                                errorMsg = "ARMv6 build on non-ARMv6 device";
                                                z8 = false;
                                                isCompatible = false;
                                            }
                                        } else {
                                            z8 = false;
                                        }
                                        if (z3 && !z14) {
                                            errorMsg = "64bits build on 32bits device";
                                            isCompatible = z8;
                                        }
                                    }
                                    r12 = str2;
                                    r12 = str2;
                                    fileReader3 = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
                                    bufferedReader3 = new BufferedReader(fileReader3);
                                    line = bufferedReader3.readLine();
                                    if (line != null) {
                                        f2 = Float.parseFloat(line) / 1000.0f;
                                    } else {
                                        f2 = -1.0f;
                                    }
                                    close(bufferedReader3);
                                    close(fileReader3);
                                    machineSpecs = new MachineSpecs();
                                    Log.d(TAG, "machineSpecs: hasArmV6: " + z11 + ", hasArmV7: " + z12 + ", hasX86: " + z13 + ", is64bits: " + z14);
                                    MachineSpecs machineSpecs2 = machineSpecs;
                                    machineSpecs2.hasArmV6 = z11;
                                    machineSpecs2.hasArmV7 = z12;
                                    machineSpecs2.hasFpu = z17;
                                    machineSpecs2.hasMips = z16;
                                    machineSpecs2.hasNeon = z10;
                                    machineSpecs2.hasX86 = z13;
                                    machineSpecs2.is64bits = z14;
                                    machineSpecs2.bogoMIPS = f3;
                                    machineSpecs2.processors = i2;
                                    machineSpecs2.frequency = f2;
                                    return isCompatible;
                                }
                                lib = null;
                                line = bufferedReader3.readLine();
                                if (line != null) {
                                    f2 = Float.parseFloat(line) / 1000.0f;
                                } else {
                                    f2 = -1.0f;
                                }
                                close(bufferedReader3);
                                close(fileReader3);
                            } catch (IOException unused3) {
                                Log.w(TAG, "Could not find maximum CPU frequency!");
                                fileReader4 = fileReader3;
                                close(bufferedReader3);
                                close(fileReader4);
                                f2 = -1.0f;
                            } catch (NumberFormatException unused4) {
                                Log.w(TAG, "Could not parse maximum CPU frequency!");
                                Log.w(TAG, "Failed to parse: ");
                                fileReader4 = fileReader3;
                                close(bufferedReader3);
                                close(fileReader4);
                                f2 = -1.0f;
                            }
                            bufferedReader3 = new BufferedReader(fileReader3);
                        } catch (IOException unused5) {
                            bufferedReader3 = null;
                            Log.w(TAG, "Could not find maximum CPU frequency!");
                            fileReader4 = fileReader3;
                            close(bufferedReader3);
                            close(fileReader4);
                            f2 = -1.0f;
                            machineSpecs = new MachineSpecs();
                            Log.d(TAG, "machineSpecs: hasArmV6: " + z11 + ", hasArmV7: " + z12 + ", hasX86: " + z13 + ", is64bits: " + z14);
                            MachineSpecs machineSpecs3 = machineSpecs;
                            machineSpecs3.hasArmV6 = z11;
                            machineSpecs3.hasArmV7 = z12;
                            machineSpecs3.hasFpu = z17;
                            machineSpecs3.hasMips = z16;
                            machineSpecs3.hasNeon = z10;
                            machineSpecs3.hasX86 = z13;
                            machineSpecs3.is64bits = z14;
                            machineSpecs3.bogoMIPS = f3;
                            machineSpecs3.processors = i2;
                            machineSpecs3.frequency = f2;
                            return isCompatible;
                        } catch (NumberFormatException unused6) {
                            bufferedReader3 = null;
                            Log.w(TAG, "Could not parse maximum CPU frequency!");
                            Log.w(TAG, "Failed to parse: ");
                            fileReader4 = fileReader3;
                            close(bufferedReader3);
                            close(fileReader4);
                            f2 = -1.0f;
                            machineSpecs = new MachineSpecs();
                            Log.d(TAG, "machineSpecs: hasArmV6: " + z11 + ", hasArmV7: " + z12 + ", hasX86: " + z13 + ", is64bits: " + z14);
                            MachineSpecs machineSpecs4 = machineSpecs;
                            machineSpecs4.hasArmV6 = z11;
                            machineSpecs4.hasArmV7 = z12;
                            machineSpecs4.hasFpu = z17;
                            machineSpecs4.hasMips = z16;
                            machineSpecs4.hasNeon = z10;
                            machineSpecs4.hasX86 = z13;
                            machineSpecs4.is64bits = z14;
                            machineSpecs4.bogoMIPS = f3;
                            machineSpecs4.processors = i2;
                            machineSpecs4.frequency = f2;
                            return isCompatible;
                        } catch (Throwable th3) {
                            th = th3;
                            r3 = 0;
                            r10 = fileReader3;
                            close(r3);
                            close(r10);
                            throw th;
                        }
                        fileReader3 = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
                    } catch (Throwable th4) {
                        th = th4;
                        r3 = r12;
                        r10 = z8;
                    }
                } catch (IOException unused7) {
                    fileReader3 = null;
                } catch (NumberFormatException unused8) {
                    fileReader3 = null;
                } catch (Throwable th5) {
                    th = th5;
                    r3 = 0;
                    r10 = 0;
                }
                bufferedReader2 = new BufferedReader(fileReader2);
                z4 = false;
                z5 = false;
                i = 0;
                z6 = false;
                z7 = false;
                loop1: while (true) {
                    f = -1.0f;
                    while (true) {
                        line2 = bufferedReader2.readLine();
                        if (line2 != null) {
                            break loop1;
                            break loop1;
                        }
                        if (!line2.contains("AArch64")) {
                            z11 = true;
                            z12 = true;
                        } else if (line2.contains("ARMv6")) {
                            z11 = true;
                        } else if (!line2.contains("clflush size")) {
                            z13 = true;
                        } else if (line2.contains("placeholder")) {
                            z4 = true;
                        } else if (!line2.contains("CPU implementer")) {
                            if (line2.contains("microsecond timers")) {
                                z6 = true;
                            }
                        } else if (line2.contains("microsecond timers")) {
                            z6 = true;
                        }
                        if (line2.contains("neon")) {
                            z10 = true;
                        } else {
                            z10 = true;
                        }
                        if (line2.contains("vfp")) {
                            z7 = true;
                        } else {
                            z7 = true;
                        }
                        if (line2.startsWith("processor")) {
                            i++;
                        }
                        if (f >= 0.0f) {
                        }
                    }
                }
            } catch (IOException unused9) {
                bufferedReader2 = null;
                z4 = false;
                z5 = false;
                i = 0;
                z6 = false;
                z7 = false;
                f = -1.0f;
            } catch (Throwable th6) {
                th = th6;
                fileReader = fileReader2;
                bufferedReader = null;
                close(bufferedReader);
                close(fileReader);
                throw th;
            }
            fileReader2 = new FileReader("/proc/cpuinfo");
        } catch (IOException unused10) {
            fileReader2 = null;
        } catch (Throwable th7) {
            th = th7;
            fileReader = null;
        }
        Log.w(TAG, "WARNING: Unable to read liblanjni.so; cannot check device ABI!");
        r12 = 0;
        z = false;
        z2 = false;
        z3 = false;
        close(bufferedReader2);
        close(fileReader2);
        boolean z18 = z6;
        boolean z19 = z7;
        float f4 = f;
        if (i == 0) {
            i2 = 1;
        } else {
            i2 = i;
        }
        z8 = true;
        isCompatible = true;
        if (lib != null) {
            if (z) {
                z9 = false;
                if (z2) {
                    errorMsg = "ARM build on non ARM device";
                    isCompatible = false;
                }
            } else {
                z9 = false;
                if (z2) {
                    errorMsg = "ARM build on non ARM device";
                    isCompatible = false;
                }
            }
            if (r12 == 0) {
                if (z2) {
                    errorMsg = "ARM build on MIPS device";
                    isCompatible = z9;
                }
            } else if (z2) {
                errorMsg = "ARM build on MIPS device";
                isCompatible = z9;
            }
            if (lib.e_machine == 40) {
                errorMsg = "ARMv7 build on non-ARMv7 device";
                isCompatible = false;
            }
            r12 = 40;
            if (lib.e_machine == 40) {
                str2 = "v6";
                if (lib.att_arch.startsWith("v6")) {
                    z8 = false;
                    z8 = false;
                    z8 = false;
                    r12 = str2;
                    r12 = str2;
                    if (lib.att_fpu) {
                        errorMsg = "FPU-enabled build on non-FPU device";
                        isCompatible = false;
                    }
                } else {
                    z8 = false;
                    z8 = false;
                    z8 = false;
                    r12 = str2;
                    r12 = str2;
                    if (lib.att_fpu) {
                        errorMsg = "FPU-enabled build on non-FPU device";
                        isCompatible = false;
                    }
                }
            } else {
                z8 = false;
            }
            if (z3) {
                errorMsg = "64bits build on 32bits device";
                isCompatible = z8;
            }
        }
        r12 = str2;
        r12 = str2;
        machineSpecs = new MachineSpecs();
        Log.d(TAG, "machineSpecs: hasArmV6: " + z11 + ", hasArmV7: " + z12 + ", hasX86: " + z13 + ", is64bits: " + z14);
        MachineSpecs machineSpecs5 = machineSpecs;
        machineSpecs5.hasArmV6 = z11;
        machineSpecs5.hasArmV7 = z12;
        machineSpecs5.hasFpu = z19;
        machineSpecs5.hasMips = z18;
        machineSpecs5.hasNeon = z10;
        machineSpecs5.hasX86 = z13;
        machineSpecs5.is64bits = z14;
        machineSpecs5.bogoMIPS = f4;
        machineSpecs5.processors = i2;
        machineSpecs5.frequency = f2;
        return isCompatible;
    }

    private static boolean readArmAttributes(RandomAccessFile randomAccessFile, ElfData elfData) throws IOException {
        byte[] bArr = new byte[elfData.sh_size];
        randomAccessFile.seek(elfData.sh_offset);
        randomAccessFile.readFully(bArr);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(elfData.order);
        if (byteBufferWrap.get() != 65) {
            return false;
        }
        while (byteBufferWrap.remaining() > 0) {
            int iPosition = byteBufferWrap.position();
            int i = byteBufferWrap.getInt();
            if ("aeabi".equals(getString(byteBufferWrap))) {
                while (byteBufferWrap.position() < iPosition + i) {
                    int iPosition2 = byteBufferWrap.position();
                    byte b = byteBufferWrap.get();
                    int i2 = byteBufferWrap.getInt();
                    if (b != 1) {
                        byteBufferWrap.position(iPosition2 + i2);
                    } else {
                        while (byteBufferWrap.position() < iPosition2 + i2) {
                            int uleb128 = getUleb128(byteBufferWrap);
                            if (uleb128 == 6) {
                                elfData.att_arch = CPU_archs[getUleb128(byteBufferWrap)];
                            } else if (uleb128 == 27) {
                                getUleb128(byteBufferWrap);
                                elfData.att_fpu = true;
                            } else {
                                int i3 = uleb128 % 128;
                                if (i3 == 4 || i3 == 5 || i3 == 32 || (i3 > 32 && (i3 & 1) != 0)) {
                                    getString(byteBufferWrap);
                                } else {
                                    getUleb128(byteBufferWrap);
                                }
                            }
                        }
                    }
                }
                break;
            }
        }
        return true;
    }

    private static boolean readHeader(RandomAccessFile randomAccessFile, ElfData elfData) throws IOException {
        byte b;
        byte[] bArr = new byte[52];
        randomAccessFile.readFully(bArr);
        if (bArr[0] != 127 || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70 || ((b = bArr[4]) != 1 && b != 2)) {
            Log.e(TAG, "ELF header invalid");
            return false;
        }
        elfData.is64bits = b == 2;
        elfData.order = bArr[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(elfData.order);
        elfData.e_machine = byteBufferWrap.getShort(18);
        elfData.e_shoff = byteBufferWrap.getInt(32);
        elfData.e_shnum = byteBufferWrap.getShort(48);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0059: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:34:0x0059 */
    private static ElfData readLib(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        Object[] objArr = 0;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    ElfData elfData = new ElfData();
                    if (!readHeader(randomAccessFile, elfData)) {
                        close(randomAccessFile);
                        return null;
                    }
                    int i = elfData.e_machine;
                    if (i != 3 && i != 8) {
                        if (i == 40) {
                            randomAccessFile.close();
                            RandomAccessFile randomAccessFile4 = new RandomAccessFile(file, "r");
                            try {
                                if (!readSection(randomAccessFile4, elfData)) {
                                    close(randomAccessFile4);
                                    return null;
                                }
                                randomAccessFile4.close();
                                randomAccessFile = new RandomAccessFile(file, "r");
                                if (readArmAttributes(randomAccessFile, elfData)) {
                                    close(randomAccessFile);
                                    return elfData;
                                }
                                close(randomAccessFile);
                                return null;
                            } catch (IOException e) {
                                e = e;
                                randomAccessFile = randomAccessFile4;
                            } catch (Throwable th) {
                                th = th;
                                randomAccessFile3 = randomAccessFile4;
                                close(randomAccessFile3);
                                throw th;
                            }
                        } else if (i != 62 && i != 183) {
                            close(randomAccessFile);
                            return null;
                        }
                    }
                    close(randomAccessFile);
                    return elfData;
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile3 = randomAccessFile2;
            }
        } catch (IOException e3) {
            e = e3;
            randomAccessFile = null;
        } catch (Throwable th3) {
            th = th3;
        }
        e.printStackTrace();
        close(randomAccessFile);
        return null;
    }

    private static boolean readSection(RandomAccessFile randomAccessFile, ElfData elfData) throws IOException {
        byte[] bArr = new byte[40];
        randomAccessFile.seek(elfData.e_shoff);
        for (int i = 0; i < elfData.e_shnum; i++) {
            randomAccessFile.readFully(bArr);
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.order(elfData.order);
            if (byteBufferWrap.getInt(4) == SHT_ARM_ATTRIBUTES) {
                elfData.sh_offset = byteBufferWrap.getInt(16);
                elfData.sh_size = byteBufferWrap.getInt(20);
                return true;
            }
        }
        return false;
    }

    @TargetApi(9)
    private static File searchLibrary(ApplicationInfo applicationInfo) {
        String[] strArrSplit = (applicationInfo.flags & 1) != 0 ? System.getProperty("java.library.path").split(StringUtils.PROCESS_POSTFIX_DELIMITER) : new String[]{applicationInfo.nativeLibraryDir};
        if (strArrSplit[0] == null) {
            Log.e(TAG, "can't find library path");
            return null;
        }
        for (String str : strArrSplit) {
            File file = new File(str, "liblanjni.so");
            if (file.exists() && file.canRead()) {
                return file;
            }
        }
        Log.e(TAG, "WARNING: Can't find shared library");
        return null;
    }
}
