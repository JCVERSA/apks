package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;

final class yr0 implements oi {
    public final kk0<oi> a;
    private final int b;

    private yr0(int i, kk0<oi> kk0Var) {
        this.b = i;
        this.a = kk0Var;
    }

    @Nullable
    public final <T extends oi> T a(Class<T> cls) {
        j82<oi> j82VarListIterator = this.a.listIterator(0);
        while (j82VarListIterator.hasNext()) {
            T t = (T) j82VarListIterator.next();
            if (t.getClass() == cls) {
                return t;
            }
        }
        return null;
    }

    @Override
    public final int getType() {
        return this.b;
    }

    public static yr0 a(int i, ag1 ag1Var) {
        String str;
        oi v22Var;
        String str2;
        kk0.a aVar = new kk0.a();
        int iE = ag1Var.e();
        int i2 = -2;
        while (ag1Var.a() > 8) {
            int iK = ag1Var.k();
            int iD = ag1Var.d() + ag1Var.k();
            ag1Var.d(iD);
            if (iK == 1414744396) {
                v22Var = a(ag1Var.k(), ag1Var);
            } else if (iK != 1718776947) {
                if (iK == 1751742049) {
                    v22Var = qi.a(ag1Var);
                } else if (iK != 1752331379) {
                    v22Var = iK != 1852994675 ? null : x22.a(ag1Var);
                } else {
                    v22Var = ri.a(ag1Var);
                }
            } else if (i2 == 2) {
                ag1Var.f(4);
                int iK2 = ag1Var.k();
                int iK3 = ag1Var.k();
                ag1Var.f(4);
                int iK4 = ag1Var.k();
                switch (iK4) {
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
                    xr0.a("Ignoring track with unsupported compression ", iK4, "StreamFormatChunk");
                } else {
                    jc0.a aVar2 = new jc0.a();
                    aVar2.o(iK2).f(iK3).e(str2);
                    v22Var = new v22(aVar2.a());
                }
            } else {
                if (i2 == 1) {
                    int iO = ag1Var.o();
                    if (iO == 1) {
                        str = "audio/raw";
                    } else if (iO == 85) {
                        str = "audio/mpeg";
                    } else if (iO == 255) {
                        str = "audio/mp4a-latm";
                    } else if (iO != 8192) {
                        str = iO != 8193 ? null : MimeTypes.AUDIO_DTS;
                    } else {
                        str = "audio/ac3";
                    }
                    if (str == null) {
                        xr0.a("Ignoring track with unsupported format tag ", iO, "StreamFormatChunk");
                    } else {
                        int iO2 = ag1Var.o();
                        int iK5 = ag1Var.k();
                        ag1Var.f(6);
                        int iB = f92.b(ag1Var.z());
                        int iO3 = ag1Var.o();
                        byte[] bArr = new byte[iO3];
                        ag1Var.a(bArr, 0, iO3);
                        jc0.a aVar3 = new jc0.a();
                        aVar3.e(str).c(iO2).l(iK5);
                        if ("audio/raw".equals(str) && iB != 0) {
                            aVar3.i(iB);
                        }
                        if ("audio/mp4a-latm".equals(str) && iO3 > 0) {
                            aVar3.a(kk0.a(bArr));
                        }
                        v22Var = new v22(aVar3.a());
                    }
                } else {
                    et0.d("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + f92.d(i2));
                }
            }
            if (v22Var != null) {
                if (v22Var.getType() == 1752331379) {
                    ri riVar = (ri) v22Var;
                    int i3 = riVar.a;
                    if (i3 == 1935960438) {
                        i2 = 2;
                    } else if (i3 == 1935963489) {
                        i2 = 1;
                    } else if (i3 != 1937012852) {
                        et0.d("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(riVar.a));
                        i2 = -1;
                    } else {
                        i2 = 3;
                    }
                }
                aVar.b(v22Var);
            }
            ag1Var.e(iD);
            ag1Var.d(iE);
        }
        return new yr0(i, aVar.a());
    }
}
