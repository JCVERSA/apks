package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.MimeTypes;
import defpackage.y45;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;

@SuppressLint({"InlinedApi"})
public final class sv0 {
    private static final tv0 a;
    private static final Pattern b;

    @GuardedBy("MediaCodecUtil.class")
    private static final HashMap<a, List<kv0>> c;
    private static final String d;
    private static final String e;
    private static final String f;
    private static final String g;
    private static final String h;
    private static final String i;
    private static final String j;
    private static int k;

    public static final class a {
        public final String a;
        public final boolean b;
        public final boolean c;

        public a(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c;
        }

        public final int hashCode() {
            return ((v3.a(this.a, 31, 31) + (this.b ? 1231 : 1237)) * 31) + (this.c ? 1231 : 1237);
        }
    }

    public static class b extends Exception {
        private b(Exception exc) {
            super("Failed to query underlying media codecs", exc);
        }
    }

    public interface c {
        int a();

        MediaCodecInfo a(int i);

        boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b();
    }

    public static final class d implements c {
        @Override
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override
        public final boolean b() {
            return false;
        }

        private d() {
        }

        @Override
        public final MediaCodecInfo a(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        @Override
        public final int a() {
            return MediaCodecList.getCodecCount();
        }

        @Override
        public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }
    }

    public interface f<T> {
        int a(T t);
    }

    static {
        tv0 tv0VarG = nm1.g();
        a = tv0VarG;
        b = Pattern.compile("^\\D?(\\d+)$");
        c = new HashMap<>();
        d = tv0VarG.b();
        e = tv0VarG.c();
        f = tv0VarG.O();
        g = tv0VarG.q();
        h = tv0VarG.r();
        i = tv0VarG.a();
        j = tv0VarG.F();
        k = -1;
    }

