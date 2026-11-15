package defpackage;

import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zztn;
import defpackage.olj;
import defpackage.qlj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

public abstract class qlj {
    public static final HashMap a = new HashMap();

    public static tkj a() {
        List listD = d("audio/raw", false, false);
        if (listD.isEmpty()) {
            return null;
        }
        return (tkj) listD.get(0);
    }

    public static String b(erj erjVar) {
        Pair pairA;
        String str = erjVar.o;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(str)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(str) && (pairA = vcg.a(erjVar)) != null) {
            int iIntValue = ((Integer) pairA.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                return "video/hevc";
            }
            if (iIntValue == 512) {
                return "video/avc";
            }
            if (iIntValue == 1024) {
                return MimeTypes.VIDEO_AV1;
            }
        }
        if (MimeTypes.VIDEO_MV_HEVC.equals(str)) {
            return "video/hevc";
        }
        return null;
    }

    public static List c(hlj hljVar, erj erjVar, boolean z, boolean z2) {
        String strB = b(erjVar);
        return strB == null ? zzfww.zzn() : hljVar.a(strB, z, z2);
    }

    public static synchronized List d(String str, boolean z, boolean z2) {
        try {
            klj kljVar = new klj(str, z, z2);
            HashMap map = a;
            List list = (List) map.get(kljVar);
            if (list != null) {
                return list;
            }
            ArrayList arrayListG = g(kljVar, new nlj(z, z2, str.equals(MimeTypes.VIDEO_MV_HEVC)));
            if (z && arrayListG.isEmpty() && kfh.a <= 23) {
                arrayListG = g(kljVar, new mlj(null));
                if (!arrayListG.isEmpty()) {
                    zrg.f("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((tkj) arrayListG.get(0)).a);
                }
            }
            if ("audio/raw".equals(str)) {
                if (kfh.a < 26 && Build.DEVICE.equals("R9") && arrayListG.size() == 1 && ((tkj) arrayListG.get(0)).a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                    arrayListG.add(tkj.c("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                }
                h(arrayListG, new olj() {
                    @Override
                    public final int zza(Object obj) {
                        HashMap map2 = qlj.a;
                        String str2 = ((tkj) obj).a;
                        if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                            return 1;
                        }
                        return (kfh.a >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                    }
                });
            }
            if (kfh.a < 32 && arrayListG.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((tkj) arrayListG.get(0)).a)) {
                arrayListG.add((tkj) arrayListG.remove(0));
            }
            zzfww zzfwwVarZzl = zzfww.zzl(arrayListG);
            map.put(kljVar, zzfwwVarZzl);
            return zzfwwVarZzl;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static List e(hlj hljVar, erj erjVar, boolean z, boolean z2) {
        List listA = hljVar.a(erjVar.o, z, z2);
        List listC = c(hljVar, erjVar, z, z2);
        int i = zzfww.zzd;
        l4i l4iVar = new l4i();
        l4iVar.i(listA);
        l4iVar.i(listC);
        return l4iVar.j();
    }

    public static List f(List list, final erj erjVar) {
        ArrayList arrayList = new ArrayList(list);
        h(arrayList, new olj() {
            @Override
            public final int zza(Object obj) {
                HashMap map = qlj.a;
                return ((tkj) obj).d(erjVar) ? 1 : 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:102:0x0181  */
    /* JADX WARN: Code duplicated, block: B:103:0x0183 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x0185  */
    /* JADX WARN: Code duplicated, block: B:107:0x018a A[Catch: Exception -> 0x0191, TryCatch #5 {Exception -> 0x0191, blocks: (B:93:0x0168, B:99:0x0173, B:107:0x018a, B:114:0x01a5, B:116:0x01ad, B:117:0x01b2, B:119:0x01c2, B:121:0x01ca, B:110:0x019a), top: B:172:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x019a A[Catch: Exception -> 0x0191, TryCatch #5 {Exception -> 0x0191, blocks: (B:93:0x0168, B:99:0x0173, B:107:0x018a, B:114:0x01a5, B:116:0x01ad, B:117:0x01b2, B:119:0x01c2, B:121:0x01ca, B:110:0x019a), top: B:172:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:113:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:116:0x01ad A[Catch: Exception -> 0x0191, TryCatch #5 {Exception -> 0x0191, blocks: (B:93:0x0168, B:99:0x0173, B:107:0x018a, B:114:0x01a5, B:116:0x01ad, B:117:0x01b2, B:119:0x01c2, B:121:0x01ca, B:110:0x019a), top: B:172:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x01b2 A[Catch: Exception -> 0x0191, TryCatch #5 {Exception -> 0x0191, blocks: (B:93:0x0168, B:99:0x0173, B:107:0x018a, B:114:0x01a5, B:116:0x01ad, B:117:0x01b2, B:119:0x01c2, B:121:0x01ca, B:110:0x019a), top: B:172:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x01c2 A[Catch: Exception -> 0x0191, TryCatch #5 {Exception -> 0x0191, blocks: (B:93:0x0168, B:99:0x0173, B:107:0x018a, B:114:0x01a5, B:116:0x01ad, B:117:0x01b2, B:119:0x01c2, B:121:0x01ca, B:110:0x019a), top: B:172:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:126:0x01d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x01da  */
    /* JADX WARN: Code duplicated, block: B:128:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:130:0x01df A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:131:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:137:0x020c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x0246 A[Catch: Exception -> 0x0036, TRY_ENTER, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x015a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:176:0x0266 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x0288 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ca A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d5 A[Catch: Exception -> 0x0036, LOOP:1: B:50:0x00c8->B:54:0x00d5, LOOP_END, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e2 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ed A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00f5 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x00fe A[EDGE_INSN: B:65:0x00fe->B:90:0x0158 BREAK  A[LOOP:1: B:50:0x00c8->B:54:0x00d5]] */
    /* JADX WARN: Code duplicated, block: B:67:0x0103 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x010b A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0113 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x011e A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0126 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0131 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0139 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0144 A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x014c A[Catch: Exception -> 0x0036, TryCatch #3 {Exception -> 0x0036, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:13:0x0039, B:17:0x0047, B:21:0x0051, B:23:0x0059, B:25:0x0061, B:27:0x006b, B:29:0x0075, B:31:0x007d, B:33:0x0085, B:35:0x008d, B:37:0x0095, B:39:0x009d, B:41:0x00a5, B:45:0x00b1, B:47:0x00b9, B:49:0x00c1, B:51:0x00ca, B:150:0x023e, B:153:0x0246, B:155:0x024c, B:156:0x0266, B:157:0x0287, B:54:0x00d5, B:55:0x00da, B:57:0x00e2, B:60:0x00ed, B:62:0x00f5, B:67:0x0103, B:69:0x010b, B:71:0x0113, B:74:0x011e, B:76:0x0126, B:79:0x0131, B:81:0x0139, B:84:0x0144, B:86:0x014c), top: B:168:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x016c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x016e  */
    /* JADX WARN: Code duplicated, block: B:97:0x016f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0171  */
    /* JADX WARN: Code duplicated, block: B:99:0x0173 A[Catch: Exception -> 0x0191, TryCatch #5 {Exception -> 0x0191, blocks: (B:93:0x0168, B:99:0x0173, B:107:0x018a, B:114:0x01a5, B:116:0x01ad, B:117:0x01b2, B:119:0x01c2, B:121:0x01ca, B:110:0x019a), top: B:172:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x002d  */
    public static ArrayList g(klj kljVar, llj lljVar) throws zztn {
        String[] supportedTypes;
        int length;
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        int i2;
        int i3;
        String str5;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        boolean zA;
        boolean zB;
        boolean zA2;
        boolean z;
        boolean zIsHardwareAccelerated;
        boolean zI;
        String strA;
        boolean zIsVendor;
        boolean z2;
        String str6;
        klj kljVar2 = kljVar;
        String str7 = "tunneled-playback";
        try {
            ArrayList arrayList = new ArrayList();
            String str8 = kljVar2.a;
            boolean zZze = lljVar.zze();
            int i4 = 0;
            for (int iZza = lljVar.zza(); i4 < iZza; iZza = i3) {
                MediaCodecInfo mediaCodecInfoZzb = lljVar.zzb(i4);
                int i5 = kfh.a;
                if (i5 < 29 || !mediaCodecInfoZzb.isAlias()) {
                    String name = mediaCodecInfoZzb.getName();
                    if (mediaCodecInfoZzb.isEncoder() || (!zZze && name.endsWith(".secure"))) {
                        str3 = str7;
                        i2 = i4;
                        i3 = iZza;
                        str5 = str8;
                    } else if (i5 < 24 && (("OMX.SEC.aac.dec".equals(name) || "OMX.Exynos.AAC.Decoder".equals(name)) && "samsung".equals(Build.MANUFACTURER))) {
                        String str9 = Build.DEVICE;
                        if (str9.startsWith("zeroflte") || str9.startsWith("zerolte") || str9.startsWith("zenlte") || "SC-05G".equals(str9) || "marinelteatt".equals(str9) || "404SC".equals(str9) || "SC-04G".equals(str9) || "SCV31".equals(str9)) {
                            str3 = str7;
                            i2 = i4;
                            i3 = iZza;
                            str5 = str8;
                        } else if (i5 > 23) {
                            supportedTypes = mediaCodecInfoZzb.getSupportedTypes();
                            length = supportedTypes.length;
                            i = 0;
                            while (true) {
                                if (i < length) {
                                    str = supportedTypes[i];
                                    if (!str.equalsIgnoreCase(str8)) {
                                        i++;
                                    }
                                } else if (str8.equals("video/dolby-vision")) {
                                    if (str8.equals(MimeTypes.VIDEO_MV_HEVC)) {
                                        if (!str8.equals(MimeTypes.AUDIO_ALAC)) {
                                            if (!str8.equals("audio/flac")) {
                                                if (str8.equals("audio/ac3")) {
                                                }
                                                str2 = null;
                                                break;
                                            }
                                            if (str8.equals("audio/ac3")) {
                                            }
                                            str2 = null;
                                            break;
                                        }
                                        if (!str8.equals("audio/flac")) {
                                            if (str8.equals("audio/ac3")) {
                                            }
                                            str2 = null;
                                            break;
                                        }
                                        if (str8.equals("audio/ac3")) {
                                        }
                                        str2 = null;
                                        break;
                                    }
                                    if ("c2.qti.mvhevc.decoder".equals(name)) {
                                    }
                                    str = "video/x-mvhevc";
                                } else if (!"OMX.MS.HEVCDV.Decoder".equals(name)) {
                                    str = "video/hevcdv";
                                } else {
                                    if ("OMX.RTK.video.decoder".equals(name)) {
                                    }
                                    str = "video/dv_hevc";
                                }
                                str2 = str;
                                break;
                            }
                            if (str2 != null) {
                                capabilitiesForType = mediaCodecInfoZzb.getCapabilitiesForType(str2);
                                zA = lljVar.a(str7, str2, capabilitiesForType);
                                zB = lljVar.b(str7, str2, capabilitiesForType);
                                str3 = str7;
                                if (kljVar2.c) {
                                    if (zA) {
                                        zA2 = lljVar.a("secure-playback", str2, capabilitiesForType);
                                        boolean zB2 = lljVar.b("secure-playback", str2, capabilitiesForType);
                                        z = kljVar2.b;
                                        if (z) {
                                            if (z) {
                                                if (zA2) {
                                                    zA2 = true;
                                                }
                                            }
                                            if (i5 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (i(mediaCodecInfoZzb, str8)) {
                                                zIsHardwareAccelerated = false;
                                            } else {
                                                zIsHardwareAccelerated = true;
                                            }
                                            zI = i(mediaCodecInfoZzb, str8);
                                            if (i5 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strA = d2i.a(mediaCodecInfoZzb.getName());
                                                if (strA.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (!zZze) {
                                                z2 = zA2;
                                            } else if (z != zA2) {
                                                z2 = true;
                                            } else {
                                                str6 = name;
                                                i2 = i4;
                                                i3 = iZza;
                                                str5 = str8;
                                                arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                            }
                                            if (zZze) {
                                            }
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            if (zZze) {
                                                continue;
                                            }
                                        } else {
                                            if (z) {
                                                if (zA2) {
                                                    zA2 = true;
                                                }
                                            }
                                            if (i5 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (i(mediaCodecInfoZzb, str8)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            zI = i(mediaCodecInfoZzb, str8);
                                            if (i5 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strA = d2i.a(mediaCodecInfoZzb.getName());
                                                if (strA.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (!zZze) {
                                                z2 = zA2;
                                            } else if (z != zA2) {
                                                z2 = true;
                                            } else {
                                                str6 = name;
                                                i2 = i4;
                                                i3 = iZza;
                                                str5 = str8;
                                                arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                            }
                                            if (zZze) {
                                            }
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            if (zZze) {
                                                continue;
                                            }
                                        }
                                    }
                                } else if (!zB) {
                                    zA2 = lljVar.a("secure-playback", str2, capabilitiesForType);
                                    boolean zB3 = lljVar.b("secure-playback", str2, capabilitiesForType);
                                    z = kljVar2.b;
                                    if (z) {
                                        if (z) {
                                            if (zA2) {
                                                zA2 = true;
                                            }
                                        }
                                        if (i5 >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (i(mediaCodecInfoZzb, str8)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        zI = i(mediaCodecInfoZzb, str8);
                                        if (i5 >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strA = d2i.a(mediaCodecInfoZzb.getName());
                                            if (strA.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (!zZze) {
                                            z2 = zA2;
                                        } else if (z != zA2) {
                                            z2 = true;
                                        } else {
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                        }
                                        if (zZze) {
                                        }
                                        str6 = name;
                                        i2 = i4;
                                        i3 = iZza;
                                        str5 = str8;
                                        if (zZze) {
                                            continue;
                                        }
                                    } else {
                                        if (z) {
                                            if (zA2) {
                                                zA2 = true;
                                            }
                                        }
                                        if (i5 >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (i(mediaCodecInfoZzb, str8)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        zI = i(mediaCodecInfoZzb, str8);
                                        if (i5 >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strA = d2i.a(mediaCodecInfoZzb.getName());
                                            if (strA.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (!zZze) {
                                            z2 = zA2;
                                        } else if (z != zA2) {
                                            z2 = true;
                                        } else {
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                        }
                                        if (zZze) {
                                        }
                                        str6 = name;
                                        i2 = i4;
                                        i3 = iZza;
                                        str5 = str8;
                                        if (zZze) {
                                            continue;
                                        }
                                    }
                                }
                            } else {
                                str3 = str7;
                            }
                            i2 = i4;
                            i3 = iZza;
                            str5 = str8;
                        } else {
                            supportedTypes = mediaCodecInfoZzb.getSupportedTypes();
                            length = supportedTypes.length;
                            i = 0;
                            while (true) {
                                if (i < length) {
                                    str = supportedTypes[i];
                                    if (!str.equalsIgnoreCase(str8)) {
                                        i++;
                                    }
                                } else if (str8.equals("video/dolby-vision")) {
                                    if (str8.equals(MimeTypes.VIDEO_MV_HEVC)) {
                                        if (!str8.equals(MimeTypes.AUDIO_ALAC)) {
                                            if (!str8.equals("audio/flac")) {
                                                if (str8.equals("audio/ac3")) {
                                                }
                                                str2 = null;
                                                break;
                                            }
                                            if (str8.equals("audio/ac3")) {
                                            }
                                            str2 = null;
                                            break;
                                        }
                                        if (!str8.equals("audio/flac")) {
                                            if (str8.equals("audio/ac3")) {
                                            }
                                            str2 = null;
                                            break;
                                        }
                                        if (str8.equals("audio/ac3")) {
                                        }
                                        str2 = null;
                                        break;
                                    }
                                    if ("c2.qti.mvhevc.decoder".equals(name)) {
                                    }
                                    str = "video/x-mvhevc";
                                } else if (!"OMX.MS.HEVCDV.Decoder".equals(name)) {
                                    str = "video/hevcdv";
                                } else {
                                    if ("OMX.RTK.video.decoder".equals(name)) {
                                    }
                                    str = "video/dv_hevc";
                                }
                                str2 = str;
                                break;
                            }
                            if (str2 != null) {
                                capabilitiesForType = mediaCodecInfoZzb.getCapabilitiesForType(str2);
                                zA = lljVar.a(str7, str2, capabilitiesForType);
                                zB = lljVar.b(str7, str2, capabilitiesForType);
                                str3 = str7;
                                if (kljVar2.c) {
                                    if (!zB) {
                                        zA2 = lljVar.a("secure-playback", str2, capabilitiesForType);
                                        boolean zB4 = lljVar.b("secure-playback", str2, capabilitiesForType);
                                        z = kljVar2.b;
                                        if (z) {
                                            if (z) {
                                                if (zA2) {
                                                    zA2 = true;
                                                }
                                            }
                                            if (i5 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (i(mediaCodecInfoZzb, str8)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            zI = i(mediaCodecInfoZzb, str8);
                                            if (i5 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strA = d2i.a(mediaCodecInfoZzb.getName());
                                                if (strA.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (!zZze) {
                                                z2 = zA2;
                                            } else if (z != zA2) {
                                                z2 = true;
                                            } else {
                                                str6 = name;
                                                i2 = i4;
                                                i3 = iZza;
                                                str5 = str8;
                                                arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                            }
                                            if (zZze) {
                                            }
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            if (zZze) {
                                                continue;
                                            }
                                        } else {
                                            if (z) {
                                                if (zA2) {
                                                    zA2 = true;
                                                }
                                            }
                                            if (i5 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (i(mediaCodecInfoZzb, str8)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            zI = i(mediaCodecInfoZzb, str8);
                                            if (i5 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strA = d2i.a(mediaCodecInfoZzb.getName());
                                                if (strA.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (!zZze) {
                                                z2 = zA2;
                                            } else if (z != zA2) {
                                                z2 = true;
                                            } else {
                                                str6 = name;
                                                i2 = i4;
                                                i3 = iZza;
                                                str5 = str8;
                                                arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                            }
                                            if (zZze) {
                                            }
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            if (zZze) {
                                                continue;
                                            }
                                        }
                                    }
                                } else if (zA) {
                                    zA2 = lljVar.a("secure-playback", str2, capabilitiesForType);
                                    boolean zB5 = lljVar.b("secure-playback", str2, capabilitiesForType);
                                    z = kljVar2.b;
                                    if (z) {
                                        if (z) {
                                            if (zA2) {
                                                zA2 = true;
                                            }
                                        }
                                        if (i5 >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (i(mediaCodecInfoZzb, str8)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        zI = i(mediaCodecInfoZzb, str8);
                                        if (i5 >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strA = d2i.a(mediaCodecInfoZzb.getName());
                                            if (strA.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (!zZze) {
                                            z2 = zA2;
                                        } else if (z != zA2) {
                                            z2 = true;
                                        } else {
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                        }
                                        if (zZze) {
                                        }
                                        str6 = name;
                                        i2 = i4;
                                        i3 = iZza;
                                        str5 = str8;
                                        if (zZze) {
                                            continue;
                                        }
                                    } else {
                                        if (z) {
                                            if (zA2) {
                                                zA2 = true;
                                            }
                                        }
                                        if (i5 >= 29) {
                                            zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                        } else if (i(mediaCodecInfoZzb, str8)) {
                                            zIsHardwareAccelerated = true;
                                        } else {
                                            zIsHardwareAccelerated = false;
                                        }
                                        zI = i(mediaCodecInfoZzb, str8);
                                        if (i5 >= 29) {
                                            zIsVendor = mediaCodecInfoZzb.isVendor();
                                        } else {
                                            strA = d2i.a(mediaCodecInfoZzb.getName());
                                            if (strA.startsWith("omx.google.")) {
                                                zIsVendor = false;
                                            } else {
                                                zIsVendor = false;
                                            }
                                        }
                                        if (!zZze) {
                                            z2 = zA2;
                                        } else if (z != zA2) {
                                            z2 = true;
                                        } else {
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                        }
                                        if (zZze) {
                                        }
                                        str6 = name;
                                        i2 = i4;
                                        i3 = iZza;
                                        str5 = str8;
                                        if (zZze) {
                                            continue;
                                        }
                                    }
                                }
                            } else {
                                str3 = str7;
                            }
                            i2 = i4;
                            i3 = iZza;
                            str5 = str8;
                        }
                    } else if (i5 > 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str8) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(name)) {
                        str3 = str7;
                        i2 = i4;
                        i3 = iZza;
                        str5 = str8;
                    } else {
                        supportedTypes = mediaCodecInfoZzb.getSupportedTypes();
                        length = supportedTypes.length;
                        i = 0;
                        while (true) {
                            if (i < length) {
                                str = supportedTypes[i];
                                if (!str.equalsIgnoreCase(str8)) {
                                    i++;
                                }
                            } else if (str8.equals("video/dolby-vision")) {
                                if (!"OMX.MS.HEVCDV.Decoder".equals(name)) {
                                    if ("OMX.RTK.video.decoder".equals(name) && !"OMX.realtek.video.decoder.tunneled".equals(name)) {
                                        str2 = null;
                                        break;
                                    }
                                    str = "video/dv_hevc";
                                } else {
                                    str = "video/hevcdv";
                                }
                            } else if (str8.equals(MimeTypes.VIDEO_MV_HEVC)) {
                                if ("c2.qti.mvhevc.decoder".equals(name) && !"c2.qti.mvhevc.decoder.secure".equals(name)) {
                                    str2 = null;
                                    break;
                                }
                                str = "video/x-mvhevc";
                            } else if (!str8.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(name)) {
                                str = "audio/x-lg-alac";
                            } else if (!str8.equals("audio/flac") && "OMX.lge.flac.decoder".equals(name)) {
                                str = "audio/x-lg-flac";
                            } else {
                                if (str8.equals("audio/ac3") || !"OMX.lge.ac3.decoder".equals(name)) {
                                    str2 = null;
                                    break;
                                }
                                str = "audio/lg-ac3";
                            }
                            str2 = str;
                            break;
                        }
                        if (str2 != null) {
                            try {
                                capabilitiesForType = mediaCodecInfoZzb.getCapabilitiesForType(str2);
                                zA = lljVar.a(str7, str2, capabilitiesForType);
                                zB = lljVar.b(str7, str2, capabilitiesForType);
                                str3 = str7;
                                try {
                                    if (kljVar2.c) {
                                        if (!zB) {
                                            zA2 = lljVar.a("secure-playback", str2, capabilitiesForType);
                                            boolean zB6 = lljVar.b("secure-playback", str2, capabilitiesForType);
                                            z = kljVar2.b;
                                            if (z || !zB6) {
                                                if (z) {
                                                    if (zA2) {
                                                        zA2 = true;
                                                    }
                                                }
                                                if (i5 >= 29) {
                                                    zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                                } else if (i(mediaCodecInfoZzb, str8)) {
                                                    zIsHardwareAccelerated = true;
                                                } else {
                                                    zIsHardwareAccelerated = false;
                                                }
                                                zI = i(mediaCodecInfoZzb, str8);
                                                if (i5 >= 29) {
                                                    zIsVendor = mediaCodecInfoZzb.isVendor();
                                                } else {
                                                    strA = d2i.a(mediaCodecInfoZzb.getName());
                                                    if (strA.startsWith("omx.google.") || strA.startsWith("c2.android.") || strA.startsWith("c2.google.")) {
                                                        zIsVendor = false;
                                                    } else {
                                                        zIsVendor = true;
                                                    }
                                                }
                                                if (!zZze) {
                                                    z2 = zA2;
                                                } else if (z != zA2) {
                                                    z2 = true;
                                                } else {
                                                    str6 = name;
                                                    i2 = i4;
                                                    i3 = iZza;
                                                    str5 = str8;
                                                    try {
                                                        arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                                    } catch (Exception e) {
                                                        e = e;
                                                        str4 = str6;
                                                        if (kfh.a <= 23 || arrayList.isEmpty()) {
                                                            zrg.c("MediaCodecUtil", "Failed to query codec " + str4 + " (" + str2 + ")");
                                                            throw e;
                                                        }
                                                        zrg.c("MediaCodecUtil", "Skipping codec " + str4 + " (failed to query capabilities)");
                                                    }
                                                }
                                                if (!zZze || z) {
                                                    str6 = name;
                                                    i2 = i4;
                                                    i3 = iZza;
                                                    str5 = str8;
                                                    if (zZze && z2) {
                                                        StringBuilder sb = new StringBuilder();
                                                        try {
                                                            sb.append(str6);
                                                            sb.append(".secure");
                                                            str4 = str6;
                                                            try {
                                                                arrayList.add(tkj.c(sb.toString(), str5, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, true));
                                                                break;
                                                            } catch (Exception e2) {
                                                                e = e2;
                                                                if (kfh.a <= 23) {
                                                                }
                                                                zrg.c("MediaCodecUtil", "Failed to query codec " + str4 + " (" + str2 + ")");
                                                                throw e;
                                                            }
                                                        } catch (Exception e3) {
                                                            e = e3;
                                                            str4 = str6;
                                                        }
                                                    }
                                                } else {
                                                    str6 = name;
                                                    i2 = i4;
                                                    i3 = iZza;
                                                    str5 = str8;
                                                    arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                                }
                                            }
                                        }
                                    } else if (zA) {
                                        zA2 = lljVar.a("secure-playback", str2, capabilitiesForType);
                                        boolean zB7 = lljVar.b("secure-playback", str2, capabilitiesForType);
                                        z = kljVar2.b;
                                        if (z) {
                                            if (z) {
                                                if (zA2) {
                                                    zA2 = true;
                                                }
                                            }
                                            if (i5 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (i(mediaCodecInfoZzb, str8)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            zI = i(mediaCodecInfoZzb, str8);
                                            if (i5 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strA = d2i.a(mediaCodecInfoZzb.getName());
                                                if (strA.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (!zZze) {
                                                z2 = zA2;
                                            } else if (z != zA2) {
                                                z2 = true;
                                            } else {
                                                str6 = name;
                                                i2 = i4;
                                                i3 = iZza;
                                                str5 = str8;
                                                arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                            }
                                            if (zZze) {
                                            }
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            if (zZze) {
                                                continue;
                                            }
                                        } else {
                                            if (z) {
                                                if (zA2) {
                                                    zA2 = true;
                                                }
                                            }
                                            if (i5 >= 29) {
                                                zIsHardwareAccelerated = mediaCodecInfoZzb.isHardwareAccelerated();
                                            } else if (i(mediaCodecInfoZzb, str8)) {
                                                zIsHardwareAccelerated = true;
                                            } else {
                                                zIsHardwareAccelerated = false;
                                            }
                                            zI = i(mediaCodecInfoZzb, str8);
                                            if (i5 >= 29) {
                                                zIsVendor = mediaCodecInfoZzb.isVendor();
                                            } else {
                                                strA = d2i.a(mediaCodecInfoZzb.getName());
                                                if (strA.startsWith("omx.google.")) {
                                                    zIsVendor = false;
                                                } else {
                                                    zIsVendor = false;
                                                }
                                            }
                                            if (!zZze) {
                                                z2 = zA2;
                                            } else if (z != zA2) {
                                                z2 = true;
                                            } else {
                                                str6 = name;
                                                i2 = i4;
                                                i3 = iZza;
                                                str5 = str8;
                                                arrayList.add(tkj.c(name, str8, str2, capabilitiesForType, zIsHardwareAccelerated, zI, zIsVendor, false, false));
                                            }
                                            if (zZze) {
                                            }
                                            str6 = name;
                                            i2 = i4;
                                            i3 = iZza;
                                            str5 = str8;
                                            if (zZze) {
                                                continue;
                                            }
                                        }
                                    }
                                } catch (Exception e4) {
                                    e = e4;
                                    str4 = name;
                                    i2 = i4;
                                    i3 = iZza;
                                    str5 = str8;
                                    if (kfh.a <= 23) {
                                    }
                                    zrg.c("MediaCodecUtil", "Failed to query codec " + str4 + " (" + str2 + ")");
                                    throw e;
                                }
                            } catch (Exception e5) {
                                e = e5;
                                str3 = str7;
                            }
                        } else {
                            str3 = str7;
                        }
                        i2 = i4;
                        i3 = iZza;
                        str5 = str8;
                    }
                } else {
                    str3 = str7;
                    i2 = i4;
                    i3 = iZza;
                    str5 = str8;
                }
                i4 = i2 + 1;
                kljVar2 = kljVar;
                str8 = str5;
                str7 = str3;
            }
            return arrayList;
        } catch (Exception e6) {
            throw new zztn(e6, null);
        }
    }

    public static void h(List list, final olj oljVar) {
        Collections.sort(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                HashMap map = qlj.a;
                olj oljVar2 = oljVar;
                return oljVar2.zza(obj2) - oljVar2.zza(obj);
            }
        });
    }

    public static boolean i(MediaCodecInfo mediaCodecInfo, String str) {
        if (kfh.a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (bue.h(str)) {
            return true;
        }
        String strA = d2i.a(mediaCodecInfo.getName());
        if (strA.startsWith("arc.")) {
            return false;
        }
        if (strA.startsWith("omx.google.") || strA.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strA.startsWith("omx.sec.") && strA.contains(".sw.")) || strA.equals("omx.qcom.video.decoder.hevcswvdec") || strA.startsWith("c2.android.") || strA.startsWith("c2.google.")) {
            return true;
        }
        return (strA.startsWith("omx.") || strA.startsWith("c2.")) ? false : true;
    }
}
