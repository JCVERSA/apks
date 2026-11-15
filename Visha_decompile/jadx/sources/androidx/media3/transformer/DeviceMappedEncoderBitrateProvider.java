package androidx.media3.transformer;

import android.os.Build;
import androidx.media3.common.util.Util;
import org.mozilla.classfile.ByteCode;

class DeviceMappedEncoderBitrateProvider implements EncoderBitrateProvider {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static double getBitrateMultiplierFromMapping(String str, int i, String str2, String str3, int i2) {
        byte b;
        byte b2 = 28;
        byte b3 = 8;
        byte b4 = 7;
        byte b5 = 6;
        byte b6 = 5;
        byte b7 = 3;
        byte b8 = 2;
        str.hashCode();
        byte b9 = -1;
        switch (str) {
            case "OMX.IMG.TOPAZ.VIDEO.Encoder":
                str2.hashCode();
                switch (str2) {
                    case "ANE-LX1":
                    case "ANE-LX2":
                        str3.hashCode();
                        switch (str3.hashCode()) {
                            case -1719904874:
                                b8 = !str3.equals("1280x720") ? (byte) -1 : (byte) 0;
                                break;
                            case 802059049:
                                b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                break;
                            case 1514345136:
                                if (!str3.equals("3840x2160")) {
                                    b8 = -1;
                                }
                                break;
                            default:
                                b8 = -1;
                                break;
                        }
                        switch (b8) {
                            case 0:
                                return 0.245d;
                            case 1:
                                return i2 != 60 ? 0.2625d : 0.1925d;
                            case 2:
                                return 0.23208d;
                            default:
                                return 0.28d;
                        }
                    case "FIG-LX1":
                        return 0.245d;
                    default:
                        return 0.28d;
                }
            case "OMX.Exynos.AVC.Encoder":
                switch (i) {
                    case 24:
                        str2.hashCode();
                        if (str2.equals("SM-G920V")) {
                            return 0.245d;
                        }
                        return !str2.equals("SM-G935F") ? 0.37188d : 0.2625d;
                    case 25:
                    default:
                        return 1.4d;
                    case 26:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -407354367:
                                b5 = !str2.equals("SM-A520F") ? (byte) -1 : (byte) 0;
                                break;
                            case -401693116:
                                b5 = !str2.equals("SM-G930F") ? (byte) -1 : (byte) 1;
                                break;
                            case -401692961:
                                b5 = !str2.equals("SM-G935F") ? (byte) -1 : (byte) 2;
                                break;
                            case -401691194:
                                b5 = !str2.equals("SM-G950F") ? (byte) -1 : (byte) 3;
                                break;
                            case -401691039:
                                b5 = !str2.equals("SM-G955F") ? (byte) -1 : (byte) 4;
                                break;
                            case -401690233:
                                b5 = !str2.equals("SM-G960F") ? (byte) -1 : (byte) 5;
                                break;
                            case -399014808:
                                if (!str2.equals("SM-J600G")) {
                                    b5 = -1;
                                }
                                break;
                            default:
                                b5 = -1;
                                break;
                        }
                        switch (b5) {
                            case 0:
                            case 6:
                                return 0.3325d;
                            case 1:
                                return 0.20125d;
                            case 2:
                                str3.hashCode();
                                return !str3.equals("1920x1080") ? 0.315d : 0.1225d;
                            case 3:
                                return 0.2975d;
                            case 4:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.245d;
                                    case 1:
                                        return i2 != 60 ? 0.175d : 0.14d;
                                    case 2:
                                        return 0.0914d;
                                    default:
                                        return 0.2975d;
                                }
                            case 5:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.175d : 0.1575d;
                                }
                                return 0.35d;
                            default:
                                return 0.35d;
                        }
                    case 27:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -401784411:
                                b7 = !str2.equals("SM-G610F") ? (byte) -1 : (byte) 0;
                                break;
                            case -399128207:
                                b7 = !str2.equals("SM-J260F") ? (byte) -1 : (byte) 1;
                                break;
                            case -399128206:
                                b7 = !str2.equals("SM-J260G") ? (byte) -1 : (byte) 2;
                                break;
                            case -396363255:
                                if (!str2.equals("SM-M205F")) {
                                    b7 = -1;
                                }
                                break;
                            default:
                                b7 = -1;
                                break;
                        }
                        switch (b7) {
                            case 0:
                            case 1:
                                return 0.3325d;
                            case 2:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.41563d;
                                }
                                return !str3.equals("1920x1080") ? 0.525d : 0.4375d;
                            case 3:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.41563d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.315d : 0.28d;
                                }
                                return 0.56875d;
                            default:
                                return 0.56875d;
                        }
                    case 28:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -401691194:
                                b4 = !str2.equals("SM-G950F") ? (byte) -1 : (byte) 0;
                                break;
                            case -401691039:
                                b4 = !str2.equals("SM-G955F") ? (byte) -1 : (byte) 1;
                                break;
                            case -401690078:
                                b4 = !str2.equals("SM-G965F") ? (byte) -1 : (byte) 2;
                                break;
                            case -401690070:
                                b4 = !str2.equals("SM-G965N") ? (byte) -1 : (byte) 3;
                                break;
                            case -398984987:
                                b4 = !str2.equals("SM-J701F") ? (byte) -1 : (byte) 4;
                                break;
                            case -395225586:
                                b4 = !str2.equals("SM-N960F") ? (byte) -1 : (byte) 5;
                                break;
                            case -395225578:
                                b4 = !str2.equals("SM-N960N") ? (byte) -1 : (byte) 6;
                                break;
                            case 253167728:
                                if (!str2.equals("SM-A105FN")) {
                                    b4 = -1;
                                }
                                break;
                            default:
                                b4 = -1;
                                break;
                        }
                        switch (b4) {
                            case 0:
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.1925d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.21d : 0.175d;
                                }
                                return 0.245d;
                            case 1:
                                return 0.1925d;
                            case 2:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.21d;
                                }
                                return !str3.equals("1920x1080") ? 0.39375d : 0.11375d;
                            case 3:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.21d;
                                    case 1:
                                        return 0.175d;
                                    case 2:
                                        return 0.08269d;
                                    default:
                                        return 0.39375d;
                                }
                            case 4:
                                return 0.3325d;
                            case 5:
                            case 6:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.21d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.1925d : 0.175d;
                                }
                                return 0.39375d;
                            case 7:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.41563d;
                                }
                                return !str3.equals("1920x1080") ? 0.7d : 0.35d;
                            default:
                                return 0.7d;
                        }
                    case 29:
                        str2.hashCode();
                        switch (str2) {
                            case "SM-G977N":
                                str3.hashCode();
                                return !str3.equals("1280x720") ? 0.7d : 0.4375d;
                            case "SM-N970F":
                                return 0.245d;
                            case "SM-A105FN":
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case -1719904874:
                                        b8 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 802059049:
                                        if (!str3.equals("1920x1080")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.4375d;
                                    case 1:
                                        return 0.7d;
                                    case 2:
                                        return i2 != 30 ? 1.4d : 1.05d;
                                    default:
                                        return 1.4d;
                                }
                            default:
                                return 1.4d;
                        }
                    case 30:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -407473314:
                                b6 = !str2.equals("SM-A127F") ? (byte) -1 : (byte) 0;
                                break;
                            case -407444484:
                                b6 = !str2.equals("SM-A217F") ? (byte) -1 : (byte) 1;
                                break;
                            case -407356134:
                                b6 = !str2.equals("SM-A505F") ? (byte) -1 : (byte) 2;
                                break;
                            case -407355173:
                                b6 = !str2.equals("SM-A515F") ? (byte) -1 : (byte) 3;
                                break;
                            case -396332503:
                                b6 = !str2.equals("SM-M315F") ? (byte) -1 : (byte) 4;
                                break;
                            case 256892039:
                                if (!str2.equals("SM-A515U1")) {
                                    b6 = -1;
                                }
                                break;
                            default:
                                b6 = -1;
                                break;
                        }
                        switch (b6) {
                            case 0:
                            case 1:
                                return 0.35d;
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                                return 0.1925d;
                            default:
                                return 0.37188d;
                        }
                    case 31:
                        return 0.245d;
                }
            case "OMX.MTK.VIDEO.ENCODER.AVC":
                switch (i) {
                    case 22:
                        return 0.245d;
                    case 23:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -2038157991:
                                b7 = !str2.equals("Redmi Note 4") ? (byte) -1 : (byte) 0;
                                break;
                            case -401812218:
                                b7 = !str2.equals("SM-G532F") ? (byte) -1 : (byte) 1;
                                break;
                            case -401812217:
                                b7 = !str2.equals("SM-G532G") ? (byte) -1 : (byte) 2;
                                break;
                            case 807317112:
                                if (!str2.equals("LG-K430")) {
                                    b7 = -1;
                                }
                                break;
                            default:
                                b7 = -1;
                                break;
                        }
                        switch (b7) {
                            case 0:
                                return 0.35d;
                            case 2:
                                str3.hashCode();
                                if (!str3.equals("1280x720")) {
                                    return 0.525d;
                                }
                            case 1:
                                return 0.39375d;
                            case 3:
                                return 0.28d;
                            default:
                                return 0.525d;
                        }
                        break;
                    case 24:
                        str2.hashCode();
                        return !str2.equals("Moto C") ? 0.28d : 0.2625d;
                    case 25:
                    case 26:
                    default:
                        return 0.7d;
                    case 27:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -708142594:
                                b7 = !str2.equals("Redmi 6A") ? (byte) -1 : (byte) 0;
                                break;
                            case -509282093:
                                b7 = !str2.equals("Nokia 1") ? (byte) -1 : (byte) 1;
                                break;
                            case 1691546209:
                                b7 = !str2.equals("CPH1920") ? (byte) -1 : (byte) 2;
                                break;
                            case 1965191908:
                                if (!str2.equals("Infinix X650")) {
                                    b7 = -1;
                                }
                                break;
                            default:
                                b7 = -1;
                                break;
                        }
                        switch (b7) {
                            case 0:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.175d : 0.14875d;
                                }
                                return 0.315d;
                            case 1:
                                str3.hashCode();
                                return !str3.equals("1280x720") ? 0.2975d : 0.21d;
                            case 2:
                                return 0.2625d;
                            case 3:
                                str3.hashCode();
                                return !str3.equals("640x480") ? 0.4375d : 0.28d;
                            default:
                                return 0.4375d;
                        }
                    case 28:
                        return 0.2625d;
                    case 29:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -407504183:
                                b3 = !str2.equals("SM-A013M") ? (byte) -1 : (byte) 0;
                                break;
                            case 132773294:
                                b3 = !str2.equals("TECNO KE5") ? (byte) -1 : (byte) 1;
                                break;
                            case 254121476:
                                b3 = !str2.equals("SM-A215U1") ? (byte) -1 : (byte) 2;
                                break;
                            case 582751196:
                                b3 = !str2.equals("M2006C3LG") ? (byte) -1 : (byte) 3;
                                break;
                            case 674860964:
                                b3 = !str2.equals("k61v1_basic_ref") ? (byte) -1 : (byte) 4;
                                break;
                            case 791410201:
                                b3 = !str2.equals("Infinix X688B") ? (byte) -1 : (byte) 5;
                                break;
                            case 979092886:
                                b3 = !str2.equals("LM-K500") ? (byte) -1 : (byte) 6;
                                break;
                            case 979273647:
                                b3 = !str2.equals("LM-Q730") ? (byte) -1 : (byte) 7;
                                break;
                            case 1691568476:
                                if (!str2.equals("CPH2179")) {
                                    b3 = -1;
                                }
                                break;
                            default:
                                b3 = -1;
                                break;
                        }
                        switch (b3) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                return 0.28d;
                            case 4:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.35d;
                                }
                                return !str3.equals("1280x720") ? 0.7d : 0.525d;
                            default:
                                return 0.7d;
                        }
                    case 30:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -1390526813:
                                b3 = !str2.equals("wembley_2GB_full") ? (byte) -1 : (byte) 0;
                                break;
                            case -407502129:
                                b3 = !str2.equals("SM-A037U") ? (byte) -1 : (byte) 1;
                                break;
                            case -407475236:
                                b3 = !str2.equals("SM-A107F") ? (byte) -1 : (byte) 2;
                                break;
                            case -407475229:
                                b3 = !str2.equals("SM-A107M") ? (byte) -1 : (byte) 3;
                                break;
                            case -407473376:
                                b3 = !str2.equals("SM-A125F") ? (byte) -1 : (byte) 4;
                                break;
                            case -407413794:
                                b3 = !str2.equals("SM-A325F") ? (byte) -1 : (byte) 5;
                                break;
                            case 48050974:
                                b3 = !str2.equals("W-K610-TVM") ? (byte) -1 : (byte) 6;
                                break;
                            case 340386080:
                                b3 = !str2.equals("vivo 1904") ? (byte) -1 : (byte) 7;
                                break;
                            case 1255552637:
                                if (!str2.equals("M1908C3JGG")) {
                                    b3 = -1;
                                }
                                break;
                            default:
                                b3 = -1;
                                break;
                        }
                        switch (b3) {
                            case 0:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.35d;
                                }
                                return !str3.equals("1280x720") ? 0.7d : 0.525d;
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 6:
                            case 7:
                                return 0.28d;
                            case 5:
                            case 8:
                                return 0.2625d;
                            default:
                                return 0.7d;
                        }
                }
                break;
            case "OMX.qcom.video.encoder.hevc":
                switch (i) {
                    case 26:
                        str2.hashCode();
                        return (str2.equals("F8331") || str2.equals("MI 5s")) ? 0.105d : 0.1575d;
                    case 27:
                        return 0.1575d;
                    case 28:
                        str2.hashCode();
                        return !str2.equals("Nokia 7.2") ? 0.35d : 0.1575d;
                    default:
                        return 0.35d;
                }
            case "c2.exynos.h264.encoder":
                switch (i) {
                    case 31:
                        str3.hashCode();
                        return !str3.equals("1280x720") ? 0.7d : 0.245d;
                    case 32:
                        str2.hashCode();
                        if (str2.equals("Pixel 6 Pro")) {
                            str3.hashCode();
                            return !str3.equals("1280x720") ? 0.7d : 0.245d;
                        }
                        if (!str2.equals("Pixel 6")) {
                            return 0.7d;
                        }
                        str3.hashCode();
                        if (str3.equals("640x480")) {
                            return 0.28d;
                        }
                        return !str3.equals("1280x720") ? 0.7d : 0.245d;
                    case 33:
                        return 0.245d;
                    default:
                        return 0.7d;
                }
            case "OMX.hisi.video.encoder.avc":
                if (i == 24) {
                    str3.hashCode();
                    if (str3.equals("640x480")) {
                        return 0.525d;
                    }
                    return !str3.equals("1920x1080") ? 0.56875d : 0.245d;
                }
                if (i != 27) {
                    if (i != 28) {
                        return 0.56875d;
                    }
                    str2.hashCode();
                    return !str2.equals("HMA-L29") ? 0.21d : 0.175d;
                }
                str2.hashCode();
                switch (str2.hashCode()) {
                    case 1588010961:
                        b8 = !str2.equals("CLT-L29") ? (byte) -1 : (byte) 0;
                        break;
                    case 1672051372:
                        b8 = !str2.equals("COR-L29") ? (byte) -1 : (byte) 1;
                        break;
                    case 1832520436:
                        if (!str2.equals("EML-AL00")) {
                            b8 = -1;
                        }
                        break;
                    default:
                        b8 = -1;
                        break;
                }
                switch (b8) {
                    case 1:
                        str3.hashCode();
                        if (!str3.equals("1280x720")) {
                            if (str3.equals("1920x1080")) {
                                return i2 != 60 ? 0.14d : 0.13125d;
                            }
                            return 0.245d;
                        }
                    case 0:
                    case 2:
                        return 0.1925d;
                    default:
                        return 0.245d;
                }
                break;
            case "OMX.qcom.video.encoder.avc":
                switch (i) {
                    case 23:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -1984447159:
                                b4 = !str2.equals("MotoG3") ? (byte) -1 : (byte) 0;
                                break;
                            case -783193036:
                                b4 = !str2.equals("Nexus 5") ? (byte) -1 : (byte) 1;
                                break;
                            case -751286836:
                                b4 = !str2.equals("LG-AS110") ? (byte) -1 : (byte) 2;
                                break;
                            case -401695999:
                                b4 = !str2.equals("SM-G900F") ? (byte) -1 : (byte) 3;
                                break;
                            case 3272481:
                                b4 = !str2.equals("Moto G (4)") ? (byte) -1 : (byte) 4;
                                break;
                            case 102694224:
                                b4 = !str2.equals("Moto G Play") ? (byte) -1 : (byte) 5;
                                break;
                            case 340383224:
                                b4 = !str2.equals("vivo 1610") ? (byte) -1 : (byte) 6;
                                break;
                            case 1490819771:
                                if (!str2.equals("Nexus 6P")) {
                                    b4 = -1;
                                }
                                break;
                            default:
                                b4 = -1;
                                break;
                        }
                        switch (b4) {
                            case 0:
                                return 0.37188d;
                            case 1:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.3325d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.35d : 0.28d;
                                }
                                return 0.48125d;
                            case 2:
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.39375d;
                                }
                                return !str3.equals("1920x1080") ? 0.48125d : 0.35d;
                            case 3:
                                return 0.35d;
                            case 4:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.35d : 0.3325d;
                                }
                                return 0.4375d;
                            case 5:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.35d : 0.3325d;
                                }
                                return 0.37188d;
                            case 6:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.4375d : 0.315d;
                                }
                                return 0.54688d;
                            case 7:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.3325d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.39375d : 0.35d;
                                }
                                return 0.6125d;
                            default:
                                return 0.6125d;
                        }
                    case 24:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -1696512900:
                                b7 = !str2.equals("XT1650") ? (byte) -1 : (byte) 0;
                                break;
                            case -401692945:
                                b7 = !str2.equals("SM-G935V") ? (byte) -1 : (byte) 1;
                                break;
                            case 3272512:
                                b7 = !str2.equals("Moto G (5)") ? (byte) -1 : (byte) 2;
                                break;
                            case 1490819771:
                                if (!str2.equals("Nexus 6P")) {
                                    b7 = -1;
                                }
                                break;
                            default:
                                b7 = -1;
                                break;
                        }
                        switch (b7) {
                            case 0:
                                return i2 != 60 ? 0.48125d : 0.39375d;
                            case 1:
                                return 0.3325d;
                            case 2:
                                return 0.39375d;
                            case 3:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.3325d;
                                    case 1:
                                        return i2 != 30 ? 0.39375d : 0.35d;
                                    case 2:
                                        return 0.20891d;
                                    default:
                                        return 0.39375d;
                                }
                            default:
                                return 0.48125d;
                        }
                    case 25:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -708142656:
                                if (str2.equals("Redmi 4A")) {
                                    b9 = 0;
                                }
                                break;
                            case -708142633:
                                if (str2.equals("Redmi 4X")) {
                                    b9 = 1;
                                }
                                break;
                            case -708142625:
                                if (str2.equals("Redmi 5A")) {
                                    b9 = 2;
                                }
                                break;
                            case -399017595:
                                if (str2.equals("LM-X210(G)")) {
                                    b9 = 3;
                                }
                                break;
                            case -78463250:
                                if (str2.equals("Pixel XL")) {
                                    b9 = 4;
                                }
                                break;
                            case 2453916:
                                if (str2.equals("PH-1")) {
                                    b9 = 5;
                                }
                                break;
                            case 67287038:
                                if (str2.equals("G8142")) {
                                    b9 = 6;
                                }
                                break;
                            case 77128294:
                                if (str2.equals("Pixel")) {
                                    b9 = 7;
                                }
                                break;
                            case 514549157:
                                if (str2.equals("SM-J510FN")) {
                                    b9 = 8;
                                }
                                break;
                            case 1311300188:
                                if (str2.equals("ONEPLUS A5000")) {
                                    b9 = 9;
                                }
                                break;
                            case 1467059320:
                                if (str2.equals("Redmi 5 Plus")) {
                                    b9 = 10;
                                }
                                break;
                            case 1691545187:
                                if (str2.equals("CPH1801")) {
                                    b9 = ByteCode.T_LONG;
                                }
                                break;
                        }
                        switch (b9) {
                            case 4:
                            case 6:
                            case 7:
                                str3.hashCode();
                                if (!str3.equals("1280x720")) {
                                    return (str3.equals("1920x1080") && i2 == 30) ? 0.48125d : 0.525d;
                                }
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                return 0.39375d;
                            case 5:
                                return i2 != 60 ? 0.48125d : 0.39375d;
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                                return 0.35d;
                            default:
                                return 0.525d;
                        }
                        break;
                    case 26:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -1899903032:
                                b2 = !str2.equals("SAMSUNG-SM-G930AZ") ? (byte) -1 : (byte) 0;
                                break;
                            case -1844401288:
                                b2 = !str2.equals("SO-01J") ? (byte) -1 : (byte) 1;
                                break;
                            case -615500520:
                                b2 = !str2.equals("SAMSUNG-SM-G891A") ? (byte) -1 : (byte) 2;
                                break;
                            case -615476526:
                                b2 = !str2.equals("SAMSUNG-SM-G930A") ? (byte) -1 : (byte) 3;
                                break;
                            case -478880329:
                                b2 = !str2.equals("moto g(6)") ? (byte) -1 : (byte) 4;
                                break;
                            case -407235225:
                                b2 = !str2.equals("SM-A9200") ? (byte) -1 : (byte) 5;
                                break;
                            case -407235203:
                                b2 = !str2.equals("SM-A920F") ? (byte) -1 : (byte) 6;
                                break;
                            case -401717969:
                                b2 = !str2.equals("SM-G8850") ? (byte) -1 : (byte) 7;
                                break;
                            case -401717934:
                                b2 = !str2.equals("SM-G885S") ? (byte) -1 : (byte) 8;
                                break;
                            case -401717084:
                                b2 = !str2.equals("SM-G892A") ? (byte) -1 : (byte) 9;
                                break;
                            case -401717064:
                                b2 = !str2.equals("SM-G892U") ? (byte) -1 : (byte) 10;
                                break;
                            case -401693100:
                                b2 = !str2.equals("SM-G930V") ? (byte) -1 : ByteCode.T_LONG;
                                break;
                            case -401692947:
                                b2 = !str2.equals("SM-G935T") ? (byte) -1 : (byte) 12;
                                break;
                            case -401691024:
                                b2 = !str2.equals("SM-G955U") ? (byte) -1 : (byte) 13;
                                break;
                            case -401691022:
                                b2 = !str2.equals("SM-G955W") ? (byte) -1 : (byte) 14;
                                break;
                            case -401690100:
                                b2 = !str2.equals("SM-G9650") ? (byte) -1 : (byte) 15;
                                break;
                            case -395226532:
                                b2 = !str2.equals("SM-N950U") ? (byte) -1 : (byte) 16;
                                break;
                            case 66365407:
                                b2 = !str2.equals("F8331") ? (byte) -1 : (byte) 17;
                                break;
                            case 66365408:
                                b2 = !str2.equals("F8332") ? (byte) -1 : (byte) 18;
                                break;
                            case 67288960:
                                b2 = !str2.equals("G8342") ? (byte) -1 : (byte) 19;
                                break;
                            case 67289920:
                                b2 = !str2.equals("G8441") ? (byte) -1 : (byte) 20;
                                break;
                            case 68212390:
                                b2 = !str2.equals("H8314") ? (byte) -1 : (byte) 21;
                                break;
                            case 68212421:
                                b2 = !str2.equals("H8324") ? (byte) -1 : (byte) 22;
                                break;
                            case 73318370:
                                b2 = !str2.equals("MI 5s") ? (byte) -1 : (byte) 23;
                                break;
                            case 77128294:
                                b2 = !str2.equals("Pixel") ? (byte) -1 : (byte) 24;
                                break;
                            case 79090010:
                                b2 = !str2.equals("SOV33") ? (byte) -1 : (byte) 25;
                                break;
                            case 136552289:
                                b2 = !str2.equals("moto e5 play") ? (byte) -1 : (byte) 26;
                                break;
                            case 432420521:
                                b2 = !str2.equals("SM-G935R4") ? (byte) -1 : (byte) 27;
                                break;
                            case 432475388:
                                if (!str2.equals("SM-G950U1")) {
                                    b2 = -1;
                                }
                                break;
                            case 432480193:
                                b2 = !str2.equals("SM-G955U1") ? (byte) -1 : (byte) 29;
                                break;
                            case 432505179:
                                b2 = !str2.equals("SM-G960U1") ? (byte) -1 : (byte) 30;
                                break;
                            case 432509984:
                                b2 = !str2.equals("SM-G965U1") ? (byte) -1 : (byte) 31;
                                break;
                            case 740519914:
                                b2 = !str2.equals("Mi MIX 2") ? (byte) -1 : (byte) 32;
                                break;
                            case 807232546:
                                b2 = !str2.equals("LG-H932") ? (byte) -1 : (byte) 33;
                                break;
                            case 1105847544:
                                b2 = !str2.equals("Pixel 2") ? (byte) -1 : (byte) 34;
                                break;
                            case 1311240609:
                                b2 = !str2.equals("ONEPLUS A3003") ? (byte) -1 : (byte) 35;
                                break;
                            case 1743099574:
                                b2 = !str2.equals("Nokia 8 Sirocco") ? (byte) -1 : (byte) 36;
                                break;
                            case 1882314478:
                                b2 = !str2.equals("HTC U11 plus") ? (byte) -1 : (byte) 37;
                                break;
                            case 2005978936:
                                b2 = !str2.equals("MI 5s Plus") ? (byte) -1 : (byte) 38;
                                break;
                            case 2140902952:
                                b2 = !str2.equals("HTC 10") ? (byte) -1 : (byte) 39;
                                break;
                            default:
                                b2 = -1;
                                break;
                        }
                        switch (b2) {
                            case 0:
                            case 10:
                            case 27:
                            case 32:
                            case 35:
                                return i2 != 60 ? 0.245d : 0.21d;
                            case 1:
                            case 12:
                            case 18:
                            case 24:
                                str3.hashCode();
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.245d : 0.28d;
                            case 2:
                                return 0.28d;
                            case 3:
                            case 19:
                            case 23:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.2275d;
                                }
                                return (str3.equals("1920x1080") && i2 == 60) ? 0.21d : 0.245d;
                            case 4:
                            case 11:
                            case 14:
                            case 39:
                                return 0.2275d;
                            case 5:
                            case 6:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.245d : 0.21d;
                                }
                                return 0.28d;
                            case 7:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.28d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.245d : 0.21d;
                                }
                                return 0.35d;
                            case 8:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.28d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.28d : 0.245d;
                                }
                                return 0.35d;
                            case 9:
                                str3.hashCode();
                                return (str3.equals("640x480") || (str3.equals("1920x1080") && i2 == 60)) ? 0.21d : 0.245d;
                            case 13:
                            case 16:
                            case 28:
                                return 0.21d;
                            case 15:
                                str3.hashCode();
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.18375d : 0.21d;
                            case 17:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.2275d;
                                    case 1:
                                        return i2 != 60 ? 0.245d : 0.21d;
                                    case 2:
                                        return 0.08704d;
                                    default:
                                        return 0.245d;
                                }
                            case 20:
                            case 34:
                                str3.hashCode();
                                return !str3.equals("640x480") ? 0.28d : 0.2275d;
                            case 21:
                            case 33:
                                str3.hashCode();
                                return !str3.equals("1920x1080") ? 0.2275d : 0.21d;
                            case 22:
                                return i2 != 30 ? 0.21d : 0.18375d;
                            case 25:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.2275d;
                                }
                                return !str3.equals("3840x2160") ? 0.28d : 0.08704d;
                            case 26:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.39375d;
                                }
                                return !str3.equals("1920x1080") ? 0.48125d : 0.35d;
                            case 29:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case -1719904874:
                                        b8 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 802059049:
                                        if (!str3.equals("1920x1080")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.21d;
                                    case 1:
                                        return 0.2625d;
                                    case 2:
                                        return i2 != 30 ? 0.28d : 0.245d;
                                    default:
                                        return 0.28d;
                                }
                            case 30:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.21d;
                                    case 1:
                                        return i2 != 30 ? 0.21d : 0.18375d;
                                    case 2:
                                        return 0.09575d;
                                    default:
                                        return 0.35d;
                                }
                            case 31:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.21d;
                                    case 1:
                                        return i2 != 30 ? 0.21d : 0.18375d;
                                    case 2:
                                        return 0.09575d;
                                    default:
                                        return 0.2275d;
                                }
                            case 36:
                                str3.hashCode();
                                if (!str3.equals("640x480")) {
                                    if (!str3.equals("1920x1080")) {
                                        return 0.28d;
                                    }
                                    if (i2 != 60) {
                                        return 0.245d;
                                    }
                                }
                                return 0.21d;
                            case 37:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.2275d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.245d : 0.28d;
                            case 38:
                                return 0.2275d;
                            default:
                                return 0.48125d;
                        }
                    case 27:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -2038157990:
                                b = !str2.equals("Redmi Note 5") ? (byte) -1 : (byte) 0;
                                break;
                            case -1578412503:
                                b = !str2.equals("DUB-LX1") ? (byte) -1 : (byte) 1;
                                break;
                            case -1157762381:
                                b = !str2.equals("Lenovo TB-8504F") ? (byte) -1 : (byte) 2;
                                break;
                            case -929944936:
                                b = !str2.equals("Moto Z3 Play") ? (byte) -1 : (byte) 3;
                                break;
                            case -398982863:
                                b = !str2.equals("SM-J727V") ? (byte) -1 : (byte) 4;
                                break;
                            case 2568591:
                                b = !str2.equals("TC77") ? (byte) -1 : (byte) 5;
                                break;
                            case 66034788:
                                b = !str2.equals("F-01L") ? (byte) -1 : (byte) 6;
                                break;
                            case 136552289:
                                b = !str2.equals("moto e5 play") ? (byte) -1 : (byte) 7;
                                break;
                            case 206182807:
                                b = !str2.equals("Nokia 2.1") ? (byte) -1 : (byte) 8;
                                break;
                            case 340385120:
                                b = !str2.equals("vivo 1805") ? (byte) -1 : (byte) 9;
                                break;
                            case 511927773:
                                b = !str2.equals("SM-J260MU") ? (byte) -1 : (byte) 10;
                                break;
                            case 632909236:
                                b = !str2.equals("SM-N960U1") ? (byte) -1 : ByteCode.T_LONG;
                                break;
                            case 1105847544:
                                b = !str2.equals("Pixel 2") ? (byte) -1 : (byte) 12;
                                break;
                            case 1467059320:
                                b = !str2.equals("Redmi 5 Plus") ? (byte) -1 : (byte) 13;
                                break;
                            case 1682561561:
                                b = !str2.equals("ASUS_X00TD") ? (byte) -1 : (byte) 14;
                                break;
                            case 1905056540:
                                b = !str2.equals("Pixel 2 XL") ? (byte) -1 : (byte) 15;
                                break;
                            default:
                                b = -1;
                                break;
                        }
                        switch (b) {
                            case 0:
                                return i2 != 60 ? 0.28d : 0.245d;
                            case 1:
                                return 0.2275d;
                            case 2:
                            case 7:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.39375d;
                                }
                                return !str3.equals("1920x1080") ? 0.48125d : 0.35d;
                            case 3:
                                str3.hashCode();
                                return !str3.equals("640x480") ? 0.7d : 0.315d;
                            case 4:
                                str3.hashCode();
                                return !str3.equals("1920x1080") ? 0.28d : 0.21d;
                            case 5:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b7 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case -1719904874:
                                        b7 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 802059049:
                                        b7 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 2;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b7 = -1;
                                        }
                                        break;
                                    default:
                                        b7 = -1;
                                        break;
                                }
                                switch (b7) {
                                    case 0:
                                        return 0.39375d;
                                    case 1:
                                        return 0.6125d;
                                    case 2:
                                        return i2 != 30 ? 0.7d : 0.28d;
                                    case 3:
                                        return 0.1915d;
                                    default:
                                        return 0.7d;
                                }
                            case 6:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case -1719904874:
                                        b8 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 802059049:
                                        if (!str3.equals("1920x1080")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.315d;
                                    case 1:
                                        return 0.48125d;
                                    case 2:
                                        return i2 != 30 ? 0.7d : 0.28d;
                                    default:
                                        return 0.7d;
                                }
                            case 8:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.39375d;
                                }
                                return !str3.equals("1920x1080") ? 0.48125d : 0.35d;
                            case 9:
                                str3.hashCode();
                                return (str3.equals("640x480") || str3.equals("1920x1080")) ? 0.21d : 0.35d;
                            case 10:
                                return 0.3325d;
                            case 11:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.21d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.21d : 0.18375d;
                                }
                                return 0.35d;
                            case 12:
                                return 0.21d;
                            case 13:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 60 ? 0.28d : 0.245d;
                                }
                                return !str3.equals("3840x2160") ? 0.315d : 0.17409d;
                            case 14:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.4375d : 0.28d;
                                }
                                return 0.45937d;
                            case 15:
                                str3.hashCode();
                                return (str3.equals("640x480") || (str3.equals("1920x1080") && i2 == 60)) ? 0.21d : 0.245d;
                            default:
                                return 0.7d;
                        }
                    case 28:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -1910414559:
                                b2 = !str2.equals("MI 8 Pro") ? (byte) -1 : (byte) 0;
                                break;
                            case -1890032429:
                                b2 = !str2.equals("MI MAX 3") ? (byte) -1 : (byte) 1;
                                break;
                            case -1855483508:
                                b2 = !str2.equals("SC-02K") ? (byte) -1 : (byte) 2;
                                break;
                            case -1855483477:
                                b2 = !str2.equals("SC-03K") ? (byte) -1 : (byte) 3;
                                break;
                            case -1850865933:
                                b2 = !str2.equals("SH-01L") ? (byte) -1 : (byte) 4;
                                break;
                            case -1850865872:
                                b2 = !str2.equals("SH-03K") ? (byte) -1 : (byte) 5;
                                break;
                            case -1809870076:
                                b2 = !str2.equals("U693CL") ? (byte) -1 : (byte) 6;
                                break;
                            case -1398045836:
                                b2 = !str2.equals("SM-T720") ? (byte) -1 : (byte) 7;
                                break;
                            case -1288579676:
                                b2 = !str2.equals("moto g(7) plus") ? (byte) -1 : (byte) 8;
                                break;
                            case -509282085:
                                b2 = !str2.equals("Nokia 9") ? (byte) -1 : (byte) 9;
                                break;
                            case -399073275:
                                b2 = !str2.equals("SM-J415F") ? (byte) -1 : (byte) 10;
                                break;
                            case -389717862:
                                b2 = !str2.equals("SM-T827V") ? (byte) -1 : ByteCode.T_LONG;
                                break;
                            case -389716901:
                                b2 = !str2.equals("SM-T837V") ? (byte) -1 : (byte) 12;
                                break;
                            case -78464376:
                                b2 = !str2.equals("Pixel 3a") ? (byte) -1 : (byte) 13;
                                break;
                            case 53196885:
                                b2 = !str2.equals("801SO") ? (byte) -1 : (byte) 14;
                                break;
                            case 68211431:
                                b2 = !str2.equals("H8216") ? (byte) -1 : (byte) 15;
                                break;
                            case 68211586:
                                b2 = !str2.equals("H8266") ? (byte) -1 : (byte) 16;
                                break;
                            case 68213353:
                                b2 = !str2.equals("H8416") ? (byte) -1 : (byte) 17;
                                break;
                            case 68243389:
                                b2 = !str2.equals("H9493") ? (byte) -1 : (byte) 18;
                                break;
                            case 74271988:
                                b2 = !str2.equals("Mi A1") ? (byte) -1 : (byte) 19;
                                break;
                            case 78881479:
                                b2 = !str2.equals("SHV39") ? (byte) -1 : (byte) 20;
                                break;
                            case 206187613:
                                b2 = !str2.equals("Nokia 7.2") ? (byte) -1 : (byte) 21;
                                break;
                            case 513630441:
                                b2 = !str2.equals("SM-J415FN") ? (byte) -1 : (byte) 22;
                                break;
                            case 599248456:
                                b2 = !str2.equals("Redmi Note 6 Pro") ? (byte) -1 : (byte) 23;
                                break;
                            case 632879445:
                                b2 = !str2.equals("SM-N950U1") ? (byte) -1 : (byte) 24;
                                break;
                            case 979275507:
                                b2 = !str2.equals("LM-Q910") ? (byte) -1 : (byte) 25;
                                break;
                            case 979419631:
                                b2 = !str2.equals("LM-V405") ? (byte) -1 : (byte) 26;
                                break;
                            case 1105847545:
                                b2 = !str2.equals("Pixel 3") ? (byte) -1 : (byte) 27;
                                break;
                            case 1311300219:
                                if (!str2.equals("ONEPLUS A5010")) {
                                    b2 = -1;
                                }
                                break;
                            case 1311330013:
                                b2 = !str2.equals("ONEPLUS A6013") ? (byte) -1 : (byte) 29;
                                break;
                            case 1682561561:
                                b2 = !str2.equals("ASUS_X00TD") ? (byte) -1 : (byte) 30;
                                break;
                            case 1905056540:
                                b2 = !str2.equals("Pixel 2 XL") ? (byte) -1 : (byte) 31;
                                break;
                            default:
                                b2 = -1;
                                break;
                        }
                        switch (b2) {
                            case 0:
                            case 2:
                                str3.hashCode();
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.175d : 0.21d;
                            case 1:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.28d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.245d : 0.7d;
                            case 3:
                                str3.hashCode();
                                return (str3.equals("640x480") || str3.equals("1920x1080")) ? 0.21d : 0.35d;
                            case 4:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.315d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.28d : 0.7d;
                            case 5:
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.525d;
                                }
                                return (str3.equals("1920x1080") && i2 == 60) ? 0.7d : 1.05d;
                            case 6:
                            case 10:
                            case 22:
                                return 0.3325d;
                            case 7:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.21d;
                                }
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.21d : 0.18375d;
                                }
                                return 0.35d;
                            case 8:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.315d;
                                    case 1:
                                        return i2 != 30 ? 0.7d : 0.28d;
                                    case 2:
                                        return 0.20891d;
                                    default:
                                        return 0.7d;
                                }
                            case 9:
                                return i2 != 30 ? 0.21d : 0.175d;
                            case 11:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.2275d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.245d : 0.7d;
                            case 12:
                            case 25:
                            case 31:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case -1719904874:
                                        b8 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 802059049:
                                        if (!str3.equals("1920x1080")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.21d;
                                    case 1:
                                        return 0.35d;
                                    case 2:
                                        return i2 != 30 ? 0.7d : 0.245d;
                                    default:
                                        return 0.7d;
                                }
                            case 13:
                                return i2 != 30 ? 0.7d : 0.245d;
                            case 14:
                            case 18:
                                str3.hashCode();
                                return !str3.equals("1920x1080") ? 0.35d : 0.21d;
                            case 15:
                                str3.hashCode();
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.35d : 0.525d;
                            case 16:
                                str3.hashCode();
                                return !str3.equals("1920x1080") ? 0.525d : 0.35d;
                            case 17:
                                str3.hashCode();
                                return !str3.equals("1920x1080") ? 0.39375d : 0.35d;
                            case 19:
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.2275d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.28d : 0.7d;
                            case 20:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case -1719904874:
                                        b8 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 802059049:
                                        if (!str3.equals("1920x1080")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.2625d;
                                    case 1:
                                        return 0.37188d;
                                    case 2:
                                        return i2 != 30 ? 0.7d : 0.245d;
                                    default:
                                        return 0.7d;
                                }
                            case 21:
                            case 23:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case 802059049:
                                        b8 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 1514345136:
                                        if (!str3.equals("3840x2160")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.28d;
                                    case 1:
                                        return i2 != 30 ? 0.7d : 0.245d;
                                    case 2:
                                        return 0.1915d;
                                    default:
                                        return 0.7d;
                                }
                            case 24:
                                return 0.2275d;
                            case 26:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.21d : 0.175d;
                                }
                                return 0.35d;
                            case 27:
                                str3.hashCode();
                                if (str3.equals("1920x1080")) {
                                    return i2 != 30 ? 0.21d : 0.175d;
                                }
                                return !str3.equals("3840x2160") ? 0.21d : 0.09575d;
                            case 28:
                                str3.hashCode();
                                return !str3.equals("640x480") ? 0.2275d : 0.21d;
                            case 29:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.21d;
                                }
                                return !str3.equals("1920x1080") ? 0.35d : 0.175d;
                            case 30:
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.4375d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.245d : 0.7d;
                            default:
                                return 1.05d;
                        }
                    case 29:
                        str2.hashCode();
                        switch (str2) {
                            case "Redmi 8":
                                return 0.35d;
                            case "moto g(7) play":
                            case "moto g(7)":
                                return 0.315d;
                            case "SM-N9750":
                                return 0.21d;
                            case "Pixel XL":
                            case "SM-G960U1":
                                return 0.2625d;
                            case "SM-G981U1":
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.35d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.2275d : 0.7d;
                            case "Redmi Note 9 Pro":
                            case "CPH1931":
                                return 0.2275d;
                            case "Pixel 2 XL":
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.315d;
                                }
                                return !str3.equals("1280x720") ? 0.7d : 0.48125d;
                            default:
                                return 0.7d;
                        }
                    case 30:
                        str2.hashCode();
                        switch (str2) {
                            case "Redmi Note 8":
                            case "SM-A715F":
                            case "Redmi Note 9S":
                            case "M2101K7AG":
                            case "CPH2127":
                                return 0.2275d;
                            case "SM-A207F":
                            case "SM-M115F":
                            case "SM-S115DL":
                                return 0.315d;
                            case "SM-N986U":
                                return 0.1925d;
                            case "SM-F916U1":
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.175d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.2275d : 0.35d;
                            default:
                                return 0.35d;
                        }
                    case 31:
                        return 0.21d;
                    case 32:
                        str3.hashCode();
                        if (str3.equals("640x480")) {
                            return 0.14d;
                        }
                        return (str3.equals("1920x1080") && i2 == 30) ? 0.2275d : 0.35d;
                    default:
                        return 1.05d;
                }
                break;
            case "OMX.Exynos.HEVC.Encoder":
                if (i != 28) {
                    return 0.07d;
                }
                str2.hashCode();
                return !str2.equals("SM-G965N") ? 0.07d : 0.0525d;
            case "c2.qti.avc.encoder":
                switch (i) {
                    case 29:
                        str2.hashCode();
                        if (str2.equals("Pixel 3")) {
                            str3.hashCode();
                            if (str3.equals("640x480")) {
                                return 0.21d;
                            }
                            return !str3.equals("1280x720") ? 0.7d : 0.245d;
                        }
                        if (!str2.equals("Pixel 4")) {
                            return 1.4d;
                        }
                        str3.hashCode();
                        switch (str3.hashCode()) {
                            case -2077737242:
                                b7 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                break;
                            case -1719904874:
                                b7 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                break;
                            case 802059049:
                                b7 = !str3.equals("1920x1080") ? (byte) -1 : (byte) 2;
                                break;
                            case 1514345136:
                                if (!str3.equals("3840x2160")) {
                                    b7 = -1;
                                }
                                break;
                            default:
                                b7 = -1;
                                break;
                        }
                        switch (b7) {
                            case 0:
                            case 1:
                                return 0.1925d;
                            case 2:
                                return i2 != 30 ? 1.4d : 0.21d;
                            case 3:
                                return 0.08704d;
                            default:
                                return 1.4d;
                        }
                    case 30:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -78464314:
                                b5 = !str2.equals("Pixel 5a") ? (byte) -1 : (byte) 0;
                                break;
                            case 401880992:
                                b5 = !str2.equals("SM-F711U1") ? (byte) -1 : (byte) 1;
                                break;
                            case 403762630:
                                b5 = !str2.equals("SM-F926U1") ? (byte) -1 : (byte) 2;
                                break;
                            case 432595513:
                                b5 = !str2.equals("SM-G991U1") ? (byte) -1 : (byte) 3;
                                break;
                            case 1105847546:
                                b5 = !str2.equals("Pixel 4") ? (byte) -1 : (byte) 4;
                                break;
                            case 1105847547:
                                b5 = !str2.equals("Pixel 5") ? (byte) -1 : (byte) 5;
                                break;
                            case 1905116122:
                                if (!str2.equals("Pixel 4 XL")) {
                                    b5 = -1;
                                }
                                break;
                            default:
                                b5 = -1;
                                break;
                        }
                        switch (b5) {
                            case 0:
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.2275d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.21d : 0.28d;
                            case 1:
                                str3.hashCode();
                                switch (str3.hashCode()) {
                                    case -2077737242:
                                        b8 = !str3.equals("640x480") ? (byte) -1 : (byte) 0;
                                        break;
                                    case -1719904874:
                                        b8 = !str3.equals("1280x720") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 802059049:
                                        if (!str3.equals("1920x1080")) {
                                            b8 = -1;
                                        }
                                        break;
                                    default:
                                        b8 = -1;
                                        break;
                                }
                                switch (b8) {
                                    case 0:
                                        return 0.21d;
                                    case 1:
                                        return 0.2275d;
                                    case 2:
                                        return i2 != 30 ? 0.7d : 0.245d;
                                    default:
                                        return 0.7d;
                                }
                            case 2:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.21d;
                                }
                                return !str3.equals("1280x720") ? 0.7d : 0.2275d;
                            case 3:
                                return 0.2275d;
                            case 4:
                                str3.hashCode();
                                return !str3.equals("1280x720") ? 0.35d : 0.21d;
                            case 5:
                                str3.hashCode();
                                if (str3.equals("640x480")) {
                                    return 0.20125d;
                                }
                                return !str3.equals("1280x720") ? 0.28d : 0.2275d;
                            case 6:
                                return 0.21d;
                            default:
                                return 0.7d;
                        }
                    case 31:
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -1069982836:
                                if (str2.equals("Pixel 3a XL")) {
                                    b9 = 0;
                                }
                                break;
                            case -870267800:
                                if (str2.equals("Pixel 4a (5G)")) {
                                    b9 = 1;
                                }
                                break;
                            case -407354123:
                                if (str2.equals("SM-A528B")) {
                                    b9 = 2;
                                }
                                break;
                            case -78464376:
                                if (str2.equals("Pixel 3a")) {
                                    b9 = 3;
                                }
                                break;
                            case -78464345:
                                if (str2.equals("Pixel 4a")) {
                                    b9 = 4;
                                }
                                break;
                            case -78464314:
                                if (str2.equals("Pixel 5a")) {
                                    b9 = 5;
                                }
                                break;
                            case 401880992:
                                if (str2.equals("SM-F711U1")) {
                                    b9 = 6;
                                }
                                break;
                            case 403762630:
                                if (str2.equals("SM-F926U1")) {
                                    b9 = 7;
                                }
                                break;
                            case 432595513:
                                if (str2.equals("SM-G991U1")) {
                                    b9 = 8;
                                }
                                break;
                            case 432602240:
                                if (str2.equals("SM-G998U1")) {
                                    b9 = 9;
                                }
                                break;
                            case 775883933:
                                if (str2.equals("SM-S908U1")) {
                                    b9 = 10;
                                }
                                break;
                            case 1105847545:
                                if (str2.equals("Pixel 3")) {
                                    b9 = ByteCode.T_LONG;
                                }
                                break;
                            case 1105847546:
                                if (str2.equals("Pixel 4")) {
                                    b9 = 12;
                                }
                                break;
                            case 1105847547:
                                if (str2.equals("Pixel 5")) {
                                    b9 = 13;
                                }
                                break;
                            case 1905086331:
                                if (str2.equals("Pixel 3 XL")) {
                                    b9 = 14;
                                }
                                break;
                        }
                        switch (b9) {
                            case 0:
                            case 3:
                            case 11:
                            case 14:
                                return 0.245d;
                            case 1:
                            case 5:
                            case 6:
                            case 7:
                            case 9:
                                return 0.2275d;
                            case 2:
                                return 0.20125d;
                            case 4:
                            case 8:
                                return 0.21d;
                            case 10:
                                return 0.14d;
                            case 12:
                                return 0.20563d;
                            case 13:
                                str3.hashCode();
                                if (str3.equals("1280x720")) {
                                    return 0.2275d;
                                }
                                return (str3.equals("1920x1080") && i2 == 30) ? 0.21d : 0.28d;
                            default:
                                return 0.28d;
                        }
                    case 32:
                        str2.hashCode();
                        if (str2.equals("Pixel 4")) {
                            return 0.21d;
                        }
                        if (!str2.equals("Pixel 5")) {
                            return 0.28d;
                        }
                        str3.hashCode();
                        if (str3.equals("1280x720")) {
                            return 0.2275d;
                        }
                        return (str3.equals("1920x1080") && i2 == 30) ? 0.21d : 0.28d;
                    default:
                        return 1.4d;
                }
            case "c2.qti.hevc.encoder":
                str2.hashCode();
                return !str2.equals("Pixel 4") ? 0.105d : 0.0875d;
            default:
                return 1.4d;
        }
    }

    @Override
    public int getBitrate(String str, int i, int i2, float f) {
        return (int) (((double) (i * i2 * f)) * getBitrateMultiplierFromMapping(str, Util.SDK_INT, Build.MODEL, "" + i + "x" + i2, Math.round(f)));
    }
}
