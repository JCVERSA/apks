package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.avi.AviExtractor;
import com.google.android.gms.internal.ads.zzfww;

public final class hbe implements zae {
    public final zzfww a;
    public final int b;

    public hbe(int i, zzfww zzfwwVar) {
        this.b = i;
        this.a = zzfwwVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static hbe b(int i, u4h u4hVar) {
        String str;
        zae ibeVar;
        String str2;
        l4i l4iVar = new l4i();
        int iX = u4hVar.x();
        int iA = -2;
        while (u4hVar.u() > 8) {
            int iC = u4hVar.C();
            int iW = u4hVar.w() + u4hVar.C();
            u4hVar.k(iW);
            if (iC != 1414744396) {
                ibe ibeVar2 = null;
                switch (iC) {
                    case AviExtractor.FOURCC_strf:
                        if (iA != 2) {
                            if (iA == 1) {
                                int iE = u4hVar.E();
                                if (iE == 1) {
                                    str = "audio/raw";
                                } else if (iE == 85) {
                                    str = "audio/mpeg";
                                } else if (iE == 255) {
                                    str = "audio/mp4a-latm";
                                } else if (iE != 8192) {
                                    str = iE != 8193 ? null : MimeTypes.AUDIO_DTS;
                                } else {
                                    str = "audio/ac3";
                                }
                                if (str != null) {
                                    int iE2 = u4hVar.E();
                                    int iC2 = u4hVar.C();
                                    u4hVar.m(6);
                                    int I = kfh.I(u4hVar.E());
                                    int iE3 = u4hVar.u() > 0 ? u4hVar.E() : 0;
                                    gpj gpjVar = new gpj();
                                    gpjVar.E(str);
                                    gpjVar.b(iE2);
                                    gpjVar.F(iC2);
                                    if (str.equals("audio/raw") && I != 0) {
                                        gpjVar.x(I);
                                    }
                                    if (str.equals("audio/mp4a-latm") && iE3 > 0) {
                                        byte[] bArr = new byte[iE3];
                                        u4hVar.h(bArr, 0, iE3);
                                        gpjVar.p(zzfww.zzo(bArr));
                                    }
                                    ibeVar = new ibe(gpjVar.K());
                                } else {
                                    zrg.f("StreamFormatChunk", "Ignoring track with unsupported format tag " + iE);
                                }
                            } else {
                                zrg.f("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(kfh.d(iA)));
                            }
                            break;
                        } else {
                            u4hVar.m(4);
                            int iC3 = u4hVar.C();
                            int iC4 = u4hVar.C();
                            u4hVar.m(4);
                            int iC5 = u4hVar.C();
                            switch (iC5) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = MimeTypes.VIDEO_MP42;
                                    break;
                                case 859066445:
                                    str2 = MimeTypes.VIDEO_MP43;
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = MimeTypes.VIDEO_MJPEG;
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 == null) {
                                zrg.f("StreamFormatChunk", "Ignoring track with unsupported compression " + iC5);
                            } else {
                                gpj gpjVar2 = new gpj();
                                gpjVar2.J(iC3);
                                gpjVar2.m(iC4);
                                gpjVar2.E(str2);
                                ibeVar2 = new ibe(gpjVar2.K());
                            }
                        }
                        ibeVar = ibeVar2;
                        break;
                    case AviExtractor.FOURCC_avih:
                        ibeVar = ebe.a(u4hVar);
                        break;
                    case AviExtractor.FOURCC_strh:
                        ibeVar = fbe.c(u4hVar);
                        break;
                    case AviExtractor.FOURCC_strn:
                        ibeVar = mbe.a(u4hVar);
                        break;
                    default:
                        ibeVar = ibeVar2;
                        break;
                }
            } else {
                ibeVar = b(u4hVar.C(), u4hVar);
            }
            if (ibeVar != null) {
                if (ibeVar.zza() == 1752331379) {
                    iA = ((fbe) ibeVar).a();
                }
                l4iVar.g(ibeVar);
            }
            u4hVar.l(iW);
            u4hVar.k(iX);
        }
        return new hbe(i, l4iVar.j());
    }

    public final zae a(Class cls) {
        zzfww zzfwwVar = this.a;
        int size = zzfwwVar.size();
        int i = 0;
        while (i < size) {
            zae zaeVar = (zae) zzfwwVar.get(i);
            i++;
            if (zaeVar.getClass() == cls) {
                return zaeVar;
            }
        }
        return null;
    }

    @Override
    public final int zza() {
        return this.b;
    }
}