    @Nullable
    public static String a(jc0 jc0Var) {
        Pair<Integer, Integer> pairB;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(jc0Var.m)) {
            return "audio/eac3";
        }
        if (!"video/dolby-vision".equals(jc0Var.m) || (pairB = b(jc0Var)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairB.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return "video/hevc";
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:135:0x01be  */
    /* JADX WARN: Code duplicated, block: B:18:0x006b  */
    /* JADX WARN: Code duplicated, block: B:309:0x043c A[Catch: NumberFormatException -> 0x044d, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x044d, blocks: (B:280:0x03e3, B:282:0x03f5, B:293:0x0412, B:309:0x043c), top: B:479:0x03e3 }] */
    /* JADX WARN: Code duplicated, block: B:406:0x064a  */
    /* JADX WARN: Code duplicated, block: B:445:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:446:0x06dc  */
    /* JADX WARN: Code duplicated, block: B:447:0x06df  */
    /* JADX WARN: Code duplicated, block: B:448:0x06e2  */
    /* JADX WARN: Code duplicated, block: B:449:0x06e5  */
    /* JADX WARN: Code duplicated, block: B:450:0x06e8  */
    /* JADX WARN: Code duplicated, block: B:451:0x06eb  */
    /* JADX WARN: Code duplicated, block: B:452:0x06ee  */
    /* JADX WARN: Code duplicated, block: B:453:0x06ef A[PHI: r10
      0x06ef: PHI (r10v4 int) = 
      (r10v0 int)
      (r10v1 int)
      (r10v2 int)
      (r10v3 int)
      (r10v6 int)
      (r10v7 int)
      (r10v8 int)
      (r10v9 int)
      (r10v10 int)
      (r10v11 int)
      (r10v12 int)
      (r10v13 int)
      (r10v14 int)
      (r10v15 int)
      (r10v16 int)
      (r10v17 int)
     binds: [B:446:0x06dc, B:467:0x0712, B:466:0x0710, B:465:0x070e, B:464:0x070b, B:463:0x0708, B:462:0x0705, B:461:0x0702, B:460:0x06ff, B:459:0x06fd, B:458:0x06fa, B:457:0x06f7, B:456:0x06f5, B:455:0x06f3, B:454:0x06f1, B:452:0x06ee] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:454:0x06f1  */
    /* JADX WARN: Code duplicated, block: B:455:0x06f3  */
    /* JADX WARN: Code duplicated, block: B:456:0x06f5  */
    /* JADX WARN: Code duplicated, block: B:457:0x06f7  */
    /* JADX WARN: Code duplicated, block: B:458:0x06fa  */
    /* JADX WARN: Code duplicated, block: B:459:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:460:0x06ff  */
    /* JADX WARN: Code duplicated, block: B:461:0x0702  */
    /* JADX WARN: Code duplicated, block: B:462:0x0705  */
    /* JADX WARN: Code duplicated, block: B:463:0x0708  */
    /* JADX WARN: Code duplicated, block: B:464:0x070b  */
    /* JADX WARN: Code duplicated, block: B:465:0x070e  */
    /* JADX WARN: Code duplicated, block: B:466:0x0710  */
    /* JADX WARN: Code duplicated, block: B:467:0x0712  */
    /* JADX WARN: Code duplicated, block: B:469:0x0716  */
    /* JADX WARN: Code duplicated, block: B:470:0x071c  */
    /* JADX WARN: Code duplicated, block: B:498:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:80:0x0124  */
    @Nullable
    public static Pair<Integer, Integer> b(jc0 jc0Var) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Integer num;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Integer num2;
        char c2;
        Integer num3;
        byte b2;
        byte b3;
        int i16;
        int i17 = 1;
        String str = jc0Var.j;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(jc0Var.m)) {
            String str2 = jc0Var.j;
            if (strArrSplit.length < 3) {
                rv0.a("Ignoring malformed Dolby Vision codec string: ", str2, "MediaCodecUtil");
                return null;
            }
            Matcher matcher = b.matcher(strArrSplit[1]);
            if (!matcher.matches()) {
                rv0.a("Ignoring malformed Dolby Vision codec string: ", str2, "MediaCodecUtil");
                return null;
            }
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                switch (strGroup) {
                    case "00":
                        c2 = 2;
                        num2 = 1;
                        break;
                    case "01":
                        c2 = 2;
                        num2 = 2;
                        break;
                    case "02":
                        num2 = 4;
                        c2 = 2;
                        break;
                    case "03":
                        num2 = 8;
                        c2 = 2;
                        break;
                    case "04":
                        i16 = 16;
                        num2 = i16;
                        c2 = 2;
                        break;
                    case "05":
                        i16 = 32;
                        num2 = i16;
                        c2 = 2;
                        break;
                    case "06":
                        i16 = 64;
                        num2 = i16;
                        c2 = 2;
                        break;
                    case "07":
                        i16 = 128;
                        num2 = i16;
                        c2 = 2;
                        break;
                    case "08":
                        i16 = 256;
                        num2 = i16;
                        c2 = 2;
                        break;
                    case "09":
                        i16 = 512;
                        num2 = i16;
                        c2 = 2;
                        break;
                    default:
                        num2 = null;
                        c2 = 2;
                        break;
                }
            } else {
                num2 = null;
                c2 = 2;
            }
            if (num2 == null) {
                rv0.a("Unknown Dolby Vision profile string: ", strGroup, "MediaCodecUtil");
                return null;
            }
            String str3 = strArrSplit[c2];
            if (str3 != null) {
                switch (str3.hashCode()) {
                    case 1537:
                        if (!str3.equals("01")) {
                            b2 = -1;
                        } else {
                            b2 = 0;
                        }
                        break;
                    case 1538:
                        if (!str3.equals("02")) {
                            b2 = -1;
                        } else {
                            b2 = 1;
                        }
                        break;
                    case 1539:
                        if (!str3.equals("03")) {
                            b2 = -1;
                        } else {
                            b2 = 2;
                        }
                        break;
                    case 1540:
                        if (!str3.equals("04")) {
                            b2 = -1;
                        } else {
                            b2 = 3;
                        }
                        break;
                    case 1541:
                        if (!str3.equals("05")) {
                            b2 = -1;
                        } else {
                            b2 = 4;
                        }
                        break;
                    case 1542:
                        if (!str3.equals("06")) {
                            b2 = -1;
                        } else {
                            b2 = 5;
                        }
                        break;
                    case 1543:
                        if (!str3.equals("07")) {
                            b2 = -1;
                        } else {
                            b2 = 6;
                        }
                        break;
                    case 1544:
                        if (!str3.equals("08")) {
                            b2 = -1;
                        } else {
                            b2 = 7;
                        }
                        break;
                    case 1545:
                        if (!str3.equals("09")) {
                            b2 = -1;
                        } else {
                            b2 = 8;
                        }
                        break;
                    case 1567:
                        if (!str3.equals("10")) {
                            b2 = -1;
                        } else {
                            b3 = 9;
                            b2 = b3;
                        }
                        break;
                    case 1568:
                        if (!str3.equals("11")) {
                            b2 = -1;
                        } else {
                            b2 = 10;
                        }
                        break;
                    case 1569:
                        if (!str3.equals("12")) {
                            b2 = -1;
                        } else {
                            b3 = ByteCode.T_LONG;
                            b2 = b3;
                        }
                        break;
                    case 1570:
                        if (!str3.equals("13")) {
                            b2 = -1;
                        } else {
                            b3 = 12;
                            b2 = b3;
                        }
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                switch (b2) {
                    case 0:
                        num3 = 1;
                        break;
                    case 1:
                        num3 = 2;
                        break;
                    case 2:
                        num3 = 4;
                        break;
                    case 3:
                        num3 = 8;
                        break;
                    case 4:
                        num3 = 16;
                        break;
                    case 5:
                        num3 = 32;
                        break;
                    case 6:
                        num3 = 64;
                        break;
                    case 7:
                        num3 = 128;
                        break;
                    case 8:
                        num3 = 256;
                        break;
                    case 9:
                        num3 = 512;
                        break;
                    case 10:
                        num3 = 1024;
                        break;
                    case 11:
                        num3 = 2048;
                        break;
                    case 12:
                        num3 = 4096;
                        break;
                    default:
                        num3 = null;
                        break;
                }
            } else {
                num3 = null;
            }
            if (num3 != null) {
                return new Pair<>(num2, num3);
            }
            rv0.a("Unknown Dolby Vision level string: ", str3, "MediaCodecUtil");
            return null;
        }
        if (d.equals(strArrSplit[0]) || e.equals(strArrSplit[0])) {
            String str4 = jc0Var.j;
            if (strArrSplit.length < 2) {
                rv0.a("Ignoring malformed AVC codec string: ", str4, "MediaCodecUtil");
                return null;
            }
            try {
                if (strArrSplit[1].length() == 6) {
                    i3 = Integer.parseInt(strArrSplit[1].substring(0, 2), 16);
                    i2 = 4;
                    i5 = Integer.parseInt(strArrSplit[1].substring(4), 16);
                    i4 = 2;
                } else {
                    i2 = 4;
                    if (strArrSplit.length < 3) {
                        et0.d("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str4);
                        return null;
                    }
                    i3 = Integer.parseInt(strArrSplit[1]);
                    i4 = 2;
                    i5 = Integer.parseInt(strArrSplit[2]);
                }
                if (i3 == 66) {
                    i6 = 1;
                } else if (i3 == 77) {
                    i6 = i4;
                } else if (i3 == 88) {
                    i6 = i2;
                } else if (i3 == 100) {
                    i6 = 8;
                } else if (i3 == 110) {
                    i6 = 16;
                } else {
                    if (i3 != 122) {
                        if (i3 != 244) {
                            i7 = -1;
                            i6 = -1;
                        } else {
                            i6 = 64;
                        }
                        if (i6 == i7) {
                            xr0.a("Unknown AVC profile: ", i3, "MediaCodecUtil");
                            return null;
                        }
                        switch (i5) {
                            case 10:
                                i8 = -1;
                                break;
                            case 11:
                                i17 = i2;
                                i8 = -1;
                                break;
                            case 12:
                                i17 = 8;
                                i8 = -1;
                                break;
                            case 13:
                                i17 = 16;
                                i8 = -1;
                                break;
                            default:
                                switch (i5) {
                                    case 20:
                                        i17 = 32;
                                        i8 = -1;
                                        break;
                                    case 21:
                                        i17 = 64;
                                        i8 = -1;
                                        break;
                                    case 22:
                                        i17 = 128;
                                        i8 = -1;
                                        break;
                                    default:
                                        switch (i5) {
                                            case 30:
                                                i17 = 256;
                                                i8 = -1;
                                                break;
                                            case 31:
                                                i17 = 512;
                                                i8 = -1;
                                                break;
                                            case 32:
                                                i17 = 1024;
                                                i8 = -1;
                                                break;
                                            default:
                                                switch (i5) {
                                                    case 40:
                                                        i17 = 2048;
                                                        i8 = -1;
                                                        break;
                                                    case 41:
                                                        i17 = 4096;
                                                        i8 = -1;
                                                        break;
                                                    case 42:
                                                        i17 = 8192;
                                                        i8 = -1;
                                                        break;
                                                    default:
                                                        switch (i5) {
                                                            case 50:
                                                                i17 = 16384;
                                                                i8 = -1;
                                                                break;
                                                            case 51:
                                                                i17 = 32768;
                                                                i8 = -1;
                                                                break;
                                                            case 52:
                                                                i17 = 65536;
                                                                i8 = -1;
                                                                break;
                                                            default:
                                                                i8 = -1;
                                                                i17 = -1;
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        if (i17 == i8) {
                            return new Pair<>(Integer.valueOf(i6), Integer.valueOf(i17));
                        }
                        xr0.a("Unknown AVC level: ", i5, "MediaCodecUtil");
                        return null;
                    }
                    i6 = 32;
                }
                i7 = -1;
                if (i6 == i7) {
                    xr0.a("Unknown AVC profile: ", i3, "MediaCodecUtil");
                    return null;
                }
                switch (i5) {
                    case 10:
                        i8 = -1;
                        break;
                    case 11:
                        i17 = i2;
                        i8 = -1;
                        break;
                    case 12:
                        i17 = 8;
                        i8 = -1;
                        break;
                    case 13:
                        i17 = 16;
                        i8 = -1;
                        break;
                    default:
                        switch (i5) {
                            case 20:
                                i17 = 32;
                                i8 = -1;
                                break;
                            case 21:
                                i17 = 64;
                                i8 = -1;
                                break;
                            case 22:
                                i17 = 128;
                                i8 = -1;
                                break;
                            default:
                                switch (i5) {
                                    case 30:
                                        i17 = 256;
                                        i8 = -1;
                                        break;
                                    case 31:
                                        i17 = 512;
                                        i8 = -1;
                                        break;
                                    case 32:
                                        i17 = 1024;
                                        i8 = -1;
                                        break;
                                    default:
                                        switch (i5) {
                                            case 40:
                                                i17 = 2048;
                                                i8 = -1;
                                                break;
                                            case 41:
                                                i17 = 4096;
                                                i8 = -1;
                                                break;
                                            case 42:
                                                i17 = 8192;
                                                i8 = -1;
                                                break;
                                            default:
                                                switch (i5) {
                                                    case 50:
                                                        i17 = 16384;
                                                        i8 = -1;
                                                        break;
                                                    case 51:
                                                        i17 = 32768;
                                                        i8 = -1;
                                                        break;
                                                    case 52:
                                                        i17 = 65536;
                                                        i8 = -1;
                                                        break;
                                                    default:
                                                        i8 = -1;
                                                        i17 = -1;
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                if (i17 == i8) {
                    return new Pair<>(Integer.valueOf(i6), Integer.valueOf(i17));
                }
                xr0.a("Unknown AVC level: ", i5, "MediaCodecUtil");
                return null;
            } catch (NumberFormatException unused) {
                rv0.a("Ignoring malformed AVC codec string: ", str4, "MediaCodecUtil");
                return null;
            }
        }
        if (f.equals(strArrSplit[0])) {
            String str5 = jc0Var.j;
            if (strArrSplit.length < 3) {
                rv0.a("Ignoring malformed VP9 codec string: ", str5, "MediaCodecUtil");
                return null;
            }
            try {
                int i18 = Integer.parseInt(strArrSplit[1]);
                int i19 = Integer.parseInt(strArrSplit[2]);
                if (i18 == 0) {
                    i14 = 1;
                } else if (i18 == 1) {
                    i14 = 2;
                } else if (i18 != 2) {
                    i14 = i18 != 3 ? -1 : 8;
                } else {
                    i14 = 4;
                }
                if (i14 == -1) {
                    xr0.a("Unknown VP9 profile: ", i18, "MediaCodecUtil");
                    return null;
                }
                if (i19 == 10) {
                    i15 = -1;
                } else if (i19 == 11) {
                    i15 = -1;
                    i17 = 2;
                } else if (i19 == 20) {
                    i15 = -1;
                    i17 = 4;
                } else if (i19 != 21) {
                    if (i19 == 30) {
                        i17 = 16;
                    } else if (i19 == 31) {
                        i17 = 32;
                    } else if (i19 == 40) {
                        i17 = 64;
                    } else if (i19 == 41) {
                        i17 = 128;
                    } else if (i19 == 50) {
                        i17 = 256;
                    } else if (i19 != 51) {
                        switch (i19) {
                            case 60:
                                i17 = 2048;
                                break;
                            case 61:
                                i17 = 4096;
                                break;
                            case 62:
                                i17 = 8192;
                                break;
                            default:
                                i15 = -1;
                                i17 = -1;
                                break;
                        }
                    } else {
                        i17 = 512;
                    }
                    i15 = -1;
                } else {
                    i15 = -1;
                    i17 = 8;
                }
                if (i17 != i15) {
                    return new Pair<>(Integer.valueOf(i14), Integer.valueOf(i17));
                }
                xr0.a("Unknown VP9 level: ", i19, "MediaCodecUtil");
                return null;
            } catch (NumberFormatException unused2) {
                rv0.a("Ignoring malformed VP9 codec string: ", str5, "MediaCodecUtil");
                return null;
            }
        }
        if (g.equals(strArrSplit[0]) || h.equals(strArrSplit[0])) {
            String str6 = jc0Var.j;
            if (strArrSplit.length < 4) {
                rv0.a("Ignoring malformed HEVC codec string: ", str6, "MediaCodecUtil");
                return null;
            }
            Matcher matcher2 = b.matcher(strArrSplit[1]);
            if (!matcher2.matches()) {
                rv0.a("Ignoring malformed HEVC codec string: ", str6, "MediaCodecUtil");
                return null;
            }
            String strGroup2 = matcher2.group(1);
            if ("1".equals(strGroup2)) {
                i9 = 1;
            } else {
                if (!"2".equals(strGroup2)) {
                    rv0.a("Unknown HEVC profile string: ", strGroup2, "MediaCodecUtil");
                    return null;
                }
                i9 = 2;
            }
            String str7 = strArrSplit[3];
            if (str7 == null) {
                num = null;
            } else {
                tv0 tv0Var = a;
                if (tv0Var.A().equals(str7)) {
                    num = 1;
                } else if (tv0Var.B().equals(str7)) {
                    num = 4;
                } else if (tv0Var.C().equals(str7)) {
                    num = 16;
                } else if (tv0Var.D().equals(str7)) {
                    num = 64;
                } else if (tv0Var.E().equals(str7)) {
                    num = 256;
                } else if (tv0Var.s().equals(str7)) {
                    num = 1024;
                } else if (tv0Var.t().equals(str7)) {
                    num = 4096;
                } else if (tv0Var.u().equals(str7)) {
                    num = 16384;
                } else if (tv0Var.v().equals(str7)) {
                    num = 65536;
                } else if (tv0Var.w().equals(str7)) {
                    num = 262144;
                } else if (tv0Var.x().equals(str7)) {
                    num = 1048576;
                } else if (tv0Var.y().equals(str7)) {
                    num = 4194304;
                } else if (tv0Var.z().equals(str7)) {
                    num = 16777216;
                } else if (tv0Var.l().equals(str7)) {
                    num = 2;
                } else if (tv0Var.m().equals(str7)) {
                    num = 8;
                } else if (tv0Var.n().equals(str7)) {
                    num = 32;
                } else if (tv0Var.o().equals(str7)) {
                    num = 128;
                } else if (tv0Var.p().equals(str7)) {
                    num = 512;
                } else if (tv0Var.d().equals(str7)) {
                    num = 2048;
                } else if (tv0Var.e().equals(str7)) {
                    num = 8192;
                } else if (tv0Var.f().equals(str7)) {
                    num = 32768;
                } else if (tv0Var.g().equals(str7)) {
                    num = 131072;
                } else if (tv0Var.h().equals(str7)) {
                    num = 524288;
                } else if (tv0Var.i().equals(str7)) {
                    num = 2097152;
                } else if (tv0Var.j().equals(str7)) {
                    num = 8388608;
                } else if (tv0Var.k().equals(str7)) {
                    num = 33554432;
                } else {
                    num = null;
                }
            }
            if (num != null) {
                return new Pair<>(Integer.valueOf(i9), num);
            }
            rv0.a("Unknown HEVC level string: ", str7, "MediaCodecUtil");
            return null;
        }
        if (!i.equals(strArrSplit[0])) {
            if (!j.equals(strArrSplit[0])) {
                return null;
            }
            String str8 = jc0Var.j;
            if (strArrSplit.length != 3) {
                rv0.a("Ignoring malformed MP4A codec string: ", str8, "MediaCodecUtil");
                return null;
            }
            try {
                if (!"audio/mp4a-latm".equals(w01.a(Integer.parseInt(strArrSplit[1], 16)))) {
                    return null;
                }
                int i20 = Integer.parseInt(strArrSplit[2]);
                if (i20 == 17) {
                    i10 = 17;
                } else if (i20 == 20) {
                    i10 = 20;
                } else if (i20 == 23) {
                    i10 = 23;
                } else if (i20 == 29) {
                    i10 = 29;
                } else if (i20 == 39) {
                    i10 = 39;
                } else {
                    if (i20 != 42) {
                        switch (i20) {
                            case 1:
                                i10 = 1;
                                break;
                            case 2:
                                i11 = -1;
                                i10 = 2;
                                break;
                            case 3:
                                i10 = 3;
                                break;
                            case 4:
                                i11 = -1;
                                i10 = 4;
                                break;
                            case 5:
                                i11 = -1;
                                i10 = 5;
                                break;
                            case 6:
                                i11 = -1;
                                i10 = 6;
                                break;
                            default:
                                i11 = -1;
                                i10 = -1;
                                break;
                        }
                        if (i10 != i11) {
                            return new Pair<>(Integer.valueOf(i10), 0);
                        }
                        return null;
                    }
                    i10 = 42;
                }
                i11 = -1;
                if (i10 != i11) {
                    return new Pair<>(Integer.valueOf(i10), 0);
                }
                return null;
            } catch (NumberFormatException unused3) {
                rv0.a("Ignoring malformed MP4A codec string: ", str8, "MediaCodecUtil");
                return null;
            }
        }
        String str9 = jc0Var.j;
        rq rqVar = jc0Var.y;
        if (strArrSplit.length < 4) {
            rv0.a("Ignoring malformed AV1 codec string: ", str9, "MediaCodecUtil");
            return null;
        }
        try {
            int i21 = Integer.parseInt(strArrSplit[1]);
            int i22 = Integer.parseInt(strArrSplit[2].substring(0, 2));
            int i23 = Integer.parseInt(strArrSplit[3]);
            if (i21 != 0) {
                xr0.a("Unknown AV1 profile: ", i21, "MediaCodecUtil");
                return null;
            }
            if (i23 != 8 && i23 != 10) {
                xr0.a("Unknown AV1 bit depth: ", i23, "MediaCodecUtil");
                return null;
            }
            int i24 = i23 == 8 ? 1 : (rqVar == null || !(rqVar.e != null || (i12 = rqVar.d) == 7 || i12 == 6)) ? 2 : 4096;
            switch (i22) {
                case 0:
                    i13 = -1;
                    break;
                case 1:
                    i13 = -1;
                    i17 = 2;
                    break;
                case 2:
                    i13 = -1;
                    i17 = 4;
                    break;
                case 3:
                    i13 = -1;
                    i17 = 8;
                    break;
                case 4:
                    i17 = 16;
                    i13 = -1;
                    break;
                case 5:
                    i17 = 32;
                    i13 = -1;
                    break;
                case 6:
                    i17 = 64;
                    i13 = -1;
                    break;
                case 7:
                    i17 = 128;
                    i13 = -1;
                    break;
                case 8:
                    i17 = 256;
                    i13 = -1;
                    break;
                case 9:
                    i17 = 512;
                    i13 = -1;
                    break;
                case 10:
                    i13 = -1;
                    i17 = 1024;
                    break;
                case 11:
                    i17 = 2048;
                    i13 = -1;
                    break;
                case 12:
                    i17 = 4096;
                    i13 = -1;
                    break;
                case 13:
                    i17 = 8192;
                    i13 = -1;
                    break;
                case 14:
                    i13 = -1;
                    i17 = 16384;
                    break;
                case 15:
                    i13 = -1;
                    i17 = 32768;
                    break;
                case 16:
                    i17 = 65536;
                    i13 = -1;
                    break;
                case 17:
                    i17 = 131072;
                    i13 = -1;
                    break;
                case 18:
                    i17 = 262144;
                    i13 = -1;
                    break;
                case 19:
                    i17 = 524288;
                    i13 = -1;
                    break;
                case 20:
                    i17 = 1048576;
                    i13 = -1;
                    break;
                case 21:
                    i17 = 2097152;
                    i13 = -1;
                    break;
                case 22:
                    i17 = 4194304;
                    i13 = -1;
                    break;
                case 23:
                    i17 = 8388608;
                    i13 = -1;
                    break;
                default:
                    i13 = -1;
                    i17 = -1;
                    break;
            }
            if (i17 != i13) {
                return new Pair<>(Integer.valueOf(i24), Integer.valueOf(i17));
            }
            xr0.a("Unknown AV1 level: ", i22, "MediaCodecUtil");
            return null;
        } catch (NumberFormatException unused4) {
            rv0.a("Ignoring malformed AV1 codec string: ", str9, "MediaCodecUtil");
            return null;
        }
    }

    @RequiresApi(21)
    public static final class e implements c {
        private final int a;

        @Nullable
        private MediaCodecInfo[] b;

        public e(boolean z, boolean z2) {
            this.a = (z || z2) ? 1 : 0;
        }

        @Override
        public final int a() {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
            return this.b.length;
        }

        @Override
        public final boolean b() {
            return true;
        }

        @Override
        public final MediaCodecInfo a(int i) {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
            return this.b[i];
        }

        @Override
        public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override
        public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }
    }

    @Nullable
    private static String a(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            tv0 tv0Var = a;
            byte[] bArrA = qv0.a(tv0Var, "T01YLk1TLkhFVkNEVi5EZWNvZGVy", 0, "decode(...)");
            Charset charset = defpackage.qv0.b;
            if (new String(bArrA, charset).equals(str)) {
                return new String(qv0.a(tv0Var, "dmlkZW8vaGV2Y2R2", 0, "decode(...)"), charset);
            }
            if (pv0.a(qv0.a(tv0Var, "T01YLlJUSy52aWRlby5kZWNvZGVy", 0, "decode(...)"), charset, str) || pv0.a(qv0.a(tv0Var, "T01YLnJlYWx0ZWsudmlkZW8uZGVjb2Rlci50dW5uZWxlZA==", 0, "decode(...)"), charset, str)) {
                return new String(qv0.a(tv0Var, "dmlkZW8vZHZfaGV2Yw==", 0, "decode(...)"), charset);
            }
            return null;
        }
        if (str2.equals(MimeTypes.AUDIO_ALAC) && new String(qv0.a(a, "T01YLmxnZS5hbGFjLmRlY29kZXI=", 0, "decode(...)"), defpackage.qv0.b).equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && new String(qv0.a(a, "T01YLmxnZS5mbGFjLmRlY29kZXI=", 0, "decode(...)"), defpackage.qv0.b).equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && new String(qv0.a(a, "T01YLmxnZS5hYzMuZGVjb2Rlcg==", 0, "decode(...)"), defpackage.qv0.b).equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0192 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:80:0x0169 A[Catch: Exception -> 0x0032, TRY_ENTER, TryCatch #6 {Exception -> 0x0032, blocks: (B:3:0x0008, B:5:0x001a, B:7:0x0024, B:83:0x0188, B:12:0x0035, B:15:0x0040, B:77:0x0161, B:80:0x0169, B:82:0x016f, B:84:0x0192, B:85:0x01b5), top: B:101:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x002a  */
    private static ArrayList<kv0> a(a aVar, c cVar) throws b {
        String strA;
        String str;
        String str2;
        int i2;
        boolean z;
        boolean z2;
        boolean zIsHardwareAccelerated;
        boolean zIsVendor;
        String str3;
        a aVar2 = aVar;
        try {
            ArrayList<kv0> arrayList = new ArrayList<>();
            String str4 = aVar2.a;
            int iA = cVar.a();
            boolean zB = cVar.b();
            int i3 = 0;
            while (i3 < iA) {
                MediaCodecInfo mediaCodecInfoA = cVar.a(i3);
                int i4 = f92.a;
                if (i4 < 29 || !mediaCodecInfoA.isAlias()) {
                    String name = mediaCodecInfoA.getName();
                    if (a(mediaCodecInfoA, name, zB, str4) && (strA = a(mediaCodecInfoA, name, str4)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoA.getCapabilitiesForType(strA);
                            boolean zA = cVar.a("tunneled-playback", strA, capabilitiesForType);
                            boolean zA2 = cVar.a("tunneled-playback", capabilitiesForType);
                            boolean z3 = aVar2.c;
                            if ((z3 || !zA2) && (!z3 || zA)) {
                                boolean zA3 = cVar.a("secure-playback", strA, capabilitiesForType);
                                boolean zA4 = cVar.a("secure-playback", capabilitiesForType);
                                boolean z4 = aVar2.b;
                                if ((z4 || !zA4) && (!z4 || zA3)) {
                                    if (i4 >= 29) {
                                        zIsHardwareAccelerated = mediaCodecInfoA.isHardwareAccelerated();
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                        zIsHardwareAccelerated = !a(mediaCodecInfoA, str4);
                                    }
                                    boolean zA5 = a(mediaCodecInfoA, str4);
                                    if (i4 >= 29) {
                                        zIsVendor = mediaCodecInfoA.isVendor();
                                    } else {
                                        String strB = fg.b(mediaCodecInfoA.getName());
                                        a.getClass();
                                        try {
                                            byte[] bArrDecode = Base64.decode("b214Lmdvb2dsZS4=", 0);
                                            y45.i(bArrDecode, "decode(...)");
                                            zIsVendor = (strB.startsWith(new String(bArrDecode, defpackage.qv0.b)) || strB.startsWith("c2.android.") || strB.startsWith("c2.google.")) ? false : z2;
                                        } catch (Exception e2) {
                                            e = e2;
                                            str = strA;
                                            str2 = name;
                                            i2 = i3;
                                            z = zB;
                                            if (f92.a > 23) {
                                            }
                                            et0.b("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                            throw e;
                                        }
                                    }
                                    if (zB && aVar2.b == zA3) {
                                        str = strA;
                                        str3 = name;
                                        i2 = i3;
                                        z = zB;
                                        arrayList.add(kv0.a(name, str4, strA, capabilitiesForType, zIsHardwareAccelerated, zA5, zIsVendor, false));
                                    } else {
                                        if (!zB) {
                                            try {
                                                if (!aVar2.b) {
                                                    str = strA;
                                                    str3 = name;
                                                    i2 = i3;
                                                    z = zB;
                                                    try {
                                                        arrayList.add(kv0.a(name, str4, strA, capabilitiesForType, zIsHardwareAccelerated, zA5, zIsVendor, false));
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                        str2 = str3;
                                                        if (f92.a > 23) {
                                                        }
                                                        et0.b("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                        throw e;
                                                    }
                                                }
                                            } catch (Exception e4) {
                                                e = e4;
                                                str = strA;
                                                str3 = name;
                                                i2 = i3;
                                                z = zB;
                                                str2 = str3;
                                                if (f92.a > 23 && !arrayList.isEmpty()) {
                                                    et0.b("MediaCodecUtil", "Skipping codec " + str2 + " (failed to query capabilities)");
                                                    i3 = i2 + 1;
                                                    aVar2 = aVar;
                                                    zB = z;
                                                } else {
                                                    et0.b("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                    throw e;
                                                }
                                            }
                                        }
                                        str = strA;
                                        str3 = name;
                                        i2 = i3;
                                        z = zB;
                                        if (!z && zA3) {
                                            StringBuilder sb = new StringBuilder();
                                            try {
                                                sb.append(str3);
                                                sb.append(".secure");
                                                str2 = str3;
                                                try {
                                                    arrayList.add(kv0.a(sb.toString(), str4, str, capabilitiesForType, zIsHardwareAccelerated, zA5, zIsVendor, true));
                                                    return arrayList;
                                                } catch (Exception e5) {
                                                    e = e5;
                                                    if (f92.a > 23) {
                                                    }
                                                    et0.b("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                    throw e;
                                                }
                                            } catch (Exception e6) {
                                                e = e6;
                                                str2 = str3;
                                            }
                                        }
                                    }
                                } else {
                                    i2 = i3;
                                    z = zB;
                                }
                            } else {
                                i2 = i3;
                                z = zB;
                            }
                        } catch (Exception e7) {
                            e = e7;
                            str = strA;
                            str2 = name;
                            i2 = i3;
                            z = zB;
                        }
                    } else {
                        i2 = i3;
                        z = zB;
                    }
                } else {
                    i2 = i3;
                    z = zB;
                }
                i3 = i2 + 1;
                aVar2 = aVar;
                zB = z;
            }
            return arrayList;
        } catch (Exception e8) {
            throw new b(e8);
        }
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i2 = f92.a;
        if (i2 < 21) {
            tv0 tv0Var = a;
            byte[] bArrA = qv0.a(tv0Var, "Q0lQQUFDRGVjb2Rlcg==", 0, "decode(...)");
            Charset charset = defpackage.qv0.b;
            if (new String(bArrA, charset).equals(str) || pv0.a(qv0.a(tv0Var, "Q0lQTVAzRGVjb2Rlcg==", 0, "decode(...)"), charset, str) || pv0.a(qv0.a(tv0Var, "Q0lQVm9yYmlzRGVjb2Rlcg==", 0, "decode(...)"), charset, str) || pv0.a(qv0.a(tv0Var, "Q0lQQU1STkJEZWNvZGVy", 0, "decode(...)"), charset, str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str)) {
                return false;
            }
        }
        if (i2 < 18) {
            tv0 tv0Var2 = a;
            byte[] bArrA2 = qv0.a(tv0Var2, "T01YLk1USy5BVURJTy5ERUNPREVSLkFBQw==", 0, "decode(...)");
            Charset charset2 = defpackage.qv0.b;
            if (new String(bArrA2, charset2).equals(str)) {
                String str3 = new String(qv0.a(tv0Var2, "YTcw", 0, "decode(...)"), charset2);
                String str4 = f92.b;
                if (str3.equals(str4) || (new String(qv0.a(tv0Var2, "WGlhb21p", 0, "decode(...)"), charset2).equals(f92.c) && str4.startsWith(new String(qv0.a(tv0Var2, "SE0=", 0, "decode(...)"), charset2)))) {
                    return false;
                }
            }
        }
        if (i2 == 16) {
            tv0 tv0Var3 = a;
            byte[] bArrA3 = qv0.a(tv0Var3, "T01YLnFjb20uYXVkaW8uZGVjb2Rlci5tcDM=", 0, "decode(...)");
            Charset charset3 = defpackage.qv0.b;
            if (new String(bArrA3, charset3).equals(str)) {
                String str5 = new String(qv0.a(tv0Var3, "ZGx4dQ==", 0, "decode(...)"), charset3);
                String str6 = f92.b;
                if (str5.equals(str6) || pv0.a(qv0.a(tv0Var3, "cHJvdG91", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "dmlsbGU=", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "dmlsbGVwbHVz", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "dmlsbGVjMg==", 0, "decode(...)"), charset3, str6) || str6.startsWith(new String(qv0.a(tv0Var3, "Z2Vl", 0, "decode(...)"), charset3)) || pv0.a(qv0.a(tv0Var3, "QzY2MDI=", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "QzY2MDM=", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "QzY2MDY=", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "QzY2MTY=", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "TDM2aA==", 0, "decode(...)"), charset3, str6) || pv0.a(qv0.a(tv0Var3, "U08tMDJF", 0, "decode(...)"), charset3, str6)) {
                    return false;
                }
            }
        }
        if (i2 == 16) {
            tv0 tv0Var4 = a;
            byte[] bArrA4 = qv0.a(tv0Var4, "T01YLnFjb20uYXVkaW8uZGVjb2Rlci5hYWM=", 0, "decode(...)");
            Charset charset4 = defpackage.qv0.b;
            if (new String(bArrA4, charset4).equals(str)) {
                String str7 = new String(qv0.a(tv0Var4, "QzE1MDQ=", 0, "decode(...)"), charset4);
                String str8 = f92.b;
                if (str7.equals(str8) || pv0.a(qv0.a(tv0Var4, "QzE1MDU=", 0, "decode(...)"), charset4, str8) || pv0.a(qv0.a(tv0Var4, "QzE2MDQ=", 0, "decode(...)"), charset4, str8) || pv0.a(qv0.a(tv0Var4, "QzE2MDU=", 0, "decode(...)"), charset4, str8)) {
                    return false;
                }
            }
        }
        if (i2 < 24) {
            tv0 tv0Var5 = a;
            byte[] bArrA5 = qv0.a(tv0Var5, "T01YLlNFQy5hYWMuZGVj", 0, "decode(...)");
            Charset charset5 = defpackage.qv0.b;
            if ((new String(bArrA5, charset5).equals(str) || pv0.a(qv0.a(tv0Var5, "T01YLkV4eW5vcy5BQUMuRGVjb2Rlcg==", 0, "decode(...)"), charset5, str)) && new String(qv0.a(tv0Var5, "c2Ftc3VuZw==", 0, "decode(...)"), charset5).equals(f92.c)) {
                String str9 = f92.b;
                if (str9.startsWith(new String(qv0.a(tv0Var5, "emVyb2ZsdGU=", 0, "decode(...)"), charset5)) || str9.startsWith(new String(qv0.a(tv0Var5, "emVyb2x0ZQ==", 0, "decode(...)"), charset5)) || str9.startsWith(new String(qv0.a(tv0Var5, "emVubHRl", 0, "decode(...)"), charset5)) || pv0.a(qv0.a(tv0Var5, "U0MtMDVH", 0, "decode(...)"), charset5, str9) || pv0.a(qv0.a(tv0Var5, "bWFyaW5lbHRlYXR0", 0, "decode(...)"), charset5, str9) || pv0.a(qv0.a(tv0Var5, "NDA0U0M=", 0, "decode(...)"), charset5, str9) || pv0.a(qv0.a(tv0Var5, "U0MtMDRH", 0, "decode(...)"), charset5, str9) || pv0.a(qv0.a(tv0Var5, "U0NWMzE=", 0, "decode(...)"), charset5, str9)) {
                    return false;
                }
            }
        }
        if (i2 <= 19) {
            tv0 tv0Var6 = a;
            byte[] bArrA6 = qv0.a(tv0Var6, "T01YLlNFQy52cDguZGVj", 0, "decode(...)");
            Charset charset6 = defpackage.qv0.b;
            if (new String(bArrA6, charset6).equals(str) && new String(qv0.a(tv0Var6, "c2Ftc3VuZw==", 0, "decode(...)"), charset6).equals(f92.c)) {
                String str10 = f92.b;
                if (str10.startsWith("d2") || str10.startsWith(new String(qv0.a(tv0Var6, "c2VycmFubw==", 0, "decode(...)"), charset6)) || str10.startsWith(new String(qv0.a(tv0Var6, "amZsdGU=", 0, "decode(...)"), charset6)) || str10.startsWith(new String(qv0.a(tv0Var6, "c2FudG9z", 0, "decode(...)"), charset6)) || str10.startsWith(new String(qv0.a(tv0Var6, "dDA=", 0, "decode(...)"), charset6))) {
                    return false;
                }
            }
        }
        if (i2 <= 19) {
            String str11 = f92.b;
            tv0 tv0Var7 = a;
            byte[] bArrA7 = qv0.a(tv0Var7, "amZsdGU=", 0, "decode(...)");
            Charset charset7 = defpackage.qv0.b;
            if (str11.startsWith(new String(bArrA7, charset7)) && pv0.a(qv0.a(tv0Var7, "T01YLnFjb20udmlkZW8uZGVjb2Rlci52cDg=", 0, "decode(...)"), charset7, str)) {
                return false;
            }
        }
        return (i2 <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && new String(qv0.a(a, "T01YLk1USy5BVURJTy5ERUNPREVSLkRTUEFDMw==", 0, "decode(...)"), defpackage.qv0.b).equals(str)) ? false : true;
    }

    public static int b(kv0 kv0Var) {
        return kv0Var.a.startsWith(a.K()) ? 1 : 0;
    }

    public static int a(kv0 kv0Var) {
        String str = kv0Var.a;
        tv0 tv0Var = a;
        if (str.startsWith(tv0Var.K()) || str.startsWith("c2.android")) {
            return 1;
        }
        return (f92.a >= 26 || !str.equals(tv0Var.G())) ? 0 : -1;
    }

    public static int a(jc0 jc0Var, kv0 kv0Var) {
        try {
            return kv0Var.a(jc0Var) ? 1 : 0;
        } catch (b unused) {
            return -1;
        }
    }

    public static int a(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    private static void a(ArrayList arrayList, final f fVar) {
        Collections.sort(arrayList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return sv0.a(fVar, obj, obj2);
            }
        });
    }

    public static synchronized List<kv0> a(String str, boolean z, boolean z2) throws b {
        c dVar;
        try {
            a aVar = new a(str, z, z2);
            HashMap<a, List<kv0>> map = c;
            List<kv0> list = map.get(aVar);
            if (list != null) {
                return list;
            }
            int i2 = f92.a;
            if (i2 >= 21) {
                dVar = new e(z, z2);
            } else {
                dVar = new d();
            }
            ArrayList<kv0> arrayListA = a(aVar, dVar);
            if (z && arrayListA.isEmpty() && 21 <= i2 && i2 <= 23) {
                arrayListA = a(aVar, new d());
                if (!arrayListA.isEmpty()) {
                    et0.d("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + arrayListA.get(0).a);
                }
            }
            a(str, arrayListA);
            kk0 kk0VarA = kk0.a((Collection) arrayListA);
            map.put(aVar, kk0VarA);
            return kk0VarA;
        } catch (Throwable th) {
            throw th;
        }
    }

    @CheckResult
    public static ArrayList a(kk0 kk0Var, final jc0 jc0Var) {
        ArrayList arrayList = new ArrayList(kk0Var);
        a(arrayList, new f() {
            @Override
            public final int a(Object obj) {
                return sv0.a(jc0Var, (kv0) obj);
            }
        });
        return arrayList;
    }

    public static int a() throws b {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        int i2;
        if (k == -1) {
            int iMax = 0;
            List<kv0> listA = a("video/avc", false, false);
            kv0 kv0Var = listA.isEmpty() ? null : listA.get(0);
            if (kv0Var != null) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = kv0Var.d;
                if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                int length = codecProfileLevelArr.length;
                int iMax2 = 0;
                while (iMax < length) {
                    int i3 = codecProfileLevelArr[iMax].level;
                    if (i3 != 1 && i3 != 2) {
                        switch (i3) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                break;
                            case 64:
                                i2 = 202752;
                                break;
                            case 128:
                            case 256:
                                i2 = 414720;
                                break;
                            case 512:
                                i2 = 921600;
                                break;
                            case 1024:
                                i2 = 1310720;
                                break;
                            case 2048:
                            case 4096:
                                i2 = 2097152;
                                break;
                            case 8192:
                                i2 = 2228224;
                                break;
                            case 16384:
                                i2 = 5652480;
                                break;
                            case 32768:
                            case 65536:
                                i2 = 9437184;
                                break;
                            case 131072:
                            case 262144:
                            case 524288:
                                i2 = 35651584;
                                break;
                            default:
                                i2 = -1;
                                break;
                        }
                    } else {
                        i2 = 25344;
                    }
                    iMax2 = Math.max(i2, iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, f92.a >= 21 ? 345600 : 172800);
            }
            k = iMax;
        }
        return k;
    }

    private static void a(String str, ArrayList arrayList) {
        if ("audio/raw".equals(str)) {
            if (f92.a < 26) {
                String str2 = f92.b;
                tv0 tv0Var = a;
                if (str2.equals(tv0Var.N()) && arrayList.size() == 1 && ((kv0) arrayList.get(0)).a.equals(tv0Var.G())) {
                    arrayList.add(kv0.a(tv0Var.L(), "audio/raw", "audio/raw", null, false, true, false, false));
                }
            }
            a(arrayList, new f() {
                @Override
                public final int a(Object obj) {
                    return sv0.a((kv0) obj);
                }
            });
        }
        int i2 = f92.a;
        if (i2 < 21 && arrayList.size() > 1) {
            String str3 = ((kv0) arrayList.get(0)).a;
            tv0 tv0Var2 = a;
            if (tv0Var2.I().equals(str3) || tv0Var2.H().equals(str3) || tv0Var2.J().equals(str3)) {
                a(arrayList, new f() {
                    @Override
                    public final int a(Object obj) {
                        return sv0.b((kv0) obj);
                    }
                });
            }
        }
        if (i2 >= 32 || arrayList.size() <= 1) {
            return;
        }
        if (a.M().equals(((kv0) arrayList.get(0)).a)) {
            arrayList.add((kv0) arrayList.remove(0));
        }
    }

    private static boolean a(MediaCodecInfo mediaCodecInfo, String str) {
        if (f92.a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (w01.d(str)) {
            return true;
        }
        String strB = fg.b(mediaCodecInfo.getName());
        if (strB.startsWith("arc.")) {
            return false;
        }
        tv0 tv0Var = a;
        byte[] bArrA = qv0.a(tv0Var, "b214Lmdvb2dsZS4=", 0, "decode(...)");
        Charset charset = defpackage.qv0.b;
        if (strB.startsWith(new String(bArrA, charset)) || strB.startsWith(new String(qv0.a(tv0Var, "b214LmZmbXBlZy4=", 0, "decode(...)"), charset))) {
            return true;
        }
        if ((strB.startsWith(new String(qv0.a(tv0Var, "b214LnNlYy4=", 0, "decode(...)"), charset)) && strB.contains(".sw.")) || strB.equals(new String(qv0.a(tv0Var, "b214LnFjb20udmlkZW8uZGVjb2Rlci5oZXZjc3d2ZGVj", 0, "decode(...)"), charset)) || strB.startsWith("c2.android.") || strB.startsWith("c2.google.")) {
            return true;
        }
        return (strB.startsWith(new String(qv0.a(tv0Var, "b214Lg==", 0, "decode(...)"), charset)) || strB.startsWith("c2.")) ? false : true;
    }
}
